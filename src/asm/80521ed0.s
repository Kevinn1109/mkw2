nofralloc
/* 80521ED0 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80521ED4 7C0802A6 */ mflr        r0
/* 80521ED8 3CC08038 */ lis         r6, spInstance__Q26System8RKSystem@ha
/* 80521EDC 90010024 */ stw         r0, 0x24(r1)
/* 80521EE0 DBE10018 */ stfd        f31, 0x18(r1)
/* 80521EE4 FFE00890 */ fmr         f31, f1
/* 80521EE8 93E10014 */ stw         r31, 0x14(r1)
/* 80521EEC 7CBF2B78 */ mr          r31, r5
/* 80521EF0 93C10010 */ stw         r30, 0x10(r1)
/* 80521EF4 7C9E2378 */ mr          r30, r4
/* 80521EF8 93A1000C */ stw         r29, 0xc(r1)
/* 80521EFC 7C7D1B78 */ mr          r29, r3
/* 80521F00 80665FC8 */ lwz         r3, spInstance__Q26System8RKSystem@l(r6)
/* 80521F04 80630054 */ lwz         r3, 0x54(r3)
/* 80521F08 80630024 */ lwz         r3, 0x24(r3)
/* 80521F0C 81830000 */ lwz         r12, 0(r3)
/* 80521F10 818C000C */ lwz         r12, 0xc(r12)
/* 80521F14 7D8903A6 */ mtctr       r12
/* 80521F18 4E800421 */ bctrl       
/* 80521F1C 20830001 */ subfic      r4, r3, 1
/* 80521F20 3803FFFF */ addi        r0, r3, -1
/* 80521F24 7C800378 */ or          r0, r4, r0
/* 80521F28 54000FFF */ rlwinm.     r0, r0, 1, 0x1f, 0x1f
/* 80521F2C 40820040 */ bne-        lbl_80521f6c
/* 80521F30 801D0024 */ lwz         r0, 0x24(r29)
/* 80521F34 807D0004 */ lwz         r3, 4(r29)
/* 80521F38 2C000000 */ cmpwi       r0, 0
/* 80521F3C 41820030 */ beq-        lbl_80521f6c
/* 80521F40 81830000 */ lwz         r12, 0(r3)
/* 80521F44 818C0014 */ lwz         r12, 0x14(r12)
/* 80521F48 7D8903A6 */ mtctr       r12
/* 80521F4C 4E800421 */ bctrl       
/* 80521F50 2C030000 */ cmpwi       r3, 0
/* 80521F54 41820018 */ beq-        lbl_80521f6c
/* 80521F58 FC20F890 */ fmr         f1, f31
/* 80521F5C 807D0024 */ lwz         r3, 0x24(r29)
/* 80521F60 7FC4F378 */ mr          r4, r30
/* 80521F64 7FE5FB78 */ mr          r5, r31
/* 80521F68 48003B0D */ bl          unk_80525a74
lbl_80521f6c:
/* 80521F6C 80010024 */ lwz         r0, 0x24(r1)
/* 80521F70 CBE10018 */ lfd         f31, 0x18(r1)
/* 80521F74 83E10014 */ lwz         r31, 0x14(r1)
/* 80521F78 83C10010 */ lwz         r30, 0x10(r1)
/* 80521F7C 83A1000C */ lwz         r29, 0xc(r1)
/* 80521F80 7C0803A6 */ mtlr        r0
/* 80521F84 38210020 */ addi        r1, r1, 0x20
/* 80521F88 4E800020 */ blr         