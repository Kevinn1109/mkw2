nofralloc
/* 80521D8C 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80521D90 7C0802A6 */ mflr        r0
/* 80521D94 3CC08038 */ lis         r6, spInstance__Q26System8RKSystem@ha
/* 80521D98 90010024 */ stw         r0, 0x24(r1)
/* 80521D9C DBE10018 */ stfd        f31, 0x18(r1)
/* 80521DA0 FFE00890 */ fmr         f31, f1
/* 80521DA4 93E10014 */ stw         r31, 0x14(r1)
/* 80521DA8 7CBF2B78 */ mr          r31, r5
/* 80521DAC 93C10010 */ stw         r30, 0x10(r1)
/* 80521DB0 7C9E2378 */ mr          r30, r4
/* 80521DB4 93A1000C */ stw         r29, 0xc(r1)
/* 80521DB8 7C7D1B78 */ mr          r29, r3
/* 80521DBC 80665FC8 */ lwz         r3, spInstance__Q26System8RKSystem@l(r6)
/* 80521DC0 80630054 */ lwz         r3, 0x54(r3)
/* 80521DC4 80630024 */ lwz         r3, 0x24(r3)
/* 80521DC8 81830000 */ lwz         r12, 0(r3)
/* 80521DCC 818C000C */ lwz         r12, 0xc(r12)
/* 80521DD0 7D8903A6 */ mtctr       r12
/* 80521DD4 4E800421 */ bctrl       
/* 80521DD8 20830001 */ subfic      r4, r3, 1
/* 80521DDC 3803FFFF */ addi        r0, r3, -1
/* 80521DE0 7C800378 */ or          r0, r4, r0
/* 80521DE4 54000FFF */ rlwinm.     r0, r0, 1, 0x1f, 0x1f
/* 80521DE8 40820040 */ bne-        lbl_80521e28
/* 80521DEC 801D0020 */ lwz         r0, 0x20(r29)
/* 80521DF0 807D0004 */ lwz         r3, 4(r29)
/* 80521DF4 2C000000 */ cmpwi       r0, 0
/* 80521DF8 41820030 */ beq-        lbl_80521e28
/* 80521DFC 81830000 */ lwz         r12, 0(r3)
/* 80521E00 818C0014 */ lwz         r12, 0x14(r12)
/* 80521E04 7D8903A6 */ mtctr       r12
/* 80521E08 4E800421 */ bctrl       
/* 80521E0C 2C030000 */ cmpwi       r3, 0
/* 80521E10 41820018 */ beq-        lbl_80521e28
/* 80521E14 FC20F890 */ fmr         f1, f31
/* 80521E18 807D0020 */ lwz         r3, 0x20(r29)
/* 80521E1C 7FC4F378 */ mr          r4, r30
/* 80521E20 7FE5FB78 */ mr          r5, r31
/* 80521E24 48003C51 */ bl          unk_80525a74
lbl_80521e28:
/* 80521E28 80010024 */ lwz         r0, 0x24(r1)
/* 80521E2C CBE10018 */ lfd         f31, 0x18(r1)
/* 80521E30 83E10014 */ lwz         r31, 0x14(r1)
/* 80521E34 83C10010 */ lwz         r30, 0x10(r1)
/* 80521E38 83A1000C */ lwz         r29, 0xc(r1)
/* 80521E3C 7C0803A6 */ mtlr        r0
/* 80521E40 38210020 */ addi        r1, r1, 0x20
/* 80521E44 4E800020 */ blr         