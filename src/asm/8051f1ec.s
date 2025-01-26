nofralloc
/* 8051F1EC 9421FFF0 */ stwu        r1, -0x10(r1)
/* 8051F1F0 7C0802A6 */ mflr        r0
/* 8051F1F4 2C030000 */ cmpwi       r3, 0
/* 8051F1F8 90010014 */ stw         r0, 0x14(r1)
/* 8051F1FC 93E1000C */ stw         r31, 0xc(r1)
/* 8051F200 7C7F1B78 */ mr          r31, r3
/* 8051F204 41820010 */ beq-        lbl_8051f214
/* 8051F208 2C040000 */ cmpwi       r4, 0
/* 8051F20C 40810008 */ ble-        lbl_8051f214
/* 8051F210 4BD0AC05 */ bl          __dl__FPv
lbl_8051f214:
/* 8051F214 7FE3FB78 */ mr          r3, r31
/* 8051F218 83E1000C */ lwz         r31, 0xc(r1)
/* 8051F21C 80010014 */ lwz         r0, 0x14(r1)
/* 8051F220 7C0803A6 */ mtlr        r0
/* 8051F224 38210010 */ addi        r1, r1, 0x10
/* 8051F228 4E800020 */ blr         