nofralloc
/* 805AEC8C C0440000 */ lfs         f2, 0(r4)
/* 805AEC90 C0050000 */ lfs         f0, 0(r5)
/* 805AEC94 EC001028 */ fsubs       f0, f0, f2
/* 805AEC98 EC010032 */ fmuls       f0, f1, f0
/* 805AEC9C EC02002A */ fadds       f0, f2, f0
/* 805AECA0 D0030000 */ stfs        f0, 0(r3)
/* 805AECA4 4E800020 */ blr         