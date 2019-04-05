/* Copyright 2016 IBM Corp.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * 	http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
 * implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#include <stdio.h>
#include <unistd.h>
#include <errno.h>
#include <stdlib.h>
#include <inttypes.h>
#include <fcntl.h>

#include "hwunit.h"
#include "debug.h"

static void sbefifo_op_dump(const char *prefix, uint8_t *buf, size_t buflen)
{
	int i;

	if (!prefix)
		prefix = "";

	for (i=0; i<buflen/4; i++) {
		PR_ERROR("   %s 0x%02x%02x%02x%02x\n", prefix,
			 buf[i*4], buf[i*4+1], buf[i*4+2], buf[i*4+3]);
	}
}

static int sbefifo_op_read(struct sbefifo *sbefifo, void *buf, size_t *buflen)
{
	ssize_t n;

	assert(*buflen > 0);

	n = read(sbefifo->fd, buf, *buflen);
	if (n < 0) {
		PR_ERROR("sbefifo: Failed to read, errno=%d\n", errno);
		return -1;
	}
	*buflen = n;

	return 0;
}

static int sbefifo_op_write(struct sbefifo *sbefifo, void *buf, size_t buflen)
{
	ssize_t n;

	n = write(sbefifo->fd, buf, buflen);
	if (n < 0) {
		PR_ERROR("sbefifo: Failed to write, errno=%d\n", errno);
		return -1;
	}
	if (n != buflen) {
		PR_ERROR("sbefifo: Short write %zi of %zi bytes\n", n, buflen);
		return -1;
	}

	return 0;
}

static int sbefifo_op_ffdc_read(uint8_t *buf, uint32_t buflen)
{
	int offset = 0;
	uint32_t header, value;
	uint16_t magic, len_words;
	int i;

	if (buflen < 4)
		return -1;

	/* End of ffdc data */
	if (buflen == 4)
		return 0;

	header = be32toh(*(uint32_t *)(buf + offset));
	offset += 4;

	magic = header >> 16;
	if (magic != 0xffdc) {
		PR_ERROR("sbefifo: ffdc expected 0xffdc, got 0x%04x\n", magic);
		return -1;
	}

	len_words = header & 0xffff;
	if (offset + len_words * 4 > buflen)
		return -1;

	value = be32toh(*(uint32_t *)(buf + offset));
	offset += 4;

	PR_ERROR("FFDC: Sequence = %u\n", value >> 16);
	PR_ERROR("FFDC: Command = 0x%08x\n", value & 0xffff);

	value = be32toh(*(uint32_t *)(buf + offset));
	offset += 4;

	PR_ERROR("FFDC: RC = 0x%08x\n", value);

	for (i=0; i<len_words-3; i++) {
		value = be32toh(*(uint32_t *)(buf + offset));
		offset += 4;

		PR_ERROR("FFDC: Data: 0x%08x\n", value);
	}

	return offset;
}

static int sbefifo_op_ffdc(uint8_t *buf, uint32_t buflen)
{
	uint32_t offset = 0;
	int rc;

	while (1) {
		rc = sbefifo_op_ffdc_read(buf + offset, buflen - offset);
		if (rc <= 0)
			break;

		offset += rc;
	}

	return rc;
}

static int sbefifo_op(struct sbefifo *sbefifo,
		      uint32_t *msg, size_t msg_len, uint16_t cmd,
		      size_t out_len, uint8_t **out)
{
	uint8_t *buf;
	uint32_t resp[2];
	size_t buflen;
	uint32_t word_offset, offset;
	uint16_t value;
	int rc;

	assert(msg_len > 0 && out_len > 0);

	/* Allocate extra memory for FFDC (SBEFIFO_MAX_FFDC_SIZE = 0x2000) */
	buflen = out_len + 0x2000;
	buf = malloc(buflen);
	assert(buf);

	rc = sbefifo_op_write(sbefifo, msg, msg_len);
	if (rc)
		goto fail;

	rc = sbefifo_op_read(sbefifo, buf, &buflen);
	if (rc)
		goto fail;

	/*
	 * At least 3 words are expected in the response
	 * header word, status word, header offset word
	 */
	if (buflen < 3 * 4) {
		PR_ERROR("sbefifo: Short read, expected %zu, got %zu\n",
			 out_len + 3 * 4, buflen);
		sbefifo_op_dump("DATA:", buf, buflen);
		goto fail;
	}

	word_offset = be32toh(*(uint32_t *)(buf + buflen - 4));
	PR_INFO("sbefifo: status header word offset = %u\n", word_offset);

	offset = buflen - (word_offset * 4);

	resp[0] = be32toh(*(uint32_t *)(buf + offset));
	offset += 4;

	resp[1] = be32toh(*(uint32_t *)(buf + offset));
	offset += 4;

	PR_INFO("sbefifo: response %08x %08x\n", resp[0], resp[1]);

	value = resp[0] >> 16;
	if (value != 0xc0de) {
		PR_ERROR("sbefifo: Expected magic 0xc0de, got 0x%04x\n", value);
		goto fail;
	}

	value = resp[0] & 0xffff;
	if (value != cmd) {
		PR_ERROR("sbefifo: Expected command 0x%04x, got 0x%04x\n", cmd, value);
		goto fail;
	}

	if (resp[1] == 0) {
		*out = buf;
		return 0;
	} else {
		PR_ERROR("sbefifo: Operation failed, response=0x%08x\n", resp[1]);
		sbefifo_op_ffdc(buf + offset, buflen - offset);
	}

fail:
	free(buf);
	return -1;
}

