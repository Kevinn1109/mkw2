nofralloc
/* 80583B88 9421FEE0 */ stwu        r1, -0x120(r1)
/* 80583B8C 7C0802A6 */ mflr        r0
/* 80583B90 90010124 */ stw         r0, 0x124(r1)
/* 80583B94 DBE10110 */ stfd        f31, 0x110(r1)
/* 80583B98 F3E10118 */ psq_st      f31, 0x118(r1), 0, 0
/* 80583B9C DBC10100 */ stfd        f30, 0x100(r1)
/* 80583BA0 F3C10108 */ psq_st      f30, 0x108(r1), 0, 0
/* 80583BA4 DBA100F0 */ stfd        f29, 0xf0(r1)
/* 80583BA8 F3A100F8 */ psq_st      f29, 0xf8(r1), 0, 0
/* 80583BAC DB8100E0 */ stfd        f28, 0xe0(r1)
/* 80583BB0 F38100E8 */ psq_st      f28, 0xe8(r1), 0, 0
/* 80583BB4 DB6100D0 */ stfd        f27, 0xd0(r1)
/* 80583BB8 F36100D8 */ psq_st      f27, 0xd8(r1), 0, 0
/* 80583BBC 396100D0 */ addi        r11, r1, 0xd0
/* 80583BC0 4BA9D9DD */ bl          _savegpr_26
/* 80583BC4 80830000 */ lwz         r4, 0(r3)
/* 80583BC8 3F808089 */ lis         r28, lbl_80891a00@ha
/* 80583BCC 7C7F1B78 */ mr          r31, r3
/* 80583BD0 80A40004 */ lwz         r5, 4(r4)
/* 80583BD4 3B9C1A00 */ addi        r28, r28, lbl_80891a00@l
/* 80583BD8 80050008 */ lwz         r0, 8(r5)
/* 80583BDC 5400056B */ rlwinm.     r0, r0, 0, 0x15, 0x15
/* 80583BE0 41820018 */ beq-        lbl_80583bf8
/* 80583BE4 80640004 */ lwz         r3, 4(r4)
/* 80583BE8 80030004 */ lwz         r0, 4(r3)
/* 80583BEC 5400041C */ rlwinm      r0, r0, 0, 0x10, 0xe
/* 80583BF0 90030004 */ stw         r0, 4(r3)
/* 80583BF4 480002F8 */ b           lbl_80583eec
lbl_80583bf8:
/* 80583BF8 80050004 */ lwz         r0, 4(r5)
/* 80583BFC 540003DF */ rlwinm.     r0, r0, 0, 0xf, 0xf
/* 80583C00 40820014 */ bne-        lbl_80583c14
/* 80583C04 4800CC49 */ bl          kartCollide__Q24Kart15KartObjectProxyFv
/* 80583C08 8003002C */ lwz         r0, 0x2c(r3)
/* 80583C0C 54000529 */ rlwinm.     r0, r0, 0, 0x14, 0x14
/* 80583C10 41820018 */ beq-        lbl_80583c28
lbl_80583c14:
/* 80583C14 C03F0020 */ lfs         f1, 0x20(r31)
/* 80583C18 C01C00C0 */ lfs         f0, 0xc0(r28)
/* 80583C1C FC200A10 */ fabs        f1, f1
/* 80583C20 FC010040 */ fcmpo       cr0, f1, f0
/* 80583C24 41810018 */ bgt-        lbl_80583c3c
lbl_80583c28:
/* 80583C28 807F0000 */ lwz         r3, 0(r31)
/* 80583C2C 80630004 */ lwz         r3, 4(r3)
/* 80583C30 8003000C */ lwz         r0, 0xc(r3)
/* 80583C34 54000109 */ rlwinm.     r0, r0, 0, 4, 4
/* 80583C38 418202B4 */ beq-        lbl_80583eec
lbl_80583c3c:
/* 80583C3C 7FE3FB78 */ mr          r3, r31
/* 80583C40 4800C78D */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80583C44 80A30068 */ lwz         r5, 0x68(r3)
/* 80583C48 8083006C */ lwz         r4, 0x6c(r3)
/* 80583C4C 80030070 */ lwz         r0, 0x70(r3)
/* 80583C50 7FE3FB78 */ mr          r3, r31
/* 80583C54 90A10048 */ stw         r5, 0x48(r1)
/* 80583C58 9081004C */ stw         r4, 0x4c(r1)
/* 80583C5C 90010050 */ stw         r0, 0x50(r1)
/* 80583C60 4800C76D */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80583C64 C0DF0020 */ lfs         f6, 0x20(r31)
/* 80583C68 C05F0074 */ lfs         f2, 0x74(r31)
/* 80583C6C C03F0078 */ lfs         f1, 0x78(r31)
/* 80583C70 ECA600B2 */ fmuls       f5, f6, f2
/* 80583C74 C08300B0 */ lfs         f4, 0xb0(r3)
/* 80583C78 C01F007C */ lfs         f0, 0x7c(r31)
/* 80583C7C EC660072 */ fmuls       f3, f6, f1
/* 80583C80 C04300B4 */ lfs         f2, 0xb4(r3)
/* 80583C84 EC260032 */ fmuls       f1, f6, f0
/* 80583C88 C00300B8 */ lfs         f0, 0xb8(r3)
/* 80583C8C EC84282A */ fadds       f4, f4, f5
/* 80583C90 EC42182A */ fadds       f2, f2, f3
/* 80583C94 7FE3FB78 */ mr          r3, r31
/* 80583C98 EC00082A */ fadds       f0, f0, f1
/* 80583C9C D081003C */ stfs        f4, 0x3c(r1)
/* 80583CA0 D0410040 */ stfs        f2, 0x40(r1)
/* 80583CA4 D0010044 */ stfs        f0, 0x44(r1)
/* 80583CA8 4800C5BD */ bl          PlayerPointers_getMat
/* 80583CAC 3C80808B */ lis         r4, lbl_808b5af0@ha
/* 80583CB0 C0A30004 */ lfs         f5, 4(r3)
/* 80583CB4 C0C30014 */ lfs         f6, 0x14(r3)
/* 80583CB8 38000000 */ li          r0, 0
/* 80583CBC C0E30024 */ lfs         f7, 0x24(r3)
/* 80583CC0 FC402818 */ frsp        f2, f5
/* 80583CC4 C3C45AF0 */ lfs         f30, lbl_808b5af0@l(r4)
/* 80583CC8 FC203018 */ frsp        f1, f6
/* 80583CCC FC003818 */ frsp        f0, f7
/* 80583CD0 C09C0000 */ lfs         f4, 0(r28)
/* 80583CD4 FC60F050 */ fneg        f3, f30
/* 80583CD8 C3FC001C */ lfs         f31, 0x1c(r28)
/* 80583CDC 3B600000 */ li          r27, 0
/* 80583CE0 D0A10030 */ stfs        f5, 0x30(r1)
/* 80583CE4 EF6300B2 */ fmuls       f27, f3, f2
/* 80583CE8 3B400000 */ li          r26, 0
/* 80583CEC EF830072 */ fmuls       f28, f3, f1
/* 80583CF0 D0C10034 */ stfs        f6, 0x34(r1)
/* 80583CF4 EFA30032 */ fmuls       f29, f3, f0
/* 80583CF8 3F80809C */ lis         r28, spInstance__Q25Field11CourseModel@ha
/* 80583CFC D0E10038 */ stfs        f7, 0x38(r1)
/* 80583D00 3FA0809C */ lis         r29, VEC_INFINITY@ha
/* 80583D04 3FC00040 */ lis         r30, 0x40
/* 80583D08 D0810054 */ stfs        f4, 0x54(r1)
/* 80583D0C D0810058 */ stfs        f4, 0x58(r1)
/* 80583D10 D081005C */ stfs        f4, 0x5c(r1)
/* 80583D14 D0810060 */ stfs        f4, 0x60(r1)
/* 80583D18 D0810064 */ stfs        f4, 0x64(r1)
/* 80583D1C D0810068 */ stfs        f4, 0x68(r1)
/* 80583D20 900100AC */ stw         r0, 0xac(r1)
/* 80583D24 90010008 */ stw         r0, 8(r1)
lbl_80583d28:
/* 80583D28 C0410048 */ lfs         f2, 0x48(r1)
/* 80583D2C FC20F090 */ fmr         f1, f30
/* 80583D30 C001003C */ lfs         f0, 0x3c(r1)
/* 80583D34 38810024 */ addi        r4, r1, 0x24
/* 80583D38 C081004C */ lfs         f4, 0x4c(r1)
/* 80583D3C 38BD3C04 */ addi        r5, r29, VEC_INFINITY@l
/* 80583D40 ECA2002A */ fadds       f5, f2, f0
/* 80583D44 C0610040 */ lfs         f3, 0x40(r1)
/* 80583D48 38DE0800 */ addi        r6, r30, 0x800
/* 80583D4C C0410050 */ lfs         f2, 0x50(r1)
/* 80583D50 38E10054 */ addi        r7, r1, 0x54
/* 80583D54 C0010044 */ lfs         f0, 0x44(r1)
/* 80583D58 EC64182A */ fadds       f3, f4, f3
/* 80583D5C D0A10024 */ stfs        f5, 0x24(r1)
/* 80583D60 EC02002A */ fadds       f0, f2, f0
/* 80583D64 807C2F44 */ lwz         r3, spInstance__Q25Field11CourseModel@l(r28)
/* 80583D68 D0610028 */ stfs        f3, 0x28(r1)
/* 80583D6C 39010008 */ addi        r8, r1, 8
/* 80583D70 D001002C */ stfs        f0, 0x2c(r1)
/* 80583D74 39200000 */ li          r9, 0
/* 80583D78 4820B789 */ bl          checkSphereFull__Q25Field11CourseModelFRCQ23EGG8Vector3fRCQ23EGG8Vector3fUlPQ25Field7ColInfoPUlfUl
/* 80583D7C 2C030000 */ cmpwi       r3, 0
/* 80583D80 418200FC */ beq-        lbl_80583e7c
/* 80583D84 3B810078 */ addi        r28, r1, 0x78
/* 80583D88 387F0074 */ addi        r3, r31, 0x74
/* 80583D8C 7C641B78 */ mr          r4, r3
/* 80583D90 38C00001 */ li          r6, 1
/* 80583D94 7F85E378 */ mr          r5, r28
/* 80583D98 4802AC55 */ bl          VEC3_perpInPlane
/* 80583D9C 7FE3FB78 */ mr          r3, r31
/* 80583DA0 4800C62D */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80583DA4 808300B0 */ lwz         r4, 0xb0(r3)
/* 80583DA8 7F85E378 */ mr          r5, r28
/* 80583DAC 800300B4 */ lwz         r0, 0xb4(r3)
/* 80583DB0 9001001C */ stw         r0, 0x1c(r1)
/* 80583DB4 90810018 */ stw         r4, 0x18(r1)
/* 80583DB8 800300B8 */ lwz         r0, 0xb8(r3)
/* 80583DBC 38610018 */ addi        r3, r1, 0x18
/* 80583DC0 90010020 */ stw         r0, 0x20(r1)
/* 80583DC4 7C641B78 */ mr          r4, r3
/* 80583DC8 4802AE09 */ bl          rejUnit__6RKGeomFRQ23EGG8Vector3fRCQ23EGG8Vector3fRCQ23EGG8Vector3f
/* 80583DCC 7FE3FB78 */ mr          r3, r31
/* 80583DD0 4800C5FD */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80583DD4 C0010018 */ lfs         f0, 0x18(r1)
/* 80583DD8 D00300B0 */ stfs        f0, 0xb0(r3)
/* 80583DDC C001001C */ lfs         f0, 0x1c(r1)
/* 80583DE0 D00300B4 */ stfs        f0, 0xb4(r3)
/* 80583DE4 C0010020 */ lfs         f0, 0x20(r1)
/* 80583DE8 D00300B8 */ stfs        f0, 0xb8(r3)
/* 80583DEC 7FE3FB78 */ mr          r3, r31
/* 80583DF0 4800C5DD */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80583DF4 808300C8 */ lwz         r4, 0xc8(r3)
/* 80583DF8 7F85E378 */ mr          r5, r28
/* 80583DFC 800300CC */ lwz         r0, 0xcc(r3)
/* 80583E00 90010010 */ stw         r0, 0x10(r1)
/* 80583E04 9081000C */ stw         r4, 0xc(r1)
/* 80583E08 800300D0 */ lwz         r0, 0xd0(r3)
/* 80583E0C 3861000C */ addi        r3, r1, 0xc
/* 80583E10 90010014 */ stw         r0, 0x14(r1)
/* 80583E14 7C641B78 */ mr          r4, r3
/* 80583E18 4802ADB9 */ bl          rejUnit__6RKGeomFRQ23EGG8Vector3fRCQ23EGG8Vector3fRCQ23EGG8Vector3f
/* 80583E1C 7FE3FB78 */ mr          r3, r31
/* 80583E20 4800C5AD */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80583E24 C001000C */ lfs         f0, 0xc(r1)
/* 80583E28 D00300C8 */ stfs        f0, 0xc8(r3)
/* 80583E2C C0010010 */ lfs         f0, 0x10(r1)
/* 80583E30 D00300CC */ stfs        f0, 0xcc(r3)
/* 80583E34 C0010014 */ lfs         f0, 0x14(r1)
/* 80583E38 D00300D0 */ stfs        f0, 0xd0(r3)
/* 80583E3C 807F0000 */ lwz         r3, 0(r31)
/* 80583E40 80630004 */ lwz         r3, 4(r3)
/* 80583E44 8003000C */ lwz         r0, 0xc(r3)
/* 80583E48 540005AD */ rlwinm.     r0, r0, 0, 0x16, 0x16
/* 80583E4C 41820028 */ beq-        lbl_80583e74
/* 80583E50 C0410078 */ lfs         f2, 0x78(r1)
/* 80583E54 D05F0044 */ stfs        f2, 0x44(r31)
/* 80583E58 C021007C */ lfs         f1, 0x7c(r1)
/* 80583E5C D03F0048 */ stfs        f1, 0x48(r31)
/* 80583E60 C0010080 */ lfs         f0, 0x80(r1)
/* 80583E64 D01F004C */ stfs        f0, 0x4c(r31)
/* 80583E68 D05F0038 */ stfs        f2, 0x38(r31)
/* 80583E6C D03F003C */ stfs        f1, 0x3c(r31)
/* 80583E70 D01F0040 */ stfs        f0, 0x40(r31)
lbl_80583e74:
/* 80583E74 3B600001 */ li          r27, 1
/* 80583E78 48000058 */ b           lbl_80583ed0
lbl_80583e7c:
/* 80583E7C C041003C */ lfs         f2, 0x3c(r1)
/* 80583E80 3B5A0001 */ addi        r26, r26, 1
/* 80583E84 C0210040 */ lfs         f1, 0x40(r1)
/* 80583E88 281A0003 */ cmplwi      r26, 3
/* 80583E8C ECA207F2 */ fmuls       f5, f2, f31
/* 80583E90 C0010044 */ lfs         f0, 0x44(r1)
/* 80583E94 EC8107F2 */ fmuls       f4, f1, f31
/* 80583E98 C0410048 */ lfs         f2, 0x48(r1)
/* 80583E9C EC6007F2 */ fmuls       f3, f0, f31
/* 80583EA0 C021004C */ lfs         f1, 0x4c(r1)
/* 80583EA4 C0010050 */ lfs         f0, 0x50(r1)
/* 80583EA8 EC42D82A */ fadds       f2, f2, f27
/* 80583EAC EC21E02A */ fadds       f1, f1, f28
/* 80583EB0 D0A1003C */ stfs        f5, 0x3c(r1)
/* 80583EB4 EC00E82A */ fadds       f0, f0, f29
/* 80583EB8 D0810040 */ stfs        f4, 0x40(r1)
/* 80583EBC D0610044 */ stfs        f3, 0x44(r1)
/* 80583EC0 D0410048 */ stfs        f2, 0x48(r1)
/* 80583EC4 D021004C */ stfs        f1, 0x4c(r1)
/* 80583EC8 D0010050 */ stfs        f0, 0x50(r1)
/* 80583ECC 4180FE5C */ blt+        lbl_80583d28
lbl_80583ed0:
/* 80583ED0 2C1B0000 */ cmpwi       r27, 0
/* 80583ED4 40820018 */ bne-        lbl_80583eec
/* 80583ED8 807F0000 */ lwz         r3, 0(r31)
/* 80583EDC 80630004 */ lwz         r3, 4(r3)
/* 80583EE0 80030004 */ lwz         r0, 4(r3)
/* 80583EE4 5400041C */ rlwinm      r0, r0, 0, 0x10, 0xe
/* 80583EE8 90030004 */ stw         r0, 4(r3)
lbl_80583eec:
/* 80583EEC E3E10118 */ psq_l       f31, 0x118(r1), 0, 0
/* 80583EF0 CBE10110 */ lfd         f31, 0x110(r1)
/* 80583EF4 E3C10108 */ psq_l       f30, 0x108(r1), 0, 0
/* 80583EF8 CBC10100 */ lfd         f30, 0x100(r1)
/* 80583EFC E3A100F8 */ psq_l       f29, 0xf8(r1), 0, 0
/* 80583F00 CBA100F0 */ lfd         f29, 0xf0(r1)
/* 80583F04 E38100E8 */ psq_l       f28, 0xe8(r1), 0, 0
/* 80583F08 CB8100E0 */ lfd         f28, 0xe0(r1)
/* 80583F0C E36100D8 */ psq_l       f27, 0xd8(r1), 0, 0
/* 80583F10 396100D0 */ addi        r11, r1, 0xd0
/* 80583F14 CB6100D0 */ lfd         f27, 0xd0(r1)
/* 80583F18 4BA9D6D1 */ bl          _restgpr_26
/* 80583F1C 80010124 */ lwz         r0, 0x124(r1)
/* 80583F20 7C0803A6 */ mtlr        r0
/* 80583F24 38210120 */ addi        r1, r1, 0x120
/* 80583F28 4E800020 */ blr         