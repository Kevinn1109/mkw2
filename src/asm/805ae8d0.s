nofralloc
/* 805AE8D0 9421FFD0 */ stwu        r1, -0x30(r1)
/* 805AE8D4 7C0802A6 */ mflr        r0
/* 805AE8D8 C0E40000 */ lfs         f7, 0(r4)
/* 805AE8DC C0050004 */ lfs         f0, 4(r5)
/* 805AE8E0 90010034 */ stw         r0, 0x34(r1)
/* 805AE8E4 C0440008 */ lfs         f2, 8(r4)
/* 805AE8E8 ECC70032 */ fmuls       f6, f7, f0
/* 805AE8EC 93E1002C */ stw         r31, 0x2c(r1)
/* 805AE8F0 7C9F2378 */ mr          r31, r4
/* 805AE8F4 C0850000 */ lfs         f4, 0(r5)
/* 805AE8F8 EC020032 */ fmuls       f0, f2, f0
/* 805AE8FC 93C10028 */ stw         r30, 0x28(r1)
/* 805AE900 C0A40004 */ lfs         f5, 4(r4)
/* 805AE904 EC620132 */ fmuls       f3, f2, f4
/* 805AE908 C0250008 */ lfs         f1, 8(r5)
/* 805AE90C 7C7E1B78 */ mr          r30, r3
/* 805AE910 EC850132 */ fmuls       f4, f5, f4
/* 805AE914 38610014 */ addi        r3, r1, 0x14
/* 805AE918 EC470072 */ fmuls       f2, f7, f1
/* 805AE91C EC250072 */ fmuls       f1, f5, f1
/* 805AE920 EC862028 */ fsubs       f4, f6, f4
/* 805AE924 EC431028 */ fsubs       f2, f3, f2
/* 805AE928 EC010028 */ fsubs       f0, f1, f0
/* 805AE92C D081001C */ stfs        f4, 0x1c(r1)
/* 805AE930 D0010014 */ stfs        f0, 0x14(r1)
/* 805AE934 D0410018 */ stfs        f2, 0x18(r1)
/* 805AE938 4BC951A5 */ bl          normalise__Q23EGG8Vector3fFv
/* 805AE93C C0E10014 */ lfs         f7, 0x14(r1)
/* 805AE940 38610008 */ addi        r3, r1, 8
/* 805AE944 C01F0004 */ lfs         f0, 4(r31)
/* 805AE948 C041001C */ lfs         f2, 0x1c(r1)
/* 805AE94C C09F0000 */ lfs         f4, 0(r31)
/* 805AE950 ECC70032 */ fmuls       f6, f7, f0
/* 805AE954 C0A10018 */ lfs         f5, 0x18(r1)
/* 805AE958 EC020032 */ fmuls       f0, f2, f0
/* 805AE95C EC620132 */ fmuls       f3, f2, f4
/* 805AE960 C03F0008 */ lfs         f1, 8(r31)
/* 805AE964 EC850132 */ fmuls       f4, f5, f4
/* 805AE968 EC470072 */ fmuls       f2, f7, f1
/* 805AE96C EC250072 */ fmuls       f1, f5, f1
/* 805AE970 EC862028 */ fsubs       f4, f6, f4
/* 805AE974 EC431028 */ fsubs       f2, f3, f2
/* 805AE978 EC010028 */ fsubs       f0, f1, f0
/* 805AE97C D0810010 */ stfs        f4, 0x10(r1)
/* 805AE980 D0010008 */ stfs        f0, 8(r1)
/* 805AE984 D041000C */ stfs        f2, 0xc(r1)
/* 805AE988 4BC95155 */ bl          normalise__Q23EGG8Vector3fFv
/* 805AE98C C05F0000 */ lfs         f2, 0(r31)
/* 805AE990 C03F0004 */ lfs         f1, 4(r31)
/* 805AE994 C01F0008 */ lfs         f0, 8(r31)
/* 805AE998 D05E0000 */ stfs        f2, 0(r30)
/* 805AE99C D03E0010 */ stfs        f1, 0x10(r30)
/* 805AE9A0 D01E0020 */ stfs        f0, 0x20(r30)
/* 805AE9A4 C0010008 */ lfs         f0, 8(r1)
/* 805AE9A8 D01E0004 */ stfs        f0, 4(r30)
/* 805AE9AC C001000C */ lfs         f0, 0xc(r1)
/* 805AE9B0 D01E0014 */ stfs        f0, 0x14(r30)
/* 805AE9B4 C0010010 */ lfs         f0, 0x10(r1)
/* 805AE9B8 D01E0024 */ stfs        f0, 0x24(r30)
/* 805AE9BC C0010014 */ lfs         f0, 0x14(r1)
/* 805AE9C0 D01E0008 */ stfs        f0, 8(r30)
/* 805AE9C4 C0010018 */ lfs         f0, 0x18(r1)
/* 805AE9C8 D01E0018 */ stfs        f0, 0x18(r30)
/* 805AE9CC C001001C */ lfs         f0, 0x1c(r1)
/* 805AE9D0 D01E0028 */ stfs        f0, 0x28(r30)
/* 805AE9D4 83E1002C */ lwz         r31, 0x2c(r1)
/* 805AE9D8 83C10028 */ lwz         r30, 0x28(r1)
/* 805AE9DC 80010034 */ lwz         r0, 0x34(r1)
/* 805AE9E0 7C0803A6 */ mtlr        r0
/* 805AE9E4 38210030 */ addi        r1, r1, 0x30
/* 805AE9E8 4E800020 */ blr         