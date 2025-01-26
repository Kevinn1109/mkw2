nofralloc
/* 80521A34 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80521A38 7C0802A6 */ mflr        r0
/* 80521A3C 3CC08038 */ lis         r6, spInstance__Q26System8RKSystem@ha
/* 80521A40 90010024 */ stw         r0, 0x24(r1)
/* 80521A44 DBE10018 */ stfd        f31, 0x18(r1)
/* 80521A48 FFE00890 */ fmr         f31, f1
/* 80521A4C 93E10014 */ stw         r31, 0x14(r1)
/* 80521A50 7CBF2B78 */ mr          r31, r5
/* 80521A54 93C10010 */ stw         r30, 0x10(r1)
/* 80521A58 7C9E2378 */ mr          r30, r4
/* 80521A5C 93A1000C */ stw         r29, 0xc(r1)
/* 80521A60 7C7D1B78 */ mr          r29, r3
/* 80521A64 80665FC8 */ lwz         r3, spInstance__Q26System8RKSystem@l(r6)
/* 80521A68 80630054 */ lwz         r3, 0x54(r3)
/* 80521A6C 80630024 */ lwz         r3, 0x24(r3)
/* 80521A70 81830000 */ lwz         r12, 0(r3)
/* 80521A74 818C000C */ lwz         r12, 0xc(r12)
/* 80521A78 7D8903A6 */ mtctr       r12
/* 80521A7C 4E800421 */ bctrl       
/* 80521A80 20830001 */ subfic      r4, r3, 1
/* 80521A84 3803FFFF */ addi        r0, r3, -1
/* 80521A88 7C800378 */ or          r0, r4, r0
/* 80521A8C 54000FFF */ rlwinm.     r0, r0, 1, 0x1f, 0x1f
/* 80521A90 4082001C */ bne-        lbl_80521aac
/* 80521A94 FC20F890 */ fmr         f1, f31
/* 80521A98 809D0004 */ lwz         r4, 4(r29)
/* 80521A9C 7FA3EB78 */ mr          r3, r29
/* 80521AA0 7FC5F378 */ mr          r5, r30
/* 80521AA4 7FE6FB78 */ mr          r6, r31
/* 80521AA8 48000025 */ bl          unk_80521acc
lbl_80521aac:
/* 80521AAC 80010024 */ lwz         r0, 0x24(r1)
/* 80521AB0 CBE10018 */ lfd         f31, 0x18(r1)
/* 80521AB4 83E10014 */ lwz         r31, 0x14(r1)
/* 80521AB8 83C10010 */ lwz         r30, 0x10(r1)
/* 80521ABC 83A1000C */ lwz         r29, 0xc(r1)
/* 80521AC0 7C0803A6 */ mtlr        r0
/* 80521AC4 38210020 */ addi        r1, r1, 0x20
/* 80521AC8 4E800020 */ blr         