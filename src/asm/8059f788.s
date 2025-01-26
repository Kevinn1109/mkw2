nofralloc
/* 8059F788 9421FFF0 */ stwu        r1, -0x10(r1)
/* 8059F78C 7C0802A6 */ mflr        r0
/* 8059F790 2C030000 */ cmpwi       r3, 0
/* 8059F794 90010014 */ stw         r0, 0x14(r1)
/* 8059F798 93E1000C */ stw         r31, 0xc(r1)
/* 8059F79C 7C7F1B78 */ mr          r31, r3
/* 8059F7A0 41820010 */ beq-        lbl_8059f7b0
/* 8059F7A4 2C040000 */ cmpwi       r4, 0
/* 8059F7A8 40810008 */ ble-        lbl_8059f7b0
/* 8059F7AC 4BC8A669 */ bl          __dl__FPv
lbl_8059f7b0:
/* 8059F7B0 7FE3FB78 */ mr          r3, r31
/* 8059F7B4 83E1000C */ lwz         r31, 0xc(r1)
/* 8059F7B8 80010014 */ lwz         r0, 0x14(r1)
/* 8059F7BC 7C0803A6 */ mtlr        r0
/* 8059F7C0 38210010 */ addi        r1, r1, 0x10
/* 8059F7C4 4E800020 */ blr         