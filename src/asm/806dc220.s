nofralloc
/* 806DC220 9421FFD0 */ stwu        r1, -0x30(r1)
/* 806DC224 7C0802A6 */ mflr        r0
/* 806DC228 90010034 */ stw         r0, 0x34(r1)
/* 806DC22C DBE10020 */ stfd        f31, 0x20(r1)
/* 806DC230 F3E10028 */ psq_st      f31, 0x28(r1), 0, 0
/* 806DC234 93E1001C */ stw         r31, 0x1c(r1)
/* 806DC238 7C7F1B78 */ mr          r31, r3
/* 806DC23C 93C10018 */ stw         r30, 0x18(r1)
/* 806DC240 3FC0808A */ lis         r30, lbl_808a0378@ha
/* 806DC244 3BDE0378 */ addi        r30, r30, lbl_808a0378@l
/* 806DC248 80C30020 */ lwz         r6, 0x20(r3)
/* 806DC24C 80A300BC */ lwz         r5, 0xbc(r3)
/* 806DC250 A8060046 */ lha         r0, 0x46(r6)
/* 806DC254 80860008 */ lwz         r4, 8(r6)
/* 806DC258 54002036 */ slwi        r0, r0, 4
/* 806DC25C 7C840214 */ add         r4, r4, r0
/* 806DC260 A004000C */ lhz         r0, 0xc(r4)
/* 806DC264 7C050040 */ cmplw       r5, r0
/* 806DC268 4081009C */ ble-        lbl_806dc304
/* 806DC26C 88060044 */ lbz         r0, 0x44(r6)
/* 806DC270 2C000000 */ cmpwi       r0, 0
/* 806DC274 41820048 */ beq-        lbl_806dc2bc
/* 806DC278 C04300D8 */ lfs         f2, 0xd8(r3)
/* 806DC27C 38800000 */ li          r4, 0
/* 806DC280 C0230128 */ lfs         f1, 0x128(r3)
/* 806DC284 80630008 */ lwz         r3, 8(r3)
/* 806DC288 80630028 */ lwz         r3, 0x28(r3)
/* 806DC28C 4BE7B141 */ bl          unk_805573cc
/* 806DC290 807F0008 */ lwz         r3, 8(r31)
/* 806DC294 38800000 */ li          r4, 0
/* 806DC298 C3FF0128 */ lfs         f31, 0x128(r31)
/* 806DC29C 80630028 */ lwz         r3, 0x28(r3)
/* 806DC2A0 4BE7B0A1 */ bl          unk_80557340
/* 806DC2A4 81830000 */ lwz         r12, 0(r3)
/* 806DC2A8 FC20F890 */ fmr         f1, f31
/* 806DC2AC 818C0014 */ lwz         r12, 0x14(r12)
/* 806DC2B0 7D8903A6 */ mtctr       r12
/* 806DC2B4 4E800421 */ bctrl       
/* 806DC2B8 48000044 */ b           lbl_806dc2fc
lbl_806dc2bc:
/* 806DC2BC C04300D8 */ lfs         f2, 0xd8(r3)
/* 806DC2C0 38800001 */ li          r4, 1
/* 806DC2C4 C0230128 */ lfs         f1, 0x128(r3)
/* 806DC2C8 80630008 */ lwz         r3, 8(r3)
/* 806DC2CC 80630028 */ lwz         r3, 0x28(r3)
/* 806DC2D0 4BE7B0FD */ bl          unk_805573cc
/* 806DC2D4 807F0008 */ lwz         r3, 8(r31)
/* 806DC2D8 38800000 */ li          r4, 0
/* 806DC2DC C3FF0128 */ lfs         f31, 0x128(r31)
/* 806DC2E0 80630028 */ lwz         r3, 0x28(r3)
/* 806DC2E4 4BE7B05D */ bl          unk_80557340
/* 806DC2E8 81830000 */ lwz         r12, 0(r3)
/* 806DC2EC FC20F890 */ fmr         f1, f31
/* 806DC2F0 818C0014 */ lwz         r12, 0x14(r12)
/* 806DC2F4 7D8903A6 */ mtctr       r12
/* 806DC2F8 4E800421 */ bctrl       
lbl_806dc2fc:
/* 806DC2FC 38000001 */ li          r0, 1
/* 806DC300 901F00B8 */ stw         r0, 0xb8(r31)
lbl_806dc304:
/* 806DC304 7FE3FB78 */ mr          r3, r31
/* 806DC308 48000851 */ bl          unk_806dcb58
/* 806DC30C 3C80808C */ lis         r4, lbl_808c5d70@ha
/* 806DC310 38610008 */ addi        r3, r1, 8
/* 806DC314 C0245D70 */ lfs         f1, lbl_808c5d70@l(r4)
/* 806DC318 389F0110 */ addi        r4, r31, 0x110
/* 806DC31C 38BF011C */ addi        r5, r31, 0x11c
/* 806DC320 48000A29 */ bl          unk_806dcd48
/* 806DC324 C0010008 */ lfs         f0, 8(r1)
/* 806DC328 D01F0110 */ stfs        f0, 0x110(r31)
/* 806DC32C EC400032 */ fmuls       f2, f0, f0
/* 806DC330 C01E003C */ lfs         f0, 0x3c(r30)
/* 806DC334 C021000C */ lfs         f1, 0xc(r1)
/* 806DC338 D03F0114 */ stfs        f1, 0x114(r31)
/* 806DC33C EC210072 */ fmuls       f1, f1, f1
/* 806DC340 C0610010 */ lfs         f3, 0x10(r1)
/* 806DC344 D07F0118 */ stfs        f3, 0x118(r31)
/* 806DC348 EC6300F2 */ fmuls       f3, f3, f3
/* 806DC34C EC22082A */ fadds       f1, f2, f1
/* 806DC350 EC23082A */ fadds       f1, f3, f1
/* 806DC354 FC010040 */ fcmpo       cr0, f1, f0
/* 806DC358 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 806DC35C 7C000026 */ mfcr        r0
/* 806DC360 54001FFF */ rlwinm.     r0, r0, 3, 0x1f, 0x1f
/* 806DC364 4182001C */ beq-        lbl_806dc380
/* 806DC368 C03E0004 */ lfs         f1, 4(r30)
/* 806DC36C C01E0020 */ lfs         f0, 0x20(r30)
/* 806DC370 D03F0110 */ stfs        f1, 0x110(r31)
/* 806DC374 D01F0114 */ stfs        f0, 0x114(r31)
/* 806DC378 D03F0118 */ stfs        f1, 0x118(r31)
/* 806DC37C 4800000C */ b           lbl_806dc388
lbl_806dc380:
/* 806DC380 387F0110 */ addi        r3, r31, 0x110
/* 806DC384 4BB677E9 */ bl          normalise2__Q23EGG8Vector3fFv
lbl_806dc388:
/* 806DC388 7FE3FB78 */ mr          r3, r31
/* 806DC38C 389F0110 */ addi        r4, r31, 0x110
/* 806DC390 38BF00DC */ addi        r5, r31, 0xdc
/* 806DC394 4814557D */ bl          unk_80821910
/* 806DC398 881F0136 */ lbz         r0, 0x136(r31)
/* 806DC39C 2C000000 */ cmpwi       r0, 0
/* 806DC3A0 4182000C */ beq-        lbl_806dc3ac
/* 806DC3A4 7FE3FB78 */ mr          r3, r31
/* 806DC3A8 48000239 */ bl          unk_806dc5e0
lbl_806dc3ac:
/* 806DC3AC 881F013C */ lbz         r0, 0x13c(r31)
/* 806DC3B0 2C000000 */ cmpwi       r0, 0
/* 806DC3B4 4182000C */ beq-        lbl_806dc3c0
/* 806DC3B8 7FE3FB78 */ mr          r3, r31
/* 806DC3BC 480003D5 */ bl          unk_806dc790
lbl_806dc3c0:
/* 806DC3C0 881F0144 */ lbz         r0, 0x144(r31)
/* 806DC3C4 2C000000 */ cmpwi       r0, 0
/* 806DC3C8 4182000C */ beq-        lbl_806dc3d4
/* 806DC3CC 7FE3FB78 */ mr          r3, r31
/* 806DC3D0 48000609 */ bl          unk_806dc9d8
lbl_806dc3d4:
/* 806DC3D4 E3E10028 */ psq_l       f31, 0x28(r1), 0, 0
/* 806DC3D8 80010034 */ lwz         r0, 0x34(r1)
/* 806DC3DC CBE10020 */ lfd         f31, 0x20(r1)
/* 806DC3E0 83E1001C */ lwz         r31, 0x1c(r1)
/* 806DC3E4 83C10018 */ lwz         r30, 0x18(r1)
/* 806DC3E8 7C0803A6 */ mtlr        r0
/* 806DC3EC 38210030 */ addi        r1, r1, 0x30
/* 806DC3F0 4E800020 */ blr         