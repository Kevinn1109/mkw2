nofralloc
/* 805A014C 9421FFE0 */ stwu        r1, -0x20(r1)
/* 805A0150 C0440004 */ lfs         f2, 4(r4)
/* 805A0154 C0A30094 */ lfs         f5, 0x94(r3)
/* 805A0158 C0040008 */ lfs         f0, 8(r4)
/* 805A015C EC422828 */ fsubs       f2, f2, f5
/* 805A0160 C0C30098 */ lfs         f6, 0x98(r3)
/* 805A0164 C0640000 */ lfs         f3, 0(r4)
/* 805A0168 C1030090 */ lfs         f8, 0x90(r3)
/* 805A016C EC003028 */ fsubs       f0, f0, f6
/* 805A0170 EC820072 */ fmuls       f4, f2, f1
/* 805A0174 ECE34028 */ fsubs       f7, f3, f8
/* 805A0178 D041000C */ stfs        f2, 0xc(r1)
/* 805A017C EC600072 */ fmuls       f3, f0, f1
/* 805A0180 80830004 */ lwz         r4, 4(r3)
/* 805A0184 EC45202A */ fadds       f2, f5, f4
/* 805A0188 ECA70072 */ fmuls       f5, f7, f1
/* 805A018C EC06182A */ fadds       f0, f6, f3
/* 805A0190 D0E10008 */ stfs        f7, 8(r1)
/* 805A0194 EC28282A */ fadds       f1, f8, f5
/* 805A0198 D0430094 */ stfs        f2, 0x94(r3)
/* 805A019C D0030098 */ stfs        f0, 0x98(r3)
/* 805A01A0 D0230090 */ stfs        f1, 0x90(r3)
/* 805A01A4 D02400C8 */ stfs        f1, 0xc8(r4)
/* 805A01A8 C0030094 */ lfs         f0, 0x94(r3)
/* 805A01AC D00400CC */ stfs        f0, 0xcc(r4)
/* 805A01B0 C0030098 */ lfs         f0, 0x98(r3)
/* 805A01B4 D0A10008 */ stfs        f5, 8(r1)
/* 805A01B8 D081000C */ stfs        f4, 0xc(r1)
/* 805A01BC D0610010 */ stfs        f3, 0x10(r1)
/* 805A01C0 D00400D0 */ stfs        f0, 0xd0(r4)
/* 805A01C4 38210020 */ addi        r1, r1, 0x20
/* 805A01C8 4E800020 */ blr         