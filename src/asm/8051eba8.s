nofralloc
/* 8051EBA8 8803008C */ lbz         r0, 0x8c(r3)
/* 8051EBAC 3CC08089 */ lis         r6, ZERO_F__6System@ha
/* 8051EBB0 C026FCC0 */ lfs         f1, ZERO_F__6System@l(r6)
/* 8051EBB4 3C808089 */ lis         r4, MINUS_ONE_F__6System@ha
/* 8051EBB8 39200000 */ li          r9, 0
/* 8051EBBC 39000007 */ li          r8, 7
/* 8051EBC0 C004FCC4 */ lfs         f0, MINUS_ONE_F__6System@l(r4)
/* 8051EBC4 3D60808B */ lis         r11, lbl_808b2ed8@ha
/* 8051EBC8 88A3004C */ lbz         r5, 0x4c(r3)
/* 8051EBCC 3D40808B */ lis         r10, lbl_808b2f2c@ha
/* 8051EBD0 88E30018 */ lbz         r7, 0x18(r3)
/* 8051EBD4 3CC0808B */ lis         r6, lbl_808b2f20@ha
/* 8051EBD8 38C62F20 */ addi        r6, r6, lbl_808b2f20@l
/* 8051EBDC 396B2ED8 */ addi        r11, r11, lbl_808b2ed8@l
/* 8051EBE0 394A2F2C */ addi        r10, r10, lbl_808b2f2c@l
/* 8051EBE4 54E7066E */ rlwinm      r7, r7, 0, 0x19, 0x17
/* 8051EBE8 540006AE */ rlwinm      r0, r0, 0, 0x1a, 0x17
/* 8051EBEC 54A406AE */ rlwinm      r4, r5, 0, 0x1a, 0x17
/* 8051EBF0 91630000 */ stw         r11, 0(r3)
/* 8051EBF4 91430004 */ stw         r10, 4(r3)
/* 8051EBF8 B1230008 */ sth         r9, 8(r3)
/* 8051EBFC B123000A */ sth         r9, 0xa(r3)
/* 8051EC00 D0230010 */ stfs        f1, 0x10(r3)
/* 8051EC04 D023000C */ stfs        f1, 0xc(r3)
/* 8051EC08 99030014 */ stb         r8, 0x14(r3)
/* 8051EC0C 99030015 */ stb         r8, 0x15(r3)
/* 8051EC10 99230016 */ stb         r9, 0x16(r3)
/* 8051EC14 99230017 */ stb         r9, 0x17(r3)
/* 8051EC18 98E30018 */ stb         r7, 0x18(r3)
/* 8051EC1C 90C3001C */ stw         r6, 0x1c(r3)
/* 8051EC20 B1230020 */ sth         r9, 0x20(r3)
/* 8051EC24 B1230022 */ sth         r9, 0x22(r3)
/* 8051EC28 D0230028 */ stfs        f1, 0x28(r3)
/* 8051EC2C D0230024 */ stfs        f1, 0x24(r3)
/* 8051EC30 99030034 */ stb         r8, 0x34(r3)
/* 8051EC34 99030035 */ stb         r8, 0x35(r3)
/* 8051EC38 D0030038 */ stfs        f0, 0x38(r3)
/* 8051EC3C D003003C */ stfs        f0, 0x3c(r3)
/* 8051EC40 D0230044 */ stfs        f1, 0x44(r3)
/* 8051EC44 D0230040 */ stfs        f1, 0x40(r3)
/* 8051EC48 D0230048 */ stfs        f1, 0x48(r3)
/* 8051EC4C 9883004C */ stb         r4, 0x4c(r3)
/* 8051EC50 99230050 */ stb         r9, 0x50(r3)
/* 8051EC54 91030054 */ stw         r8, 0x54(r3)
/* 8051EC58 99230058 */ stb         r9, 0x58(r3)
/* 8051EC5C 90C3005C */ stw         r6, 0x5c(r3)
/* 8051EC60 B1230060 */ sth         r9, 0x60(r3)
/* 8051EC64 B1230062 */ sth         r9, 0x62(r3)
/* 8051EC68 D0230068 */ stfs        f1, 0x68(r3)
/* 8051EC6C D0230064 */ stfs        f1, 0x64(r3)
/* 8051EC70 99030074 */ stb         r8, 0x74(r3)
/* 8051EC74 99030075 */ stb         r8, 0x75(r3)
/* 8051EC78 D0030078 */ stfs        f0, 0x78(r3)
/* 8051EC7C D003007C */ stfs        f0, 0x7c(r3)
/* 8051EC80 D0230084 */ stfs        f1, 0x84(r3)
/* 8051EC84 D0230080 */ stfs        f1, 0x80(r3)
/* 8051EC88 D0230088 */ stfs        f1, 0x88(r3)
/* 8051EC8C 9803008C */ stb         r0, 0x8c(r3)
/* 8051EC90 4E800020 */ blr         