nofralloc
/* 8051ECD4 9421FFF0 */ stwu        r1, -0x10(r1)
/* 8051ECD8 7C0802A6 */ mflr        r0
/* 8051ECDC 2C030000 */ cmpwi       r3, 0
/* 8051ECE0 90010014 */ stw         r0, 0x14(r1)
/* 8051ECE4 93E1000C */ stw         r31, 0xc(r1)
/* 8051ECE8 7C7F1B78 */ mr          r31, r3
/* 8051ECEC 41820010 */ beq-        lbl_8051ecfc
/* 8051ECF0 2C040000 */ cmpwi       r4, 0
/* 8051ECF4 40810008 */ ble-        lbl_8051ecfc
/* 8051ECF8 4BD0B11D */ bl          __dl__FPv
lbl_8051ecfc:
/* 8051ECFC 7FE3FB78 */ mr          r3, r31
/* 8051ED00 83E1000C */ lwz         r31, 0xc(r1)
/* 8051ED04 80010014 */ lwz         r0, 0x14(r1)
/* 8051ED08 7C0803A6 */ mtlr        r0
/* 8051ED0C 38210010 */ addi        r1, r1, 0x10
/* 8051ED10 4E800020 */ blr         