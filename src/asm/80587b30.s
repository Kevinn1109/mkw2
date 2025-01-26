nofralloc
/* 80587B30 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80587B34 7C0802A6 */ mflr        r0
/* 80587B38 90010014 */ stw         r0, 0x14(r1)
/* 80587B3C 93E1000C */ stw         r31, 0xc(r1)
/* 80587B40 7C7F1B78 */ mr          r31, r3
/* 80587B44 4BFF0481 */ bl          PlayerSub10_construct
/* 80587B48 3C608089 */ lis         r3, lbl_80891a00@ha
/* 80587B4C 3C80808B */ lis         r4, lbl_808b5ee8@ha
/* 80587B50 C0031A00 */ lfs         f0, lbl_80891a00@l(r3)
/* 80587B54 38845EE8 */ addi        r4, r4, lbl_808b5ee8@l
/* 80587B58 909F000C */ stw         r4, 0xc(r31)
/* 80587B5C 7FE3FB78 */ mr          r3, r31
/* 80587B60 D01F0294 */ stfs        f0, 0x294(r31)
/* 80587B64 83E1000C */ lwz         r31, 0xc(r1)
/* 80587B68 80010014 */ lwz         r0, 0x14(r1)
/* 80587B6C 7C0803A6 */ mtlr        r0
/* 80587B70 38210010 */ addi        r1, r1, 0x10
/* 80587B74 4E800020 */ blr         