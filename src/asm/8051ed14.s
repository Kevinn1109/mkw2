nofralloc
/* 8051ED14 9421FF50 */ stwu        r1, -0xb0(r1)
/* 8051ED18 7C0802A6 */ mflr        r0
/* 8051ED1C 900100B4 */ stw         r0, 0xb4(r1)
/* 8051ED20 396100B0 */ addi        r11, r1, 0xb0
/* 8051ED24 4BB02849 */ bl          _savegpr_14
/* 8051ED28 3D008089 */ lis         r8, ZERO_F__6System@ha
/* 8051ED2C 8803004C */ lbz         r0, 0x4c(r3)
/* 8051ED30 8883004C */ lbz         r4, 0x4c(r3)
/* 8051ED34 3CE08089 */ lis         r7, MINUS_ONE_F__6System@ha
/* 8051ED38 C028FCC0 */ lfs         f1, ZERO_F__6System@l(r8)
/* 8051ED3C 3E60808B */ lis         r19, lbl_808b2f2c@ha
/* 8051ED40 81030040 */ lwz         r8, 0x40(r3)
/* 8051ED44 5484066E */ rlwinm      r4, r4, 0, 0x19, 0x17
/* 8051ED48 82C3000C */ lwz         r22, 0xc(r3)
/* 8051ED4C 3FA0808B */ lis         r29, lbl_808b2f20@ha
/* 8051ED50 82E30010 */ lwz         r23, 0x10(r3)
/* 8051ED54 39E00000 */ li          r15, 0
/* 8051ED58 A2830008 */ lhz         r20, 8(r3)
/* 8051ED5C 549206B0 */ rlwinm      r18, r4, 0, 0x1a, 0x18
/* 8051ED60 A2A3000A */ lhz         r21, 0xa(r3)
/* 8051ED64 3A000007 */ li          r16, 7
/* 8051ED68 8B430016 */ lbz         r26, 0x16(r3)
/* 8051ED6C 3A732F2C */ addi        r19, r19, lbl_808b2f2c@l
/* 8051ED70 8B630017 */ lbz         r27, 0x17(r3)
/* 8051ED74 3BBD2F20 */ addi        r29, r29, lbl_808b2f20@l
/* 8051ED78 A3C30020 */ lhz         r30, 0x20(r3)
/* 8051ED7C 7C7F1B78 */ mr          r31, r3
/* 8051ED80 8B030014 */ lbz         r24, 0x14(r3)
/* 8051ED84 38A3001C */ addi        r5, r3, 0x1c
/* 8051ED88 8B230015 */ lbz         r25, 0x15(r3)
/* 8051ED8C A1630022 */ lhz         r11, 0x22(r3)
/* 8051ED90 88C30034 */ lbz         r6, 0x34(r3)
/* 8051ED94 9883004C */ stb         r4, 0x4c(r3)
/* 8051ED98 38830004 */ addi        r4, r3, 4
/* 8051ED9C 81430024 */ lwz         r10, 0x24(r3)
/* 8051EDA0 81230028 */ lwz         r9, 0x28(r3)
/* 8051EDA4 C0430048 */ lfs         f2, 0x48(r3)
/* 8051EDA8 91010054 */ stw         r8, 0x54(r1)
/* 8051EDAC 81030044 */ lwz         r8, 0x44(r3)
/* 8051EDB0 9001005C */ stw         r0, 0x5c(r1)
/* 8051EDB4 88030035 */ lbz         r0, 0x35(r3)
/* 8051EDB8 91010058 */ stw         r8, 0x58(r1)
/* 8051EDBC 8B830018 */ lbz         r28, 0x18(r3)
/* 8051EDC0 81C30038 */ lwz         r14, 0x38(r3)
/* 8051EDC4 C007FCC4 */ lfs         f0, MINUS_ONE_F__6System@l(r7)
/* 8051EDC8 8103003C */ lwz         r8, 0x3c(r3)
/* 8051EDCC 8A230018 */ lbz         r17, 0x18(r3)
/* 8051EDD0 91010064 */ stw         r8, 0x64(r1)
/* 8051EDD4 5631066E */ rlwinm      r17, r17, 0, 0x19, 0x17
/* 8051EDD8 89830050 */ lbz         r12, 0x50(r3)
/* 8051EDDC 98010039 */ stb         r0, 0x39(r1)
/* 8051EDE0 80010064 */ lwz         r0, 0x64(r1)
/* 8051EDE4 90010040 */ stw         r0, 0x40(r1)
/* 8051EDE8 80010054 */ lwz         r0, 0x54(r1)
/* 8051EDEC 90010044 */ stw         r0, 0x44(r1)
/* 8051EDF0 80010058 */ lwz         r0, 0x58(r1)
/* 8051EDF4 8103002C */ lwz         r8, 0x2c(r3)
/* 8051EDF8 80E30030 */ lwz         r7, 0x30(r3)
/* 8051EDFC 90010048 */ stw         r0, 0x48(r1)
/* 8051EE00 8001005C */ lwz         r0, 0x5c(r1)
/* 8051EE04 B1E30008 */ sth         r15, 8(r3)
/* 8051EE08 B1E3000A */ sth         r15, 0xa(r3)
/* 8051EE0C D0230010 */ stfs        f1, 0x10(r3)
/* 8051EE10 D023000C */ stfs        f1, 0xc(r3)
/* 8051EE14 9A030014 */ stb         r16, 0x14(r3)
/* 8051EE18 9A030015 */ stb         r16, 0x15(r3)
/* 8051EE1C 99E30016 */ stb         r15, 0x16(r3)
/* 8051EE20 99E30017 */ stb         r15, 0x17(r3)
/* 8051EE24 9A230018 */ stb         r17, 0x18(r3)
/* 8051EE28 B1E30020 */ sth         r15, 0x20(r3)
/* 8051EE2C B1E30022 */ sth         r15, 0x22(r3)
/* 8051EE30 D0230028 */ stfs        f1, 0x28(r3)
/* 8051EE34 D0230024 */ stfs        f1, 0x24(r3)
/* 8051EE38 9A030034 */ stb         r16, 0x34(r3)
/* 8051EE3C 9A030035 */ stb         r16, 0x35(r3)
/* 8051EE40 D0030038 */ stfs        f0, 0x38(r3)
/* 8051EE44 D003003C */ stfs        f0, 0x3c(r3)
/* 8051EE48 D0230044 */ stfs        f1, 0x44(r3)
/* 8051EE4C D0230040 */ stfs        f1, 0x40(r3)
/* 8051EE50 D0230048 */ stfs        f1, 0x48(r3)
/* 8051EE54 9A43004C */ stb         r18, 0x4c(r3)
/* 8051EE58 91810060 */ stw         r12, 0x60(r1)
/* 8051EE5C 81830000 */ lwz         r12, 0(r3)
/* 8051EE60 92610008 */ stw         r19, 8(r1)
/* 8051EE64 818C000C */ lwz         r12, 0xc(r12)
/* 8051EE68 B281000C */ sth         r20, 0xc(r1)
/* 8051EE6C B2A1000E */ sth         r21, 0xe(r1)
/* 8051EE70 92C10010 */ stw         r22, 0x10(r1)
/* 8051EE74 92E10014 */ stw         r23, 0x14(r1)
/* 8051EE78 9B010018 */ stb         r24, 0x18(r1)
/* 8051EE7C 9B210019 */ stb         r25, 0x19(r1)
/* 8051EE80 9B41001A */ stb         r26, 0x1a(r1)
/* 8051EE84 9B61001B */ stb         r27, 0x1b(r1)
/* 8051EE88 9B81001C */ stb         r28, 0x1c(r1)
/* 8051EE8C 93A10020 */ stw         r29, 0x20(r1)
/* 8051EE90 B3C10024 */ sth         r30, 0x24(r1)
/* 8051EE94 B1610026 */ sth         r11, 0x26(r1)
/* 8051EE98 91410028 */ stw         r10, 0x28(r1)
/* 8051EE9C 9121002C */ stw         r9, 0x2c(r1)
/* 8051EEA0 91010030 */ stw         r8, 0x30(r1)
/* 8051EEA4 90E10034 */ stw         r7, 0x34(r1)
/* 8051EEA8 98C10038 */ stb         r6, 0x38(r1)
/* 8051EEAC 91C1003C */ stw         r14, 0x3c(r1)
/* 8051EEB0 D041004C */ stfs        f2, 0x4c(r1)
/* 8051EEB4 98010050 */ stb         r0, 0x50(r1)
/* 8051EEB8 7D8903A6 */ mtctr       r12
/* 8051EEBC 4E800421 */ bctrl       
/* 8051EEC0 80010060 */ lwz         r0, 0x60(r1)
/* 8051EEC4 2C000000 */ cmpwi       r0, 0
/* 8051EEC8 40820024 */ bne-        lbl_8051eeec
/* 8051EECC 881F0050 */ lbz         r0, 0x50(r31)
/* 8051EED0 2C000000 */ cmpwi       r0, 0
/* 8051EED4 41820018 */ beq-        lbl_8051eeec
/* 8051EED8 819F0000 */ lwz         r12, 0(r31)
/* 8051EEDC 7FE3FB78 */ mr          r3, r31
/* 8051EEE0 818C0020 */ lwz         r12, 0x20(r12)
/* 8051EEE4 7D8903A6 */ mtctr       r12
/* 8051EEE8 4E800421 */ bctrl       
lbl_8051eeec:
/* 8051EEEC 881F0018 */ lbz         r0, 0x18(r31)
/* 8051EEF0 5400CFFF */ rlwinm.     r0, r0, 0x19, 0x1f, 0x1f
/* 8051EEF4 4082004C */ bne-        lbl_8051ef40
/* 8051EEF8 A101000C */ lhz         r8, 0xc(r1)
/* 8051EEFC A0E1000E */ lhz         r7, 0xe(r1)
/* 8051EF00 C0210010 */ lfs         f1, 0x10(r1)
/* 8051EF04 C0010014 */ lfs         f0, 0x14(r1)
/* 8051EF08 88C10018 */ lbz         r6, 0x18(r1)
/* 8051EF0C 88A10019 */ lbz         r5, 0x19(r1)
/* 8051EF10 8881001A */ lbz         r4, 0x1a(r1)
/* 8051EF14 8861001B */ lbz         r3, 0x1b(r1)
/* 8051EF18 8801001C */ lbz         r0, 0x1c(r1)
/* 8051EF1C B11F0008 */ sth         r8, 8(r31)
/* 8051EF20 B0FF000A */ sth         r7, 0xa(r31)
/* 8051EF24 D03F000C */ stfs        f1, 0xc(r31)
/* 8051EF28 D01F0010 */ stfs        f0, 0x10(r31)
/* 8051EF2C 98DF0014 */ stb         r6, 0x14(r31)
/* 8051EF30 98BF0015 */ stb         r5, 0x15(r31)
/* 8051EF34 989F0016 */ stb         r4, 0x16(r31)
/* 8051EF38 987F0017 */ stb         r3, 0x17(r31)
/* 8051EF3C 981F0018 */ stb         r0, 0x18(r31)
lbl_8051ef40:
/* 8051EF40 881F004C */ lbz         r0, 0x4c(r31)
/* 8051EF44 A0C10024 */ lhz         r6, 0x24(r1)
/* 8051EF48 5400CFFF */ rlwinm.     r0, r0, 0x19, 0x1f, 0x1f
/* 8051EF4C A0A10026 */ lhz         r5, 0x26(r1)
/* 8051EF50 C1010028 */ lfs         f8, 0x28(r1)
/* 8051EF54 C0E1002C */ lfs         f7, 0x2c(r1)
/* 8051EF58 C0C10030 */ lfs         f6, 0x30(r1)
/* 8051EF5C C0A10034 */ lfs         f5, 0x34(r1)
/* 8051EF60 88810038 */ lbz         r4, 0x38(r1)
/* 8051EF64 88610039 */ lbz         r3, 0x39(r1)
/* 8051EF68 C081003C */ lfs         f4, 0x3c(r1)
/* 8051EF6C C0610040 */ lfs         f3, 0x40(r1)
/* 8051EF70 C0410044 */ lfs         f2, 0x44(r1)
/* 8051EF74 C0210048 */ lfs         f1, 0x48(r1)
/* 8051EF78 C001004C */ lfs         f0, 0x4c(r1)
/* 8051EF7C 88010050 */ lbz         r0, 0x50(r1)
/* 8051EF80 B0DF0060 */ sth         r6, 0x60(r31)
/* 8051EF84 B0BF0062 */ sth         r5, 0x62(r31)
/* 8051EF88 D11F0064 */ stfs        f8, 0x64(r31)
/* 8051EF8C D0FF0068 */ stfs        f7, 0x68(r31)
/* 8051EF90 D0DF006C */ stfs        f6, 0x6c(r31)
/* 8051EF94 D0BF0070 */ stfs        f5, 0x70(r31)
/* 8051EF98 989F0074 */ stb         r4, 0x74(r31)
/* 8051EF9C 987F0075 */ stb         r3, 0x75(r31)
/* 8051EFA0 D09F0078 */ stfs        f4, 0x78(r31)
/* 8051EFA4 D07F007C */ stfs        f3, 0x7c(r31)
/* 8051EFA8 D05F0080 */ stfs        f2, 0x80(r31)
/* 8051EFAC D03F0084 */ stfs        f1, 0x84(r31)
/* 8051EFB0 D01F0088 */ stfs        f0, 0x88(r31)
/* 8051EFB4 981F008C */ stb         r0, 0x8c(r31)
/* 8051EFB8 4082003C */ bne-        lbl_8051eff4
/* 8051EFBC B0DF0020 */ sth         r6, 0x20(r31)
/* 8051EFC0 B0BF0022 */ sth         r5, 0x22(r31)
/* 8051EFC4 D11F0024 */ stfs        f8, 0x24(r31)
/* 8051EFC8 D0FF0028 */ stfs        f7, 0x28(r31)
/* 8051EFCC D0DF002C */ stfs        f6, 0x2c(r31)
/* 8051EFD0 D0BF0030 */ stfs        f5, 0x30(r31)
/* 8051EFD4 989F0034 */ stb         r4, 0x34(r31)
/* 8051EFD8 987F0035 */ stb         r3, 0x35(r31)
/* 8051EFDC D09F0038 */ stfs        f4, 0x38(r31)
/* 8051EFE0 D07F003C */ stfs        f3, 0x3c(r31)
/* 8051EFE4 D05F0040 */ stfs        f2, 0x40(r31)
/* 8051EFE8 D03F0044 */ stfs        f1, 0x44(r31)
/* 8051EFEC D01F0048 */ stfs        f0, 0x48(r31)
/* 8051EFF0 981F004C */ stb         r0, 0x4c(r31)
lbl_8051eff4:
/* 8051EFF4 396100B0 */ addi        r11, r1, 0xb0
/* 8051EFF8 4BB025C1 */ bl          _restgpr_14
/* 8051EFFC 800100B4 */ lwz         r0, 0xb4(r1)
/* 8051F000 7C0803A6 */ mtlr        r0
/* 8051F004 382100B0 */ addi        r1, r1, 0xb0
/* 8051F008 4E800020 */ blr         