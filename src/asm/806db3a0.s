nofralloc
/* 806DB3A0 9421FFF0 */ stwu        r1, -0x10(r1)
/* 806DB3A4 7C0802A6 */ mflr        r0
/* 806DB3A8 2C030000 */ cmpwi       r3, 0
/* 806DB3AC 90010014 */ stw         r0, 0x14(r1)
/* 806DB3B0 93E1000C */ stw         r31, 0xc(r1)
/* 806DB3B4 7C9F2378 */ mr          r31, r4
/* 806DB3B8 93C10008 */ stw         r30, 8(r1)
/* 806DB3BC 7C7E1B78 */ mr          r30, r3
/* 806DB3C0 41820030 */ beq-        lbl_806db3f0
/* 806DB3C4 340300B0 */ addic.      r0, r3, 0xb0
/* 806DB3C8 41820018 */ beq-        lbl_806db3e0
/* 806DB3CC 3C80808C */ lis         r4, lbl_808c5f0c@ha
/* 806DB3D0 38845F0C */ addi        r4, r4, lbl_808c5f0c@l
/* 806DB3D4 908300B0 */ stw         r4, 0xb0(r3)
/* 806DB3D8 806300C4 */ lwz         r3, 0xc4(r3)
/* 806DB3DC 4BB4EB05 */ bl          __dla__FPv
lbl_806db3e0:
/* 806DB3E0 2C1F0000 */ cmpwi       r31, 0
/* 806DB3E4 4081000C */ ble-        lbl_806db3f0
/* 806DB3E8 7FC3F378 */ mr          r3, r30
/* 806DB3EC 4BB4EA29 */ bl          __dl__FPv
lbl_806db3f0:
/* 806DB3F0 7FC3F378 */ mr          r3, r30
/* 806DB3F4 83E1000C */ lwz         r31, 0xc(r1)
/* 806DB3F8 83C10008 */ lwz         r30, 8(r1)
/* 806DB3FC 80010014 */ lwz         r0, 0x14(r1)
/* 806DB400 7C0803A6 */ mtlr        r0
/* 806DB404 38210010 */ addi        r1, r1, 0x10
/* 806DB408 4E800020 */ blr         