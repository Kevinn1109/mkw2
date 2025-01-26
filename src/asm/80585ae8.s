nofralloc
/* 80585AE8 3C808089 */ lis         r4, lbl_80891a00@ha
/* 80585AEC C0041A00 */ lfs         f0, lbl_80891a00@l(r4)
/* 80585AF0 D0030010 */ stfs        f0, 0x10(r3)
/* 80585AF4 4E800020 */ blr         