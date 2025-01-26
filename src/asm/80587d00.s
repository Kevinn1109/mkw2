nofralloc
/* 80587D00 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80587D04 7C0802A6 */ mflr        r0
/* 80587D08 90010014 */ stw         r0, 0x14(r1)
/* 80587D0C 93E1000C */ stw         r31, 0xc(r1)
/* 80587D10 7C7F1B78 */ mr          r31, r3
/* 80587D14 4BFF07C1 */ bl          PlayerSub10_init2
/* 80587D18 3C608089 */ lis         r3, lbl_80891a00@ha
/* 80587D1C 38000000 */ li          r0, 0
/* 80587D20 C0031A00 */ lfs         f0, lbl_80891a00@l(r3)
/* 80587D24 D01F0294 */ stfs        f0, 0x294(r31)
/* 80587D28 D01F0298 */ stfs        f0, 0x298(r31)
/* 80587D2C D01F029C */ stfs        f0, 0x29c(r31)
/* 80587D30 D01F02A0 */ stfs        f0, 0x2a0(r31)
/* 80587D34 D01F02A4 */ stfs        f0, 0x2a4(r31)
/* 80587D38 901F02A8 */ stw         r0, 0x2a8(r31)
/* 80587D3C 981F02AC */ stb         r0, 0x2ac(r31)
/* 80587D40 901F02B0 */ stw         r0, 0x2b0(r31)
/* 80587D44 B01F02B4 */ sth         r0, 0x2b4(r31)
/* 80587D48 B01F02B6 */ sth         r0, 0x2b6(r31)
/* 80587D4C B01F02BC */ sth         r0, 0x2bc(r31)
/* 80587D50 83E1000C */ lwz         r31, 0xc(r1)
/* 80587D54 80010014 */ lwz         r0, 0x14(r1)
/* 80587D58 7C0803A6 */ mtlr        r0
/* 80587D5C 38210010 */ addi        r1, r1, 0x10
/* 80587D60 4E800020 */ blr         