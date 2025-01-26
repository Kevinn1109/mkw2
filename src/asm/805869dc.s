nofralloc
/* 805869DC 9421FFA0 */ stwu        r1, -0x60(r1)
/* 805869E0 7C0802A6 */ mflr        r0
/* 805869E4 90010064 */ stw         r0, 0x64(r1)
/* 805869E8 DBE10050 */ stfd        f31, 0x50(r1)
/* 805869EC F3E10058 */ psq_st      f31, 0x58(r1), 0, 0
/* 805869F0 93E1004C */ stw         r31, 0x4c(r1)
/* 805869F4 3FE08089 */ lis         r31, lbl_80891a00@ha
/* 805869F8 3BFF1A00 */ addi        r31, r31, lbl_80891a00@l
/* 805869FC 93C10048 */ stw         r30, 0x48(r1)
/* 80586A00 3FC0808B */ lis         r30, lbl_808b58f0@ha
/* 80586A04 3BDE58F0 */ addi        r30, r30, lbl_808b58f0@l
/* 80586A08 93A10044 */ stw         r29, 0x44(r1)
/* 80586A0C 7C7D1B78 */ mr          r29, r3
/* 80586A10 C02300F4 */ lfs         f1, 0xf4(r3)
/* 80586A14 C01E0268 */ lfs         f0, 0x268(r30)
/* 80586A18 80830000 */ lwz         r4, 0(r3)
/* 80586A1C EC010032 */ fmuls       f0, f1, f0
/* 80586A20 D00300F4 */ stfs        f0, 0xf4(r3)
/* 80586A24 80840004 */ lwz         r4, 4(r4)
/* 80586A28 80040004 */ lwz         r0, 4(r4)
/* 80586A2C 5400035B */ rlwinm.     r0, r0, 0, 0xd, 0xd
/* 80586A30 408202C4 */ bne-        lbl_80586cf4
/* 80586A34 80840008 */ lwz         r4, 8(r4)
/* 80586A38 548006F9 */ rlwinm.     r0, r4, 0, 0x1b, 0x1c
/* 80586A3C 408202B8 */ bne-        lbl_80586cf4
/* 80586A40 548007FF */ clrlwi.     r0, r4, 0x1f
/* 80586A44 408202B0 */ bne-        lbl_80586cf4
/* 80586A48 5480056B */ rlwinm.     r0, r4, 0, 0x15, 0x15
/* 80586A4C 408202A8 */ bne-        lbl_80586cf4
/* 80586A50 480099A5 */ bl          KartAccessor_getInput
/* 80586A54 2C030000 */ cmpwi       r3, 0
/* 80586A58 4182029C */ beq-        lbl_80586cf4
/* 80586A5C 809D0000 */ lwz         r4, 0(r29)
/* 80586A60 80640004 */ lwz         r3, 4(r4)
/* 80586A64 80840004 */ lwz         r4, 4(r4)
/* 80586A68 80030008 */ lwz         r0, 8(r3)
/* 80586A6C C064008C */ lfs         f3, 0x8c(r4)
/* 80586A70 54000673 */ rlwinm.     r0, r0, 0, 0x19, 0x19
/* 80586A74 4182002C */ beq-        lbl_80586aa0
/* 80586A78 807D0258 */ lwz         r3, 0x258(r29)
/* 80586A7C 80030010 */ lwz         r0, 0x10(r3)
/* 80586A80 2C000006 */ cmpwi       r0, 6
/* 80586A84 4082001C */ bne-        lbl_80586aa0
/* 80586A88 C03F00F8 */ lfs         f1, 0xf8(r31)
/* 80586A8C C01F0004 */ lfs         f0, 4(r31)
/* 80586A90 EC63082A */ fadds       f3, f3, f1
/* 80586A94 FC001840 */ fcmpo       cr0, f0, f3
/* 80586A98 40800008 */ bge-        lbl_80586aa0
/* 80586A9C FC600090 */ fmr         f3, f0
lbl_80586aa0:
/* 80586AA0 8064001C */ lwz         r3, 0x1c(r4)
/* 80586AA4 A81E0024 */ lha         r0, 0x24(r30)
/* 80586AA8 7C030040 */ cmplw       r3, r0
/* 80586AAC 4181002C */ bgt-        lbl_80586ad8
/* 80586AB0 3C004330 */ lis         r0, 0x4330
/* 80586AB4 9061003C */ stw         r3, 0x3c(r1)
/* 80586AB8 C85F0090 */ lfd         f2, 0x90(r31)
/* 80586ABC 90010038 */ stw         r0, 0x38(r1)
/* 80586AC0 C01F00A8 */ lfs         f0, 0xa8(r31)
/* 80586AC4 C8210038 */ lfd         f1, 0x38(r1)
/* 80586AC8 EC211028 */ fsubs       f1, f1, f2
/* 80586ACC EC010024 */ fdivs       f0, f1, f0
/* 80586AD0 EC630032 */ fmuls       f3, f3, f0
/* 80586AD4 48000034 */ b           lbl_80586b08
lbl_80586ad8:
/* 80586AD8 FC201A10 */ fabs        f1, f3
/* 80586ADC C01F0040 */ lfs         f0, 0x40(r31)
/* 80586AE0 FC010040 */ fcmpo       cr0, f1, f0
/* 80586AE4 40800024 */ bge-        lbl_80586b08
/* 80586AE8 C01E026C */ lfs         f0, 0x26c(r30)
/* 80586AEC C03D00F4 */ lfs         f1, 0xf4(r29)
/* 80586AF0 FC000050 */ fneg        f0, f0
/* 80586AF4 C05E0270 */ lfs         f2, 0x270(r30)
/* 80586AF8 EC000828 */ fsubs       f0, f0, f1
/* 80586AFC EC020032 */ fmuls       f0, f2, f0
/* 80586B00 EC01002A */ fadds       f0, f1, f0
/* 80586B04 D01D00F4 */ stfs        f0, 0xf4(r29)
lbl_80586b08:
/* 80586B08 C03E0260 */ lfs         f1, 0x260(r30)
/* 80586B0C C01D00F4 */ lfs         f0, 0xf4(r29)
/* 80586B10 EC230072 */ fmuls       f1, f3, f1
/* 80586B14 EC00082A */ fadds       f0, f0, f1
/* 80586B18 D01D00F4 */ stfs        f0, 0xf4(r29)
/* 80586B1C C05E0264 */ lfs         f2, 0x264(r30)
/* 80586B20 FC201050 */ fneg        f1, f2
/* 80586B24 FC010040 */ fcmpo       cr0, f1, f0
/* 80586B28 4081000C */ ble-        lbl_80586b34
/* 80586B2C D03D00F4 */ stfs        f1, 0xf4(r29)
/* 80586B30 48000010 */ b           lbl_80586b40
lbl_80586b34:
/* 80586B34 FC020040 */ fcmpo       cr0, f2, f0
/* 80586B38 40800008 */ bge-        lbl_80586b40
/* 80586B3C D05D00F4 */ stfs        f2, 0xf4(r29)
lbl_80586b40:
/* 80586B40 C01F0000 */ lfs         f0, 0(r31)
/* 80586B44 7FA3EB78 */ mr          r3, r29
/* 80586B48 C03D00F4 */ lfs         f1, 0xf4(r29)
/* 80586B4C D0210014 */ stfs        f1, 0x14(r1)
/* 80586B50 D0010018 */ stfs        f0, 0x18(r1)
/* 80586B54 D001001C */ stfs        f0, 0x1c(r1)
/* 80586B58 48009875 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80586B5C C04300E4 */ lfs         f2, 0xe4(r3)
/* 80586B60 C0010014 */ lfs         f0, 0x14(r1)
/* 80586B64 C0210018 */ lfs         f1, 0x18(r1)
/* 80586B68 EC42002A */ fadds       f2, f2, f0
/* 80586B6C C001001C */ lfs         f0, 0x1c(r1)
/* 80586B70 D04300E4 */ stfs        f2, 0xe4(r3)
/* 80586B74 C04300E8 */ lfs         f2, 0xe8(r3)
/* 80586B78 EC22082A */ fadds       f1, f2, f1
/* 80586B7C D02300E8 */ stfs        f1, 0xe8(r3)
/* 80586B80 C02300EC */ lfs         f1, 0xec(r3)
/* 80586B84 EC01002A */ fadds       f0, f1, f0
/* 80586B88 D00300EC */ stfs        f0, 0xec(r3)
/* 80586B8C 807D0000 */ lwz         r3, 0(r29)
/* 80586B90 A81E0024 */ lha         r0, 0x24(r30)
/* 80586B94 80630004 */ lwz         r3, 4(r3)
/* 80586B98 8063001C */ lwz         r3, 0x1c(r3)
/* 80586B9C 7C030040 */ cmplw       r3, r0
/* 80586BA0 41800154 */ blt-        lbl_80586cf4
/* 80586BA4 7FA3EB78 */ mr          r3, r29
/* 80586BA8 48009825 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80586BAC 3C80802A */ lis         r4, RKSystem_ey@ha
/* 80586BB0 38A1002C */ addi        r5, r1, 0x2c
/* 80586BB4 38844130 */ addi        r4, r4, RKSystem_ey@l
/* 80586BB8 386300F0 */ addi        r3, r3, 0xf0
/* 80586BBC 4BCB3715 */ bl          rotateVector__Q23EGG5QuatfFRCQ23EGG8Vector3fRQ23EGG8Vector3f
/* 80586BC0 7FA3EB78 */ mr          r3, r29
/* 80586BC4 48009809 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80586BC8 3C80802A */ lis         r4, lbl_802a4148@ha
/* 80586BCC 38A10020 */ addi        r5, r1, 0x20
/* 80586BD0 38844148 */ addi        r4, r4, lbl_802a4148@l
/* 80586BD4 386300F0 */ addi        r3, r3, 0xf0
/* 80586BD8 4BCB36F9 */ bl          rotateVector__Q23EGG5QuatfFRCQ23EGG8Vector3fRQ23EGG8Vector3f
/* 80586BDC C041002C */ lfs         f2, 0x2c(r1)
/* 80586BE0 389D0044 */ addi        r4, r29, 0x44
/* 80586BE4 C07D0044 */ lfs         f3, 0x44(r29)
/* 80586BE8 38610008 */ addi        r3, r1, 8
/* 80586BEC C03D0048 */ lfs         f1, 0x48(r29)
/* 80586BF0 38A1002C */ addi        r5, r1, 0x2c
/* 80586BF4 C0010030 */ lfs         f0, 0x30(r1)
/* 80586BF8 EC4300B2 */ fmuls       f2, f3, f2
/* 80586BFC C07D004C */ lfs         f3, 0x4c(r29)
/* 80586C00 EC010032 */ fmuls       f0, f1, f0
/* 80586C04 C0210034 */ lfs         f1, 0x34(r1)
/* 80586C08 EC230072 */ fmuls       f1, f3, f1
/* 80586C0C EC02002A */ fadds       f0, f2, f0
/* 80586C10 EFE1002A */ fadds       f31, f1, f0
/* 80586C14 4BFB0C1D */ bl          VEC3_fromCross
/* 80586C18 C0210008 */ lfs         f1, 8(r1)
/* 80586C1C C001000C */ lfs         f0, 0xc(r1)
/* 80586C20 EC210072 */ fmuls       f1, f1, f1
/* 80586C24 C0410010 */ lfs         f2, 0x10(r1)
/* 80586C28 EC000032 */ fmuls       f0, f0, f0
/* 80586C2C EC4200B2 */ fmuls       f2, f2, f2
/* 80586C30 EC01002A */ fadds       f0, f1, f0
/* 80586C34 EC22002A */ fadds       f1, f2, f0
/* 80586C38 4BCA8BD5 */ bl          sqrt__Q23EGG5MathfFf
/* 80586C3C FC40F890 */ fmr         f2, f31
/* 80586C40 4BCA8CA5 */ bl          atan2_Q23EGG5MathfFff
/* 80586C44 C01F0000 */ lfs         f0, 0(r31)
/* 80586C48 FC010040 */ fcmpo       cr0, f1, f0
/* 80586C4C 40810008 */ ble-        lbl_80586c54
/* 80586C50 48000008 */ b           lbl_80586c58
lbl_80586c54:
/* 80586C54 FC200850 */ fneg        f1, f1
lbl_80586c58:
/* 80586C58 C01F0058 */ lfs         f0, 0x58(r31)
/* 80586C5C C05E0028 */ lfs         f2, 0x28(r30)
/* 80586C60 EC200072 */ fmuls       f1, f0, f1
/* 80586C64 C01F0000 */ lfs         f0, 0(r31)
/* 80586C68 EC211028 */ fsubs       f1, f1, f2
/* 80586C6C FC010040 */ fcmpo       cr0, f1, f0
/* 80586C70 40810084 */ ble-        lbl_80586cf4
/* 80586C74 EFE11024 */ fdivs       f31, f1, f2
/* 80586C78 C01F0004 */ lfs         f0, 4(r31)
/* 80586C7C FC00F840 */ fcmpo       cr0, f0, f31
/* 80586C80 40800008 */ bge-        lbl_80586c88
/* 80586C84 FFE00090 */ fmr         f31, f0
lbl_80586c88:
/* 80586C88 C0210024 */ lfs         f1, 0x24(r1)
/* 80586C8C C01F0000 */ lfs         f0, 0(r31)
/* 80586C90 FC010040 */ fcmpo       cr0, f1, f0
/* 80586C94 40810034 */ ble-        lbl_80586cc8
/* 80586C98 7FA3EB78 */ mr          r3, r29
/* 80586C9C 48009731 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80586CA0 C01E0030 */ lfs         f0, 0x30(r30)
/* 80586CA4 C0430148 */ lfs         f2, 0x148(r3)
/* 80586CA8 7FA3EB78 */ mr          r3, r29
/* 80586CAC EC2007F2 */ fmuls       f1, f0, f31
/* 80586CB0 C01F0004 */ lfs         f0, 4(r31)
/* 80586CB4 EC000828 */ fsubs       f0, f0, f1
/* 80586CB8 EFE000B2 */ fmuls       f31, f0, f2
/* 80586CBC 48009711 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80586CC0 D3E30148 */ stfs        f31, 0x148(r3)
/* 80586CC4 48000030 */ b           lbl_80586cf4
lbl_80586cc8:
/* 80586CC8 7FA3EB78 */ mr          r3, r29
/* 80586CCC 48009701 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80586CD0 C01E002C */ lfs         f0, 0x2c(r30)
/* 80586CD4 C0430148 */ lfs         f2, 0x148(r3)
/* 80586CD8 7FA3EB78 */ mr          r3, r29
/* 80586CDC EC2007F2 */ fmuls       f1, f0, f31
/* 80586CE0 C01F0004 */ lfs         f0, 4(r31)
/* 80586CE4 EC00082A */ fadds       f0, f0, f1
/* 80586CE8 EFE000B2 */ fmuls       f31, f0, f2
/* 80586CEC 480096E1 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80586CF0 D3E30148 */ stfs        f31, 0x148(r3)
lbl_80586cf4:
/* 80586CF4 E3E10058 */ psq_l       f31, 0x58(r1), 0, 0
/* 80586CF8 80010064 */ lwz         r0, 0x64(r1)
/* 80586CFC CBE10050 */ lfd         f31, 0x50(r1)
/* 80586D00 83E1004C */ lwz         r31, 0x4c(r1)
/* 80586D04 83C10048 */ lwz         r30, 0x48(r1)
/* 80586D08 83A10044 */ lwz         r29, 0x44(r1)
/* 80586D0C 7C0803A6 */ mtlr        r0
/* 80586D10 38210060 */ addi        r1, r1, 0x60
/* 80586D14 4E800020 */ blr         