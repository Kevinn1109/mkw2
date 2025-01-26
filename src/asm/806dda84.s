nofralloc
/* 806DDA84 9421FFE0 */ stwu        r1, -0x20(r1)
/* 806DDA88 7C0802A6 */ mflr        r0
/* 806DDA8C 3CA0808A */ lis         r5, lbl_808a046c@ha
/* 806DDA90 3C80808A */ lis         r4, lbl_808a0478@ha
/* 806DDA94 90010024 */ stw         r0, 0x24(r1)
/* 806DDA98 3CC0802A */ lis         r6, lbl_802a4148@ha
/* 806DDA9C C005046C */ lfs         f0, lbl_808a046c@l(r5)
/* 806DDAA0 3CA0802A */ lis         r5, lbl_802a4100@ha
/* 806DDAA4 93E1001C */ stw         r31, 0x1c(r1)
/* 806DDAA8 7C7F1B78 */ mr          r31, r3
/* 806DDAAC 38840478 */ addi        r4, r4, lbl_808a0478@l
/* 806DDAB0 38A54100 */ addi        r5, r5, lbl_802a4100@l
/* 806DDAB4 D0010008 */ stfs        f0, 8(r1)
/* 806DDAB8 38C64148 */ addi        r6, r6, lbl_802a4148@l
/* 806DDABC 38E10008 */ addi        r7, r1, 8
/* 806DDAC0 39000000 */ li          r8, 0
/* 806DDAC4 D001000C */ stfs        f0, 0xc(r1)
/* 806DDAC8 D0010010 */ stfs        f0, 0x10(r1)
/* 806DDACC 48141599 */ bl          unk_8081f064
/* 806DDAD0 3C80808C */ lis         r4, lbl_808c60f8@ha
/* 806DDAD4 7FE3FB78 */ mr          r3, r31
/* 806DDAD8 388460F8 */ addi        r4, r4, lbl_808c60f8@l
/* 806DDADC 909F0000 */ stw         r4, 0(r31)
/* 806DDAE0 83E1001C */ lwz         r31, 0x1c(r1)
/* 806DDAE4 80010024 */ lwz         r0, 0x24(r1)
/* 806DDAE8 7C0803A6 */ mtlr        r0
/* 806DDAEC 38210020 */ addi        r1, r1, 0x20
/* 806DDAF0 4E800020 */ blr         