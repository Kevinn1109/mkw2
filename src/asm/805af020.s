nofralloc
/* 805AF020 3C808089 */ lis         r4, lbl_8089253c@ha
/* 805AF024 3CA0808B */ lis         r5, lbl_808b6e70@ha
/* 805AF028 C004253C */ lfs         f0, lbl_8089253c@l(r4)
/* 805AF02C 38A56E70 */ addi        r5, r5, lbl_808b6e70@l
/* 805AF030 90A30000 */ stw         r5, 0(r3)
/* 805AF034 D0030004 */ stfs        f0, 4(r3)
/* 805AF038 D0030008 */ stfs        f0, 8(r3)
/* 805AF03C D003000C */ stfs        f0, 0xc(r3)
/* 805AF040 D0030010 */ stfs        f0, 0x10(r3)
/* 805AF044 4E800020 */ blr         