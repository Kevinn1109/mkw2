nofralloc
/* 8051F22C 9421FFE0 */ stwu        r1, -0x20(r1)
/* 8051F230 7C0802A6 */ mflr        r0
/* 8051F234 90010024 */ stw         r0, 0x24(r1)
/* 8051F238 93E1001C */ stw         r31, 0x1c(r1)
/* 8051F23C 93C10018 */ stw         r30, 0x18(r1)
/* 8051F240 93A10014 */ stw         r29, 0x14(r1)
/* 8051F244 7C7D1B78 */ mr          r29, r3
/* 8051F248 81830000 */ lwz         r12, 0(r3)
/* 8051F24C 818C0038 */ lwz         r12, 0x38(r12)
/* 8051F250 7D8903A6 */ mtctr       r12
/* 8051F254 4E800421 */ bctrl       
/* 8051F258 881D0018 */ lbz         r0, 0x18(r29)
/* 8051F25C 3FE08089 */ lis         r31, ZERO_F__6System@ha
/* 8051F260 C01FFCC0 */ lfs         f0, ZERO_F__6System@l(r31)
/* 8051F264 3BC00000 */ li          r30, 0
/* 8051F268 38C00007 */ li          r6, 7
/* 8051F26C 5400066E */ rlwinm      r0, r0, 0, 0x19, 0x17
/* 8051F270 B3DD0008 */ sth         r30, 8(r29)
/* 8051F274 387D0090 */ addi        r3, r29, 0x90
/* 8051F278 38800000 */ li          r4, 0
/* 8051F27C 38A00840 */ li          r5, 0x840
/* 8051F280 B3DD000A */ sth         r30, 0xa(r29)
/* 8051F284 D01D0010 */ stfs        f0, 0x10(r29)
/* 8051F288 D01D000C */ stfs        f0, 0xc(r29)
/* 8051F28C 98DD0014 */ stb         r6, 0x14(r29)
/* 8051F290 98DD0015 */ stb         r6, 0x15(r29)
/* 8051F294 9BDD0016 */ stb         r30, 0x16(r29)
/* 8051F298 9BDD0017 */ stb         r30, 0x17(r29)
/* 8051F29C 981D0018 */ stb         r0, 0x18(r29)
/* 8051F2A0 4BAE6D99 */ bl          memset
/* 8051F2A4 C01FFCC0 */ lfs         f0, ZERO_F__6System@l(r31)
/* 8051F2A8 38A00004 */ li          r5, 4
/* 8051F2AC 3800FFFF */ li          r0, -1
/* 8051F2B0 90BD08D8 */ stw         r5, 0x8d8(r29)
/* 8051F2B4 807D091C */ lwz         r3, 0x91c(r29)
/* 8051F2B8 901D08DC */ stw         r0, 0x8dc(r29)
/* 8051F2BC 889D0051 */ lbz         r4, 0x51(r29)
/* 8051F2C0 B3DD08F8 */ sth         r30, 0x8f8(r29)
/* 8051F2C4 B3DD08FA */ sth         r30, 0x8fa(r29)
/* 8051F2C8 9BDD0904 */ stb         r30, 0x904(r29)
/* 8051F2CC B3DD08FC */ sth         r30, 0x8fc(r29)
/* 8051F2D0 B0BD0906 */ sth         r5, 0x906(r29)
/* 8051F2D4 D01D0908 */ stfs        f0, 0x908(r29)
/* 8051F2D8 D01D090C */ stfs        f0, 0x90c(r29)
/* 8051F2DC D01D0914 */ stfs        f0, 0x914(r29)
/* 8051F2E0 D01D0910 */ stfs        f0, 0x910(r29)
/* 8051F2E4 D01D0918 */ stfs        f0, 0x918(r29)
/* 8051F2E8 482266FD */ bl          unk_807459e4
/* 8051F2EC 80010024 */ lwz         r0, 0x24(r1)
/* 8051F2F0 83E1001C */ lwz         r31, 0x1c(r1)
/* 8051F2F4 83C10018 */ lwz         r30, 0x18(r1)
/* 8051F2F8 83A10014 */ lwz         r29, 0x14(r1)
/* 8051F2FC 7C0803A6 */ mtlr        r0
/* 8051F300 38210020 */ addi        r1, r1, 0x20
/* 8051F304 4E800020 */ blr         