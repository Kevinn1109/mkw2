nofralloc
/* 806DEA1C 9421FFF0 */ stwu        r1, -0x10(r1)
/* 806DEA20 7C0802A6 */ mflr        r0
/* 806DEA24 90010014 */ stw         r0, 0x14(r1)
/* 806DEA28 93E1000C */ stw         r31, 0xc(r1)
/* 806DEA2C 3BE00000 */ li          r31, 0
/* 806DEA30 93C10008 */ stw         r30, 8(r1)
/* 806DEA34 7C7E1B78 */ mr          r30, r3
/* 806DEA38 81830000 */ lwz         r12, 0(r3)
/* 806DEA3C 818C0030 */ lwz         r12, 0x30(r12)
/* 806DEA40 7D8903A6 */ mtctr       r12
/* 806DEA44 4E800421 */ bctrl       
/* 806DEA48 3C800101 */ lis         r4, 0x101
/* 806DEA4C 80030020 */ lwz         r0, 0x20(r3)
/* 806DEA50 38640101 */ addi        r3, r4, 0x101
/* 806DEA54 7C600079 */ andc.       r0, r3, r0
/* 806DEA58 4082001C */ bne-        lbl_806dea74
/* 806DEA5C 3C60809C */ lis         r3, lbl_809c21d0@ha
/* 806DEA60 806321D0 */ lwz         r3, lbl_809c21d0@l(r3)
/* 806DEA64 4BF9F25D */ bl          unk_8067dcc0
/* 806DEA68 2C030000 */ cmpwi       r3, 0
/* 806DEA6C 41820008 */ beq-        lbl_806dea74
/* 806DEA70 3BE00001 */ li          r31, 1
lbl_806dea74:
/* 806DEA74 881E00B4 */ lbz         r0, 0xb4(r30)
/* 806DEA78 2C000000 */ cmpwi       r0, 0
/* 806DEA7C 40820038 */ bne-        lbl_806deab4
/* 806DEA80 3FE0809C */ lis         r31, lbl_809c2280@ha
/* 806DEA84 389E0030 */ addi        r4, r30, 0x30
/* 806DEA88 807F2280 */ lwz         r3, lbl_809c2280@l(r31)
/* 806DEA8C 81830000 */ lwz         r12, 0(r3)
/* 806DEA90 818C0074 */ lwz         r12, 0x74(r12)
/* 806DEA94 7D8903A6 */ mtctr       r12
/* 806DEA98 4E800421 */ bctrl       
/* 806DEA9C 807F2280 */ lwz         r3, lbl_809c2280@l(r31)
/* 806DEAA0 81830000 */ lwz         r12, 0(r3)
/* 806DEAA4 818C0080 */ lwz         r12, 0x80(r12)
/* 806DEAA8 7D8903A6 */ mtctr       r12
/* 806DEAAC 4E800421 */ bctrl       
/* 806DEAB0 48000064 */ b           lbl_806deb14
lbl_806deab4:
/* 806DEAB4 2C1F0000 */ cmpwi       r31, 0
/* 806DEAB8 4082001C */ bne-        lbl_806dead4
/* 806DEABC 807E00B0 */ lwz         r3, 0xb0(r30)
/* 806DEAC0 81830000 */ lwz         r12, 0(r3)
/* 806DEAC4 818C000C */ lwz         r12, 0xc(r12)
/* 806DEAC8 7D8903A6 */ mtctr       r12
/* 806DEACC 4E800421 */ bctrl       
/* 806DEAD0 48000018 */ b           lbl_806deae8
lbl_806dead4:
/* 806DEAD4 807E00B0 */ lwz         r3, 0xb0(r30)
/* 806DEAD8 81830000 */ lwz         r12, 0(r3)
/* 806DEADC 818C0010 */ lwz         r12, 0x10(r12)
/* 806DEAE0 7D8903A6 */ mtctr       r12
/* 806DEAE4 4E800421 */ bctrl       
lbl_806deae8:
/* 806DEAE8 807E00B0 */ lwz         r3, 0xb0(r30)
/* 806DEAEC 389E0030 */ addi        r4, r30, 0x30
/* 806DEAF0 81830000 */ lwz         r12, 0(r3)
/* 806DEAF4 818C0014 */ lwz         r12, 0x14(r12)
/* 806DEAF8 7D8903A6 */ mtctr       r12
/* 806DEAFC 4E800421 */ bctrl       
/* 806DEB00 807E00B0 */ lwz         r3, 0xb0(r30)
/* 806DEB04 81830000 */ lwz         r12, 0(r3)
/* 806DEB08 818C001C */ lwz         r12, 0x1c(r12)
/* 806DEB0C 7D8903A6 */ mtctr       r12
/* 806DEB10 4E800421 */ bctrl       
lbl_806deb14:
/* 806DEB14 3C80808A */ lis         r4, lbl_808a0510@ha
/* 806DEB18 7FC3F378 */ mr          r3, r30
/* 806DEB1C C0240510 */ lfs         f1, lbl_808a0510@l(r4)
/* 806DEB20 388001D8 */ li          r4, 0x1d8
/* 806DEB24 481419F9 */ bl          unk_8082051c
/* 806DEB28 80010014 */ lwz         r0, 0x14(r1)
/* 806DEB2C 83E1000C */ lwz         r31, 0xc(r1)
/* 806DEB30 83C10008 */ lwz         r30, 8(r1)
/* 806DEB34 7C0803A6 */ mtlr        r0
/* 806DEB38 38210010 */ addi        r1, r1, 0x10
/* 806DEB3C 4E800020 */ blr         