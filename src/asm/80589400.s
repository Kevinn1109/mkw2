nofralloc
/* 80589400 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80589404 7C0802A6 */ mflr        r0
/* 80589408 90010014 */ stw         r0, 0x14(r1)
/* 8058940C 93E1000C */ stw         r31, 0xc(r1)
/* 80589410 7C7F1B78 */ mr          r31, r3
/* 80589414 4BFF4649 */ bl          PlayerSub10_hop
/* 80589418 7FE3FB78 */ mr          r3, r31
/* 8058941C 4800803D */ bl          PlayerPointers_getRacedataFactoryFlags
/* 80589420 80030014 */ lwz         r0, 0x14(r3)
/* 80589424 68000080 */ xori        r0, r0, 0x80
/* 80589428 90030014 */ stw         r0, 0x14(r3)
/* 8058942C 83E1000C */ lwz         r31, 0xc(r1)
/* 80589430 80010014 */ lwz         r0, 0x14(r1)
/* 80589434 7C0803A6 */ mtlr        r0
/* 80589438 38210010 */ addi        r1, r1, 0x10
/* 8058943C 4E800020 */ blr         