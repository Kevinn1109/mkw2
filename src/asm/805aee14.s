nofralloc
/* 805AEE14 9421FFC0 */ stwu        r1, -0x40(r1)
/* 805AEE18 3D004330 */ lis         r8, 0x4330
/* 805AEE1C 88040000 */ lbz         r0, 0(r4)
/* 805AEE20 3CE08089 */ lis         r7, lbl_80892548@ha
/* 805AEE24 9001000C */ stw         r0, 0xc(r1)
/* 805AEE28 88C40001 */ lbz         r6, 1(r4)
/* 805AEE2C 91010008 */ stw         r8, 8(r1)
/* 805AEE30 88A40002 */ lbz         r5, 2(r4)
/* 805AEE34 C8010008 */ lfd         f0, 8(r1)
/* 805AEE38 C8A72548 */ lfd         f5, lbl_80892548@l(r7)
/* 805AEE3C 90A1000C */ stw         r5, 0xc(r1)
/* 805AEE40 EC402828 */ fsubs       f2, f0, f5
/* 805AEE44 88040003 */ lbz         r0, 3(r4)
/* 805AEE48 C8010008 */ lfd         f0, 8(r1)
/* 805AEE4C 91010010 */ stw         r8, 0x10(r1)
/* 805AEE50 EC002828 */ fsubs       f0, f0, f5
/* 805AEE54 EC620072 */ fmuls       f3, f2, f1
/* 805AEE58 90C10014 */ stw         r6, 0x14(r1)
/* 805AEE5C C8410010 */ lfd         f2, 0x10(r1)
/* 805AEE60 EC000072 */ fmuls       f0, f0, f1
/* 805AEE64 FC80181E */ fctiwz      f4, f3
/* 805AEE68 EC622828 */ fsubs       f3, f2, f5
/* 805AEE6C 90010014 */ stw         r0, 0x14(r1)
/* 805AEE70 FC40001E */ fctiwz      f2, f0
/* 805AEE74 C8010010 */ lfd         f0, 0x10(r1)
/* 805AEE78 D8410028 */ stfd        f2, 0x28(r1)
/* 805AEE7C EC630072 */ fmuls       f3, f3, f1
/* 805AEE80 EC002828 */ fsubs       f0, f0, f5
/* 805AEE84 D8810018 */ stfd        f4, 0x18(r1)
/* 805AEE88 FC40181E */ fctiwz      f2, f3
/* 805AEE8C 8081002C */ lwz         r4, 0x2c(r1)
/* 805AEE90 EC000072 */ fmuls       f0, f0, f1
/* 805AEE94 8001001C */ lwz         r0, 0x1c(r1)
/* 805AEE98 D8410020 */ stfd        f2, 0x20(r1)
/* 805AEE9C FC00001E */ fctiwz      f0, f0
/* 805AEEA0 80A10024 */ lwz         r5, 0x24(r1)
/* 805AEEA4 98030000 */ stb         r0, 0(r3)
/* 805AEEA8 D8010030 */ stfd        f0, 0x30(r1)
/* 805AEEAC 80010034 */ lwz         r0, 0x34(r1)
/* 805AEEB0 98A30001 */ stb         r5, 1(r3)
/* 805AEEB4 98830002 */ stb         r4, 2(r3)
/* 805AEEB8 98030003 */ stb         r0, 3(r3)
/* 805AEEBC 38210040 */ addi        r1, r1, 0x40
/* 805AEEC0 4E800020 */ blr         