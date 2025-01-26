nofralloc
/* 80591138 9421FFF0 */ stwu        r1, -0x10(r1)
/* 8059113C 7C0802A6 */ mflr        r0
/* 80591140 80630000 */ lwz         r3, 0(r3)
/* 80591144 90010014 */ stw         r0, 0x14(r1)
/* 80591148 5480103A */ slwi        r0, r4, 2
/* 8059114C 80630010 */ lwz         r3, 0x10(r3)
/* 80591150 7C63002E */ lwzx        r3, r3, r0
/* 80591154 80630098 */ lwz         r3, 0x98(r3)
/* 80591158 48008D71 */ bl          getKartCollisionInfo__Q24Kart16KartWheelPhysicsCFv
/* 8059115C 80010014 */ lwz         r0, 0x14(r1)
/* 80591160 8063006C */ lwz         r3, 0x6c(r3)
/* 80591164 7C0803A6 */ mtlr        r0
/* 80591168 38210010 */ addi        r1, r1, 0x10
/* 8059116C 4E800020 */ blr         