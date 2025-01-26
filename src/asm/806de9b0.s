nofralloc
/* 806DE9B0 9421FFF0 */ stwu        r1, -0x10(r1)
/* 806DE9B4 7C0802A6 */ mflr        r0
/* 806DE9B8 38800000 */ li          r4, 0
/* 806DE9BC 90010014 */ stw         r0, 0x14(r1)
/* 806DE9C0 93E1000C */ stw         r31, 0xc(r1)
/* 806DE9C4 7C7F1B78 */ mr          r31, r3
/* 806DE9C8 48141AF1 */ bl          unk_808204b8
/* 806DE9CC 881F00B4 */ lbz         r0, 0xb4(r31)
/* 806DE9D0 2C000000 */ cmpwi       r0, 0
/* 806DE9D4 40820020 */ bne-        lbl_806de9f4
/* 806DE9D8 3C60809C */ lis         r3, lbl_809c2280@ha
/* 806DE9DC 80632280 */ lwz         r3, lbl_809c2280@l(r3)
/* 806DE9E0 81830000 */ lwz         r12, 0(r3)
/* 806DE9E4 818C000C */ lwz         r12, 0xc(r12)
/* 806DE9E8 7D8903A6 */ mtctr       r12
/* 806DE9EC 4E800421 */ bctrl       
/* 806DE9F0 48000018 */ b           lbl_806dea08
lbl_806de9f4:
/* 806DE9F4 807F00B0 */ lwz         r3, 0xb0(r31)
/* 806DE9F8 81830000 */ lwz         r12, 0(r3)
/* 806DE9FC 818C000C */ lwz         r12, 0xc(r12)
/* 806DEA00 7D8903A6 */ mtctr       r12
/* 806DEA04 4E800421 */ bctrl       
lbl_806dea08:
/* 806DEA08 80010014 */ lwz         r0, 0x14(r1)
/* 806DEA0C 83E1000C */ lwz         r31, 0xc(r1)
/* 806DEA10 7C0803A6 */ mtlr        r0
/* 806DEA14 38210010 */ addi        r1, r1, 0x10
/* 806DEA18 4E800020 */ blr         