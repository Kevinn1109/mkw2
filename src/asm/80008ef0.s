nofralloc
/* 80008EF0 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80008EF4 7C0802A6 */ mflr        r0
/* 80008EF8 90010014 */ stw         r0, 0x14(r1)
/* 80008EFC 93E1000C */ stw         r31, 0xc(r1)
/* 80008F00 3FE0802A */ lis         r31, sInstance__Q26System8RKSystem@ha
/* 80008F04 3BFF4080 */ addi        r31, r31, sInstance__Q26System8RKSystem@l
/* 80008F08 906D93E8 */ stw         r3, lbl_80385fe8
/* 80008F0C 7FE3FB78 */ mr          r3, r31
/* 80008F10 908D93EC */ stw         r4, lbl_80385fec
/* 80008F14 93ED93C8 */ stw         r31, spInstance__Q26System8RKSystem
/* 80008F18 93EDA360 */ stw         r31, sSystem__Q23EGG10BaseSystem
/* 80008F1C 819F0000 */ lwz         r12, 0(r31)
/* 80008F20 818C0038 */ lwz         r12, 0x38(r12)
/* 80008F24 7D8903A6 */ mtctr       r12
/* 80008F28 4E800421 */ bctrl       
/* 80008F2C 819F0000 */ lwz         r12, 0(r31)
/* 80008F30 7FE3FB78 */ mr          r3, r31
/* 80008F34 818C000C */ lwz         r12, 0xc(r12)
/* 80008F38 7D8903A6 */ mtctr       r12
/* 80008F3C 4E800421 */ bctrl       
/* 80008F40 7C641B78 */ mr          r4, r3
/* 80008F44 38600004 */ li          r3, 4
/* 80008F48 38A00004 */ li          r5, 4
/* 80008F4C 48220E95 */ bl          __nw__FUlPQ23EGG4Heapi
/* 80008F50 2C030000 */ cmpwi       r3, 0
/* 80008F54 41820010 */ beq-        lbl_80008f64
/* 80008F58 3C808027 */ lis         r4, __vt__Q26System18SceneCreatorStatic@ha
/* 80008F5C 38840CD0 */ addi        r4, r4, __vt__Q26System18SceneCreatorStatic@l
/* 80008F60 90830000 */ stw         r4, 0(r3)
lbl_80008f64:
/* 80008F64 906D93F0 */ stw         r3, lbl_80385ff0
/* 80008F68 38800005 */ li          r4, 5
/* 80008F6C 80AD93C8 */ lwz         r5, spInstance__Q26System8RKSystem
/* 80008F70 80A50054 */ lwz         r5, 0x54(r5)
/* 80008F74 90650004 */ stw         r3, 4(r5)
/* 80008F78 806D93C8 */ lwz         r3, spInstance__Q26System8RKSystem
/* 80008F7C 80630054 */ lwz         r3, 0x54(r3)
/* 80008F80 48232005 */ bl          changeScene__Q23EGG12SceneManagerFi
/* 80008F84 806D93C8 */ lwz         r3, spInstance__Q26System8RKSystem
/* 80008F88 81830000 */ lwz         r12, 0(r3)
/* 80008F8C 818C0034 */ lwz         r12, 0x34(r12)
/* 80008F90 7D8903A6 */ mtctr       r12
/* 80008F94 4E800421 */ bctrl       
/* 80008F98 80010014 */ lwz         r0, 0x14(r1)
/* 80008F9C 83E1000C */ lwz         r31, 0xc(r1)
/* 80008FA0 7C0803A6 */ mtlr        r0
/* 80008FA4 38210010 */ addi        r1, r1, 0x10
/* 80008FA8 4E800020 */ blr         