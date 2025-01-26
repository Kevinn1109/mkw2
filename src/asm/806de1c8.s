nofralloc
/* 806DE1C8 80630020 */ lwz         r3, 0x20(r3)
/* 806DE1CC 3C80808A */ lis         r4, lbl_808a0498@ha
/* 806DE1D0 C0240498 */ lfs         f1, lbl_808a0498@l(r4)
/* 806DE1D4 81830000 */ lwz         r12, 0(r3)
/* 806DE1D8 818C0018 */ lwz         r12, 0x18(r12)
/* 806DE1DC 7D8903A6 */ mtctr       r12
/* 806DE1E0 4E800420 */ bctr        