nofralloc
/* 805AEAD8 9421FFF0 */ stwu        r1, -0x10(r1)
/* 805AEADC 7C0802A6 */ mflr        r0
/* 805AEAE0 C0C50000 */ lfs         f6, 0(r5)
/* 805AEAE4 3CC08089 */ lis         r6, lbl_80892538@ha
/* 805AEAE8 C0640000 */ lfs         f3, 0(r4)
/* 805AEAEC C0A50004 */ lfs         f5, 4(r5)
/* 805AEAF0 C0840004 */ lfs         f4, 4(r4)
/* 805AEAF4 EC4600F2 */ fmuls       f2, f6, f3
/* 805AEAF8 C1250008 */ lfs         f9, 8(r5)
/* 805AEAFC EC250132 */ fmuls       f1, f5, f4
/* 805AEB00 C1040008 */ lfs         f8, 8(r4)
/* 805AEB04 90010014 */ stw         r0, 0x14(r1)
/* 805AEB08 38000000 */ li          r0, 0
/* 805AEB0C ECE90232 */ fmuls       f7, f9, f8
/* 805AEB10 C0062538 */ lfs         f0, lbl_80892538@l(r6)
/* 805AEB14 EC22082A */ fadds       f1, f2, f1
/* 805AEB18 EC27082A */ fadds       f1, f7, f1
/* 805AEB1C FC000800 */ fcmpu       cr0, f0, f1
/* 805AEB20 41820040 */ beq-        lbl_805aeb60
/* 805AEB24 EC0500F2 */ fmuls       f0, f5, f3
/* 805AEB28 EC260132 */ fmuls       f1, f6, f4
/* 805AEB2C EC460232 */ fmuls       f2, f6, f8
/* 805AEB30 EC6900F2 */ fmuls       f3, f9, f3
/* 805AEB34 ECC10028 */ fsubs       f6, f1, f0
/* 805AEB38 EC250232 */ fmuls       f1, f5, f8
/* 805AEB3C EC090132 */ fmuls       f0, f9, f4
/* 805AEB40 D0C30008 */ stfs        f6, 8(r3)
/* 805AEB44 EC431028 */ fsubs       f2, f3, f2
/* 805AEB48 EC010028 */ fsubs       f0, f1, f0
/* 805AEB4C D0430004 */ stfs        f2, 4(r3)
/* 805AEB50 D0030000 */ stfs        f0, 0(r3)
/* 805AEB54 4BC94F89 */ bl          normalise__Q23EGG8Vector3fFv
/* 805AEB58 38000001 */ li          r0, 1
/* 805AEB5C 48000018 */ b           lbl_805aeb74
lbl_805aeb60:
/* 805AEB60 3C808089 */ lis         r4, lbl_8089253c@ha
/* 805AEB64 C004253C */ lfs         f0, lbl_8089253c@l(r4)
/* 805AEB68 D0030008 */ stfs        f0, 8(r3)
/* 805AEB6C D0030004 */ stfs        f0, 4(r3)
/* 805AEB70 D0030000 */ stfs        f0, 0(r3)
lbl_805aeb74:
/* 805AEB74 7C030378 */ mr          r3, r0
/* 805AEB78 80010014 */ lwz         r0, 0x14(r1)
/* 805AEB7C 7C0803A6 */ mtlr        r0
/* 805AEB80 38210010 */ addi        r1, r1, 0x10
/* 805AEB84 4E800020 */ blr         