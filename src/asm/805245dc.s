nofralloc
/* 805245DC 9421FFF0 */ stwu        r1, -0x10(r1)
/* 805245E0 7C0802A6 */ mflr        r0
/* 805245E4 90010014 */ stw         r0, 0x14(r1)
/* 805245E8 93E1000C */ stw         r31, 0xc(r1)
/* 805245EC 3BE30004 */ addi        r31, r3, 4
/* 805245F0 93C10008 */ stw         r30, 8(r1)
/* 805245F4 3BC00000 */ li          r30, 0
lbl_805245f8:
/* 805245F8 7FE3FB78 */ mr          r3, r31
/* 805245FC 4BFFD08D */ bl          endGhostProxy__Q26System10KPadPlayerFv
/* 80524600 3BDE0001 */ addi        r30, r30, 1
/* 80524604 3BFF00EC */ addi        r31, r31, 0xec
/* 80524608 2C1E0004 */ cmpwi       r30, 4
/* 8052460C 4180FFEC */ blt+        lbl_805245f8
/* 80524610 80010014 */ lwz         r0, 0x14(r1)
/* 80524614 83E1000C */ lwz         r31, 0xc(r1)
/* 80524618 83C10008 */ lwz         r30, 8(r1)
/* 8052461C 7C0803A6 */ mtlr        r0
/* 80524620 38210010 */ addi        r1, r1, 0x10
/* 80524624 4E800020 */ blr         