nofralloc
/* 8057D888 9421FFD0 */ stwu        r1, -0x30(r1)
/* 8057D88C 7C0802A6 */ mflr        r0
/* 8057D890 90010034 */ stw         r0, 0x34(r1)
/* 8057D894 93E1002C */ stw         r31, 0x2c(r1)
/* 8057D898 7C7F1B78 */ mr          r31, r3
/* 8057D89C 80830000 */ lwz         r4, 0(r3)
/* 8057D8A0 80840004 */ lwz         r4, 4(r4)
/* 8057D8A4 80040008 */ lwz         r0, 8(r4)
/* 8057D8A8 5400056B */ rlwinm.     r0, r0, 0, 0x15, 0x15
/* 8057D8AC 40820158 */ bne-        lbl_8057da04
/* 8057D8B0 80040004 */ lwz         r0, 4(r4)
/* 8057D8B4 54000421 */ rlwinm.     r0, r0, 0, 0x10, 0x10
/* 8057D8B8 4182014C */ beq-        lbl_8057da04
/* 8057D8BC 3C808089 */ lis         r4, lbl_80891ab4@ha
/* 8057D8C0 C023003C */ lfs         f1, 0x3c(r3)
/* 8057D8C4 C0041AB4 */ lfs         f0, lbl_80891ab4@l(r4)
/* 8057D8C8 FC010040 */ fcmpo       cr0, f1, f0
/* 8057D8CC 40810028 */ ble-        lbl_8057d8f4
/* 8057D8D0 3C80802A */ lis         r4, RKSystem_ey@ha
/* 8057D8D4 C0044130 */ lfs         f0, RKSystem_ey@l(r4)
/* 8057D8D8 38844130 */ addi        r4, r4, RKSystem_ey@l
/* 8057D8DC D0030038 */ stfs        f0, 0x38(r3)
/* 8057D8E0 C0040004 */ lfs         f0, 4(r4)
/* 8057D8E4 D003003C */ stfs        f0, 0x3c(r3)
/* 8057D8E8 C0040008 */ lfs         f0, 8(r4)
/* 8057D8EC D0030040 */ stfs        f0, 0x40(r3)
/* 8057D8F0 48000070 */ b           lbl_8057d960
lbl_8057d8f4:
/* 8057D8F4 3CC0802A */ lis         r6, RKSystem_ey@ha
/* 8057D8F8 3C808089 */ lis         r4, lbl_80891a44@ha
/* 8057D8FC 38A64130 */ addi        r5, r6, RKSystem_ey@l
/* 8057D900 C0C3003C */ lfs         f6, 0x3c(r3)
/* 8057D904 C0050004 */ lfs         f0, 4(r5)
/* 8057D908 C0264130 */ lfs         f1, RKSystem_ey@l(r6)
/* 8057D90C C0E30038 */ lfs         f7, 0x38(r3)
/* 8057D910 EC403028 */ fsubs       f2, f0, f6
/* 8057D914 C0050008 */ lfs         f0, 8(r5)
/* 8057D918 C0A30040 */ lfs         f5, 0x40(r3)
/* 8057D91C EC213828 */ fsubs       f1, f1, f7
/* 8057D920 C0641A44 */ lfs         f3, lbl_80891a44@l(r4)
/* 8057D924 EC802828 */ fsubs       f4, f0, f5
/* 8057D928 EC2100F2 */ fmuls       f1, f1, f3
/* 8057D92C EC0200F2 */ fmuls       f0, f2, f3
/* 8057D930 EC6400F2 */ fmuls       f3, f4, f3
/* 8057D934 D0210014 */ stfs        f1, 0x14(r1)
/* 8057D938 EC47082A */ fadds       f2, f7, f1
/* 8057D93C EC26002A */ fadds       f1, f6, f0
/* 8057D940 D0010018 */ stfs        f0, 0x18(r1)
/* 8057D944 EC05182A */ fadds       f0, f5, f3
/* 8057D948 D061001C */ stfs        f3, 0x1c(r1)
/* 8057D94C D0430038 */ stfs        f2, 0x38(r3)
/* 8057D950 D023003C */ stfs        f1, 0x3c(r3)
/* 8057D954 D0030040 */ stfs        f0, 0x40(r3)
/* 8057D958 38630038 */ addi        r3, r3, 0x38
/* 8057D95C 4BCC6181 */ bl          normalise__Q23EGG8Vector3fFv
lbl_8057d960:
/* 8057D960 3C608089 */ lis         r3, lbl_80891ab4@ha
/* 8057D964 C03F0048 */ lfs         f1, 0x48(r31)
/* 8057D968 C0031AB4 */ lfs         f0, lbl_80891ab4@l(r3)
/* 8057D96C FC010040 */ fcmpo       cr0, f1, f0
/* 8057D970 40810028 */ ble-        lbl_8057d998
/* 8057D974 3C60802A */ lis         r3, RKSystem_ey@ha
/* 8057D978 C0034130 */ lfs         f0, RKSystem_ey@l(r3)
/* 8057D97C 38634130 */ addi        r3, r3, RKSystem_ey@l
/* 8057D980 D01F0044 */ stfs        f0, 0x44(r31)
/* 8057D984 C0030004 */ lfs         f0, 4(r3)
/* 8057D988 D01F0048 */ stfs        f0, 0x48(r31)
/* 8057D98C C0030008 */ lfs         f0, 8(r3)
/* 8057D990 D01F004C */ stfs        f0, 0x4c(r31)
/* 8057D994 48000070 */ b           lbl_8057da04
lbl_8057d998:
/* 8057D998 3C60802A */ lis         r3, RKSystem_ey@ha
/* 8057D99C 3C808089 */ lis         r4, lbl_80891a44@ha
/* 8057D9A0 38A34130 */ addi        r5, r3, RKSystem_ey@l
/* 8057D9A4 C0234130 */ lfs         f1, RKSystem_ey@l(r3)
/* 8057D9A8 C0050004 */ lfs         f0, 4(r5)
/* 8057D9AC 387F0044 */ addi        r3, r31, 0x44
/* 8057D9B0 C0DF0048 */ lfs         f6, 0x48(r31)
/* 8057D9B4 C0FF0044 */ lfs         f7, 0x44(r31)
/* 8057D9B8 EC403028 */ fsubs       f2, f0, f6
/* 8057D9BC C0050008 */ lfs         f0, 8(r5)
/* 8057D9C0 C0BF004C */ lfs         f5, 0x4c(r31)
/* 8057D9C4 EC213828 */ fsubs       f1, f1, f7
/* 8057D9C8 C0641A44 */ lfs         f3, lbl_80891a44@l(r4)
/* 8057D9CC EC802828 */ fsubs       f4, f0, f5
/* 8057D9D0 EC2100F2 */ fmuls       f1, f1, f3
/* 8057D9D4 EC0200F2 */ fmuls       f0, f2, f3
/* 8057D9D8 EC6400F2 */ fmuls       f3, f4, f3
/* 8057D9DC D0210008 */ stfs        f1, 8(r1)
/* 8057D9E0 EC47082A */ fadds       f2, f7, f1
/* 8057D9E4 EC26002A */ fadds       f1, f6, f0
/* 8057D9E8 D001000C */ stfs        f0, 0xc(r1)
/* 8057D9EC EC05182A */ fadds       f0, f5, f3
/* 8057D9F0 D0610010 */ stfs        f3, 0x10(r1)
/* 8057D9F4 D05F0044 */ stfs        f2, 0x44(r31)
/* 8057D9F8 D03F0048 */ stfs        f1, 0x48(r31)
/* 8057D9FC D01F004C */ stfs        f0, 0x4c(r31)
/* 8057DA00 4BCC60DD */ bl          normalise__Q23EGG8Vector3fFv
lbl_8057da04:
/* 8057DA04 80010034 */ lwz         r0, 0x34(r1)
/* 8057DA08 83E1002C */ lwz         r31, 0x2c(r1)
/* 8057DA0C 7C0803A6 */ mtlr        r0
/* 8057DA10 38210030 */ addi        r1, r1, 0x30
/* 8057DA14 4E800020 */ blr         