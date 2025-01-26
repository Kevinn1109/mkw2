nofralloc
/* 8051EC94 9421FFF0 */ stwu        r1, -0x10(r1)
/* 8051EC98 7C0802A6 */ mflr        r0
/* 8051EC9C 2C030000 */ cmpwi       r3, 0
/* 8051ECA0 90010014 */ stw         r0, 0x14(r1)
/* 8051ECA4 93E1000C */ stw         r31, 0xc(r1)
/* 8051ECA8 7C7F1B78 */ mr          r31, r3
/* 8051ECAC 41820010 */ beq-        lbl_8051ecbc
/* 8051ECB0 2C040000 */ cmpwi       r4, 0
/* 8051ECB4 40810008 */ ble-        lbl_8051ecbc
/* 8051ECB8 4BD0B15D */ bl          __dl__FPv
lbl_8051ecbc:
/* 8051ECBC 7FE3FB78 */ mr          r3, r31
/* 8051ECC0 83E1000C */ lwz         r31, 0xc(r1)
/* 8051ECC4 80010014 */ lwz         r0, 0x14(r1)
/* 8051ECC8 7C0803A6 */ mtlr        r0
/* 8051ECCC 38210010 */ addi        r1, r1, 0x10
/* 8051ECD0 4E800020 */ blr         