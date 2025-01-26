nofralloc
/* 80595CC4 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80595CC8 7C0802A6 */ mflr        r0
/* 80595CCC 2C030000 */ cmpwi       r3, 0
/* 80595CD0 90010014 */ stw         r0, 0x14(r1)
/* 80595CD4 93E1000C */ stw         r31, 0xc(r1)
/* 80595CD8 7C7F1B78 */ mr          r31, r3
/* 80595CDC 41820010 */ beq-        lbl_80595cec
/* 80595CE0 2C040000 */ cmpwi       r4, 0
/* 80595CE4 40810008 */ ble-        lbl_80595cec
/* 80595CE8 4BC9412D */ bl          __dl__FPv
lbl_80595cec:
/* 80595CEC 7FE3FB78 */ mr          r3, r31
/* 80595CF0 83E1000C */ lwz         r31, 0xc(r1)
/* 80595CF4 80010014 */ lwz         r0, 0x14(r1)
/* 80595CF8 7C0803A6 */ mtlr        r0
/* 80595CFC 38210010 */ addi        r1, r1, 0x10
/* 80595D00 4E800020 */ blr         