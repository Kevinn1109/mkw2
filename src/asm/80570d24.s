nofralloc
/* 80570D24 9421FFD0 */ stwu        r1, -0x30(r1)
/* 80570D28 7C0802A6 */ mflr        r0
/* 80570D2C 90010034 */ stw         r0, 0x34(r1)
/* 80570D30 93E1002C */ stw         r31, 0x2c(r1)
/* 80570D34 7CDF3378 */ mr          r31, r6
/* 80570D38 93C10028 */ stw         r30, 0x28(r1)
/* 80570D3C 7CBE2B78 */ mr          r30, r5
/* 80570D40 7FC3F378 */ mr          r3, r30
/* 80570D44 93A10024 */ stw         r29, 0x24(r1)
/* 80570D48 7C9D2378 */ mr          r29, r4
/* 80570D4C 38810008 */ addi        r4, r1, 8
/* 80570D50 4801FEF5 */ bl          PlayerPointers_getPlayerMatCol0
/* 80570D54 7FC3F378 */ mr          r3, r30
/* 80570D58 4801FA25 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80570D5C 7C651B78 */ mr          r5, r3
/* 80570D60 38610008 */ addi        r3, r1, 8
/* 80570D64 7C641B78 */ mr          r4, r3
/* 80570D68 38C00001 */ li          r6, 1
/* 80570D6C 38A5005C */ addi        r5, r5, 0x5c
/* 80570D70 4803DC7D */ bl          VEC3_perpInPlane
/* 80570D74 7FA3EB78 */ mr          r3, r29
/* 80570D78 7FE4FB78 */ mr          r4, r31
/* 80570D7C 38A10008 */ addi        r5, r1, 8
/* 80570D80 4803DE09 */ bl          projUnit__6RKGeomFRQ23EGG8Vector3fRCQ23EGG8Vector3fRCQ23EGG8Vector3f
/* 80570D84 7FA3EB78 */ mr          r3, r29
/* 80570D88 4BCD2D55 */ bl          normalise__Q23EGG8Vector3fFv
/* 80570D8C 80010034 */ lwz         r0, 0x34(r1)
/* 80570D90 83E1002C */ lwz         r31, 0x2c(r1)
/* 80570D94 83C10028 */ lwz         r30, 0x28(r1)
/* 80570D98 83A10024 */ lwz         r29, 0x24(r1)
/* 80570D9C 7C0803A6 */ mtlr        r0
/* 80570DA0 38210030 */ addi        r1, r1, 0x30
/* 80570DA4 4E800020 */ blr         