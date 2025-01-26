nofralloc
/* 806DCB58 9421FF70 */ stwu        r1, -0x90(r1)
/* 806DCB5C 7C0802A6 */ mflr        r0
/* 806DCB60 90010094 */ stw         r0, 0x94(r1)
/* 806DCB64 93E1008C */ stw         r31, 0x8c(r1)
/* 806DCB68 3FE0808A */ lis         r31, lbl_808a0378@ha
/* 806DCB6C 3BFF0378 */ addi        r31, r31, lbl_808a0378@l
/* 806DCB70 93C10088 */ stw         r30, 0x88(r1)
/* 806DCB74 7C7E1B78 */ mr          r30, r3
/* 806DCB78 A00300B4 */ lhz         r0, 0xb4(r3)
/* 806DCB7C 2C000000 */ cmpwi       r0, 0
/* 806DCB80 41820020 */ beq-        lbl_806dcba0
/* 806DCB84 C0230034 */ lfs         f1, 0x34(r3)
/* 806DCB88 C01F0040 */ lfs         f0, 0x40(r31)
/* 806DCB8C A003002C */ lhz         r0, 0x2c(r3)
/* 806DCB90 EC010028 */ fsubs       f0, f1, f0
/* 806DCB94 60000001 */ ori         r0, r0, 1
/* 806DCB98 B003002C */ sth         r0, 0x2c(r3)
/* 806DCB9C D0030034 */ stfs        f0, 0x34(r3)
lbl_806dcba0:
/* 806DCBA0 C03F0004 */ lfs         f1, 4(r31)
/* 806DCBA4 38000000 */ li          r0, 0
/* 806DCBA8 C01F0054 */ lfs         f0, 0x54(r31)
/* 806DCBAC 38610014 */ addi        r3, r1, 0x14
/* 806DCBB0 D0210020 */ stfs        f1, 0x20(r1)
/* 806DCBB4 389E0030 */ addi        r4, r30, 0x30
/* 806DCBB8 38A10020 */ addi        r5, r1, 0x20
/* 806DCBBC D0010024 */ stfs        f0, 0x24(r1)
/* 806DCBC0 D0210028 */ stfs        f1, 0x28(r1)
/* 806DCBC4 D021002C */ stfs        f1, 0x2c(r1)
/* 806DCBC8 D0210030 */ stfs        f1, 0x30(r1)
/* 806DCBCC D0210034 */ stfs        f1, 0x34(r1)
/* 806DCBD0 D0210038 */ stfs        f1, 0x38(r1)
/* 806DCBD4 D021003C */ stfs        f1, 0x3c(r1)
/* 806DCBD8 D0210040 */ stfs        f1, 0x40(r1)
/* 806DCBDC 90010084 */ stw         r0, 0x84(r1)
/* 806DCBE0 4BE37C59 */ bl          Vec3_add
/* 806DCBE4 3C60809C */ lis         r3, spInstance__Q25Field11CourseModel@ha
/* 806DCBE8 3CC0808A */ lis         r6, lbl_808a66cc@ha
/* 806DCBEC 3CA0809C */ lis         r5, VEC_INFINITY@ha
/* 806DCBF0 3CE020E8 */ lis         r7, 0x20e8
/* 806DCBF4 810666CC */ lwz         r8, lbl_808a66cc@l(r6)
/* 806DCBF8 38C70FFF */ addi        r6, r7, 0xfff
/* 806DCBFC 80632F44 */ lwz         r3, spInstance__Q25Field11CourseModel@l(r3)
/* 806DCC00 38810014 */ addi        r4, r1, 0x14
/* 806DCC04 C03F0054 */ lfs         f1, 0x54(r31)
/* 806DCC08 38A53C04 */ addi        r5, r5, VEC_INFINITY@l
/* 806DCC0C 38E1002C */ addi        r7, r1, 0x2c
/* 806DCC10 39200000 */ li          r9, 0
/* 806DCC14 480B28ED */ bl          checkSphereFull__Q25Field11CourseModelFRCQ23EGG8Vector3fRCQ23EGG8Vector3fUlPQ25Field7ColInfoPUlfUl
/* 806DCC18 2C030000 */ cmpwi       r3, 0
/* 806DCC1C 41820068 */ beq-        lbl_806dcc84
/* 806DCC20 38610008 */ addi        r3, r1, 8
/* 806DCC24 389E0030 */ addi        r4, r30, 0x30
/* 806DCC28 38A10044 */ addi        r5, r1, 0x44
/* 806DCC2C 4BE37C0D */ bl          Vec3_add
/* 806DCC30 A01E002C */ lhz         r0, 0x2c(r30)
/* 806DCC34 C0210010 */ lfs         f1, 0x10(r1)
/* 806DCC38 C041000C */ lfs         f2, 0xc(r1)
/* 806DCC3C 60000001 */ ori         r0, r0, 1
/* 806DCC40 C0010008 */ lfs         f0, 8(r1)
/* 806DCC44 D01E0030 */ stfs        f0, 0x30(r30)
/* 806DCC48 C01F0058 */ lfs         f0, 0x58(r31)
/* 806DCC4C B01E002C */ sth         r0, 0x2c(r30)
/* 806DCC50 D05E0034 */ stfs        f2, 0x34(r30)
/* 806DCC54 D03E0038 */ stfs        f1, 0x38(r30)
/* 806DCC58 C0210074 */ lfs         f1, 0x74(r1)
/* 806DCC5C FC010040 */ fcmpo       cr0, f1, f0
/* 806DCC60 7C000026 */ mfcr        r0
/* 806DCC64 540017FF */ rlwinm.     r0, r0, 2, 0x1f, 0x1f
/* 806DCC68 4182001C */ beq-        lbl_806dcc84
/* 806DCC6C C0010050 */ lfs         f0, 0x50(r1)
/* 806DCC70 D01E011C */ stfs        f0, 0x11c(r30)
/* 806DCC74 C0010054 */ lfs         f0, 0x54(r1)
/* 806DCC78 D01E0120 */ stfs        f0, 0x120(r30)
/* 806DCC7C C0010058 */ lfs         f0, 0x58(r1)
/* 806DCC80 D01E0124 */ stfs        f0, 0x124(r30)
lbl_806dcc84:
/* 806DCC84 80010094 */ lwz         r0, 0x94(r1)
/* 806DCC88 83E1008C */ lwz         r31, 0x8c(r1)
/* 806DCC8C 83C10088 */ lwz         r30, 0x88(r1)
/* 806DCC90 7C0803A6 */ mtlr        r0
/* 806DCC94 38210090 */ addi        r1, r1, 0x90
/* 806DCC98 4E800020 */ blr         