nofralloc
/* 8052318C 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80523190 7C0802A6 */ mflr        r0
/* 80523194 3C60809C */ lis         r3, spInstance__Q26System12KPadDirector@ha
/* 80523198 90010014 */ stw         r0, 0x14(r1)
/* 8052319C 8063D70C */ lwz         r3, spInstance__Q26System12KPadDirector@l(r3)
/* 805231A0 2C030000 */ cmpwi       r3, 0
/* 805231A4 4182001C */ beq-        lbl_805231c0
/* 805231A8 41820018 */ beq-        lbl_805231c0
/* 805231AC 81830000 */ lwz         r12, 0(r3)
/* 805231B0 38800001 */ li          r4, 1
/* 805231B4 818C0008 */ lwz         r12, 8(r12)
/* 805231B8 7D8903A6 */ mtctr       r12
/* 805231BC 4E800421 */ bctrl       
lbl_805231c0:
/* 805231C0 3C60809C */ lis         r3, spInstance__Q26System12KPadDirector@ha
/* 805231C4 38000000 */ li          r0, 0
/* 805231C8 9003D70C */ stw         r0, spInstance__Q26System12KPadDirector@l(r3)
/* 805231CC 80010014 */ lwz         r0, 0x14(r1)
/* 805231D0 7C0803A6 */ mtlr        r0
/* 805231D4 38210010 */ addi        r1, r1, 0x10
/* 805231D8 4E800020 */ blr         