nofralloc
/* 805B5E40 9421FFB0 */ stwu        r1, -0x50(r1)
/* 805B5E44 7C0802A6 */ mflr        r0
/* 805B5E48 80E40000 */ lwz         r7, 0(r4)
/* 805B5E4C 90010054 */ stw         r0, 0x54(r1)
/* 805B5E50 93E1004C */ stw         r31, 0x4c(r1)
/* 805B5E54 7C9F2378 */ mr          r31, r4
/* 805B5E58 80DF0004 */ lwz         r6, 4(r31)
/* 805B5E5C 7CA42B78 */ mr          r4, r5
/* 805B5E60 801F0008 */ lwz         r0, 8(r31)
/* 805B5E64 38A1002C */ addi        r5, r1, 0x2c
/* 805B5E68 93C10048 */ stw         r30, 0x48(r1)
/* 805B5E6C 7C7E1B78 */ mr          r30, r3
/* 805B5E70 38630100 */ addi        r3, r3, 0x100
/* 805B5E74 90E10038 */ stw         r7, 0x38(r1)
/* 805B5E78 90C1003C */ stw         r6, 0x3c(r1)
/* 805B5E7C 90010040 */ stw         r0, 0x40(r1)
/* 805B5E80 4BC84585 */ bl          rotateVectorInv__Q23EGG5QuatfFRCQ23EGG8Vector3fRQ23EGG8Vector3f
/* 805B5E84 C03F0000 */ lfs         f1, 0(r31)
/* 805B5E88 387E0100 */ addi        r3, r30, 0x100
/* 805B5E8C C01E0068 */ lfs         f0, 0x68(r30)
/* 805B5E90 38810020 */ addi        r4, r1, 0x20
/* 805B5E94 C05F0004 */ lfs         f2, 4(r31)
/* 805B5E98 38A10014 */ addi        r5, r1, 0x14
/* 805B5E9C EC010028 */ fsubs       f0, f1, f0
/* 805B5EA0 C03F0008 */ lfs         f1, 8(r31)
/* 805B5EA4 D0010020 */ stfs        f0, 0x20(r1)
/* 805B5EA8 C01E006C */ lfs         f0, 0x6c(r30)
/* 805B5EAC EC020028 */ fsubs       f0, f2, f0
/* 805B5EB0 D0010024 */ stfs        f0, 0x24(r1)
/* 805B5EB4 C01E0070 */ lfs         f0, 0x70(r30)
/* 805B5EB8 EC010028 */ fsubs       f0, f1, f0
/* 805B5EBC D0010028 */ stfs        f0, 0x28(r1)
/* 805B5EC0 4BC84545 */ bl          rotateVectorInv__Q23EGG5QuatfFRCQ23EGG8Vector3fRQ23EGG8Vector3f
/* 805B5EC4 C0410014 */ lfs         f2, 0x14(r1)
/* 805B5EC8 3C608089 */ lis         r3, lbl_80892750@ha
/* 805B5ECC C0210030 */ lfs         f1, 0x30(r1)
/* 805B5ED0 C001001C */ lfs         f0, 0x1c(r1)
/* 805B5ED4 ECC20072 */ fmuls       f6, f2, f1
/* 805B5ED8 C0810018 */ lfs         f4, 0x18(r1)
/* 805B5EDC C041002C */ lfs         f2, 0x2c(r1)
/* 805B5EE0 EC000072 */ fmuls       f0, f0, f1
/* 805B5EE4 C0210034 */ lfs         f1, 0x34(r1)
/* 805B5EE8 ECA400B2 */ fmuls       f5, f4, f2
/* 805B5EEC EC840072 */ fmuls       f4, f4, f1
/* 805B5EF0 C0632750 */ lfs         f3, lbl_80892750@l(r3)
/* 805B5EF4 C03E0120 */ lfs         f1, 0x120(r30)
/* 805B5EF8 ECA62828 */ fsubs       f5, f6, f5
/* 805B5EFC C05E011C */ lfs         f2, 0x11c(r30)
/* 805B5F00 EC840028 */ fsubs       f4, f4, f0
/* 805B5F04 C01E0124 */ lfs         f0, 0x124(r30)
/* 805B5F08 EC21182A */ fadds       f1, f1, f3
/* 805B5F0C D0A10010 */ stfs        f5, 0x10(r1)
/* 805B5F10 EC00282A */ fadds       f0, f0, f5
/* 805B5F14 EC42202A */ fadds       f2, f2, f4
/* 805B5F18 D03E0120 */ stfs        f1, 0x120(r30)
/* 805B5F1C D05E011C */ stfs        f2, 0x11c(r30)
/* 805B5F20 D01E0124 */ stfs        f0, 0x124(r30)
/* 805B5F24 83E1004C */ lwz         r31, 0x4c(r1)
/* 805B5F28 83C10048 */ lwz         r30, 0x48(r1)
/* 805B5F2C 80010054 */ lwz         r0, 0x54(r1)
/* 805B5F30 D0810008 */ stfs        f4, 8(r1)
/* 805B5F34 D061000C */ stfs        f3, 0xc(r1)
/* 805B5F38 7C0803A6 */ mtlr        r0
/* 805B5F3C 38210050 */ addi        r1, r1, 0x50
/* 805B5F40 4E800020 */ blr         