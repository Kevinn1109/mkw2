nofralloc
/* 806DD998 9421FFF0 */ stwu        r1, -0x10(r1)
/* 806DD99C 7C0802A6 */ mflr        r0
/* 806DD9A0 2C030000 */ cmpwi       r3, 0
/* 806DD9A4 90010014 */ stw         r0, 0x14(r1)
/* 806DD9A8 93E1000C */ stw         r31, 0xc(r1)
/* 806DD9AC 7C7F1B78 */ mr          r31, r3
/* 806DD9B0 41820010 */ beq-        lbl_806dd9c0
/* 806DD9B4 2C040000 */ cmpwi       r4, 0
/* 806DD9B8 40810008 */ ble-        lbl_806dd9c0
/* 806DD9BC 4BB4C459 */ bl          __dl__FPv
lbl_806dd9c0:
/* 806DD9C0 7FE3FB78 */ mr          r3, r31
/* 806DD9C4 83E1000C */ lwz         r31, 0xc(r1)
/* 806DD9C8 80010014 */ lwz         r0, 0x14(r1)
/* 806DD9CC 7C0803A6 */ mtlr        r0
/* 806DD9D0 38210010 */ addi        r1, r1, 0x10
/* 806DD9D4 4E800020 */ blr         