nofralloc
/* 80588D74 3CA08089 */ lis         r5, lbl_80891a04@ha
/* 80588D78 3C808089 */ lis         r4, lbl_80891a0c@ha
/* 80588D7C C0251A04 */ lfs         f1, lbl_80891a04@l(r5)
/* 80588D80 38000000 */ li          r0, 0
/* 80588D84 C0041A0C */ lfs         f0, lbl_80891a0c@l(r4)
/* 80588D88 B0030004 */ sth         r0, 4(r3)
/* 80588D8C B0030006 */ sth         r0, 6(r3)
/* 80588D90 B0030008 */ sth         r0, 8(r3)
/* 80588D94 B003000A */ sth         r0, 0xa(r3)
/* 80588D98 B003000C */ sth         r0, 0xc(r3)
/* 80588D9C B003000E */ sth         r0, 0xe(r3)
/* 80588DA0 D0230014 */ stfs        f1, 0x14(r3)
/* 80588DA4 D0230018 */ stfs        f1, 0x18(r3)
/* 80588DA8 D0030020 */ stfs        f0, 0x20(r3)
/* 80588DAC 4E800020 */ blr         