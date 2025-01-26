nofralloc
/* 80587B78 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80587B7C 7C0802A6 */ mflr        r0
/* 80587B80 2C030000 */ cmpwi       r3, 0
/* 80587B84 90010014 */ stw         r0, 0x14(r1)
/* 80587B88 93E1000C */ stw         r31, 0xc(r1)
/* 80587B8C 7C7F1B78 */ mr          r31, r3
/* 80587B90 41820010 */ beq-        lbl_80587ba0
/* 80587B94 2C040000 */ cmpwi       r4, 0
/* 80587B98 40810008 */ ble-        lbl_80587ba0
/* 80587B9C 4BCA2279 */ bl          __dl__FPv
lbl_80587ba0:
/* 80587BA0 7FE3FB78 */ mr          r3, r31
/* 80587BA4 83E1000C */ lwz         r31, 0xc(r1)
/* 80587BA8 80010014 */ lwz         r0, 0x14(r1)
/* 80587BAC 7C0803A6 */ mtlr        r0
/* 80587BB0 38210010 */ addi        r1, r1, 0x10
/* 80587BB4 4E800020 */ blr         