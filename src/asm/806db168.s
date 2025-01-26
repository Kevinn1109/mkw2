nofralloc
/* 806DB168 3C80808A */ lis         r4, lbl_808a0340@ha
/* 806DB16C 7CA32B78 */ mr          r3, r5
/* 806DB170 C0040340 */ lfs         f0, lbl_808a0340@l(r4)
/* 806DB174 D0070008 */ stfs        f0, 8(r7)
/* 806DB178 D0070004 */ stfs        f0, 4(r7)
/* 806DB17C D0070000 */ stfs        f0, 0(r7)
/* 806DB180 4E800020 */ blr         