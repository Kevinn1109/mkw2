nofralloc
/* 8057CF0C 9421FF80 */ stwu        r1, -0x80(r1)
/* 8057CF10 7C0802A6 */ mflr        r0
/* 8057CF14 90010084 */ stw         r0, 0x84(r1)
/* 8057CF18 DBE10070 */ stfd        f31, 0x70(r1)
/* 8057CF1C F3E10078 */ psq_st      f31, 0x78(r1), 0, 0
/* 8057CF20 DBC10060 */ stfd        f30, 0x60(r1)
/* 8057CF24 F3C10068 */ psq_st      f30, 0x68(r1), 0, 0
/* 8057CF28 93E1005C */ stw         r31, 0x5c(r1)
/* 8057CF2C 3FE08089 */ lis         r31, lbl_80891a00@ha
/* 8057CF30 3BFF1A00 */ addi        r31, r31, lbl_80891a00@l
/* 8057CF34 93C10058 */ stw         r30, 0x58(r1)
/* 8057CF38 7C7E1B78 */ mr          r30, r3
/* 8057CF3C C3FF0000 */ lfs         f31, 0(r31)
/* 8057CF40 80830000 */ lwz         r4, 0(r3)
/* 8057CF44 D0210048 */ stfs        f1, 0x48(r1)
/* 8057CF48 80840004 */ lwz         r4, 4(r4)
/* 8057CF4C D3E10044 */ stfs        f31, 0x44(r1)
/* 8057CF50 80040008 */ lwz         r0, 8(r4)
/* 8057CF54 D3E1004C */ stfs        f31, 0x4c(r1)
/* 8057CF58 540007FF */ clrlwi.     r0, r0, 0x1f
/* 8057CF5C 40820120 */ bne-        lbl_8057d07c
/* 8057CF60 80040010 */ lwz         r0, 0x10(r4)
/* 8057CF64 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 8057CF68 40820114 */ bne-        lbl_8057d07c
/* 8057CF6C 80040004 */ lwz         r0, 4(r4)
/* 8057CF70 54000529 */ rlwinm.     r0, r0, 0, 0x14, 0x14
/* 8057CF74 41820108 */ beq-        lbl_8057d07c
/* 8057CF78 48013D6D */ bl          PlayerPointers_getMalCol2
/* 8057CF7C 7C641B78 */ mr          r4, r3
/* 8057CF80 3861002C */ addi        r3, r1, 0x2c
/* 8057CF84 38BE0044 */ addi        r5, r30, 0x44
/* 8057CF88 38C00001 */ li          r6, 1
/* 8057CF8C 48031A61 */ bl          VEC3_perpInPlane
/* 8057CF90 7FC3F378 */ mr          r3, r30
/* 8057CF94 48013D75 */ bl          playerPointers_getSpeed
/* 8057CF98 7C641B78 */ mr          r4, r3
/* 8057CF9C 38610038 */ addi        r3, r1, 0x38
/* 8057CFA0 38A1002C */ addi        r5, r1, 0x2c
/* 8057CFA4 48031C2D */ bl          rejUnit__6RKGeomFRQ23EGG8Vector3fRCQ23EGG8Vector3fRCQ23EGG8Vector3f
/* 8057CFA8 38610038 */ addi        r3, r1, 0x38
/* 8057CFAC 38BE0044 */ addi        r5, r30, 0x44
/* 8057CFB0 7C641B78 */ mr          r4, r3
/* 8057CFB4 38C00000 */ li          r6, 0
/* 8057CFB8 48031A35 */ bl          VEC3_perpInPlane
/* 8057CFBC C0210038 */ lfs         f1, 0x38(r1)
/* 8057CFC0 C001003C */ lfs         f0, 0x3c(r1)
/* 8057CFC4 EC410072 */ fmuls       f2, f1, f1
/* 8057CFC8 C0610040 */ lfs         f3, 0x40(r1)
/* 8057CFCC EC200032 */ fmuls       f1, f0, f0
/* 8057CFD0 C01F0008 */ lfs         f0, 8(r31)
/* 8057CFD4 EC6300F2 */ fmuls       f3, f3, f3
/* 8057CFD8 EC22082A */ fadds       f1, f2, f1
/* 8057CFDC EC23082A */ fadds       f1, f3, f1
/* 8057CFE0 FC010040 */ fcmpo       cr0, f1, f0
/* 8057CFE4 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 8057CFE8 7C000026 */ mfcr        r0
/* 8057CFEC 54001FFF */ rlwinm.     r0, r0, 3, 0x1f, 0x1f
/* 8057CFF0 40820064 */ bne-        lbl_8057d054
/* 8057CFF4 4BCB2819 */ bl          sqrt__Q23EGG5MathfFf
/* 8057CFF8 C081002C */ lfs         f4, 0x2c(r1)
/* 8057CFFC C0610040 */ lfs         f3, 0x40(r1)
/* 8057D000 C121003C */ lfs         f9, 0x3c(r1)
/* 8057D004 C0A10034 */ lfs         f5, 0x34(r1)
/* 8057D008 EC4400F2 */ fmuls       f2, f4, f3
/* 8057D00C C0E10030 */ lfs         f7, 0x30(r1)
/* 8057D010 ED040272 */ fmuls       f8, f4, f9
/* 8057D014 C0010038 */ lfs         f0, 0x38(r1)
/* 8057D018 EC6700F2 */ fmuls       f3, f7, f3
/* 8057D01C EC850032 */ fmuls       f4, f5, f0
/* 8057D020 ECC70032 */ fmuls       f6, f7, f0
/* 8057D024 FC00F890 */ fmr         f0, f31
/* 8057D028 ECE41028 */ fsubs       f7, f4, f2
/* 8057D02C EC450272 */ fmuls       f2, f5, f9
/* 8057D030 EC883028 */ fsubs       f4, f8, f6
/* 8057D034 D0E10024 */ stfs        f7, 0x24(r1)
/* 8057D038 FFE00890 */ fmr         f31, f1
/* 8057D03C EC431028 */ fsubs       f2, f3, f2
/* 8057D040 D0810028 */ stfs        f4, 0x28(r1)
/* 8057D044 FC070040 */ fcmpo       cr0, f7, f0
/* 8057D048 D0410020 */ stfs        f2, 0x20(r1)
/* 8057D04C 40810008 */ ble-        lbl_8057d054
/* 8057D050 FFE00850 */ fneg        f31, f1
lbl_8057d054:
/* 8057D054 C01F000C */ lfs         f0, 0xc(r31)
/* 8057D058 FC00F840 */ fcmpo       cr0, f0, f31
/* 8057D05C 4081000C */ ble-        lbl_8057d068
/* 8057D060 FFE00090 */ fmr         f31, f0
/* 8057D064 48000094 */ b           lbl_8057d0f8
lbl_8057d068:
/* 8057D068 C01F0004 */ lfs         f0, 4(r31)
/* 8057D06C FC00F840 */ fcmpo       cr0, f0, f31
/* 8057D070 40800088 */ bge-        lbl_8057d0f8
/* 8057D074 FFE00090 */ fmr         f31, f0
/* 8057D078 48000080 */ b           lbl_8057d0f8
lbl_8057d07c:
/* 8057D07C 80040004 */ lwz         r0, 4(r4)
/* 8057D080 38800000 */ li          r4, 0
/* 8057D084 54000319 */ rlwinm.     r0, r0, 0, 0xc, 0xc
/* 8057D088 41820018 */ beq-        lbl_8057d0a0
/* 8057D08C C023022C */ lfs         f1, 0x22c(r3)
/* 8057D090 C01F0000 */ lfs         f0, 0(r31)
/* 8057D094 FC010040 */ fcmpo       cr0, f1, f0
/* 8057D098 40810008 */ ble-        lbl_8057d0a0
/* 8057D09C 38800001 */ li          r4, 1
lbl_8057d0a0:
/* 8057D0A0 2C040000 */ cmpwi       r4, 0
/* 8057D0A4 40820054 */ bne-        lbl_8057d0f8
/* 8057D0A8 7FC3F378 */ mr          r3, r30
/* 8057D0AC 48013321 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057D0B0 800300AC */ lwz         r0, 0xac(r3)
/* 8057D0B4 9001001C */ stw         r0, 0x1c(r1)
/* 8057D0B8 808300A4 */ lwz         r4, 0xa4(r3)
/* 8057D0BC C021001C */ lfs         f1, 0x1c(r1)
/* 8057D0C0 C01F00A0 */ lfs         f0, 0xa0(r31)
/* 8057D0C4 800300A8 */ lwz         r0, 0xa8(r3)
/* 8057D0C8 7FC3F378 */ mr          r3, r30
/* 8057D0CC EC010032 */ fmuls       f0, f1, f0
/* 8057D0D0 90810014 */ stw         r4, 0x14(r1)
/* 8057D0D4 90010018 */ stw         r0, 0x18(r1)
/* 8057D0D8 D001001C */ stfs        f0, 0x1c(r1)
/* 8057D0DC 480132F1 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057D0E0 C0010014 */ lfs         f0, 0x14(r1)
/* 8057D0E4 D00300A4 */ stfs        f0, 0xa4(r3)
/* 8057D0E8 C0010018 */ lfs         f0, 0x18(r1)
/* 8057D0EC D00300A8 */ stfs        f0, 0xa8(r3)
/* 8057D0F0 C001001C */ lfs         f0, 0x1c(r1)
/* 8057D0F4 D00300AC */ stfs        f0, 0xac(r3)
lbl_8057d0f8:
/* 8057D0F8 C01E015C */ lfs         f0, 0x15c(r30)
/* 8057D0FC 7FC3F378 */ mr          r3, r30
/* 8057D100 FFC00210 */ fabs        f30, f0
/* 8057D104 48013771 */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 8057D108 C0230020 */ lfs         f1, 0x20(r3)
/* 8057D10C 7FC3F378 */ mr          r3, r30
/* 8057D110 C01E0184 */ lfs         f0, 0x184(r30)
/* 8057D114 EC3F0072 */ fmuls       f1, f31, f1
/* 8057D118 EC2107B2 */ fmuls       f1, f1, f30
/* 8057D11C EFC00072 */ fmuls       f30, f0, f1
/* 8057D120 480000B5 */ bl          PlayerSub10_updateStandstillBoostRot
/* 8057D124 C01F0000 */ lfs         f0, 0(r31)
/* 8057D128 7FC3F378 */ mr          r3, r30
/* 8057D12C D0210008 */ stfs        f1, 8(r1)
/* 8057D130 D001000C */ stfs        f0, 0xc(r1)
/* 8057D134 D3C10010 */ stfs        f30, 0x10(r1)
/* 8057D138 48013295 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057D13C C04300A4 */ lfs         f2, 0xa4(r3)
/* 8057D140 C0010008 */ lfs         f0, 8(r1)
/* 8057D144 C021000C */ lfs         f1, 0xc(r1)
/* 8057D148 EC42002A */ fadds       f2, f2, f0
/* 8057D14C FC00F018 */ frsp        f0, f30
/* 8057D150 D04300A4 */ stfs        f2, 0xa4(r3)
/* 8057D154 C04300A8 */ lfs         f2, 0xa8(r3)
/* 8057D158 EC22082A */ fadds       f1, f2, f1
/* 8057D15C D02300A8 */ stfs        f1, 0xa8(r3)
/* 8057D160 C02300AC */ lfs         f1, 0xac(r3)
/* 8057D164 EC01002A */ fadds       f0, f1, f0
/* 8057D168 D00300AC */ stfs        f0, 0xac(r3)
/* 8057D16C 7FC3F378 */ mr          r3, r30
/* 8057D170 4801325D */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057D174 C04300E4 */ lfs         f2, 0xe4(r3)
/* 8057D178 C0010044 */ lfs         f0, 0x44(r1)
/* 8057D17C C0210048 */ lfs         f1, 0x48(r1)
/* 8057D180 EC42002A */ fadds       f2, f2, f0
/* 8057D184 C001004C */ lfs         f0, 0x4c(r1)
/* 8057D188 D04300E4 */ stfs        f2, 0xe4(r3)
/* 8057D18C C04300E8 */ lfs         f2, 0xe8(r3)
/* 8057D190 EC22082A */ fadds       f1, f2, f1
/* 8057D194 D02300E8 */ stfs        f1, 0xe8(r3)
/* 8057D198 C02300EC */ lfs         f1, 0xec(r3)
/* 8057D19C EC01002A */ fadds       f0, f1, f0
/* 8057D1A0 D00300EC */ stfs        f0, 0xec(r3)
/* 8057D1A4 7FC3F378 */ mr          r3, r30
/* 8057D1A8 48009835 */ bl          PlayerSub10_updateDiving
/* 8057D1AC E3E10078 */ psq_l       f31, 0x78(r1), 0, 0
/* 8057D1B0 CBE10070 */ lfd         f31, 0x70(r1)
/* 8057D1B4 E3C10068 */ psq_l       f30, 0x68(r1), 0, 0
/* 8057D1B8 CBC10060 */ lfd         f30, 0x60(r1)
/* 8057D1BC 83E1005C */ lwz         r31, 0x5c(r1)
/* 8057D1C0 80010084 */ lwz         r0, 0x84(r1)
/* 8057D1C4 83C10058 */ lwz         r30, 0x58(r1)
/* 8057D1C8 7C0803A6 */ mtlr        r0
/* 8057D1CC 38210080 */ addi        r1, r1, 0x80
/* 8057D1D0 4E800020 */ blr         