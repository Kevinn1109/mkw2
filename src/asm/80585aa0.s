nofralloc
/* 80585AA0 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80585AA4 7C0802A6 */ mflr        r0
/* 80585AA8 90010014 */ stw         r0, 0x14(r1)
/* 80585AAC 93E1000C */ stw         r31, 0xc(r1)
/* 80585AB0 7C7F1B78 */ mr          r31, r3
/* 80585AB4 4800A6D9 */ bl          __ct__Q24Kart15KartObjectProxyFv
/* 80585AB8 3C608089 */ lis         r3, lbl_80891a00@ha
/* 80585ABC 3C80808B */ lis         r4, lbl_808b5fcc@ha
/* 80585AC0 C0031A00 */ lfs         f0, lbl_80891a00@l(r3)
/* 80585AC4 38845FCC */ addi        r4, r4, lbl_808b5fcc@l
/* 80585AC8 909F000C */ stw         r4, 0xc(r31)
/* 80585ACC 7FE3FB78 */ mr          r3, r31
/* 80585AD0 D01F0010 */ stfs        f0, 0x10(r31)
/* 80585AD4 83E1000C */ lwz         r31, 0xc(r1)
/* 80585AD8 80010014 */ lwz         r0, 0x14(r1)
/* 80585ADC 7C0803A6 */ mtlr        r0
/* 80585AE0 38210010 */ addi        r1, r1, 0x10
/* 80585AE4 4E800020 */ blr         