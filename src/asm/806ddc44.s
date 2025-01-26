nofralloc
/* 806DDC44 9421FFF0 */ stwu        r1, -0x10(r1)
/* 806DDC48 7C0802A6 */ mflr        r0
/* 806DDC4C 90010014 */ stw         r0, 0x14(r1)
/* 806DDC50 93E1000C */ stw         r31, 0xc(r1)
/* 806DDC54 7C7F1B78 */ mr          r31, r3
/* 806DDC58 806300B4 */ lwz         r3, 0xb4(r3)
/* 806DDC5C 81830000 */ lwz         r12, 0(r3)
/* 806DDC60 818C00EC */ lwz         r12, 0xec(r12)
/* 806DDC64 7D8903A6 */ mtctr       r12
/* 806DDC68 4E800421 */ bctrl       
/* 806DDC6C 2C03FFFF */ cmpwi       r3, -1
/* 806DDC70 4182002C */ beq-        lbl_806ddc9c
/* 806DDC74 809F00BC */ lwz         r4, 0xbc(r31)
/* 806DDC78 5460083C */ slwi        r0, r3, 1
/* 806DDC7C 807F00B0 */ lwz         r3, 0xb0(r31)
/* 806DDC80 7C0402AE */ lhax        r0, r4, r0
/* 806DDC84 5400103A */ slwi        r0, r0, 2
/* 806DDC88 7C63002E */ lwzx        r3, r3, r0
/* 806DDC8C 81830000 */ lwz         r12, 0(r3)
/* 806DDC90 818C00F0 */ lwz         r12, 0xf0(r12)
/* 806DDC94 7D8903A6 */ mtctr       r12
/* 806DDC98 4E800421 */ bctrl       
lbl_806ddc9c:
/* 806DDC9C 80010014 */ lwz         r0, 0x14(r1)
/* 806DDCA0 83E1000C */ lwz         r31, 0xc(r1)
/* 806DDCA4 7C0803A6 */ mtlr        r0
/* 806DDCA8 38210010 */ addi        r1, r1, 0x10
/* 806DDCAC 4E800020 */ blr         