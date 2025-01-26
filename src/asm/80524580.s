nofralloc
/* 80524580 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80524584 7C0802A6 */ mflr        r0
/* 80524588 90010014 */ stw         r0, 0x14(r1)
/* 8052458C 93E1000C */ stw         r31, 0xc(r1)
/* 80524590 3BE30004 */ addi        r31, r3, 4
/* 80524594 93C10008 */ stw         r30, 8(r1)
/* 80524598 3BC00000 */ li          r30, 0
lbl_8052459c:
/* 8052459C 7FE3FB78 */ mr          r3, r31
/* 805245A0 4BFFD035 */ bl          startGhostProxy__Q26System10KPadPlayerFv
/* 805245A4 3BDE0001 */ addi        r30, r30, 1
/* 805245A8 3BFF00EC */ addi        r31, r31, 0xec
/* 805245AC 2C1E0004 */ cmpwi       r30, 4
/* 805245B0 4180FFEC */ blt+        lbl_8052459c
/* 805245B4 80010014 */ lwz         r0, 0x14(r1)
/* 805245B8 83E1000C */ lwz         r31, 0xc(r1)
/* 805245BC 83C10008 */ lwz         r30, 8(r1)
/* 805245C0 7C0803A6 */ mtlr        r0
/* 805245C4 38210010 */ addi        r1, r1, 0x10
/* 805245C8 4E800020 */ blr         