nofralloc
/* 806DCDDC 9421FFD0 */ stwu        r1, -0x30(r1)
/* 806DCDE0 7C0802A6 */ mflr        r0
/* 806DCDE4 90010034 */ stw         r0, 0x34(r1)
/* 806DCDE8 93E1002C */ stw         r31, 0x2c(r1)
/* 806DCDEC 3FE0808A */ lis         r31, lbl_808a0378@ha
/* 806DCDF0 3BFF0378 */ addi        r31, r31, lbl_808a0378@l
/* 806DCDF4 93C10028 */ stw         r30, 0x28(r1)
/* 806DCDF8 3FC0808C */ lis         r30, lbl_808c5d70@ha
/* 806DCDFC 3BDE5D70 */ addi        r30, r30, lbl_808c5d70@l
/* 806DCE00 93A10024 */ stw         r29, 0x24(r1)
/* 806DCE04 7C7D1B78 */ mr          r29, r3
/* 806DCE08 80830020 */ lwz         r4, 0x20(r3)
/* 806DCE0C 88040044 */ lbz         r0, 0x44(r4)
/* 806DCE10 2C000000 */ cmpwi       r0, 0
/* 806DCE14 4182002C */ beq-        lbl_806dce40
/* 806DCE18 C0230128 */ lfs         f1, 0x128(r3)
/* 806DCE1C 38000000 */ li          r0, 0
/* 806DCE20 C01E0010 */ lfs         f0, 0x10(r30)
/* 806DCE24 FC010040 */ fcmpo       cr0, f1, f0
/* 806DCE28 4081003C */ ble-        lbl_806dce64
/* 806DCE2C C01E0014 */ lfs         f0, 0x14(r30)
/* 806DCE30 FC010040 */ fcmpo       cr0, f1, f0
/* 806DCE34 40800030 */ bge-        lbl_806dce64
/* 806DCE38 38000001 */ li          r0, 1
/* 806DCE3C 48000028 */ b           lbl_806dce64
lbl_806dce40:
/* 806DCE40 C0230128 */ lfs         f1, 0x128(r3)
/* 806DCE44 38000000 */ li          r0, 0
/* 806DCE48 C01E0008 */ lfs         f0, 8(r30)
/* 806DCE4C FC010040 */ fcmpo       cr0, f1, f0
/* 806DCE50 40810014 */ ble-        lbl_806dce64
/* 806DCE54 C01E000C */ lfs         f0, 0xc(r30)
/* 806DCE58 FC010040 */ fcmpo       cr0, f1, f0
/* 806DCE5C 40800008 */ bge-        lbl_806dce64
/* 806DCE60 38000001 */ li          r0, 1
lbl_806dce64:
/* 806DCE64 2C000000 */ cmpwi       r0, 0
/* 806DCE68 41820040 */ beq-        lbl_806dcea8
/* 806DCE6C C023010C */ lfs         f1, 0x10c(r3)
/* 806DCE70 C00300D4 */ lfs         f0, 0xd4(r3)
/* 806DCE74 EC21002A */ fadds       f1, f1, f0
/* 806DCE78 D023010C */ stfs        f1, 0x10c(r3)
/* 806DCE7C C01E0004 */ lfs         f0, 4(r30)
/* 806DCE80 FC010040 */ fcmpo       cr0, f1, f0
/* 806DCE84 40810008 */ ble-        lbl_806dce8c
/* 806DCE88 D003010C */ stfs        f0, 0x10c(r3)
lbl_806dce8c:
/* 806DCE8C 80630020 */ lwz         r3, 0x20(r3)
/* 806DCE90 C03D010C */ lfs         f1, 0x10c(r29)
/* 806DCE94 81830000 */ lwz         r12, 0(r3)
/* 806DCE98 818C0018 */ lwz         r12, 0x18(r12)
/* 806DCE9C 7D8903A6 */ mtctr       r12
/* 806DCEA0 4E800421 */ bctrl       
/* 806DCEA4 4800003C */ b           lbl_806dcee0
lbl_806dcea8:
/* 806DCEA8 C043010C */ lfs         f2, 0x10c(r3)
/* 806DCEAC C02300D4 */ lfs         f1, 0xd4(r3)
/* 806DCEB0 C01F0004 */ lfs         f0, 4(r31)
/* 806DCEB4 EC220828 */ fsubs       f1, f2, f1
/* 806DCEB8 D023010C */ stfs        f1, 0x10c(r3)
/* 806DCEBC FC010040 */ fcmpo       cr0, f1, f0
/* 806DCEC0 40800008 */ bge-        lbl_806dcec8
/* 806DCEC4 D003010C */ stfs        f0, 0x10c(r3)
lbl_806dcec8:
/* 806DCEC8 80630020 */ lwz         r3, 0x20(r3)
/* 806DCECC C03D010C */ lfs         f1, 0x10c(r29)
/* 806DCED0 81830000 */ lwz         r12, 0(r3)
/* 806DCED4 818C0018 */ lwz         r12, 0x18(r12)
/* 806DCED8 7D8903A6 */ mtctr       r12
/* 806DCEDC 4E800421 */ bctrl       
lbl_806dcee0:
/* 806DCEE0 807D0020 */ lwz         r3, 0x20(r29)
/* 806DCEE4 A01D002C */ lhz         r0, 0x2c(r29)
/* 806DCEE8 C0030018 */ lfs         f0, 0x18(r3)
/* 806DCEEC 60000001 */ ori         r0, r0, 1
/* 806DCEF0 D01D0030 */ stfs        f0, 0x30(r29)
/* 806DCEF4 B01D002C */ sth         r0, 0x2c(r29)
/* 806DCEF8 C0030020 */ lfs         f0, 0x20(r3)
/* 806DCEFC D01D0038 */ stfs        f0, 0x38(r29)
/* 806DCF00 B01D002C */ sth         r0, 0x2c(r29)
/* 806DCF04 81830000 */ lwz         r12, 0(r3)
/* 806DCF08 818C0014 */ lwz         r12, 0x14(r12)
/* 806DCF0C 7D8903A6 */ mtctr       r12
/* 806DCF10 4E800421 */ bctrl       
/* 806DCF14 2C030002 */ cmpwi       r3, 2
/* 806DCF18 40820014 */ bne-        lbl_806dcf2c
/* 806DCF1C C01F0004 */ lfs         f0, 4(r31)
/* 806DCF20 38000000 */ li          r0, 0
/* 806DCF24 901D00B8 */ stw         r0, 0xb8(r29)
/* 806DCF28 D01D010C */ stfs        f0, 0x10c(r29)
lbl_806dcf2c:
/* 806DCF2C 7FA3EB78 */ mr          r3, r29
/* 806DCF30 4BFFFC29 */ bl          unk_806dcb58
/* 806DCF34 C03E0000 */ lfs         f1, 0(r30)
/* 806DCF38 38610008 */ addi        r3, r1, 8
/* 806DCF3C 389D0110 */ addi        r4, r29, 0x110
/* 806DCF40 38BD011C */ addi        r5, r29, 0x11c
/* 806DCF44 4BFFFE05 */ bl          unk_806dcd48
/* 806DCF48 C0010008 */ lfs         f0, 8(r1)
/* 806DCF4C D01D0110 */ stfs        f0, 0x110(r29)
/* 806DCF50 EC400032 */ fmuls       f2, f0, f0
/* 806DCF54 C01F003C */ lfs         f0, 0x3c(r31)
/* 806DCF58 C021000C */ lfs         f1, 0xc(r1)
/* 806DCF5C D03D0114 */ stfs        f1, 0x114(r29)
/* 806DCF60 EC210072 */ fmuls       f1, f1, f1
/* 806DCF64 C0610010 */ lfs         f3, 0x10(r1)
/* 806DCF68 D07D0118 */ stfs        f3, 0x118(r29)
/* 806DCF6C EC6300F2 */ fmuls       f3, f3, f3
/* 806DCF70 EC22082A */ fadds       f1, f2, f1
/* 806DCF74 EC23082A */ fadds       f1, f3, f1
/* 806DCF78 FC010040 */ fcmpo       cr0, f1, f0
/* 806DCF7C 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 806DCF80 7C000026 */ mfcr        r0
/* 806DCF84 54001FFF */ rlwinm.     r0, r0, 3, 0x1f, 0x1f
/* 806DCF88 4182001C */ beq-        lbl_806dcfa4
/* 806DCF8C C03F0004 */ lfs         f1, 4(r31)
/* 806DCF90 C01F0020 */ lfs         f0, 0x20(r31)
/* 806DCF94 D03D0110 */ stfs        f1, 0x110(r29)
/* 806DCF98 D01D0114 */ stfs        f0, 0x114(r29)
/* 806DCF9C D03D0118 */ stfs        f1, 0x118(r29)
/* 806DCFA0 4800000C */ b           lbl_806dcfac
lbl_806dcfa4:
/* 806DCFA4 387D0110 */ addi        r3, r29, 0x110
/* 806DCFA8 4BB66BC5 */ bl          normalise2__Q23EGG8Vector3fFv
lbl_806dcfac:
/* 806DCFAC 7FA3EB78 */ mr          r3, r29
/* 806DCFB0 389D0110 */ addi        r4, r29, 0x110
/* 806DCFB4 38BD00DC */ addi        r5, r29, 0xdc
/* 806DCFB8 48144959 */ bl          unk_80821910
/* 806DCFBC 80010034 */ lwz         r0, 0x34(r1)
/* 806DCFC0 83E1002C */ lwz         r31, 0x2c(r1)
/* 806DCFC4 83C10028 */ lwz         r30, 0x28(r1)
/* 806DCFC8 83A10024 */ lwz         r29, 0x24(r1)
/* 806DCFCC 7C0803A6 */ mtlr        r0
/* 806DCFD0 38210030 */ addi        r1, r1, 0x30
/* 806DCFD4 4E800020 */ blr         