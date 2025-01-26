nofralloc
/* 806DE4E4 80830020 */ lwz         r4, 0x20(r3)
/* 806DE4E8 A003002C */ lhz         r0, 0x2c(r3)
/* 806DE4EC C0040020 */ lfs         f0, 0x20(r4)
/* 806DE4F0 C024001C */ lfs         f1, 0x1c(r4)
/* 806DE4F4 60000001 */ ori         r0, r0, 1
/* 806DE4F8 C0440018 */ lfs         f2, 0x18(r4)
/* 806DE4FC D0430030 */ stfs        f2, 0x30(r3)
/* 806DE500 B003002C */ sth         r0, 0x2c(r3)
/* 806DE504 D0230034 */ stfs        f1, 0x34(r3)
/* 806DE508 D0030038 */ stfs        f0, 0x38(r3)
/* 806DE50C 4E800020 */ blr         