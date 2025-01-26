nofralloc
/* 80570DA8 9421FF50 */ stwu        r1, -0xb0(r1)
/* 80570DAC 7C0802A6 */ mflr        r0
/* 80570DB0 900100B4 */ stw         r0, 0xb4(r1)
/* 80570DB4 DBE100A0 */ stfd        f31, 0xa0(r1)
/* 80570DB8 F3E100A8 */ psq_st      f31, 0xa8(r1), 0, 0
/* 80570DBC DBC10090 */ stfd        f30, 0x90(r1)
/* 80570DC0 F3C10098 */ psq_st      f30, 0x98(r1), 0, 0
/* 80570DC4 DBA10080 */ stfd        f29, 0x80(r1)
/* 80570DC8 F3A10088 */ psq_st      f29, 0x88(r1), 0, 0
/* 80570DCC 39610080 */ addi        r11, r1, 0x80
/* 80570DD0 4BAB07C5 */ bl          _savegpr_24
/* 80570DD4 FFC00890 */ fmr         f30, f1
/* 80570DD8 3FE08089 */ lis         r31, lbl_80891730@ha
/* 80570DDC 7CBC2B78 */ mr          r28, r5
/* 80570DE0 7C7A1B78 */ mr          r26, r3
/* 80570DE4 7C9B2378 */ mr          r27, r4
/* 80570DE8 7CDD3378 */ mr          r29, r6
/* 80570DEC 7CFE3B78 */ mr          r30, r7
/* 80570DF0 7F83E378 */ mr          r3, r28
/* 80570DF4 3BFF1730 */ addi        r31, r31, lbl_80891730@l
/* 80570DF8 4801FA55 */ bl          kartCollide__Q24Kart15KartObjectProxyFv
/* 80570DFC A8030018 */ lha         r0, 0x18(r3)
/* 80570E00 2C000000 */ cmpwi       r0, 0
/* 80570E04 41810400 */ bgt-        lbl_80571204
/* 80570E08 3C80809C */ lis         r4, lbl_809c3618@ha
/* 80570E0C 7F83E378 */ mr          r3, r28
/* 80570E10 83043618 */ lwz         r24, lbl_809c3618@l(r4)
/* 80570E14 4801FC49 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80570E18 7C791B78 */ mr          r25, r3
/* 80570E1C 7F63DB78 */ mr          r3, r27
/* 80570E20 4801FC3D */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80570E24 7C601B78 */ mr          r0, r3
/* 80570E28 7F03C378 */ mr          r3, r24
/* 80570E2C 5404063E */ clrlwi      r4, r0, 0x18
/* 80570E30 5725063E */ clrlwi      r5, r25, 0x18
/* 80570E34 48229745 */ bl          unk_8079a578
/* 80570E38 7F63DB78 */ mr          r3, r27
/* 80570E3C 4801FA39 */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 80570E40 C3E30010 */ lfs         f31, 0x10(r3)
/* 80570E44 7F83E378 */ mr          r3, r28
/* 80570E48 4801FA2D */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 80570E4C 809B0000 */ lwz         r4, 0(r27)
/* 80570E50 C3A30010 */ lfs         f29, 0x10(r3)
/* 80570E54 80640004 */ lwz         r3, 4(r4)
/* 80570E58 8003000C */ lwz         r0, 0xc(r3)
/* 80570E5C 540007BD */ rlwinm.     r0, r0, 0, 0x1e, 0x1e
/* 80570E60 41820010 */ beq-        lbl_80570e70
/* 80570E64 FC1FE840 */ fcmpo       cr0, f31, f29
/* 80570E68 40800008 */ bge-        lbl_80570e70
/* 80570E6C FFE0E890 */ fmr         f31, f29
lbl_80570e70:
/* 80570E70 807C0000 */ lwz         r3, 0(r28)
/* 80570E74 80630004 */ lwz         r3, 4(r3)
/* 80570E78 8003000C */ lwz         r0, 0xc(r3)
/* 80570E7C 540007BD */ rlwinm.     r0, r0, 0, 0x1e, 0x1e
/* 80570E80 41820010 */ beq-        lbl_80570e90
/* 80570E84 FC1DF840 */ fcmpo       cr0, f29, f31
/* 80570E88 40800008 */ bge-        lbl_80570e90
/* 80570E8C FFA0F890 */ fmr         f29, f31
lbl_80570e90:
/* 80570E90 7F63DB78 */ mr          r3, r27
/* 80570E94 4801F8E9 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80570E98 A0030118 */ lhz         r0, 0x118(r3)
/* 80570E9C 5400077B */ rlwinm.     r0, r0, 0, 0x1d, 0x1d
/* 80570EA0 4182000C */ beq-        lbl_80570eac
/* 80570EA4 C01F0020 */ lfs         f0, 0x20(r31)
/* 80570EA8 EFFF0032 */ fmuls       f31, f31, f0
lbl_80570eac:
/* 80570EAC 7F83E378 */ mr          r3, r28
/* 80570EB0 4801F8CD */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80570EB4 A0030118 */ lhz         r0, 0x118(r3)
/* 80570EB8 5400077B */ rlwinm.     r0, r0, 0, 0x1d, 0x1d
/* 80570EBC 4182000C */ beq-        lbl_80570ec8
/* 80570EC0 C01F001C */ lfs         f0, 0x1c(r31)
/* 80570EC4 EFFF0032 */ fmuls       f31, f31, f0
lbl_80570ec8:
/* 80570EC8 EFBFE824 */ fdivs       f29, f31, f29
/* 80570ECC 7F83E378 */ mr          r3, r28
/* 80570ED0 4801F8AD */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80570ED4 7C651B78 */ mr          r5, r3
/* 80570ED8 7FA4EB78 */ mr          r4, r29
/* 80570EDC 38610044 */ addi        r3, r1, 0x44
/* 80570EE0 38C00001 */ li          r6, 1
/* 80570EE4 38A50038 */ addi        r5, r5, 0x38
/* 80570EE8 4803DB05 */ bl          VEC3_perpInPlane
/* 80570EEC 7F63DB78 */ mr          r3, r27
/* 80570EF0 4801FE09 */ bl          getVehicleSpeed__Q24Kart15KartObjectProxyFv
/* 80570EF4 FC600A10 */ fabs        f3, f1
/* 80570EF8 C05F0028 */ lfs         f2, 0x28(r31)
/* 80570EFC C03F0024 */ lfs         f1, 0x24(r31)
/* 80570F00 C01F0008 */ lfs         f0, 8(r31)
/* 80570F04 EC4200F2 */ fmuls       f2, f2, f3
/* 80570F08 EC21102A */ fadds       f1, f1, f2
/* 80570F0C EFFD0072 */ fmuls       f31, f29, f1
/* 80570F10 FC00F840 */ fcmpo       cr0, f0, f31
/* 80570F14 40800008 */ bge-        lbl_80570f1c
/* 80570F18 FFE00090 */ fmr         f31, f0
lbl_80570f1c:
/* 80570F1C 387A0004 */ addi        r3, r26, 4
/* 80570F20 4801F955 */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 80570F24 80630008 */ lwz         r3, 8(r3)
/* 80570F28 3C004330 */ lis         r0, 0x4330
/* 80570F2C 90610054 */ stw         r3, 0x54(r1)
/* 80570F30 7F83E378 */ mr          r3, r28
/* 80570F34 80BE0000 */ lwz         r5, 0(r30)
/* 80570F38 90010050 */ stw         r0, 0x50(r1)
/* 80570F3C C85F0040 */ lfd         f2, 0x40(r31)
/* 80570F40 C8010050 */ lfd         f0, 0x50(r1)
/* 80570F44 C03F0004 */ lfs         f1, 4(r31)
/* 80570F48 EC401028 */ fsubs       f2, f0, f2
/* 80570F4C 809E0004 */ lwz         r4, 4(r30)
/* 80570F50 801E0008 */ lwz         r0, 8(r30)
/* 80570F54 C01F002C */ lfs         f0, 0x2c(r31)
/* 80570F58 EC21102A */ fadds       f1, f1, f2
/* 80570F5C 90A10038 */ stw         r5, 0x38(r1)
/* 80570F60 9081003C */ stw         r4, 0x3c(r1)
/* 80570F64 EFA00072 */ fmuls       f29, f0, f1
/* 80570F68 90010040 */ stw         r0, 0x40(r1)
/* 80570F6C 4801FAE1 */ bl          unk_80590a4c
/* 80570F70 FC80F050 */ fneg        f4, f30
/* 80570F74 C0610038 */ lfs         f3, 0x38(r1)
/* 80570F78 C041003C */ lfs         f2, 0x3c(r1)
/* 80570F7C 7F83E378 */ mr          r3, r28
/* 80570F80 C0010040 */ lfs         f0, 0x40(r1)
/* 80570F84 EC240072 */ fmuls       f1, f4, f1
/* 80570F88 EC9D0072 */ fmuls       f4, f29, f1
/* 80570F8C EC630132 */ fmuls       f3, f3, f4
/* 80570F90 EC220132 */ fmuls       f1, f2, f4
/* 80570F94 EC000132 */ fmuls       f0, f0, f4
/* 80570F98 D0610038 */ stfs        f3, 0x38(r1)
/* 80570F9C D021003C */ stfs        f1, 0x3c(r1)
/* 80570FA0 D0010040 */ stfs        f0, 0x40(r1)
/* 80570FA4 4801F269 */ bl          getPos__Q24Kart15KartObjectProxyCFv
/* 80570FA8 C0430000 */ lfs         f2, 0(r3)
/* 80570FAC EFDE07F2 */ fmuls       f30, f30, f31
/* 80570FB0 C0010038 */ lfs         f0, 0x38(r1)
/* 80570FB4 C021003C */ lfs         f1, 0x3c(r1)
/* 80570FB8 EC42002A */ fadds       f2, f2, f0
/* 80570FBC C0010040 */ lfs         f0, 0x40(r1)
/* 80570FC0 D041002C */ stfs        f2, 0x2c(r1)
/* 80570FC4 C0430004 */ lfs         f2, 4(r3)
/* 80570FC8 EC22082A */ fadds       f1, f2, f1
/* 80570FCC D0210030 */ stfs        f1, 0x30(r1)
/* 80570FD0 C0230008 */ lfs         f1, 8(r3)
/* 80570FD4 EC01002A */ fadds       f0, f1, f0
/* 80570FD8 D0010034 */ stfs        f0, 0x34(r1)
/* 80570FDC 807C0000 */ lwz         r3, 0(r28)
/* 80570FE0 80630004 */ lwz         r3, 4(r3)
/* 80570FE4 80030008 */ lwz         r0, 8(r3)
/* 80570FE8 5400056B */ rlwinm.     r0, r0, 0, 0x15, 0x15
/* 80570FEC 41820010 */ beq-        lbl_80570ffc
/* 80570FF0 C01F0030 */ lfs         f0, 0x30(r31)
/* 80570FF4 EFDE0032 */ fmuls       f30, f30, f0
/* 80570FF8 48000018 */ b           lbl_80571010
lbl_80570ffc:
/* 80570FFC 80030004 */ lwz         r0, 4(r3)
/* 80571000 54000421 */ rlwinm.     r0, r0, 0, 0x10, 0x10
/* 80571004 4182000C */ beq-        lbl_80571010
/* 80571008 C01F001C */ lfs         f0, 0x1c(r31)
/* 8057100C EFDE0032 */ fmuls       f30, f30, f0
lbl_80571010:
/* 80571010 80A10044 */ lwz         r5, 0x44(r1)
/* 80571014 7F83E378 */ mr          r3, r28
/* 80571018 90A10020 */ stw         r5, 0x20(r1)
/* 8057101C 80810048 */ lwz         r4, 0x48(r1)
/* 80571020 8001004C */ lwz         r0, 0x4c(r1)
/* 80571024 90810024 */ stw         r4, 0x24(r1)
/* 80571028 C0010020 */ lfs         f0, 0x20(r1)
/* 8057102C C0210024 */ lfs         f1, 0x24(r1)
/* 80571030 EC4007B2 */ fmuls       f2, f0, f30
/* 80571034 90010028 */ stw         r0, 0x28(r1)
/* 80571038 EC2107B2 */ fmuls       f1, f1, f30
/* 8057103C C0010028 */ lfs         f0, 0x28(r1)
/* 80571040 D0410020 */ stfs        f2, 0x20(r1)
/* 80571044 EC0007B2 */ fmuls       f0, f0, f30
/* 80571048 D0210024 */ stfs        f1, 0x24(r1)
/* 8057104C D0010028 */ stfs        f0, 0x28(r1)
/* 80571050 4801F72D */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80571054 7C651B78 */ mr          r5, r3
/* 80571058 38610020 */ addi        r3, r1, 0x20
/* 8057105C 7C641B78 */ mr          r4, r3
/* 80571060 38A50038 */ addi        r5, r5, 0x38
/* 80571064 4803DB6D */ bl          rejUnit__6RKGeomFRQ23EGG8Vector3fRCQ23EGG8Vector3fRCQ23EGG8Vector3f
/* 80571068 7F83E378 */ mr          r3, r28
/* 8057106C 4801F361 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80571070 38810020 */ addi        r4, r1, 0x20
/* 80571074 48045315 */ bl          addForce__Q24Kart12KartDynamicsFRCQ23EGG8Vector3f
/* 80571078 387A0004 */ addi        r3, r26, 4
/* 8057107C 4801F7F9 */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 80571080 7C7D1B78 */ mr          r29, r3
/* 80571084 7F83E378 */ mr          r3, r28
/* 80571088 4801F345 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057108C C03D0014 */ lfs         f1, 0x14(r29)
/* 80571090 3881002C */ addi        r4, r1, 0x2c
/* 80571094 38A10020 */ addi        r5, r1, 0x20
/* 80571098 48044C51 */ bl          applyWrenchScaled__Q24Kart12KartDynamicsFRCQ23EGG8Vector3fRCQ23EGG8Vector3ff
/* 8057109C 7F83E378 */ mr          r3, r28
/* 805710A0 4801F6DD */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 805710A4 C0430020 */ lfs         f2, 0x20(r3)
/* 805710A8 C01F001C */ lfs         f0, 0x1c(r31)
/* 805710AC FC201210 */ fabs        f1, f2
/* 805710B0 EC6007F2 */ fmuls       f3, f0, f31
/* 805710B4 EC000072 */ fmuls       f0, f0, f1
/* 805710B8 EFA11828 */ fsubs       f29, f1, f3
/* 805710BC FC00E840 */ fcmpo       cr0, f0, f29
/* 805710C0 40810008 */ ble-        lbl_805710c8
/* 805710C4 FFA00090 */ fmr         f29, f0
lbl_805710c8:
/* 805710C8 C01F0000 */ lfs         f0, 0(r31)
/* 805710CC FC020040 */ fcmpo       cr0, f2, f0
/* 805710D0 4080000C */ bge-        lbl_805710dc
/* 805710D4 C01F0014 */ lfs         f0, 0x14(r31)
/* 805710D8 48000008 */ b           lbl_805710e0
lbl_805710dc:
/* 805710DC C01F0004 */ lfs         f0, 4(r31)
lbl_805710e0:
/* 805710E0 EFBD0032 */ fmuls       f29, f29, f0
/* 805710E4 7F83E378 */ mr          r3, r28
/* 805710E8 4801F695 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 805710EC D3A30020 */ stfs        f29, 0x20(r3)
/* 805710F0 7F83E378 */ mr          r3, r28
/* 805710F4 4801F759 */ bl          kartCollide__Q24Kart15KartObjectProxyFv
/* 805710F8 3800000A */ li          r0, 0xa
/* 805710FC B0030018 */ sth         r0, 0x18(r3)
/* 80571100 7F83E378 */ mr          r3, r28
/* 80571104 4801F749 */ bl          kartCollide__Q24Kart15KartObjectProxyFv
/* 80571108 C01F0034 */ lfs         f0, 0x34(r31)
/* 8057110C D003001C */ stfs        f0, 0x1c(r3)
/* 80571110 80830004 */ lwz         r4, 4(r3)
/* 80571114 387A0004 */ addi        r3, r26, 4
/* 80571118 80840004 */ lwz         r4, 4(r4)
/* 8057111C 80040008 */ lwz         r0, 8(r4)
/* 80571120 64000100 */ oris        r0, r0, 0x100
/* 80571124 90040008 */ stw         r0, 8(r4)
/* 80571128 4801FBBD */ bl          PlayerPointers_getMalCol2
/* 8057112C 7C651B78 */ mr          r5, r3
/* 80571130 38610014 */ addi        r3, r1, 0x14
/* 80571134 38810044 */ addi        r4, r1, 0x44
/* 80571138 4BFC66F9 */ bl          VEC3_fromCross
/* 8057113C C0210018 */ lfs         f1, 0x18(r1)
/* 80571140 C01F0000 */ lfs         f0, 0(r31)
/* 80571144 FC010040 */ fcmpo       cr0, f1, f0
/* 80571148 4080000C */ bge-        lbl_80571154
/* 8057114C C05F0004 */ lfs         f2, 4(r31)
/* 80571150 48000008 */ b           lbl_80571158
lbl_80571154:
/* 80571154 C05F0014 */ lfs         f2, 0x14(r31)
lbl_80571158:
/* 80571158 C03F0038 */ lfs         f1, 0x38(r31)
/* 8057115C 7F83E378 */ mr          r3, r28
/* 80571160 C01F0000 */ lfs         f0, 0(r31)
/* 80571164 EC2107F2 */ fmuls       f1, f1, f31
/* 80571168 D0010008 */ stfs        f0, 8(r1)
/* 8057116C D001000C */ stfs        f0, 0xc(r1)
/* 80571170 EC020072 */ fmuls       f0, f2, f1
/* 80571174 D0010010 */ stfs        f0, 0x10(r1)
/* 80571178 4801F255 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057117C C04300A4 */ lfs         f2, 0xa4(r3)
/* 80571180 C0010008 */ lfs         f0, 8(r1)
/* 80571184 C021000C */ lfs         f1, 0xc(r1)
/* 80571188 EC42002A */ fadds       f2, f2, f0
/* 8057118C C0010010 */ lfs         f0, 0x10(r1)
/* 80571190 D04300A4 */ stfs        f2, 0xa4(r3)
/* 80571194 C04300A8 */ lfs         f2, 0xa8(r3)
/* 80571198 EC22082A */ fadds       f1, f2, f1
/* 8057119C D02300A8 */ stfs        f1, 0xa8(r3)
/* 805711A0 C02300AC */ lfs         f1, 0xac(r3)
/* 805711A4 EC01002A */ fadds       f0, f1, f0
/* 805711A8 D00300AC */ stfs        f0, 0xac(r3)
/* 805711AC 7F63DB78 */ mr          r3, r27
/* 805711B0 4801FF11 */ bl          kartEnemy__Q24Kart15KartObjectProxyFv
/* 805711B4 7C7A1B78 */ mr          r26, r3
/* 805711B8 7F83E378 */ mr          r3, r28
/* 805711BC 4801FF05 */ bl          kartEnemy__Q24Kart15KartObjectProxyFv
/* 805711C0 7F45D378 */ mr          r5, r26
/* 805711C4 38810020 */ addi        r4, r1, 0x20
/* 805711C8 481B5205 */ bl          unk_807263cc
/* 805711CC 7F83E378 */ mr          r3, r28
/* 805711D0 4801F5D1 */ bl          unk_805907a0
/* 805711D4 FC20F090 */ fmr         f1, f30
/* 805711D8 482F435D */ bl          unk_80865534
/* 805711DC C03F0038 */ lfs         f1, 0x38(r31)
/* 805711E0 C01F0004 */ lfs         f0, 4(r31)
/* 805711E4 EC2107F2 */ fmuls       f1, f1, f31
/* 805711E8 FC000840 */ fcmpo       cr0, f0, f1
/* 805711EC 40800008 */ bge-        lbl_805711f4
/* 805711F0 FC200090 */ fmr         f1, f0
lbl_805711f4:
/* 805711F4 7F83E378 */ mr          r3, r28
/* 805711F8 38800000 */ li          r4, 0
/* 805711FC 38A00001 */ li          r5, 1
/* 80571200 4801F21D */ bl          unk_8059041c
lbl_80571204:
/* 80571204 E3E100A8 */ psq_l       f31, 0xa8(r1), 0, 0
/* 80571208 CBE100A0 */ lfd         f31, 0xa0(r1)
/* 8057120C E3C10098 */ psq_l       f30, 0x98(r1), 0, 0
/* 80571210 CBC10090 */ lfd         f30, 0x90(r1)
/* 80571214 E3A10088 */ psq_l       f29, 0x88(r1), 0, 0
/* 80571218 39610080 */ addi        r11, r1, 0x80
/* 8057121C CBA10080 */ lfd         f29, 0x80(r1)
/* 80571220 4BAB03C1 */ bl          _restgpr_24
/* 80571224 800100B4 */ lwz         r0, 0xb4(r1)
/* 80571228 7C0803A6 */ mtlr        r0
/* 8057122C 382100B0 */ addi        r1, r1, 0xb0
/* 80571230 4E800020 */ blr         