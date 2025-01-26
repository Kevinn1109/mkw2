nofralloc
/* 805AECA8 C1240000 */ lfs         f9, 0(r4)
/* 805AECAC C0050000 */ lfs         f0, 0(r5)
/* 805AECB0 C1040004 */ lfs         f8, 4(r4)
/* 805AECB4 ECC04828 */ fsubs       f6, f0, f9
/* 805AECB8 C0450004 */ lfs         f2, 4(r5)
/* 805AECBC C0E40008 */ lfs         f7, 8(r4)
/* 805AECC0 C0050008 */ lfs         f0, 8(r5)
/* 805AECC4 ECA24028 */ fsubs       f5, f2, f8
/* 805AECC8 9421FFE0 */ stwu        r1, -0x20(r1)
/* 805AECCC EC803828 */ fsubs       f4, f0, f7
/* 805AECD0 EC6101B2 */ fmuls       f3, f1, f6
/* 805AECD4 D1230000 */ stfs        f9, 0(r3)
/* 805AECD8 EC410172 */ fmuls       f2, f1, f5
/* 805AECDC EC010132 */ fmuls       f0, f1, f4
/* 805AECE0 D1030004 */ stfs        f8, 4(r3)
/* 805AECE4 EC69182A */ fadds       f3, f9, f3
/* 805AECE8 EC28102A */ fadds       f1, f8, f2
/* 805AECEC D0E30008 */ stfs        f7, 8(r3)
/* 805AECF0 EC07002A */ fadds       f0, f7, f0
/* 805AECF4 D0C10008 */ stfs        f6, 8(r1)
/* 805AECF8 D0A1000C */ stfs        f5, 0xc(r1)
/* 805AECFC D0810010 */ stfs        f4, 0x10(r1)
/* 805AED00 D0630000 */ stfs        f3, 0(r3)
/* 805AED04 D0230004 */ stfs        f1, 4(r3)
/* 805AED08 D0030008 */ stfs        f0, 8(r3)
/* 805AED0C 38210020 */ addi        r1, r1, 0x20
/* 805AED10 4E800020 */ blr         