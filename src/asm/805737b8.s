nofralloc
/* 805737B8 9421FFE0 */ stwu        r1, -0x20(r1)
/* 805737BC 7C0802A6 */ mflr        r0
/* 805737C0 90010024 */ stw         r0, 0x24(r1)
/* 805737C4 93E1001C */ stw         r31, 0x1c(r1)
/* 805737C8 7C9F2378 */ mr          r31, r4
/* 805737CC 93C10018 */ stw         r30, 0x18(r1)
/* 805737D0 7C7E1B78 */ mr          r30, r3
/* 805737D4 38630004 */ addi        r3, r3, 4
/* 805737D8 4801CFE9 */ bl          kartAccessor_34__Q24Kart15KartObjectProxyFv
/* 805737DC 7C641B78 */ mr          r4, r3
/* 805737E0 7FE5FB78 */ mr          r5, r31
/* 805737E4 38610008 */ addi        r3, r1, 8
/* 805737E8 4BFFED5D */ bl          unk_80572544
/* 805737EC 387E0004 */ addi        r3, r30, 4
/* 805737F0 4801CF8D */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 805737F4 3CA08089 */ lis         r5, lbl_80891784@ha
/* 805737F8 38810008 */ addi        r4, r1, 8
/* 805737FC C0251784 */ lfs         f1, lbl_80891784@l(r5)
/* 80573800 38A00000 */ li          r5, 0
/* 80573804 480135B1 */ bl          unk_80586db4
/* 80573808 83E1001C */ lwz         r31, 0x1c(r1)
/* 8057380C 3860FFFF */ li          r3, -1
/* 80573810 83C10018 */ lwz         r30, 0x18(r1)
/* 80573814 80010024 */ lwz         r0, 0x24(r1)
/* 80573818 7C0803A6 */ mtlr        r0
/* 8057381C 38210020 */ addi        r1, r1, 0x20
/* 80573820 4E800020 */ blr         