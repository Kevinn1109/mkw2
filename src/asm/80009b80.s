nofralloc
/* 80009B80 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80009B84 7C0802A6 */ mflr        r0
/* 80009B88 2C030000 */ cmpwi       r3, 0
/* 80009B8C 90010014 */ stw         r0, 0x14(r1)
/* 80009B90 93E1000C */ stw         r31, 0xc(r1)
/* 80009B94 7C7F1B78 */ mr          r31, r3
/* 80009B98 41820010 */ beq-        lbl_80009ba8
/* 80009B9C 2C040000 */ cmpwi       r4, 0
/* 80009BA0 40810008 */ ble-        lbl_80009ba8
/* 80009BA4 48220271 */ bl          __dl__FPv
lbl_80009ba8:
/* 80009BA8 7FE3FB78 */ mr          r3, r31
/* 80009BAC 83E1000C */ lwz         r31, 0xc(r1)
/* 80009BB0 80010014 */ lwz         r0, 0x14(r1)
/* 80009BB4 7C0803A6 */ mtlr        r0
/* 80009BB8 38210010 */ addi        r1, r1, 0x10
/* 80009BBC 4E800020 */ blr         