nofralloc
/* 80589440 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80589444 7C0802A6 */ mflr        r0
/* 80589448 90010014 */ stw         r0, 0x14(r1)
/* 8058944C 93E1000C */ stw         r31, 0xc(r1)
/* 80589450 7C7F1B78 */ mr          r31, r3
/* 80589454 4BFF4609 */ bl          PlayerSub10_hop
/* 80589458 7FE3FB78 */ mr          r3, r31
/* 8058945C 48007FFD */ bl          PlayerPointers_getRacedataFactoryFlags
/* 80589460 80030014 */ lwz         r0, 0x14(r3)
/* 80589464 68000080 */ xori        r0, r0, 0x80
/* 80589468 90030014 */ stw         r0, 0x14(r3)
/* 8058946C 83E1000C */ lwz         r31, 0xc(r1)
/* 80589470 80010014 */ lwz         r0, 0x14(r1)
/* 80589474 7C0803A6 */ mtlr        r0
/* 80589478 38210010 */ addi        r1, r1, 0x10
/* 8058947C 4E800020 */ blr         