nofralloc
/* 806DD440 9421FFF0 */ stwu        r1, -0x10(r1)
/* 806DD444 7C0802A6 */ mflr        r0
/* 806DD448 2C030000 */ cmpwi       r3, 0
/* 806DD44C 90010014 */ stw         r0, 0x14(r1)
/* 806DD450 93E1000C */ stw         r31, 0xc(r1)
/* 806DD454 7C7F1B78 */ mr          r31, r3
/* 806DD458 41820010 */ beq-        lbl_806dd468
/* 806DD45C 2C040000 */ cmpwi       r4, 0
/* 806DD460 40810008 */ ble-        lbl_806dd468
/* 806DD464 4BB4C9B1 */ bl          __dl__FPv
lbl_806dd468:
/* 806DD468 7FE3FB78 */ mr          r3, r31
/* 806DD46C 83E1000C */ lwz         r31, 0xc(r1)
/* 806DD470 80010014 */ lwz         r0, 0x14(r1)
/* 806DD474 7C0803A6 */ mtlr        r0
/* 806DD478 38210010 */ addi        r1, r1, 0x10
/* 806DD47C 4E800020 */ blr         