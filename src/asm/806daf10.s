nofralloc
/* 806DAF10 9421FFF0 */ stwu        r1, -0x10(r1)
/* 806DAF14 7C0802A6 */ mflr        r0
/* 806DAF18 90010014 */ stw         r0, 0x14(r1)
/* 806DAF1C 93E1000C */ stw         r31, 0xc(r1)
/* 806DAF20 7C7F1B78 */ mr          r31, r3
/* 806DAF24 806300B8 */ lwz         r3, 0xb8(r3)
/* 806DAF28 81830000 */ lwz         r12, 0(r3)
/* 806DAF2C 818C000C */ lwz         r12, 0xc(r12)
/* 806DAF30 7D8903A6 */ mtctr       r12
/* 806DAF34 4E800421 */ bctrl       
/* 806DAF38 7FE3FB78 */ mr          r3, r31
/* 806DAF3C 48146705 */ bl          unk_80821640
/* 806DAF40 807F00B8 */ lwz         r3, 0xb8(r31)
/* 806DAF44 389F0058 */ addi        r4, r31, 0x58
/* 806DAF48 81830000 */ lwz         r12, 0(r3)
/* 806DAF4C 818C0078 */ lwz         r12, 0x78(r12)
/* 806DAF50 7D8903A6 */ mtctr       r12
/* 806DAF54 4E800421 */ bctrl       
/* 806DAF58 807F00B8 */ lwz         r3, 0xb8(r31)
/* 806DAF5C C03F0040 */ lfs         f1, 0x40(r31)
/* 806DAF60 81830000 */ lwz         r12, 0(r3)
/* 806DAF64 818C006C */ lwz         r12, 0x6c(r12)
/* 806DAF68 7D8903A6 */ mtctr       r12
/* 806DAF6C 4E800421 */ bctrl       
/* 806DAF70 807F00B8 */ lwz         r3, 0xb8(r31)
/* 806DAF74 81830000 */ lwz         r12, 0(r3)
/* 806DAF78 818C0080 */ lwz         r12, 0x80(r12)
/* 806DAF7C 7D8903A6 */ mtctr       r12
/* 806DAF80 4E800421 */ bctrl       
/* 806DAF84 809F00C8 */ lwz         r4, 0xc8(r31)
/* 806DAF88 3C60808A */ lis         r3, lbl_808a0340@ha
/* 806DAF8C C0230340 */ lfs         f1, lbl_808a0340@l(r3)
/* 806DAF90 7FE3FB78 */ mr          r3, r31
/* 806DAF94 38040001 */ addi        r0, r4, 1
/* 806DAF98 901F00C8 */ stw         r0, 0xc8(r31)
/* 806DAF9C 3880035D */ li          r4, 0x35d
/* 806DAFA0 4814557D */ bl          unk_8082051c
/* 806DAFA4 80010014 */ lwz         r0, 0x14(r1)
/* 806DAFA8 83E1000C */ lwz         r31, 0xc(r1)
/* 806DAFAC 7C0803A6 */ mtlr        r0
/* 806DAFB0 38210010 */ addi        r1, r1, 0x10
/* 806DAFB4 4E800020 */ blr         