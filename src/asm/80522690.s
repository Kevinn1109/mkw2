nofralloc
/* 80522690 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80522694 7C0802A6 */ mflr        r0
/* 80522698 90010014 */ stw         r0, 0x14(r1)
/* 8052269C 93E1000C */ stw         r31, 0xc(r1)
/* 805226A0 3FE08089 */ lis         r31, lbl_8088fcb0@ha
/* 805226A4 3BFFFCB0 */ addi        r31, r31, lbl_8088fcb0@l
/* 805226A8 93C10008 */ stw         r30, 8(r1)
/* 805226AC 3BC00000 */ li          r30, 0
lbl_805226b0:
/* 805226B0 C03F0048 */ lfs         f1, 0x48(r31)
/* 805226B4 7FC3F378 */ mr          r3, r30
/* 805226B8 C05F004C */ lfs         f2, 0x4c(r31)
/* 805226BC 4BC729F9 */ bl          KPADSetPosParam
/* 805226C0 C03F0010 */ lfs         f1, 0x10(r31)
/* 805226C4 7FC3F378 */ mr          r3, r30
/* 805226C8 C05F0044 */ lfs         f2, 0x44(r31)
/* 805226CC 4BC72A05 */ bl          KPADSetHoriParam
/* 805226D0 3BDE0001 */ addi        r30, r30, 1
/* 805226D4 2C1E0004 */ cmpwi       r30, 4
/* 805226D8 4180FFD8 */ blt+        lbl_805226b0
/* 805226DC 80010014 */ lwz         r0, 0x14(r1)
/* 805226E0 83E1000C */ lwz         r31, 0xc(r1)
/* 805226E4 83C10008 */ lwz         r30, 8(r1)
/* 805226E8 7C0803A6 */ mtlr        r0
/* 805226EC 38210010 */ addi        r1, r1, 0x10
/* 805226F0 4E800020 */ blr         