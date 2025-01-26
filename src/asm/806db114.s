nofralloc
/* 806DB114 9421FFF0 */ stwu        r1, -0x10(r1)
/* 806DB118 7C0802A6 */ mflr        r0
/* 806DB11C 2C030000 */ cmpwi       r3, 0
/* 806DB120 90010014 */ stw         r0, 0x14(r1)
/* 806DB124 93E1000C */ stw         r31, 0xc(r1)
/* 806DB128 7C7F1B78 */ mr          r31, r3
/* 806DB12C 41820010 */ beq-        lbl_806db13c
/* 806DB130 2C040000 */ cmpwi       r4, 0
/* 806DB134 40810008 */ ble-        lbl_806db13c
/* 806DB138 4BB4ECDD */ bl          __dl__FPv
lbl_806db13c:
/* 806DB13C 7FE3FB78 */ mr          r3, r31
/* 806DB140 83E1000C */ lwz         r31, 0xc(r1)
/* 806DB144 80010014 */ lwz         r0, 0x14(r1)
/* 806DB148 7C0803A6 */ mtlr        r0
/* 806DB14C 38210010 */ addi        r1, r1, 0x10
/* 806DB150 4E800020 */ blr         