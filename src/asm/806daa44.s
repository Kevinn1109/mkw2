nofralloc
/* 806DAA44 9421FFE0 */ stwu        r1, -0x20(r1)
/* 806DAA48 7C0802A6 */ mflr        r0
/* 806DAA4C 90010024 */ stw         r0, 0x24(r1)
/* 806DAA50 93E1001C */ stw         r31, 0x1c(r1)
/* 806DAA54 7C7F1B78 */ mr          r31, r3
/* 806DAA58 880300C0 */ lbz         r0, 0xc0(r3)
/* 806DAA5C 2C000000 */ cmpwi       r0, 0
/* 806DAA60 41820088 */ beq-        lbl_806daae8
/* 806DAA64 81830000 */ lwz         r12, 0(r3)
/* 806DAA68 818C0024 */ lwz         r12, 0x24(r12)
/* 806DAA6C 7D8903A6 */ mtctr       r12
/* 806DAA70 4E800421 */ bctrl       
/* 806DAA74 3C80809C */ lis         r4, lbl_809c4330@ha
/* 806DAA78 7C671B78 */ mr          r7, r3
/* 806DAA7C 80844330 */ lwz         r4, lbl_809c4330@l(r4)
/* 806DAA80 3C004330 */ lis         r0, 0x4330
/* 806DAA84 3CA0808A */ lis         r5, lbl_808a0350@ha
/* 806DAA88 3CC0808A */ lis         r6, lbl_808a0348@ha
/* 806DAA8C 81240004 */ lwz         r9, 4(r4)
/* 806DAA90 3C80808A */ lis         r4, lbl_808a0340@ha
/* 806DAA94 819F0000 */ lwz         r12, 0(r31)
/* 806DAA98 54E70BFC */ rlwinm      r7, r7, 1, 0xf, 0x1e
/* 806DAA9C 8109000C */ lwz         r8, 0xc(r9)
/* 806DAAA0 7FE3FB78 */ mr          r3, r31
/* 806DAAA4 90010008 */ stw         r0, 8(r1)
/* 806DAAA8 7CE83AAE */ lhax        r7, r8, r7
/* 806DAAAC 81290008 */ lwz         r9, 8(r9)
/* 806DAAB0 1C070074 */ mulli       r0, r7, 0x74
/* 806DAAB4 C0050350 */ lfs         f0, lbl_808a0350@l(r5)
/* 806DAAB8 C8660348 */ lfd         f3, lbl_808a0348@l(r6)
/* 806DAABC 818C0088 */ lwz         r12, 0x88(r12)
/* 806DAAC0 7CA90214 */ add         r5, r9, r0
/* 806DAAC4 C0440340 */ lfs         f2, lbl_808a0340@l(r4)
/* 806DAAC8 A805006C */ lha         r0, 0x6c(r5)
/* 806DAACC 6C008000 */ xoris       r0, r0, 0x8000
/* 806DAAD0 9001000C */ stw         r0, 0xc(r1)
/* 806DAAD4 C8210008 */ lfd         f1, 8(r1)
/* 806DAAD8 EC211828 */ fsubs       f1, f1, f3
/* 806DAADC EC200072 */ fmuls       f1, f0, f1
/* 806DAAE0 7D8903A6 */ mtctr       r12
/* 806DAAE4 4E800421 */ bctrl       
lbl_806daae8:
/* 806DAAE8 3860012C */ li          r3, 0x12c
/* 806DAAEC 388000B4 */ li          r4, 0xb4
/* 806DAAF0 380001E0 */ li          r0, 0x1e0
/* 806DAAF4 907F00CC */ stw         r3, 0xcc(r31)
/* 806DAAF8 3C60809C */ lis         r3, spInstance__Q26System10RaceConfig@ha
/* 806DAAFC 909F00D0 */ stw         r4, 0xd0(r31)
/* 806DAB00 901F00C8 */ stw         r0, 0xc8(r31)
/* 806DAB04 8063D728 */ lwz         r3, spInstance__Q26System10RaceConfig@l(r3)
/* 806DAB08 80030B74 */ lwz         r0, 0xb74(r3)
/* 806DAB0C 2C000005 */ cmpwi       r0, 5
/* 806DAB10 4082000C */ bne-        lbl_806dab1c
/* 806DAB14 38000000 */ li          r0, 0
/* 806DAB18 901F00C8 */ stw         r0, 0xc8(r31)
lbl_806dab1c:
/* 806DAB1C 881F00C0 */ lbz         r0, 0xc0(r31)
/* 806DAB20 2C000000 */ cmpwi       r0, 0
/* 806DAB24 41820018 */ beq-        lbl_806dab3c
/* 806DAB28 819F0000 */ lwz         r12, 0(r31)
/* 806DAB2C 7FE3FB78 */ mr          r3, r31
/* 806DAB30 818C0090 */ lwz         r12, 0x90(r12)
/* 806DAB34 7D8903A6 */ mtctr       r12
/* 806DAB38 4E800421 */ bctrl       
lbl_806dab3c:
/* 806DAB3C 7FE3FB78 */ mr          r3, r31
/* 806DAB40 38800000 */ li          r4, 0
/* 806DAB44 48145975 */ bl          unk_808204b8
/* 806DAB48 80010024 */ lwz         r0, 0x24(r1)
/* 806DAB4C 83E1001C */ lwz         r31, 0x1c(r1)
/* 806DAB50 7C0803A6 */ mtlr        r0
/* 806DAB54 38210020 */ addi        r1, r1, 0x20
/* 806DAB58 4E800020 */ blr         