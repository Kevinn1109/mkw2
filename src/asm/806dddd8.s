nofralloc
/* 806DDDD8 9421FFD0 */ stwu        r1, -0x30(r1)
/* 806DDDDC 7C0802A6 */ mflr        r0
/* 806DDDE0 90010034 */ stw         r0, 0x34(r1)
/* 806DDDE4 39610030 */ addi        r11, r1, 0x30
/* 806DDDE8 4B9437B9 */ bl          _savegpr_27
/* 806DDDEC 3CA0808A */ lis         r5, lbl_808a04d8@ha
/* 806DDDF0 7C7E1B78 */ mr          r30, r3
/* 806DDDF4 7C9B2378 */ mr          r27, r4
/* 806DDDF8 38A504D8 */ addi        r5, r5, lbl_808a04d8@l
/* 806DDDFC 481411F1 */ bl          unk_8081efec
/* 806DDE00 3C80808C */ lis         r4, lbl_808c5018@ha
/* 806DDE04 7FC3F378 */ mr          r3, r30
/* 806DDE08 38845018 */ addi        r4, r4, lbl_808c5018@l
/* 806DDE0C 909E0000 */ stw         r4, 0(r30)
/* 806DDE10 819E0000 */ lwz         r12, 0(r30)
/* 806DDE14 818C00DC */ lwz         r12, 0xdc(r12)
/* 806DDE18 7D8903A6 */ mtctr       r12
/* 806DDE1C 4E800421 */ bctrl       
/* 806DDE20 3CC0808C */ lis         r6, lbl_808c6310@ha
/* 806DDE24 3BE00000 */ li          r31, 0
/* 806DDE28 38C66310 */ addi        r6, r6, lbl_808c6310@l
/* 806DDE2C 3800FFFF */ li          r0, -1
/* 806DDE30 38A600F0 */ addi        r5, r6, 0xf0
/* 806DDE34 901E00B8 */ stw         r0, 0xb8(r30)
/* 806DDE38 3C804330 */ lis         r4, 0x4330
/* 806DDE3C 3C60808A */ lis         r3, lbl_808a04a8@ha
/* 806DDE40 B3FE00B4 */ sth         r31, 0xb4(r30)
/* 806DDE44 3F80808C */ lis         r28, lbl_808c62d8@ha
/* 806DDE48 C82304A8 */ lfd         f1, lbl_808a04a8@l(r3)
/* 806DDE4C 3BBC62D8 */ addi        r29, r28, lbl_808c62d8@l
/* 806DDE50 93FE00BC */ stw         r31, 0xbc(r30)
/* 806DDE54 38000002 */ li          r0, 2
/* 806DDE58 38600004 */ li          r3, 4
/* 806DDE5C B3FE00C0 */ sth         r31, 0xc0(r30)
/* 806DDE60 93FE00C8 */ stw         r31, 0xc8(r30)
/* 806DDE64 93FE00CC */ stw         r31, 0xcc(r30)
/* 806DDE68 90DE0000 */ stw         r6, 0(r30)
/* 806DDE6C 90BE00B0 */ stw         r5, 0xb0(r30)
/* 806DDE70 80BB0000 */ lwz         r5, 0(r27)
/* 806DDE74 90810008 */ stw         r4, 8(r1)
/* 806DDE78 A885002A */ lha         r4, 0x2a(r5)
/* 806DDE7C 6C848000 */ xoris       r4, r4, 0x8000
/* 806DDE80 9081000C */ stw         r4, 0xc(r1)
/* 806DDE84 C8010008 */ lfd         f0, 8(r1)
/* 806DDE88 EC000828 */ fsubs       f0, f0, f1
/* 806DDE8C D01E00D0 */ stfs        f0, 0xd0(r30)
/* 806DDE90 809B0000 */ lwz         r4, 0(r27)
/* 806DDE94 A884002C */ lha         r4, 0x2c(r4)
/* 806DDE98 909E00D4 */ stw         r4, 0xd4(r30)
/* 806DDE9C 93DE00CC */ stw         r30, 0xcc(r30)
/* 806DDEA0 93BE00C8 */ stw         r29, 0xc8(r30)
/* 806DDEA4 B01E00C0 */ sth         r0, 0xc0(r30)
/* 806DDEA8 4BB4BF49 */ bl          __nwa__FUl
/* 806DDEAC 907E00C4 */ stw         r3, 0xc4(r30)
/* 806DDEB0 3C800001 */ lis         r4, 0x1
/* 806DDEB4 3804FFFF */ addi        r0, r4, -1
/* 806DDEB8 38A00001 */ li          r5, 1
/* 806DDEBC B0030000 */ sth         r0, 0(r3)
/* 806DDEC0 39610030 */ addi        r11, r1, 0x30
/* 806DDEC4 7FC3F378 */ mr          r3, r30
/* 806DDEC8 809E00C4 */ lwz         r4, 0xc4(r30)
/* 806DDECC B0040002 */ sth         r0, 2(r4)
/* 806DDED0 A01C62D8 */ lhz         r0, lbl_808c62d8@l(r28)
/* 806DDED4 809E00C4 */ lwz         r4, 0xc4(r30)
/* 806DDED8 5400083C */ slwi        r0, r0, 1
/* 806DDEDC 7FE4032E */ sthx        r31, r4, r0
/* 806DDEE0 A01D001C */ lhz         r0, 0x1c(r29)
/* 806DDEE4 809E00C4 */ lwz         r4, 0xc4(r30)
/* 806DDEE8 5400083C */ slwi        r0, r0, 1
/* 806DDEEC 7CA4032E */ sthx        r5, r4, r0
/* 806DDEF0 4B9436FD */ bl          _restgpr_27
/* 806DDEF4 80010034 */ lwz         r0, 0x34(r1)
/* 806DDEF8 7C0803A6 */ mtlr        r0
/* 806DDEFC 38210030 */ addi        r1, r1, 0x30
/* 806DDF00 4E800020 */ blr         