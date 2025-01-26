nofralloc
/* 806DE408 9421FFF0 */ stwu        r1, -0x10(r1)
/* 806DE40C 7C0802A6 */ mflr        r0
/* 806DE410 90010014 */ stw         r0, 0x14(r1)
/* 806DE414 93E1000C */ stw         r31, 0xc(r1)
/* 806DE418 7C7F1B78 */ mr          r31, r3
/* 806DE41C 80630020 */ lwz         r3, 0x20(r3)
/* 806DE420 C03F00D0 */ lfs         f1, 0xd0(r31)
/* 806DE424 81830000 */ lwz         r12, 0(r3)
/* 806DE428 818C0018 */ lwz         r12, 0x18(r12)
/* 806DE42C 7D8903A6 */ mtctr       r12
/* 806DE430 4E800421 */ bctrl       
/* 806DE434 3C60808A */ lis         r3, lbl_808a04b8@ha
/* 806DE438 C00304B8 */ lfs         f0, lbl_808a04b8@l(r3)
/* 806DE43C D01F00E0 */ stfs        f0, 0xe0(r31)
/* 806DE440 83E1000C */ lwz         r31, 0xc(r1)
/* 806DE444 80010014 */ lwz         r0, 0x14(r1)
/* 806DE448 7C0803A6 */ mtlr        r0
/* 806DE44C 38210010 */ addi        r1, r1, 0x10
/* 806DE450 4E800020 */ blr         