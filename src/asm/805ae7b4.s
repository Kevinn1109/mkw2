nofralloc
/* 805AE7B4 9421FFD0 */ stwu        r1, -0x30(r1)
/* 805AE7B8 7C0802A6 */ mflr        r0
/* 805AE7BC C0E50000 */ lfs         f7, 0(r5)
/* 805AE7C0 C0040004 */ lfs         f0, 4(r4)
/* 805AE7C4 90010034 */ stw         r0, 0x34(r1)
/* 805AE7C8 C0450008 */ lfs         f2, 8(r5)
/* 805AE7CC ECC70032 */ fmuls       f6, f7, f0
/* 805AE7D0 93E1002C */ stw         r31, 0x2c(r1)
/* 805AE7D4 7C9F2378 */ mr          r31, r4
/* 805AE7D8 C0840000 */ lfs         f4, 0(r4)
/* 805AE7DC EC020032 */ fmuls       f0, f2, f0
/* 805AE7E0 93C10028 */ stw         r30, 0x28(r1)
/* 805AE7E4 C0A50004 */ lfs         f5, 4(r5)
/* 805AE7E8 EC620132 */ fmuls       f3, f2, f4
/* 805AE7EC C0240008 */ lfs         f1, 8(r4)
/* 805AE7F0 7C7E1B78 */ mr          r30, r3
/* 805AE7F4 EC850132 */ fmuls       f4, f5, f4
/* 805AE7F8 38610014 */ addi        r3, r1, 0x14
/* 805AE7FC EC470072 */ fmuls       f2, f7, f1
/* 805AE800 EC250072 */ fmuls       f1, f5, f1
/* 805AE804 EC862028 */ fsubs       f4, f6, f4
/* 805AE808 EC431028 */ fsubs       f2, f3, f2
/* 805AE80C EC010028 */ fsubs       f0, f1, f0
/* 805AE810 D081001C */ stfs        f4, 0x1c(r1)
/* 805AE814 D0010014 */ stfs        f0, 0x14(r1)
/* 805AE818 D0410018 */ stfs        f2, 0x18(r1)
/* 805AE81C 4BC952C1 */ bl          normalise__Q23EGG8Vector3fFv
/* 805AE820 C0FF0000 */ lfs         f7, 0(r31)
/* 805AE824 38610008 */ addi        r3, r1, 8
/* 805AE828 C0010018 */ lfs         f0, 0x18(r1)
/* 805AE82C C05F0008 */ lfs         f2, 8(r31)
/* 805AE830 C0810014 */ lfs         f4, 0x14(r1)
/* 805AE834 ECC70032 */ fmuls       f6, f7, f0
/* 805AE838 C0BF0004 */ lfs         f5, 4(r31)
/* 805AE83C EC020032 */ fmuls       f0, f2, f0
/* 805AE840 EC620132 */ fmuls       f3, f2, f4
/* 805AE844 C021001C */ lfs         f1, 0x1c(r1)
/* 805AE848 EC850132 */ fmuls       f4, f5, f4
/* 805AE84C EC470072 */ fmuls       f2, f7, f1
/* 805AE850 EC250072 */ fmuls       f1, f5, f1
/* 805AE854 EC862028 */ fsubs       f4, f6, f4
/* 805AE858 EC431028 */ fsubs       f2, f3, f2
/* 805AE85C EC010028 */ fsubs       f0, f1, f0
/* 805AE860 D0810010 */ stfs        f4, 0x10(r1)
/* 805AE864 D0010008 */ stfs        f0, 8(r1)
/* 805AE868 D041000C */ stfs        f2, 0xc(r1)
/* 805AE86C 4BC95271 */ bl          normalise__Q23EGG8Vector3fFv
/* 805AE870 C0010014 */ lfs         f0, 0x14(r1)
/* 805AE874 D01E0000 */ stfs        f0, 0(r30)
/* 805AE878 C05F0000 */ lfs         f2, 0(r31)
/* 805AE87C C0010018 */ lfs         f0, 0x18(r1)
/* 805AE880 D01E0010 */ stfs        f0, 0x10(r30)
/* 805AE884 C03F0004 */ lfs         f1, 4(r31)
/* 805AE888 C001001C */ lfs         f0, 0x1c(r1)
/* 805AE88C D01E0020 */ stfs        f0, 0x20(r30)
/* 805AE890 C01F0008 */ lfs         f0, 8(r31)
/* 805AE894 C0610008 */ lfs         f3, 8(r1)
/* 805AE898 D07E0004 */ stfs        f3, 4(r30)
/* 805AE89C C061000C */ lfs         f3, 0xc(r1)
/* 805AE8A0 D07E0014 */ stfs        f3, 0x14(r30)
/* 805AE8A4 C0610010 */ lfs         f3, 0x10(r1)
/* 805AE8A8 D07E0024 */ stfs        f3, 0x24(r30)
/* 805AE8AC D05E0008 */ stfs        f2, 8(r30)
/* 805AE8B0 D03E0018 */ stfs        f1, 0x18(r30)
/* 805AE8B4 D01E0028 */ stfs        f0, 0x28(r30)
/* 805AE8B8 83E1002C */ lwz         r31, 0x2c(r1)
/* 805AE8BC 83C10028 */ lwz         r30, 0x28(r1)
/* 805AE8C0 80010034 */ lwz         r0, 0x34(r1)
/* 805AE8C4 7C0803A6 */ mtlr        r0
/* 805AE8C8 38210030 */ addi        r1, r1, 0x30
/* 805AE8CC 4E800020 */ blr         