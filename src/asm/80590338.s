nofralloc
/* 80590338 80630000 */ lwz         r3, 0(r3)
/* 8059033C 5480103A */ slwi        r0, r4, 2
/* 80590340 80630010 */ lwz         r3, 0x10(r3)
/* 80590344 7C63002E */ lwzx        r3, r3, r0
/* 80590348 80630098 */ lwz         r3, 0x98(r3)
/* 8059034C 48009B60 */ b           hasFloorCollision__Q24Kart16KartWheelPhysicsCFv