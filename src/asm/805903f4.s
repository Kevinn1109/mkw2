nofralloc
/* 805903F4 80630000 */ lwz         r3, 0(r3)
/* 805903F8 3C80809C */ lis         r4, spInstance__Q26System11RaceManager@ha
/* 805903FC 8084D730 */ lwz         r4, spInstance__Q26System11RaceManager@l(r4)
/* 80590400 80630000 */ lwz         r3, 0(r3)
/* 80590404 8084000C */ lwz         r4, 0xc(r4)
/* 80590408 88030010 */ lbz         r0, 0x10(r3)
/* 8059040C 5400103A */ slwi        r0, r0, 2
/* 80590410 7C64002E */ lwzx        r3, r4, r0
/* 80590414 80630048 */ lwz         r3, 0x48(r3)
/* 80590418 4E800020 */ blr         