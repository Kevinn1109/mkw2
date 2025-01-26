nofralloc
/* 806DDAF4 9421FFF0 */ stwu        r1, -0x10(r1)
/* 806DDAF8 7C0802A6 */ mflr        r0
/* 806DDAFC 2C030000 */ cmpwi       r3, 0
/* 806DDB00 90010014 */ stw         r0, 0x14(r1)
/* 806DDB04 93E1000C */ stw         r31, 0xc(r1)
/* 806DDB08 7C7F1B78 */ mr          r31, r3
/* 806DDB0C 41820010 */ beq-        lbl_806ddb1c
/* 806DDB10 2C040000 */ cmpwi       r4, 0
/* 806DDB14 40810008 */ ble-        lbl_806ddb1c
/* 806DDB18 4BB4C2FD */ bl          __dl__FPv
lbl_806ddb1c:
/* 806DDB1C 7FE3FB78 */ mr          r3, r31
/* 806DDB20 83E1000C */ lwz         r31, 0xc(r1)
/* 806DDB24 80010014 */ lwz         r0, 0x14(r1)
/* 806DDB28 7C0803A6 */ mtlr        r0
/* 806DDB2C 38210010 */ addi        r1, r1, 0x10
/* 806DDB30 4E800020 */ blr         