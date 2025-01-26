nofralloc
/* 80583F2C 9421FFB0 */ stwu        r1, -0x50(r1)
/* 80583F30 7C0802A6 */ mflr        r0
/* 80583F34 90010054 */ stw         r0, 0x54(r1)
/* 80583F38 DBE10040 */ stfd        f31, 0x40(r1)
/* 80583F3C F3E10048 */ psq_st      f31, 0x48(r1), 0, 0
/* 80583F40 DBC10030 */ stfd        f30, 0x30(r1)
/* 80583F44 F3C10038 */ psq_st      f30, 0x38(r1), 0, 0
/* 80583F48 39610030 */ addi        r11, r1, 0x30
/* 80583F4C 4BA9D64D */ bl          _savegpr_25
/* 80583F50 FFC00890 */ fmr         f30, f1
/* 80583F54 7C791B78 */ mr          r25, r3
/* 80583F58 FFE01090 */ fmr         f31, f2
/* 80583F5C 7C9A2378 */ mr          r26, r4
/* 80583F60 7CBB2B78 */ mr          r27, r5
/* 80583F64 7CDC3378 */ mr          r28, r6
/* 80583F68 7CFD3B78 */ mr          r29, r7
/* 80583F6C 7D1E4378 */ mr          r30, r8
/* 80583F70 7D3F4B78 */ mr          r31, r9
/* 80583F74 4800C459 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80583F78 C0030068 */ lfs         f0, 0x68(r3)
/* 80583F7C D01A0000 */ stfs        f0, 0(r26)
/* 80583F80 C003006C */ lfs         f0, 0x6c(r3)
/* 80583F84 D01A0004 */ stfs        f0, 4(r26)
/* 80583F88 C0030070 */ lfs         f0, 0x70(r3)
/* 80583F8C 7F23CB78 */ mr          r3, r25
/* 80583F90 D01A0008 */ stfs        f0, 8(r26)
/* 80583F94 4800C439 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80583F98 3C80802A */ lis         r4, RKSystem_ey@ha
/* 80583F9C 7F65DB78 */ mr          r5, r27
/* 80583FA0 38844130 */ addi        r4, r4, RKSystem_ey@l
/* 80583FA4 386300F0 */ addi        r3, r3, 0xf0
/* 80583FA8 4BCB6329 */ bl          rotateVector__Q23EGG5QuatfFRCQ23EGG8Vector3fRQ23EGG8Vector3f
/* 80583FAC FC40F850 */ fneg        f2, f31
/* 80583FB0 C0190168 */ lfs         f0, 0x168(r25)
/* 80583FB4 C09B0000 */ lfs         f4, 0(r27)
/* 80583FB8 FC20F090 */ fmr         f1, f30
/* 80583FBC C07A0000 */ lfs         f3, 0(r26)
/* 80583FC0 3C60809C */ lis         r3, spInstance__Q25Field11CourseModel@ha
/* 80583FC4 ECA20032 */ fmuls       f5, f2, f0
/* 80583FC8 C05A0004 */ lfs         f2, 4(r26)
/* 80583FCC C01A0008 */ lfs         f0, 8(r26)
/* 80583FD0 7F44D378 */ mr          r4, r26
/* 80583FD4 7F85E378 */ mr          r5, r28
/* 80583FD8 7FE6FB78 */ mr          r6, r31
/* 80583FDC EC850132 */ fmuls       f4, f5, f4
/* 80583FE0 7FA7EB78 */ mr          r7, r29
/* 80583FE4 7FC8F378 */ mr          r8, r30
/* 80583FE8 39200000 */ li          r9, 0
/* 80583FEC EC63202A */ fadds       f3, f3, f4
/* 80583FF0 D07A0000 */ stfs        f3, 0(r26)
/* 80583FF4 C07B0004 */ lfs         f3, 4(r27)
/* 80583FF8 EC6500F2 */ fmuls       f3, f5, f3
/* 80583FFC EC42182A */ fadds       f2, f2, f3
/* 80584000 D05A0004 */ stfs        f2, 4(r26)
/* 80584004 C05B0008 */ lfs         f2, 8(r27)
/* 80584008 EC4500B2 */ fmuls       f2, f5, f2
/* 8058400C EC00102A */ fadds       f0, f0, f2
/* 80584010 D01A0008 */ stfs        f0, 8(r26)
/* 80584014 80632F44 */ lwz         r3, spInstance__Q25Field11CourseModel@l(r3)
/* 80584018 4820B76D */ bl          checkSphereFullPush__Q25Field11CourseModelFRCQ23EGG8Vector3fRCQ23EGG8Vector3fUlPQ25Field7ColInfoPUlfUl
/* 8058401C E3E10048 */ psq_l       f31, 0x48(r1), 0, 0
/* 80584020 CBE10040 */ lfd         f31, 0x40(r1)
/* 80584024 E3C10038 */ psq_l       f30, 0x38(r1), 0, 0
/* 80584028 39610030 */ addi        r11, r1, 0x30
/* 8058402C CBC10030 */ lfd         f30, 0x30(r1)
/* 80584030 4BA9D5B5 */ bl          _restgpr_25
/* 80584034 80010054 */ lwz         r0, 0x54(r1)
/* 80584038 7C0803A6 */ mtlr        r0
/* 8058403C 38210050 */ addi        r1, r1, 0x50
/* 80584040 4E800020 */ blr         