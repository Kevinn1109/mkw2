nofralloc
/* 805B4F44 9421FF60 */ stwu        r1, -0xa0(r1)
/* 805B4F48 DBE10090 */ stfd        f31, 0x90(r1)
/* 805B4F4C F3E10098 */ psq_st      f31, 0x98(r1), 0, 0
/* 805B4F50 DBC10080 */ stfd        f30, 0x80(r1)
/* 805B4F54 F3C10088 */ psq_st      f30, 0x88(r1), 0, 0
/* 805B4F58 DBA10070 */ stfd        f29, 0x70(r1)
/* 805B4F5C F3A10078 */ psq_st      f29, 0x78(r1), 0, 0
/* 805B4F60 DB810060 */ stfd        f28, 0x60(r1)
/* 805B4F64 F3810068 */ psq_st      f28, 0x68(r1), 0, 0
/* 805B4F68 DB610050 */ stfd        f27, 0x50(r1)
/* 805B4F6C F3610058 */ psq_st      f27, 0x58(r1), 0, 0
/* 805B4F70 DB410040 */ stfd        f26, 0x40(r1)
/* 805B4F74 F3410048 */ psq_st      f26, 0x48(r1), 0, 0
/* 805B4F78 DB210030 */ stfd        f25, 0x30(r1)
/* 805B4F7C F3210038 */ psq_st      f25, 0x38(r1), 0, 0
/* 805B4F80 C02300A4 */ lfs         f1, 0xa4(r3)
/* 805B4F84 C0030014 */ lfs         f0, 0x14(r3)
/* 805B4F88 C0430004 */ lfs         f2, 4(r3)
/* 805B4F8C C0630024 */ lfs         f3, 0x24(r3)
/* 805B4F90 ED000072 */ fmuls       f8, f0, f1
/* 805B4F94 ECA20072 */ fmuls       f5, f2, f1
/* 805B4F98 C0830028 */ lfs         f4, 0x28(r3)
/* 805B4F9C C00300A8 */ lfs         f0, 0xa8(r3)
/* 805B4FA0 ED430072 */ fmuls       f10, f3, f1
/* 805B4FA4 C0630018 */ lfs         f3, 0x18(r3)
/* 805B4FA8 ED240032 */ fmuls       f9, f4, f0
/* 805B4FAC ECE30032 */ fmuls       f7, f3, f0
/* 805B4FB0 C0430008 */ lfs         f2, 8(r3)
/* 805B4FB4 C163002C */ lfs         f11, 0x2c(r3)
/* 805B4FB8 EC820032 */ fmuls       f4, f2, f0
/* 805B4FBC C04300AC */ lfs         f2, 0xac(r3)
/* 805B4FC0 ED2A482A */ fadds       f9, f10, f9
/* 805B4FC4 C063001C */ lfs         f3, 0x1c(r3)
/* 805B4FC8 ECE8382A */ fadds       f7, f8, f7
/* 805B4FCC ED6B00B2 */ fmuls       f11, f11, f2
/* 805B4FD0 ED8300B2 */ fmuls       f12, f3, f2
/* 805B4FD4 C0C3000C */ lfs         f6, 0xc(r3)
/* 805B4FD8 C3E3011C */ lfs         f31, 0x11c(r3)
/* 805B4FDC EC6B482A */ fadds       f3, f11, f9
/* 805B4FE0 C1A30120 */ lfs         f13, 0x120(r3)
/* 805B4FE4 EF4C382A */ fadds       f26, f12, f7
/* 805B4FE8 ED2600B2 */ fmuls       f9, f6, f2
/* 805B4FEC C3C30124 */ lfs         f30, 0x124(r3)
/* 805B4FF0 ECC5202A */ fadds       f6, f5, f4
/* 805B4FF4 EF6100F2 */ fmuls       f27, f1, f3
/* 805B4FF8 C1630054 */ lfs         f11, 0x54(r3)
/* 805B4FFC EF8000F2 */ fmuls       f28, f0, f3
/* 805B5000 EF29302A */ fadds       f25, f9, f6
/* 805B5004 C1430058 */ lfs         f10, 0x58(r3)
/* 805B5008 EFA206B2 */ fmuls       f29, f2, f26
/* 805B500C EC2106B2 */ fmuls       f1, f1, f26
/* 805B5010 D3210020 */ stfs        f25, 0x20(r1)
/* 805B5014 EC420672 */ fmuls       f2, f2, f25
/* 805B5018 EF9CE828 */ fsubs       f28, f28, f29
/* 805B501C C1030044 */ lfs         f8, 0x44(r3)
/* 805B5020 EC000672 */ fmuls       f0, f0, f25
/* 805B5024 EF62D828 */ fsubs       f27, f2, f27
/* 805B5028 C0E30048 */ lfs         f7, 0x48(r3)
/* 805B502C EFFFE028 */ fsubs       f31, f31, f28
/* 805B5030 EF210028 */ fsubs       f25, f1, f0
/* 805B5034 C0A30034 */ lfs         f5, 0x34(r3)
/* 805B5038 EDADD828 */ fsubs       f13, f13, f27
/* 805B503C C0830038 */ lfs         f4, 0x38(r3)
/* 805B5040 ED6B07F2 */ fmuls       f11, f11, f31
/* 805B5044 D0610028 */ stfs        f3, 0x28(r1)
/* 805B5048 EC6807F2 */ fmuls       f3, f8, f31
/* 805B504C C183005C */ lfs         f12, 0x5c(r3)
/* 805B5050 ED1EC828 */ fsubs       f8, f30, f25
/* 805B5054 C123004C */ lfs         f9, 0x4c(r3)
/* 805B5058 EC470372 */ fmuls       f2, f7, f13
/* 805B505C C0C3003C */ lfs         f6, 0x3c(r3)
/* 805B5060 EC040372 */ fmuls       f0, f4, f13
/* 805B5064 D3410024 */ stfs        f26, 0x24(r1)
/* 805B5068 EC2507F2 */ fmuls       f1, f5, f31
/* 805B506C ED4A0372 */ fmuls       f10, f10, f13
/* 805B5070 D3810014 */ stfs        f28, 0x14(r1)
/* 805B5074 EC63102A */ fadds       f3, f3, f2
/* 805B5078 ECEC0232 */ fmuls       f7, f12, f8
/* 805B507C D3610018 */ stfs        f27, 0x18(r1)
/* 805B5080 ECAB502A */ fadds       f5, f11, f10
/* 805B5084 EC890232 */ fmuls       f4, f9, f8
/* 805B5088 D321001C */ stfs        f25, 0x1c(r1)
/* 805B508C EC01002A */ fadds       f0, f1, f0
/* 805B5090 EC460232 */ fmuls       f2, f6, f8
/* 805B5094 D3E10008 */ stfs        f31, 8(r1)
/* 805B5098 ECA7282A */ fadds       f5, f7, f5
/* 805B509C EC24182A */ fadds       f1, f4, f3
/* 805B50A0 D1A1000C */ stfs        f13, 0xc(r1)
/* 805B50A4 EC02002A */ fadds       f0, f2, f0
/* 805B50A8 D1010010 */ stfs        f8, 0x10(r1)
/* 805B50AC D0A300A0 */ stfs        f5, 0xa0(r3)
/* 805B50B0 D023009C */ stfs        f1, 0x9c(r3)
/* 805B50B4 D0030098 */ stfs        f0, 0x98(r3)
/* 805B50B8 E3E10098 */ psq_l       f31, 0x98(r1), 0, 0
/* 805B50BC CBE10090 */ lfd         f31, 0x90(r1)
/* 805B50C0 E3C10088 */ psq_l       f30, 0x88(r1), 0, 0
/* 805B50C4 CBC10080 */ lfd         f30, 0x80(r1)
/* 805B50C8 E3A10078 */ psq_l       f29, 0x78(r1), 0, 0
/* 805B50CC CBA10070 */ lfd         f29, 0x70(r1)
/* 805B50D0 E3810068 */ psq_l       f28, 0x68(r1), 0, 0
/* 805B50D4 CB810060 */ lfd         f28, 0x60(r1)
/* 805B50D8 E3610058 */ psq_l       f27, 0x58(r1), 0, 0
/* 805B50DC CB610050 */ lfd         f27, 0x50(r1)
/* 805B50E0 E3410048 */ psq_l       f26, 0x48(r1), 0, 0
/* 805B50E4 CB410040 */ lfd         f26, 0x40(r1)
/* 805B50E8 E3210038 */ psq_l       f25, 0x38(r1), 0, 0
/* 805B50EC CB210030 */ lfd         f25, 0x30(r1)
/* 805B50F0 382100A0 */ addi        r1, r1, 0xa0
/* 805B50F4 4E800020 */ blr         