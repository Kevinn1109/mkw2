nofralloc
/* 806DDF68 9421FFF0 */ stwu        r1, -0x10(r1)
/* 806DDF6C 7C0802A6 */ mflr        r0
/* 806DDF70 2C030000 */ cmpwi       r3, 0
/* 806DDF74 90010014 */ stw         r0, 0x14(r1)
/* 806DDF78 93E1000C */ stw         r31, 0xc(r1)
/* 806DDF7C 7C9F2378 */ mr          r31, r4
/* 806DDF80 93C10008 */ stw         r30, 8(r1)
/* 806DDF84 7C7E1B78 */ mr          r30, r3
/* 806DDF88 41820030 */ beq-        lbl_806ddfb8
/* 806DDF8C 340300B0 */ addic.      r0, r3, 0xb0
/* 806DDF90 41820018 */ beq-        lbl_806ddfa8
/* 806DDF94 3C80808C */ lis         r4, lbl_808c6410@ha
/* 806DDF98 38846410 */ addi        r4, r4, lbl_808c6410@l
/* 806DDF9C 908300B0 */ stw         r4, 0xb0(r3)
/* 806DDFA0 806300C4 */ lwz         r3, 0xc4(r3)
/* 806DDFA4 4BB4BF3D */ bl          __dla__FPv
lbl_806ddfa8:
/* 806DDFA8 2C1F0000 */ cmpwi       r31, 0
/* 806DDFAC 4081000C */ ble-        lbl_806ddfb8
/* 806DDFB0 7FC3F378 */ mr          r3, r30
/* 806DDFB4 4BB4BE61 */ bl          __dl__FPv
lbl_806ddfb8:
/* 806DDFB8 7FC3F378 */ mr          r3, r30
/* 806DDFBC 83E1000C */ lwz         r31, 0xc(r1)
/* 806DDFC0 83C10008 */ lwz         r30, 8(r1)
/* 806DDFC4 80010014 */ lwz         r0, 0x14(r1)
/* 806DDFC8 7C0803A6 */ mtlr        r0
/* 806DDFCC 38210010 */ addi        r1, r1, 0x10
/* 806DDFD0 4E800020 */ blr         