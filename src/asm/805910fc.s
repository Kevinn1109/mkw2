nofralloc
/* 805910FC 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80591100 7C0802A6 */ mflr        r0
/* 80591104 80630000 */ lwz         r3, 0(r3)
/* 80591108 90010014 */ stw         r0, 0x14(r1)
/* 8059110C 5480103A */ slwi        r0, r4, 2
/* 80591110 80630010 */ lwz         r3, 0x10(r3)
/* 80591114 7C63002E */ lwzx        r3, r3, r0
/* 80591118 80630098 */ lwz         r3, 0x98(r3)
/* 8059111C 48008DAD */ bl          getKartCollisionInfo__Q24Kart16KartWheelPhysicsCFv
/* 80591120 80030000 */ lwz         r0, 0(r3)
/* 80591124 540307FE */ clrlwi      r3, r0, 0x1f
/* 80591128 80010014 */ lwz         r0, 0x14(r1)
/* 8059112C 7C0803A6 */ mtlr        r0
/* 80591130 38210010 */ addi        r1, r1, 0x10
/* 80591134 4E800020 */ blr         