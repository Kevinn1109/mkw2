nofralloc
/* 8057B99C 3C80808B */ lis         r4, lbl_808b59f8@ha
/* 8057B9A0 C00459F8 */ lfs         f0, lbl_808b59f8@l(r4)
/* 8057B9A4 D003002C */ stfs        f0, 0x2c(r3)
/* 8057B9A8 4E800020 */ blr         