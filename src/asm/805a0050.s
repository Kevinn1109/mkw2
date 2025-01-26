nofralloc
/* 805A0050 9421FFE0 */ stwu        r1, -0x20(r1)
/* 805A0054 C0440004 */ lfs         f2, 4(r4)
/* 805A0058 C0A30088 */ lfs         f5, 0x88(r3)
/* 805A005C C0040008 */ lfs         f0, 8(r4)
/* 805A0060 EC422828 */ fsubs       f2, f2, f5
/* 805A0064 C0C3008C */ lfs         f6, 0x8c(r3)
/* 805A0068 C0640000 */ lfs         f3, 0(r4)
/* 805A006C C1030084 */ lfs         f8, 0x84(r3)
/* 805A0070 EC003028 */ fsubs       f0, f0, f6
/* 805A0074 EC820072 */ fmuls       f4, f2, f1
/* 805A0078 ECE34028 */ fsubs       f7, f3, f8
/* 805A007C D041000C */ stfs        f2, 0xc(r1)
/* 805A0080 EC600072 */ fmuls       f3, f0, f1
/* 805A0084 80830004 */ lwz         r4, 4(r3)
/* 805A0088 EC45202A */ fadds       f2, f5, f4
/* 805A008C ECA70072 */ fmuls       f5, f7, f1
/* 805A0090 EC06182A */ fadds       f0, f6, f3
/* 805A0094 D0E10008 */ stfs        f7, 8(r1)
/* 805A0098 EC28282A */ fadds       f1, f8, f5
/* 805A009C D0430088 */ stfs        f2, 0x88(r3)
/* 805A00A0 D003008C */ stfs        f0, 0x8c(r3)
/* 805A00A4 D0230084 */ stfs        f1, 0x84(r3)
/* 805A00A8 D02400B0 */ stfs        f1, 0xb0(r4)
/* 805A00AC C0030088 */ lfs         f0, 0x88(r3)
/* 805A00B0 D00400B4 */ stfs        f0, 0xb4(r4)
/* 805A00B4 C003008C */ lfs         f0, 0x8c(r3)
/* 805A00B8 D0A10008 */ stfs        f5, 8(r1)
/* 805A00BC D081000C */ stfs        f4, 0xc(r1)
/* 805A00C0 D0610010 */ stfs        f3, 0x10(r1)
/* 805A00C4 D00400B8 */ stfs        f0, 0xb8(r4)
/* 805A00C8 38210020 */ addi        r1, r1, 0x20
/* 805A00CC 4E800020 */ blr         