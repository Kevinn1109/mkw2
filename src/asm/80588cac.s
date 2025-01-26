nofralloc
/* 80588CAC 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80588CB0 7C0802A6 */ mflr        r0
/* 80588CB4 90010014 */ stw         r0, 0x14(r1)
/* 80588CB8 93E1000C */ stw         r31, 0xc(r1)
/* 80588CBC 7C7F1B78 */ mr          r31, r3
/* 80588CC0 4BFFAB0D */ bl          unk_805837cc
/* 80588CC4 819F000C */ lwz         r12, 0xc(r31)
/* 80588CC8 7FE3FB78 */ mr          r3, r31
/* 80588CCC 818C0070 */ lwz         r12, 0x70(r12)
/* 80588CD0 7D8903A6 */ mtctr       r12
/* 80588CD4 4E800421 */ bctrl       
/* 80588CD8 3C608089 */ lis         r3, lbl_80891a00@ha
/* 80588CDC 38000000 */ li          r0, 0
/* 80588CE0 C0031A00 */ lfs         f0, lbl_80891a00@l(r3)
/* 80588CE4 D01F0294 */ stfs        f0, 0x294(r31)
/* 80588CE8 D01F0298 */ stfs        f0, 0x298(r31)
/* 80588CEC D01F029C */ stfs        f0, 0x29c(r31)
/* 80588CF0 D01F02A0 */ stfs        f0, 0x2a0(r31)
/* 80588CF4 D01F02A4 */ stfs        f0, 0x2a4(r31)
/* 80588CF8 901F02A8 */ stw         r0, 0x2a8(r31)
/* 80588CFC 981F02AC */ stb         r0, 0x2ac(r31)
/* 80588D00 901F02B0 */ stw         r0, 0x2b0(r31)
/* 80588D04 B01F02B4 */ sth         r0, 0x2b4(r31)
/* 80588D08 B01F02B6 */ sth         r0, 0x2b6(r31)
/* 80588D0C D01F02B8 */ stfs        f0, 0x2b8(r31)
/* 80588D10 B01F02BC */ sth         r0, 0x2bc(r31)
/* 80588D14 83E1000C */ lwz         r31, 0xc(r1)
/* 80588D18 80010014 */ lwz         r0, 0x14(r1)
/* 80588D1C 7C0803A6 */ mtlr        r0
/* 80588D20 38210010 */ addi        r1, r1, 0x10
/* 80588D24 4E800020 */ blr         