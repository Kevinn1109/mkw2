nofralloc
/* 806DDD20 9421FFF0 */ stwu        r1, -0x10(r1)
/* 806DDD24 7C0802A6 */ mflr        r0
/* 806DDD28 2C030000 */ cmpwi       r3, 0
/* 806DDD2C 90010014 */ stw         r0, 0x14(r1)
/* 806DDD30 93E1000C */ stw         r31, 0xc(r1)
/* 806DDD34 7C9F2378 */ mr          r31, r4
/* 806DDD38 93C10008 */ stw         r30, 8(r1)
/* 806DDD3C 7C7E1B78 */ mr          r30, r3
/* 806DDD40 41820044 */ beq-        lbl_806ddd84
/* 806DDD44 800300B0 */ lwz         r0, 0xb0(r3)
/* 806DDD48 3C80808C */ lis         r4, lbl_808c61e8@ha
/* 806DDD4C 388461E8 */ addi        r4, r4, lbl_808c61e8@l
/* 806DDD50 90830000 */ stw         r4, 0(r3)
/* 806DDD54 2C000000 */ cmpwi       r0, 0
/* 806DDD58 4182001C */ beq-        lbl_806ddd74
/* 806DDD5C 7C030378 */ mr          r3, r0
/* 806DDD60 38800001 */ li          r4, 1
/* 806DDD64 81830000 */ lwz         r12, 0(r3)
/* 806DDD68 818C0008 */ lwz         r12, 8(r12)
/* 806DDD6C 7D8903A6 */ mtctr       r12
/* 806DDD70 4E800421 */ bctrl       
lbl_806ddd74:
/* 806DDD74 2C1F0000 */ cmpwi       r31, 0
/* 806DDD78 4081000C */ ble-        lbl_806ddd84
/* 806DDD7C 7FC3F378 */ mr          r3, r30
/* 806DDD80 4BB4C095 */ bl          __dl__FPv
lbl_806ddd84:
/* 806DDD84 7FC3F378 */ mr          r3, r30
/* 806DDD88 83E1000C */ lwz         r31, 0xc(r1)
/* 806DDD8C 83C10008 */ lwz         r30, 8(r1)
/* 806DDD90 80010014 */ lwz         r0, 0x14(r1)
/* 806DDD94 7C0803A6 */ mtlr        r0
/* 806DDD98 38210010 */ addi        r1, r1, 0x10
/* 806DDD9C 4E800020 */ blr         