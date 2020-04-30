/dts-v1/;

/ {

	mem0 {
		index = < 0x00 >;
	};

	proc0 {
		compatible = "ibm,power-proc", "ibm,power9-proc";
		index = < 0x00 >;

		fsi {
			index = < 0x00 >;
		};

		pib {
			#address-cells = < 0x02 >;
			#size-cells = < 0x01 >;
			index = < 0x00 >;

			adu@90000 {
				compatible = "ibm,power9-adu";
				reg = < 0x00 0x90000 0x50 >;
				system-path = "/mem0";
			};

			htm@5012880 {
				compatible = "ibm,power9-nhtm";
				reg = < 0x00 0x5012880 0x40 >;
				index = < 0x00 >;
			};

			htm@50128C0 {
				compatible = "ibm,power9-nhtm";
				reg = < 0x00 0x50128c0 0x40 >;
				index = < 0x01 >;
			};

			chiplet@1000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x01 >;
				reg = < 0x00 0x1000000 0xfffff >;
				#address-cells = < 0x02 >;
				#size-cells = < 0x01 >;

				tp@0 {
					compatible = "ibm,power9-tp";
					index = < 0x00 >;
					reg = < 0x00 0x1000000 0xffffff >;
				};
			};

			chiplet@2000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x02 >;
				reg = < 0x00 0x2000000 0xfffff >;

				n0 {
					compatible = "ibm,power9-nest";
					index = < 0x00 >;

					capp0 {
						compatible = "ibm,power9-capp";
						index = < 0x00 >;
					};
				};
			};

			chiplet@3000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x03 >;
				reg = < 0x00 0x3000000 0xfffff >;

				n1 {
					compatible = "ibm,power9-nest";
					index = < 0x01 >;

					mcs2 {
						compatible = "ibm,power9-mcs";
						index = < 0x02 >;
					};

					mcs3 {
						compatible = "ibm,power9-mcs";
						index = < 0x03 >;
					};
				};
			};

			chiplet@4000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x04 >;
				reg = < 0x00 0x4000000 0xfffff >;

				n2 {
					compatible = "ibm,power9-nest";
					index = < 0x02 >;

					capp1 {
						compatible = "ibm,power9-capp";
						index = < 0x01 >;
					};
				};
			};

			chiplet@5000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x05 >;
				reg = < 0x00 0x5000000 0xfffff >;

				n3 {
					compatible = "ibm,power9-nest";
					index = < 0x03 >;

					mcs0 {
						compatible = "ibm,power9-mcs";
						index = < 0x00 >;
					};

					mcs1 {
						compatible = "ibm,power9-mcs";
						index = < 0x01 >;
					};
				};
			};

			chiplet@6000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x06 >;
				reg = < 0x00 0x6000000 0xfffff >;
				#address-cells = < 0x02 >;
				#size-cells = < 0x01 >;

				xbus@0 {
					compatible = "ibm,power9-xbus";
					index = < 0x01 >;
					reg = < 0x00 0x6000000 0xffffff >;
					other-end = "/proc1/pib/chiplet@6000000/xbus@1";
				};
			};

			chiplet@7000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x07 >;
				reg = < 0x00 0x7000000 0xfffff >;
				#address-cells = < 0x02 >;
				#size-cells = < 0x01 >;

				mc@0 {
					compatible = "ibm,power9-mc";
					index = < 0x00 >;
					reg = < 0x00 0x7000000 0xffffff >;

					mca0 {
						compatible = "ibm,power9-mca";
						index = < 0x00 >;
					};

					mca1 {
						compatible = "ibm,power9-mca";
						index = < 0x01 >;
					};

					mca2 {
						compatible = "ibm,power9-mca";
						index = < 0x02 >;
					};

					mca3 {
						compatible = "ibm,power9-mca";
						index = < 0x03 >;
					};

					mcbist {
						compatible = "ibm,power9-mcbist";
						index = < 0x00 >;
					};
				};
			};

			chiplet@8000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x08 >;
				reg = < 0x00 0x8000000 0xfffff >;
				#address-cells = < 0x02 >;
				#size-cells = < 0x01 >;

				mc@1 {
					compatible = "ibm,power9-mc";
					index = < 0x01 >;
					reg = < 0x00 0x8000000 0xffffff >;

					mca0 {
						compatible = "ibm,power9-mca";
						index = < 0x04 >;
					};

					mca1 {
						compatible = "ibm,power9-mca";
						index = < 0x05 >;
					};

					mca2 {
						compatible = "ibm,power9-mca";
						index = < 0x06 >;
					};

					mca3 {
						compatible = "ibm,power9-mca";
						index = < 0x07 >;
					};

					mcbist {
						compatible = "ibm,power9-mcbist";
						index = < 0x01 >;
					};
				};
			};

			chiplet@9000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x09 >;
				reg = < 0x00 0x9000000 0xfffff >;
				#address-cells = < 0x02 >;
				#size-cells = < 0x01 >;

				obus@0 {
					compatible = "ibm,power9-obus";
					index = < 0x00 >;
					reg = < 0x00 0x9000000 0xffffff >;
				};

				obrick0 {
					compatible = "ibm,power9-obus_brick";
					index = < 0x00 >;
				};

				obrick1 {
					compatible = "ibm,power9-obus_brick";
					index = < 0x01 >;
				};

				obrick2 {
					compatible = "ibm,power9-obus_brick";
					index = < 0x02 >;
				};
			};

			chiplet@c000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x0c >;
				reg = < 0x00 0xc000000 0xfffff >;
				#address-cells = < 0x02 >;
				#size-cells = < 0x01 >;

				obus@3 {
					compatible = "ibm,power9-obus";
					index = < 0x03 >;
					reg = < 0x00 0xc000000 0xffffff >;
				};

				obrick0 {
					compatible = "ibm,power9-obus_brick";
					index = < 0x09 >;
				};

				obrick1 {
					compatible = "ibm,power9-obus_brick";
					index = < 0x0a >;
				};

				obrick2 {
					compatible = "ibm,power9-obus_brick";
					index = < 0x0b >;
				};
			};

			chiplet@d000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x0d >;
				reg = < 0x00 0xd000000 0xfffff >;
				#address-cells = < 0x02 >;
				#size-cells = < 0x01 >;

				pec@d000000 {
					compatible = "ibm,power9-pec";
					index = < 0x00 >;
					reg = < 0x00 0xd000000 0xfffff >;
				};

				phb0 {
					compatible = "ibm,power9-phb";
					index = < 0x00 >;
				};

				phb1 {
					compatible = "ibm,power9-phb";
					index = < 0x01 >;
				};
			};

			chiplet@e000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x0e >;
				reg = < 0x00 0xe000000 0xfffff >;
				#address-cells = < 0x02 >;
				#size-cells = < 0x01 >;

				pec@e000000 {
					compatible = "ibm,power9-pec";
					index = < 0x01 >;
					reg = < 0x00 0xe000000 0xfffff >;
				};

				phb0 {
					compatible = "ibm,power9-phb";
					index = < 0x02 >;
				};

				phb1 {
					compatible = "ibm,power9-phb";
					index = < 0x03 >;
				};
			};

			chiplet@f000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x0f >;
				reg = < 0x00 0xf000000 0xfffff >;
				#address-cells = < 0x02 >;
				#size-cells = < 0x01 >;

				pec@f000000 {
					compatible = "ibm,power9-pec";
					index = < 0x02 >;
					reg = < 0x00 0xf000000 0xfffff >;
				};

				phb0 {
					compatible = "ibm,power9-phb";
					index = < 0x04 >;
				};

				phb1 {
					compatible = "ibm,power9-phb";
					index = < 0x05 >;
				};
			};

			chiplet@10000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x10 >;
				reg = < 0x00 0x10000000 0xfffff >;
				#address-cells = < 0x02 >;
				#size-cells = < 0x01 >;

				eq@0 {
					compatible = "ibm,power9-eq";
					index = < 0x00 >;
					reg = < 0x00 0x10000000 0xffffff >;
					#address-cells = < 0x02 >;
					#size-cells = < 0x01 >;

					ex@0 {
						compatible = "ibm,power9-ex";
						index = < 0x00 >;
						reg = < 0x00 0x10000000 0xffffff >;
						#address-cells = < 0x02 >;
						#size-cells = < 0x01 >;

						chiplet@20000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x20 >;
							reg = < 0x00 0x20000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x00 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};

						chiplet@21000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x21 >;
							reg = < 0x00 0x21000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x01 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};
					};

					ex@1 {
						compatible = "ibm,power9-ex";
						index = < 0x01 >;
						reg = < 0x00 0x10000000 0xffffff >;
						#address-cells = < 0x02 >;
						#size-cells = < 0x01 >;

						chiplet@22000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x22 >;
							reg = < 0x00 0x22000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x02 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};

						chiplet@23000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x23 >;
							reg = < 0x00 0x23000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x03 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};
					};
				};
			};

			chiplet@11000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x11 >;
				reg = < 0x00 0x11000000 0xfffff >;
				#address-cells = < 0x02 >;
				#size-cells = < 0x01 >;

				eq@1 {
					compatible = "ibm,power9-eq";
					index = < 0x01 >;
					reg = < 0x00 0x11000000 0xffffff >;
					#address-cells = < 0x02 >;
					#size-cells = < 0x01 >;

					ex@0 {
						compatible = "ibm,power9-ex";
						index = < 0x00 >;
						reg = < 0x00 0x10000000 0xffffff >;
						#address-cells = < 0x02 >;
						#size-cells = < 0x01 >;

						chiplet@24000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x24 >;
							reg = < 0x00 0x24000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x04 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};

						chiplet@25000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x25 >;
							reg = < 0x00 0x25000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x05 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};
					};

					ex@1 {
						compatible = "ibm,power9-ex";
						index = < 0x01 >;
						reg = < 0x00 0x10000000 0xffffff >;
						#address-cells = < 0x02 >;
						#size-cells = < 0x01 >;

						chiplet@26000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x26 >;
							reg = < 0x00 0x26000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x06 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};

						chiplet@27000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x27 >;
							reg = < 0x00 0x27000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x07 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};
					};
				};
			};

			chiplet@12000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x12 >;
				reg = < 0x00 0x12000000 0xfffff >;
				#address-cells = < 0x02 >;
				#size-cells = < 0x01 >;

				eq@2 {
					compatible = "ibm,power9-eq";
					index = < 0x02 >;
					reg = < 0x00 0x12000000 0xffffff >;
					#address-cells = < 0x02 >;
					#size-cells = < 0x01 >;

					ex@0 {
						compatible = "ibm,power9-ex";
						index = < 0x00 >;
						reg = < 0x00 0x12000000 0xffffff >;
						#address-cells = < 0x02 >;
						#size-cells = < 0x01 >;

						chiplet@28000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x28 >;
							reg = < 0x00 0x28000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x08 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};

						chiplet@29000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x29 >;
							reg = < 0x00 0x29000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x09 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};
					};

					ex@1 {
						compatible = "ibm,power9-ex";
						index = < 0x01 >;
						reg = < 0x00 0x12000000 0xffffff >;
						#address-cells = < 0x02 >;
						#size-cells = < 0x01 >;

						chiplet@2a000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x2a >;
							reg = < 0x00 0x2a000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x0a >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};

						chiplet@2b000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x2b >;
							reg = < 0x00 0x2b000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x0b >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};
					};
				};
			};

			chiplet@13000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x13 >;
				reg = < 0x00 0x13000000 0xfffff >;
				#address-cells = < 0x02 >;
				#size-cells = < 0x01 >;

				eq@3 {
					compatible = "ibm,power9-eq";
					index = < 0x03 >;
					reg = < 0x00 0x13000000 0xffffff >;
					#address-cells = < 0x02 >;
					#size-cells = < 0x01 >;

					ex@0 {
						compatible = "ibm,power9-ex";
						index = < 0x00 >;
						reg = < 0x00 0x13000000 0xffffff >;
						#address-cells = < 0x02 >;
						#size-cells = < 0x01 >;

						chiplet@2c000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x2c >;
							reg = < 0x00 0x2c000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x0c >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};

						chiplet@2d000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x2d >;
							reg = < 0x00 0x2d000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x0d >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};
					};

					ex@1 {
						compatible = "ibm,power9-ex";
						index = < 0x01 >;
						reg = < 0x00 0x13000000 0xffffff >;
						#address-cells = < 0x02 >;
						#size-cells = < 0x01 >;

						chiplet@2e000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x2e >;
							reg = < 0x00 0x2e000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x0e >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};

						chiplet@2f000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x2f >;
							reg = < 0x00 0x2f000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x0f >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};
					};
				};
			};

			chiplet@14000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x14 >;
				reg = < 0x00 0x14000000 0xfffff >;
				#address-cells = < 0x02 >;
				#size-cells = < 0x01 >;

				eq@4 {
					compatible = "ibm,power9-eq";
					index = < 0x04 >;
					reg = < 0x00 0x13000000 0xffffff >;
					#address-cells = < 0x02 >;
					#size-cells = < 0x01 >;

					ex@0 {
						compatible = "ibm,power9-ex";
						index = < 0x00 >;
						reg = < 0x00 0x14000000 0xffffff >;
						#address-cells = < 0x02 >;
						#size-cells = < 0x01 >;

						chiplet@30000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x30 >;
							reg = < 0x00 0x30000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x10 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};

						chiplet@31000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x31 >;
							reg = < 0x00 0x31000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x11 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};
					};

					ex@1 {
						compatible = "ibm,power9-ex";
						index = < 0x01 >;
						reg = < 0x00 0x14000000 0xffffff >;
						#address-cells = < 0x02 >;
						#size-cells = < 0x01 >;

						chiplet@32000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x32 >;
							reg = < 0x00 0x32000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x12 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};

						chiplet@33000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x33 >;
							reg = < 0x00 0x33000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x13 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};
					};
				};
			};

			chiplet@15000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x15 >;
				reg = < 0x00 0x15000000 0xfffff >;
				#address-cells = < 0x02 >;
				#size-cells = < 0x01 >;

				eq@5 {
					compatible = "ibm,power9-eq";
					index = < 0x05 >;
					reg = < 0x00 0x13000000 0xffffff >;
					#address-cells = < 0x02 >;
					#size-cells = < 0x01 >;

					ex@0 {
						compatible = "ibm,power9-ex";
						index = < 0x00 >;
						reg = < 0x00 0x15000000 0xffffff >;
						#address-cells = < 0x02 >;
						#size-cells = < 0x01 >;

						chiplet@34000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x34 >;
							reg = < 0x00 0x34000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x14 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};

						chiplet@35000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x35 >;
							reg = < 0x00 0x35000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x15 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};
					};

					ex@1 {
						compatible = "ibm,power9-ex";
						index = < 0x01 >;
						reg = < 0x00 0x15000000 0xffffff >;
						#address-cells = < 0x02 >;
						#size-cells = < 0x01 >;

						chiplet@36000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x36 >;
							reg = < 0x00 0x36000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x16 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};

						chiplet@37000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x37 >;
							reg = < 0x00 0x37000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x17 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};
					};
				};
			};

			nv0 {
				compatible = "ibm,power9-nv";
				index = < 0x00 >;
			};

			nv1 {
				compatible = "ibm,power9-nv";
				index = < 0x01 >;
			};

			nv2 {
				compatible = "ibm,power9-nv";
				index = < 0x02 >;
			};

			nv3 {
				compatible = "ibm,power9-nv";
				index = < 0x03 >;
			};

			nv4 {
				compatible = "ibm,power9-nv";
				index = < 0x04 >;
			};

			nv5 {
				compatible = "ibm,power9-nv";
				index = < 0x05 >;
			};

			occ0 {
				compatible = "ibm,power9-occ";
				index = < 0x00 >;
			};

			sbe0 {
				compatible = "ibm,power9-sbe";
				index = < 0x00 >;
			};

			ppe0 {
				compatible = "ibm,power9-ppe";
				index = < 0x00 >;
			};

			ppe1 {
				compatible = "ibm,power9-ppe";
				index = < 0x0a >;
			};

			ppe2 {
				compatible = "ibm,power9-ppe";
				index = < 0x0d >;
			};

			ppe3 {
				compatible = "ibm,power9-ppe";
				index = < 0x14 >;
			};

			ppe4 {
				compatible = "ibm,power9-ppe";
				index = < 0x19 >;
			};

			ppe5 {
				compatible = "ibm,power9-ppe";
				index = < 0x1e >;
			};

			ppe6 {
				compatible = "ibm,power9-ppe";
				index = < 0x28 >;
			};

			ppe7 {
				compatible = "ibm,power9-ppe";
				index = < 0x29 >;
			};

			ppe8 {
				compatible = "ibm,power9-ppe";
				index = < 0x2a >;
			};

			ppe9 {
				compatible = "ibm,power9-ppe";
				index = < 0x2b >;
			};

			ppe10 {
				compatible = "ibm,power9-ppe";
				index = < 0x2c >;
			};

			ppe11 {
				compatible = "ibm,power9-ppe";
				index = < 0x2d >;
			};

			ppe12 {
				compatible = "ibm,power9-ppe";
				index = < 0x2e >;
			};

			ppe13 {
				compatible = "ibm,power9-ppe";
				index = < 0x32 >;
			};

			ppe14 {
				compatible = "ibm,power9-ppe";
				index = < 0x34 >;
			};

			ppe15 {
				compatible = "ibm,power9-ppe";
				index = < 0x38 >;
			};
		};
	};

	mem1 {
		index = < 0x01 >;
	};

	proc1 {
		compatible = "ibm,power-proc", "ibm,power9-proc";
		index = < 0x01 >;

		fsi {
			index = < 0x00 >;
		};

		pib {
			#address-cells = < 0x02 >;
			#size-cells = < 0x01 >;
			index = < 0x00 >;

			adu@90000 {
				compatible = "ibm,power9-adu";
				reg = < 0x00 0x90000 0x50 >;
				system-path = "/mem1";
			};

			htm@5012880 {
				compatible = "ibm,power9-nhtm";
				reg = < 0x00 0x5012880 0x40 >;
				index = < 0x00 >;
			};

			htm@50128C0 {
				compatible = "ibm,power9-nhtm";
				reg = < 0x00 0x50128c0 0x40 >;
				index = < 0x01 >;
			};

			chiplet@1000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x01 >;
				reg = < 0x00 0x1000000 0xfffff >;
				#address-cells = < 0x02 >;
				#size-cells = < 0x01 >;

				tp@0 {
					compatible = "ibm,power9-tp";
					index = < 0x00 >;
					reg = < 0x00 0x1000000 0xffffff >;
				};
			};

			chiplet@2000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x02 >;
				reg = < 0x00 0x2000000 0xfffff >;

				n0 {
					compatible = "ibm,power9-nest";
					index = < 0x00 >;

					capp0 {
						compatible = "ibm,power9-capp";
						index = < 0x00 >;
					};
				};
			};

			chiplet@3000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x03 >;
				reg = < 0x00 0x3000000 0xfffff >;

				n1 {
					compatible = "ibm,power9-nest";
					index = < 0x01 >;

					mcs2 {
						compatible = "ibm,power9-mcs";
						index = < 0x02 >;
					};

					mcs3 {
						compatible = "ibm,power9-mcs";
						index = < 0x03 >;
					};
				};
			};

			chiplet@4000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x04 >;
				reg = < 0x00 0x4000000 0xfffff >;

				n2 {
					compatible = "ibm,power9-nest";
					index = < 0x02 >;

					capp1 {
						compatible = "ibm,power9-capp";
						index = < 0x01 >;
					};
				};
			};

			chiplet@5000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x05 >;
				reg = < 0x00 0x5000000 0xfffff >;

				n3 {
					compatible = "ibm,power9-nest";
					index = < 0x03 >;

					mcs0 {
						compatible = "ibm,power9-mcs";
						index = < 0x00 >;
					};

					mcs1 {
						compatible = "ibm,power9-mcs";
						index = < 0x01 >;
					};
				};
			};

			chiplet@6000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x06 >;
				reg = < 0x00 0x6000000 0xfffff >;
				#address-cells = < 0x02 >;
				#size-cells = < 0x01 >;

				xbus@0 {
					compatible = "ibm,power9-xbus";
					index = < 0x01 >;
					reg = < 0x00 0x6000000 0xffffff >;
					other-end = "/proc0/pib/chiplet@6000000/xbus@1";
				};
			};

			chiplet@7000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x07 >;
				reg = < 0x00 0x7000000 0xfffff >;
				#address-cells = < 0x02 >;
				#size-cells = < 0x01 >;

				mc@0 {
					compatible = "ibm,power9-mc";
					index = < 0x00 >;
					reg = < 0x00 0x7000000 0xffffff >;

					mca0 {
						compatible = "ibm,power9-mca";
						index = < 0x00 >;
					};

					mca1 {
						compatible = "ibm,power9-mca";
						index = < 0x01 >;
					};

					mca2 {
						compatible = "ibm,power9-mca";
						index = < 0x02 >;
					};

					mca3 {
						compatible = "ibm,power9-mca";
						index = < 0x03 >;
					};

					mcbist {
						compatible = "ibm,power9-mcbist";
						index = < 0x00 >;
					};
				};
			};

			chiplet@8000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x08 >;
				reg = < 0x00 0x8000000 0xfffff >;
				#address-cells = < 0x02 >;
				#size-cells = < 0x01 >;

				mc@1 {
					compatible = "ibm,power9-mc";
					index = < 0x01 >;
					reg = < 0x00 0x8000000 0xffffff >;

					mca0 {
						compatible = "ibm,power9-mca";
						index = < 0x04 >;
					};

					mca1 {
						compatible = "ibm,power9-mca";
						index = < 0x05 >;
					};

					mca2 {
						compatible = "ibm,power9-mca";
						index = < 0x06 >;
					};

					mca3 {
						compatible = "ibm,power9-mca";
						index = < 0x07 >;
					};

					mcbist {
						compatible = "ibm,power9-mcbist";
						index = < 0x01 >;
					};
				};
			};

			chiplet@9000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x09 >;
				reg = < 0x00 0x9000000 0xfffff >;
				#address-cells = < 0x02 >;
				#size-cells = < 0x01 >;

				obus@0 {
					compatible = "ibm,power9-obus";
					index = < 0x00 >;
					reg = < 0x00 0x9000000 0xffffff >;
				};

				obrick0 {
					compatible = "ibm,power9-obus_brick";
					index = < 0x00 >;
				};

				obrick1 {
					compatible = "ibm,power9-obus_brick";
					index = < 0x01 >;
				};

				obrick2 {
					compatible = "ibm,power9-obus_brick";
					index = < 0x02 >;
				};
			};

			chiplet@c000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x0c >;
				reg = < 0x00 0xc000000 0xfffff >;
				#address-cells = < 0x02 >;
				#size-cells = < 0x01 >;

				obus@3 {
					compatible = "ibm,power9-obus";
					index = < 0x03 >;
					reg = < 0x00 0xc000000 0xffffff >;
				};

				obrick0 {
					compatible = "ibm,power9-obus_brick";
					index = < 0x09 >;
				};

				obrick1 {
					compatible = "ibm,power9-obus_brick";
					index = < 0x0a >;
				};

				obrick2 {
					compatible = "ibm,power9-obus_brick";
					index = < 0x0b >;
				};
			};

			chiplet@d000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x0d >;
				reg = < 0x00 0xd000000 0xfffff >;
				#address-cells = < 0x02 >;
				#size-cells = < 0x01 >;

				pec@d000000 {
					compatible = "ibm,power9-pec";
					index = < 0x00 >;
					reg = < 0x00 0xd000000 0xfffff >;
				};

				phb0 {
					compatible = "ibm,power9-phb";
					index = < 0x00 >;
				};

				phb1 {
					compatible = "ibm,power9-phb";
					index = < 0x01 >;
				};
			};

			chiplet@e000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x0e >;
				reg = < 0x00 0xe000000 0xfffff >;
				#address-cells = < 0x02 >;
				#size-cells = < 0x01 >;

				pec@e000000 {
					compatible = "ibm,power9-pec";
					index = < 0x01 >;
					reg = < 0x00 0xe000000 0xfffff >;
				};

				phb0 {
					compatible = "ibm,power9-phb";
					index = < 0x02 >;
				};

				phb1 {
					compatible = "ibm,power9-phb";
					index = < 0x03 >;
				};
			};

			chiplet@f000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x0f >;
				reg = < 0x00 0xf000000 0xfffff >;
				#address-cells = < 0x02 >;
				#size-cells = < 0x01 >;

				pec@f000000 {
					compatible = "ibm,power9-pec";
					index = < 0x02 >;
					reg = < 0x00 0xf000000 0xfffff >;
				};

				phb0 {
					compatible = "ibm,power9-phb";
					index = < 0x04 >;
				};

				phb1 {
					compatible = "ibm,power9-phb";
					index = < 0x05 >;
				};
			};

			chiplet@10000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x10 >;
				reg = < 0x00 0x10000000 0xfffff >;
				#address-cells = < 0x02 >;
				#size-cells = < 0x01 >;

				eq@0 {
					compatible = "ibm,power9-eq";
					index = < 0x00 >;
					reg = < 0x00 0x10000000 0xffffff >;
					#address-cells = < 0x02 >;
					#size-cells = < 0x01 >;

					ex@0 {
						compatible = "ibm,power9-ex";
						index = < 0x00 >;
						reg = < 0x00 0x10000000 0xffffff >;
						#address-cells = < 0x02 >;
						#size-cells = < 0x01 >;

						chiplet@20000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x20 >;
							reg = < 0x00 0x20000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x00 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};

						chiplet@21000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x21 >;
							reg = < 0x00 0x21000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x01 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};
					};

					ex@1 {
						compatible = "ibm,power9-ex";
						index = < 0x01 >;
						reg = < 0x00 0x10000000 0xffffff >;
						#address-cells = < 0x02 >;
						#size-cells = < 0x01 >;

						chiplet@22000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x22 >;
							reg = < 0x00 0x22000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x02 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};

						chiplet@23000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x23 >;
							reg = < 0x00 0x23000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x03 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};
					};
				};
			};

			chiplet@11000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x11 >;
				reg = < 0x00 0x11000000 0xfffff >;
				#address-cells = < 0x02 >;
				#size-cells = < 0x01 >;

				eq@1 {
					compatible = "ibm,power9-eq";
					index = < 0x01 >;
					reg = < 0x00 0x11000000 0xffffff >;
					#address-cells = < 0x02 >;
					#size-cells = < 0x01 >;

					ex@0 {
						compatible = "ibm,power9-ex";
						index = < 0x00 >;
						reg = < 0x00 0x10000000 0xffffff >;
						#address-cells = < 0x02 >;
						#size-cells = < 0x01 >;

						chiplet@24000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x24 >;
							reg = < 0x00 0x24000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x04 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};

						chiplet@25000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x25 >;
							reg = < 0x00 0x25000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x05 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};
					};

					ex@1 {
						compatible = "ibm,power9-ex";
						index = < 0x01 >;
						reg = < 0x00 0x10000000 0xffffff >;
						#address-cells = < 0x02 >;
						#size-cells = < 0x01 >;

						chiplet@26000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x26 >;
							reg = < 0x00 0x26000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x06 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};

						chiplet@27000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x27 >;
							reg = < 0x00 0x27000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x07 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};
					};
				};
			};

			chiplet@12000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x12 >;
				reg = < 0x00 0x12000000 0xfffff >;
				#address-cells = < 0x02 >;
				#size-cells = < 0x01 >;

				eq@2 {
					compatible = "ibm,power9-eq";
					index = < 0x02 >;
					reg = < 0x00 0x12000000 0xffffff >;
					#address-cells = < 0x02 >;
					#size-cells = < 0x01 >;

					ex@0 {
						compatible = "ibm,power9-ex";
						index = < 0x00 >;
						reg = < 0x00 0x12000000 0xffffff >;
						#address-cells = < 0x02 >;
						#size-cells = < 0x01 >;

						chiplet@28000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x28 >;
							reg = < 0x00 0x28000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x08 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};

						chiplet@29000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x29 >;
							reg = < 0x00 0x29000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x09 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};
					};

					ex@1 {
						compatible = "ibm,power9-ex";
						index = < 0x01 >;
						reg = < 0x00 0x12000000 0xffffff >;
						#address-cells = < 0x02 >;
						#size-cells = < 0x01 >;

						chiplet@2a000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x2a >;
							reg = < 0x00 0x2a000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x0a >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};

						chiplet@2b000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x2b >;
							reg = < 0x00 0x2b000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x0b >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};
					};
				};
			};

			chiplet@13000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x13 >;
				reg = < 0x00 0x13000000 0xfffff >;
				#address-cells = < 0x02 >;
				#size-cells = < 0x01 >;

				eq@3 {
					compatible = "ibm,power9-eq";
					index = < 0x03 >;
					reg = < 0x00 0x13000000 0xffffff >;
					#address-cells = < 0x02 >;
					#size-cells = < 0x01 >;

					ex@0 {
						compatible = "ibm,power9-ex";
						index = < 0x00 >;
						reg = < 0x00 0x13000000 0xffffff >;
						#address-cells = < 0x02 >;
						#size-cells = < 0x01 >;

						chiplet@2c000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x2c >;
							reg = < 0x00 0x2c000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x0c >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};

						chiplet@2d000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x2d >;
							reg = < 0x00 0x2d000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x0d >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};
					};

					ex@1 {
						compatible = "ibm,power9-ex";
						index = < 0x01 >;
						reg = < 0x00 0x13000000 0xffffff >;
						#address-cells = < 0x02 >;
						#size-cells = < 0x01 >;

						chiplet@2e000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x2e >;
							reg = < 0x00 0x2e000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x0e >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};

						chiplet@2f000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x2f >;
							reg = < 0x00 0x2f000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x0f >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};
					};
				};
			};

			chiplet@14000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x14 >;
				reg = < 0x00 0x14000000 0xfffff >;
				#address-cells = < 0x02 >;
				#size-cells = < 0x01 >;

				eq@4 {
					compatible = "ibm,power9-eq";
					index = < 0x04 >;
					reg = < 0x00 0x13000000 0xffffff >;
					#address-cells = < 0x02 >;
					#size-cells = < 0x01 >;

					ex@0 {
						compatible = "ibm,power9-ex";
						index = < 0x00 >;
						reg = < 0x00 0x14000000 0xffffff >;
						#address-cells = < 0x02 >;
						#size-cells = < 0x01 >;

						chiplet@30000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x30 >;
							reg = < 0x00 0x30000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x10 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};

						chiplet@31000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x31 >;
							reg = < 0x00 0x31000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x11 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};
					};

					ex@1 {
						compatible = "ibm,power9-ex";
						index = < 0x01 >;
						reg = < 0x00 0x14000000 0xffffff >;
						#address-cells = < 0x02 >;
						#size-cells = < 0x01 >;

						chiplet@32000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x32 >;
							reg = < 0x00 0x32000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x12 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};

						chiplet@33000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x33 >;
							reg = < 0x00 0x33000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x13 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};
					};
				};
			};

			chiplet@15000000 {
				compatible = "ibm,power9-chiplet";
				index = < 0x15 >;
				reg = < 0x00 0x15000000 0xfffff >;
				#address-cells = < 0x02 >;
				#size-cells = < 0x01 >;

				eq@5 {
					compatible = "ibm,power9-eq";
					index = < 0x05 >;
					reg = < 0x00 0x13000000 0xffffff >;
					#address-cells = < 0x02 >;
					#size-cells = < 0x01 >;

					ex@0 {
						compatible = "ibm,power9-ex";
						index = < 0x00 >;
						reg = < 0x00 0x15000000 0xffffff >;
						#address-cells = < 0x02 >;
						#size-cells = < 0x01 >;

						chiplet@34000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x34 >;
							reg = < 0x00 0x34000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x14 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};

						chiplet@35000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x35 >;
							reg = < 0x00 0x35000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x15 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};
					};

					ex@1 {
						compatible = "ibm,power9-ex";
						index = < 0x01 >;
						reg = < 0x00 0x15000000 0xffffff >;
						#address-cells = < 0x02 >;
						#size-cells = < 0x01 >;

						chiplet@36000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x36 >;
							reg = < 0x00 0x36000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x16 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};

						chiplet@37000000 {
							#address-cells = < 0x02 >;
							#size-cells = < 0x01 >;
							compatible = "ibm,power9-chiplet";
							index = < 0x37 >;
							reg = < 0x00 0x37000000 0xfffff >;

							core@0 {
								#address-cells = < 0x01 >;
								#size-cells = < 0x00 >;
								compatible = "ibm,power-core", "ibm,power9-core";
								index = < 0x17 >;
								reg = < 0x00 0x00 0xfffff >;

								thread@0 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x00 >;
									index = < 0x00 >;
								};

								thread@1 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x01 >;
									index = < 0x01 >;
								};

								thread@2 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x02 >;
									index = < 0x02 >;
								};

								thread@3 {
									compatible = "ibm,power-thread", "ibm,power9-thread";
									reg = < 0x00 >;
									tid = < 0x03 >;
									index = < 0x03 >;
								};
							};
						};
					};
				};
			};

			nv0 {
				compatible = "ibm,power9-nv";
				index = < 0x00 >;
			};

			nv1 {
				compatible = "ibm,power9-nv";
				index = < 0x01 >;
			};

			nv2 {
				compatible = "ibm,power9-nv";
				index = < 0x02 >;
			};

			nv3 {
				compatible = "ibm,power9-nv";
				index = < 0x03 >;
			};

			nv4 {
				compatible = "ibm,power9-nv";
				index = < 0x04 >;
			};

			nv5 {
				compatible = "ibm,power9-nv";
				index = < 0x05 >;
			};

			occ0 {
				compatible = "ibm,power9-occ";
				index = < 0x00 >;
			};

			sbe0 {
				compatible = "ibm,power9-sbe";
				index = < 0x00 >;
			};

			ppe0 {
				compatible = "ibm,power9-ppe";
				index = < 0x00 >;
			};

			ppe1 {
				compatible = "ibm,power9-ppe";
				index = < 0x0a >;
			};

			ppe2 {
				compatible = "ibm,power9-ppe";
				index = < 0x0d >;
			};

			ppe3 {
				compatible = "ibm,power9-ppe";
				index = < 0x14 >;
			};

			ppe4 {
				compatible = "ibm,power9-ppe";
				index = < 0x19 >;
			};

			ppe5 {
				compatible = "ibm,power9-ppe";
				index = < 0x1e >;
			};

			ppe6 {
				compatible = "ibm,power9-ppe";
				index = < 0x28 >;
			};

			ppe7 {
				compatible = "ibm,power9-ppe";
				index = < 0x29 >;
			};

			ppe8 {
				compatible = "ibm,power9-ppe";
				index = < 0x2a >;
			};

			ppe9 {
				compatible = "ibm,power9-ppe";
				index = < 0x2b >;
			};

			ppe10 {
				compatible = "ibm,power9-ppe";
				index = < 0x2c >;
			};

			ppe11 {
				compatible = "ibm,power9-ppe";
				index = < 0x2d >;
			};

			ppe12 {
				compatible = "ibm,power9-ppe";
				index = < 0x2e >;
			};

			ppe13 {
				compatible = "ibm,power9-ppe";
				index = < 0x32 >;
			};

			ppe14 {
				compatible = "ibm,power9-ppe";
				index = < 0x34 >;
			};

			ppe15 {
				compatible = "ibm,power9-ppe";
				index = < 0x38 >;
			};
		};
	};
};