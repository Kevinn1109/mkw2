nofralloc
/* 8057B9AC 3C80808B */ lis         r4, lbl_808b59f4@ha
/* 8057B9B0 C00459F4 */ lfs         f0, lbl_808b59f4@l(r4)
/* 8057B9B4 D003002C */ stfs        f0, 0x2c(r3)
/* 8057B9B8 4E800020 */ blr         