static int sbefifo_op_getmem(struct sbefifo *sbefifo,
			     uint64_t addr, uint8_t *data, uint64_t size,
			     bool ci)
{
	uint8_t *out;
	uint64_t start_addr, end_addr;
	uint32_t align, offset, len;
	uint32_t msg[6];
	uint32_t cmd, flags, count;
	int rc;

	align = ci ? 8 : 128;

	start_addr = addr & (~(uint64_t)(align-1));
	end_addr = (addr + size + (align-1)) & (~(uint64_t)(align-1));

	if (end_addr - start_addr > UINT32_MAX) {
		PR_ERROR("sbefifo: size too large\n");
		return -EINVAL;
	}

	offset = addr - start_addr;
	len = end_addr - start_addr;

	PR_NOTICE("sbefifo: getmem addr=0x%016" PRIx64 ", len=%u\n",
		  start_addr, len);

	cmd = 0xa401;
	flags = ci ? 0x0081 : 0x0002;

	msg[0] = htobe32(6);	// number of words
	msg[1] = htobe32(cmd);
	msg[2] = htobe32(flags);
	msg[3] = htobe32(start_addr >> 32);
	msg[4] = htobe32(start_addr & 0xffffffff);
	msg[5] = htobe32(len);

	/* Return - data read + length of data read */
	rc = sbefifo_op(sbefifo, msg, sizeof(msg), cmd, len+4, &out);
	if (rc)
		return rc;

	memcpy(data, out+offset, size);
	count = htobe32(*(uint32_t *)&out[len]);
	free(out);

	pdbg_progress_tick(count, len);

	if (count != len) {
		PR_ERROR("sbefifo: getmem read %u bytes of %u\n", count, len);
		return -1;
	}

	return 0;
}

static int sbefifo_op_putmem(struct sbefifo *sbefifo,
			     uint64_t addr, uint8_t *data, uint64_t size,
			     bool ci)
{
	uint8_t *out;
	uint32_t *msg;
	uint32_t align, len, msg_len;
	uint32_t cmd, flags, count;
	int rc;

	align = ci ? 8 : 128;

	if (addr & (align-1)) {
		PR_ERROR("sbefifo: Address must be aligned to %d bytes\n", align);
		return -1;
	}

	if (size & (align-1)) {
		PR_ERROR("sbefifo: Data must be multiple of %d bytes\n", align);
		return -1;
	}

	if (size > UINT32_MAX) {
		PR_ERROR("sbefifo: size too large\n");
		return -1;
	}

	len = size & 0xffffffff;
	msg_len = 6 * 4 + len;
	msg = (uint32_t *)malloc(msg_len);
	assert(msg);

	PR_NOTICE("sbefifo: putmem addr=0x%016"PRIx64", len=%u\n", addr, len);

	cmd = 0xa402;
	flags = ci ? 0x0081 : 0x0002;

	msg[0] = htobe32(msg_len/4);	// number of words
	msg[1] = htobe32(cmd);
	msg[2] = htobe32(flags);
	msg[3] = htobe32(addr >> 32);
	msg[4] = htobe32(addr & 0xffffffff);
	msg[5] = htobe32(len);
	memcpy(&msg[6], data, len);

	/* Return - length of data written */
	rc = sbefifo_op(sbefifo, msg, msg_len, cmd, 4, &out);
	if (rc)
		return rc;

	count = be32toh(*(uint32_t *)out);
	free(out);

	pdbg_progress_tick(count, len);

	if (count != len) {
		PR_ERROR("sbefifo: putmem wrote %u bytes of %u\n", count, len);
		return -1;
	}

	return 0;
}

static int sbefifo_probe(struct pdbg_target *target)
{
	struct sbefifo *sf = target_to_sbefifo(target);
	const char *sbefifo_path;

	sbefifo_path = pdbg_target_property(target, "device-path", NULL);
	assert(sbefifo_path);

	sf->fd = open(sbefifo_path, O_RDWR | O_SYNC);
	if (sf->fd < 0) {
		PR_ERROR("Unable to open sbefifo driver %s\n", sbefifo_path);
		return -1;
	}

	return 0;
}

struct sbefifo kernel_sbefifo = {
	.target = {
		.name =	"Kernel based FSI SBE FIFO",
		.compatible = "ibm,kernel-sbefifo",
		.class = "sbefifo",
		.probe = sbefifo_probe,
	},
	.mem_read = sbefifo_op_getmem,
	.mem_write = sbefifo_op_putmem,
	.fd = -1,
};
DECLARE_HW_UNIT(kernel_sbefifo);

__attribute__((constructor))
static void register_sbefifo(void)
{
	pdbg_hwunit_register(&kernel_sbefifo_hw_unit);
}