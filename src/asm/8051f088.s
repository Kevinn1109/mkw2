nofralloc
/* 8051F088 9421FFF0 */ stwu        r1, -0x10(r1)
/* 8051F08C 7C0802A6 */ mflr        r0
/* 8051F090 3D80808B */ lis         r12, lbl_808b2ed8@ha
/* 8051F094 3C808089 */ lis         r4, ZERO_F__6System@ha
/* 8051F098 90010014 */ stw         r0, 0x14(r1)
/* 8051F09C 3D60808B */ lis         r11, lbl_808b2f2c@ha
/* 8051F0A0 C024FCC0 */ lfs         f1, ZERO_F__6System@l(r4)
/* 8051F0A4 3C808089 */ lis         r4, MINUS_ONE_F__6System@ha
/* 8051F0A8 93E1000C */ stw         r31, 0xc(r1)
/* 8051F0AC 39400000 */ li          r10, 0
/* 8051F0B0 39200007 */ li          r9, 7
/* 8051F0B4 C004FCC4 */ lfs         f0, MINUS_ONE_F__6System@l(r4)
/* 8051F0B8 88C3004C */ lbz         r6, 0x4c(r3)
/* 8051F0BC 3800FFFF */ li          r0, -1
/* 8051F0C0 88A3008C */ lbz         r5, 0x8c(r3)
/* 8051F0C4 398C2ED8 */ addi        r12, r12, lbl_808b2ed8@l
/* 8051F0C8 89030018 */ lbz         r8, 0x18(r3)
/* 8051F0CC 54C6066E */ rlwinm      r6, r6, 0, 0x19, 0x17
/* 8051F0D0 3CE0808B */ lis         r7, lbl_808b2f20@ha
/* 8051F0D4 3C80808B */ lis         r4, lbl_808b2e90@ha
/* 8051F0D8 38E72F20 */ addi        r7, r7, lbl_808b2f20@l
/* 8051F0DC 98C3004C */ stb         r6, 0x4c(r3)
/* 8051F0E0 396B2F2C */ addi        r11, r11, lbl_808b2f2c@l
/* 8051F0E4 5508066E */ rlwinm      r8, r8, 0, 0x19, 0x17
/* 8051F0E8 54A506AE */ rlwinm      r5, r5, 0, 0x1a, 0x17
/* 8051F0EC 54C606B0 */ rlwinm      r6, r6, 0, 0x1a, 0x18
/* 8051F0F0 91830000 */ stw         r12, 0(r3)
/* 8051F0F4 38842E90 */ addi        r4, r4, lbl_808b2e90@l
/* 8051F0F8 7C7F1B78 */ mr          r31, r3
/* 8051F0FC 91630004 */ stw         r11, 4(r3)
/* 8051F100 B1430008 */ sth         r10, 8(r3)
/* 8051F104 B143000A */ sth         r10, 0xa(r3)
/* 8051F108 D0230010 */ stfs        f1, 0x10(r3)
/* 8051F10C D023000C */ stfs        f1, 0xc(r3)
/* 8051F110 99230014 */ stb         r9, 0x14(r3)
/* 8051F114 99230015 */ stb         r9, 0x15(r3)
/* 8051F118 99430016 */ stb         r10, 0x16(r3)
/* 8051F11C 99430017 */ stb         r10, 0x17(r3)
/* 8051F120 99030018 */ stb         r8, 0x18(r3)
/* 8051F124 90E3001C */ stw         r7, 0x1c(r3)
/* 8051F128 B1430020 */ sth         r10, 0x20(r3)
/* 8051F12C B1430022 */ sth         r10, 0x22(r3)
/* 8051F130 D0230028 */ stfs        f1, 0x28(r3)
/* 8051F134 D0230024 */ stfs        f1, 0x24(r3)
/* 8051F138 99230034 */ stb         r9, 0x34(r3)
/* 8051F13C 99230035 */ stb         r9, 0x35(r3)
/* 8051F140 D0030038 */ stfs        f0, 0x38(r3)
/* 8051F144 D003003C */ stfs        f0, 0x3c(r3)
/* 8051F148 D0230044 */ stfs        f1, 0x44(r3)
/* 8051F14C D0230040 */ stfs        f1, 0x40(r3)
/* 8051F150 D0230048 */ stfs        f1, 0x48(r3)
/* 8051F154 98C3004C */ stb         r6, 0x4c(r3)
/* 8051F158 99430050 */ stb         r10, 0x50(r3)
/* 8051F15C 91230054 */ stw         r9, 0x54(r3)
/* 8051F160 99430058 */ stb         r10, 0x58(r3)
/* 8051F164 90E3005C */ stw         r7, 0x5c(r3)
/* 8051F168 B1430060 */ sth         r10, 0x60(r3)
/* 8051F16C B1430062 */ sth         r10, 0x62(r3)
/* 8051F170 D0230068 */ stfs        f1, 0x68(r3)
/* 8051F174 D0230064 */ stfs        f1, 0x64(r3)
/* 8051F178 99230074 */ stb         r9, 0x74(r3)
/* 8051F17C 99230075 */ stb         r9, 0x75(r3)
/* 8051F180 D0030078 */ stfs        f0, 0x78(r3)
/* 8051F184 D003007C */ stfs        f0, 0x7c(r3)
/* 8051F188 D0230084 */ stfs        f1, 0x84(r3)
/* 8051F18C D0230080 */ stfs        f1, 0x80(r3)
/* 8051F190 D0230088 */ stfs        f1, 0x88(r3)
/* 8051F194 98A3008C */ stb         r5, 0x8c(r3)
/* 8051F198 90830000 */ stw         r4, 0(r3)
/* 8051F19C 900308D0 */ stw         r0, 0x8d0(r3)
/* 8051F1A0 900308D4 */ stw         r0, 0x8d4(r3)
/* 8051F1A4 38600094 */ li          r3, 0x94
/* 8051F1A8 4BD0AC25 */ bl          __nw__FUl
/* 8051F1AC 2C030000 */ cmpwi       r3, 0
/* 8051F1B0 41820008 */ beq-        lbl_8051f1b8
/* 8051F1B4 482266D1 */ bl          unk_80745884
lbl_8051f1b8:
/* 8051F1B8 907F091C */ stw         r3, 0x91c(r31)
/* 8051F1BC 7FE3FB78 */ mr          r3, r31
/* 8051F1C0 38800000 */ li          r4, 0
/* 8051F1C4 819F0000 */ lwz         r12, 0(r31)
/* 8051F1C8 818C0044 */ lwz         r12, 0x44(r12)
/* 8051F1CC 7D8903A6 */ mtctr       r12
/* 8051F1D0 4E800421 */ bctrl       
/* 8051F1D4 7FE3FB78 */ mr          r3, r31
/* 8051F1D8 83E1000C */ lwz         r31, 0xc(r1)
/* 8051F1DC 80010014 */ lwz         r0, 0x14(r1)
/* 8051F1E0 7C0803A6 */ mtlr        r0
/* 8051F1E4 38210010 */ addi        r1, r1, 0x10
/* 8051F1E8 4E800020 */ blr         