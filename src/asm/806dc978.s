nofralloc
/* 806DC978 9421FFF0 */ stwu        r1, -0x10(r1)
/* 806DC97C 7C0802A6 */ mflr        r0
/* 806DC980 38800001 */ li          r4, 1
/* 806DC984 90010014 */ stw         r0, 0x14(r1)
/* 806DC988 93E1000C */ stw         r31, 0xc(r1)
/* 806DC98C 7C7F1B78 */ mr          r31, r3
/* 806DC990 81830000 */ lwz         r12, 0(r3)
/* 806DC994 818C0068 */ lwz         r12, 0x68(r12)
/* 806DC998 7D8903A6 */ mtctr       r12
/* 806DC99C 4E800421 */ bctrl       
/* 806DC9A0 3C80808A */ lis         r4, lbl_808a037c@ha
/* 806DC9A4 7FE3FB78 */ mr          r3, r31
/* 806DC9A8 C024037C */ lfs         f1, lbl_808a037c@l(r4)
/* 806DC9AC 3880022B */ li          r4, 0x22b
/* 806DC9B0 48143B4D */ bl          unk_808204fc
/* 806DC9B4 38600001 */ li          r3, 1
/* 806DC9B8 38000000 */ li          r0, 0
/* 806DC9BC 987F0144 */ stb         r3, 0x144(r31)
/* 806DC9C0 901F0148 */ stw         r0, 0x148(r31)
/* 806DC9C4 83E1000C */ lwz         r31, 0xc(r1)
/* 806DC9C8 80010014 */ lwz         r0, 0x14(r1)
/* 806DC9CC 7C0803A6 */ mtlr        r0
/* 806DC9D0 38210010 */ addi        r1, r1, 0x10
/* 806DC9D4 4E800020 */ blr         