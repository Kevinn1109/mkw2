nofralloc
/* 805AE9EC 9421FFE0 */ stwu        r1, -0x20(r1)
/* 805AE9F0 7C0802A6 */ mflr        r0
/* 805AE9F4 C0E50000 */ lfs         f7, 0(r5)
/* 805AE9F8 3CE08089 */ lis         r7, lbl_80892538@ha
/* 805AE9FC C0C40000 */ lfs         f6, 0(r4)
/* 805AEA00 C0A50004 */ lfs         f5, 4(r5)
/* 805AEA04 C0840004 */ lfs         f4, 4(r4)
/* 805AEA08 EC4701B2 */ fmuls       f2, f7, f6
/* 805AEA0C C1250008 */ lfs         f9, 8(r5)
/* 805AEA10 EC250132 */ fmuls       f1, f5, f4
/* 805AEA14 C1040008 */ lfs         f8, 8(r4)
/* 805AEA18 90010024 */ stw         r0, 0x24(r1)
/* 805AEA1C 38000000 */ li          r0, 0
/* 805AEA20 EC690232 */ fmuls       f3, f9, f8
/* 805AEA24 C0072538 */ lfs         f0, lbl_80892538@l(r7)
/* 805AEA28 EC22082A */ fadds       f1, f2, f1
/* 805AEA2C EC23082A */ fadds       f1, f3, f1
/* 805AEA30 FC200A10 */ fabs        f1, f1
/* 805AEA34 FC000800 */ fcmpu       cr0, f0, f1
/* 805AEA38 41820078 */ beq-        lbl_805aeab0
/* 805AEA3C EC670132 */ fmuls       f3, f7, f4
/* 805AEA40 2C060000 */ cmpwi       r6, 0
/* 805AEA44 EC2501B2 */ fmuls       f1, f5, f6
/* 805AEA48 EC4901B2 */ fmuls       f2, f9, f6
/* 805AEA4C EC070232 */ fmuls       f0, f7, f8
/* 805AEA50 ECC30828 */ fsubs       f6, f3, f1
/* 805AEA54 EC250232 */ fmuls       f1, f5, f8
/* 805AEA58 EC420028 */ fsubs       f2, f2, f0
/* 805AEA5C D0C10010 */ stfs        f6, 0x10(r1)
/* 805AEA60 EC090132 */ fmuls       f0, f9, f4
/* 805AEA64 EC6601F2 */ fmuls       f3, f6, f7
/* 805AEA68 D041000C */ stfs        f2, 0xc(r1)
/* 805AEA6C EC8201F2 */ fmuls       f4, f2, f7
/* 805AEA70 ECE10028 */ fsubs       f7, f1, f0
/* 805AEA74 EC220272 */ fmuls       f1, f2, f9
/* 805AEA78 EC060172 */ fmuls       f0, f6, f5
/* 805AEA7C D0E10008 */ stfs        f7, 8(r1)
/* 805AEA80 ECA70172 */ fmuls       f5, f7, f5
/* 805AEA84 EC470272 */ fmuls       f2, f7, f9
/* 805AEA88 ECC10028 */ fsubs       f6, f1, f0
/* 805AEA8C EC052028 */ fsubs       f0, f5, f4
/* 805AEA90 EC231028 */ fsubs       f1, f3, f2
/* 805AEA94 D0C30000 */ stfs        f6, 0(r3)
/* 805AEA98 D0230004 */ stfs        f1, 4(r3)
/* 805AEA9C D0030008 */ stfs        f0, 8(r3)
/* 805AEAA0 41820008 */ beq-        lbl_805aeaa8
/* 805AEAA4 4BC95039 */ bl          normalise__Q23EGG8Vector3fFv
lbl_805aeaa8:
/* 805AEAA8 38000001 */ li          r0, 1
/* 805AEAAC 48000018 */ b           lbl_805aeac4
lbl_805aeab0:
/* 805AEAB0 3C808089 */ lis         r4, lbl_8089253c@ha
/* 805AEAB4 C004253C */ lfs         f0, lbl_8089253c@l(r4)
/* 805AEAB8 D0030008 */ stfs        f0, 8(r3)
/* 805AEABC D0030004 */ stfs        f0, 4(r3)
/* 805AEAC0 D0030000 */ stfs        f0, 0(r3)
lbl_805aeac4:
/* 805AEAC4 7C030378 */ mr          r3, r0
/* 805AEAC8 80010024 */ lwz         r0, 0x24(r1)
/* 805AEACC 7C0803A6 */ mtlr        r0
/* 805AEAD0 38210020 */ addi        r1, r1, 0x20
/* 805AEAD4 4E800020 */ blr         