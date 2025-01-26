nofralloc
/* 806DB33C 9421FFF0 */ stwu        r1, -0x10(r1)
/* 806DB340 7C0802A6 */ mflr        r0
/* 806DB344 2C030000 */ cmpwi       r3, 0
/* 806DB348 90010014 */ stw         r0, 0x14(r1)
/* 806DB34C 93E1000C */ stw         r31, 0xc(r1)
/* 806DB350 7C9F2378 */ mr          r31, r4
/* 806DB354 93C10008 */ stw         r30, 8(r1)
/* 806DB358 7C7E1B78 */ mr          r30, r3
/* 806DB35C 41820028 */ beq-        lbl_806db384
/* 806DB360 3C80808C */ lis         r4, lbl_808c5f0c@ha
/* 806DB364 38845F0C */ addi        r4, r4, lbl_808c5f0c@l
/* 806DB368 90830000 */ stw         r4, 0(r3)
/* 806DB36C 80630014 */ lwz         r3, 0x14(r3)
/* 806DB370 4BB4EB71 */ bl          __dla__FPv
/* 806DB374 2C1F0000 */ cmpwi       r31, 0
/* 806DB378 4081000C */ ble-        lbl_806db384
/* 806DB37C 7FC3F378 */ mr          r3, r30
/* 806DB380 4BB4EA95 */ bl          __dl__FPv
lbl_806db384:
/* 806DB384 7FC3F378 */ mr          r3, r30
/* 806DB388 83E1000C */ lwz         r31, 0xc(r1)
/* 806DB38C 83C10008 */ lwz         r30, 8(r1)
/* 806DB390 80010014 */ lwz         r0, 0x14(r1)
/* 806DB394 7C0803A6 */ mtlr        r0
/* 806DB398 38210010 */ addi        r1, r1, 0x10
/* 806DB39C 4E800020 */ blr         