nofralloc
/* 806DDA54 2C040000 */ cmpwi       r4, 0
/* 806DDA58 4082000C */ bne-        lbl_806dda64
/* 806DDA5C 7CA32B78 */ mr          r3, r5
/* 806DDA60 4E800020 */ blr         
lbl_806dda64:
/* 806DDA64 3C80808A */ lis         r4, lbl_808a0458@ha
/* 806DDA68 7CA32B78 */ mr          r3, r5
/* 806DDA6C C0040458 */ lfs         f0, lbl_808a0458@l(r4)
/* 806DDA70 D0070008 */ stfs        f0, 8(r7)
/* 806DDA74 D0070004 */ stfs        f0, 4(r7)
/* 806DDA78 D0070000 */ stfs        f0, 0(r7)
/* 806DDA7C 4E800020 */ blr         