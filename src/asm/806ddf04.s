nofralloc
/* 806DDF04 9421FFF0 */ stwu        r1, -0x10(r1)
/* 806DDF08 7C0802A6 */ mflr        r0
/* 806DDF0C 2C030000 */ cmpwi       r3, 0
/* 806DDF10 90010014 */ stw         r0, 0x14(r1)
/* 806DDF14 93E1000C */ stw         r31, 0xc(r1)
/* 806DDF18 7C9F2378 */ mr          r31, r4
/* 806DDF1C 93C10008 */ stw         r30, 8(r1)
/* 806DDF20 7C7E1B78 */ mr          r30, r3
/* 806DDF24 41820028 */ beq-        lbl_806ddf4c
/* 806DDF28 3C80808C */ lis         r4, lbl_808c6410@ha
/* 806DDF2C 38846410 */ addi        r4, r4, lbl_808c6410@l
/* 806DDF30 90830000 */ stw         r4, 0(r3)
/* 806DDF34 80630014 */ lwz         r3, 0x14(r3)
/* 806DDF38 4BB4BFA9 */ bl          __dla__FPv
/* 806DDF3C 2C1F0000 */ cmpwi       r31, 0
/* 806DDF40 4081000C */ ble-        lbl_806ddf4c
/* 806DDF44 7FC3F378 */ mr          r3, r30
/* 806DDF48 4BB4BECD */ bl          __dl__FPv
lbl_806ddf4c:
/* 806DDF4C 7FC3F378 */ mr          r3, r30
/* 806DDF50 83E1000C */ lwz         r31, 0xc(r1)
/* 806DDF54 83C10008 */ lwz         r30, 8(r1)
/* 806DDF58 80010014 */ lwz         r0, 0x14(r1)
/* 806DDF5C 7C0803A6 */ mtlr        r0
/* 806DDF60 38210010 */ addi        r1, r1, 0x10
/* 806DDF64 4E800020 */ blr         