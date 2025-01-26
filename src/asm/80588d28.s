nofralloc
/* 80588D28 3CA08089 */ lis         r5, lbl_80891a04@ha
/* 80588D2C 3C808089 */ lis         r4, lbl_80891a0c@ha
/* 80588D30 C0251A04 */ lfs         f1, lbl_80891a04@l(r5)
/* 80588D34 3CA0808B */ lis         r5, lbl_808b5fd8@ha
/* 80588D38 38000000 */ li          r0, 0
/* 80588D3C C0041A0C */ lfs         f0, lbl_80891a0c@l(r4)
/* 80588D40 38A55FD8 */ addi        r5, r5, lbl_808b5fd8@l
/* 80588D44 90A30000 */ stw         r5, 0(r3)
/* 80588D48 B0030010 */ sth         r0, 0x10(r3)
/* 80588D4C B0030004 */ sth         r0, 4(r3)
/* 80588D50 B0030006 */ sth         r0, 6(r3)
/* 80588D54 B0030008 */ sth         r0, 8(r3)
/* 80588D58 B003000A */ sth         r0, 0xa(r3)
/* 80588D5C B003000C */ sth         r0, 0xc(r3)
/* 80588D60 B003000E */ sth         r0, 0xe(r3)
/* 80588D64 D0230014 */ stfs        f1, 0x14(r3)
/* 80588D68 D0230018 */ stfs        f1, 0x18(r3)
/* 80588D6C D0030020 */ stfs        f0, 0x20(r3)
/* 80588D70 4E800020 */ blr         