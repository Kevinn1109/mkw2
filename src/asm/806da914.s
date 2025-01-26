nofralloc
/* 806DA914 9421FFE0 */ stwu        r1, -0x20(r1)
/* 806DA918 7C0802A6 */ mflr        r0
/* 806DA91C 3CA0808A */ lis         r5, lbl_808a0354@ha
/* 806DA920 90010024 */ stw         r0, 0x24(r1)
/* 806DA924 38A50354 */ addi        r5, r5, lbl_808a0354@l
/* 806DA928 93E1001C */ stw         r31, 0x1c(r1)
/* 806DA92C 7C9F2378 */ mr          r31, r4
/* 806DA930 93C10018 */ stw         r30, 0x18(r1)
/* 806DA934 7C7E1B78 */ mr          r30, r3
/* 806DA938 4BFE5BD5 */ bl          unk_806c050c
/* 806DA93C 3C60808C */ lis         r3, lbl_808c5c84@ha
/* 806DA940 3C004330 */ lis         r0, 0x4330
/* 806DA944 38635C84 */ addi        r3, r3, lbl_808c5c84@l
/* 806DA948 907E0000 */ stw         r3, 0(r30)
/* 806DA94C 3C80808A */ lis         r4, lbl_808a0348@ha
/* 806DA950 38C00001 */ li          r6, 1
/* 806DA954 80BF0000 */ lwz         r5, 0(r31)
/* 806DA958 3C60809C */ lis         r3, lbl_809c4330@ha
/* 806DA95C 90010008 */ stw         r0, 8(r1)
/* 806DA960 A805002A */ lha         r0, 0x2a(r5)
/* 806DA964 C8240348 */ lfd         f1, lbl_808a0348@l(r4)
/* 806DA968 7C0001D6 */ mullw       r0, r0, r0
/* 806DA96C 6C008000 */ xoris       r0, r0, 0x8000
/* 806DA970 9001000C */ stw         r0, 0xc(r1)
/* 806DA974 C8010008 */ lfd         f0, 8(r1)
/* 806DA978 EC000828 */ fsubs       f0, f0, f1
/* 806DA97C D01E00BC */ stfs        f0, 0xbc(r30)
/* 806DA980 809F0000 */ lwz         r4, 0(r31)
/* 806DA984 A884002C */ lha         r4, 0x2c(r4)
/* 806DA988 3804FFFF */ addi        r0, r4, -1
/* 806DA98C 7C000034 */ cntlzw      r0, r0
/* 806DA990 5400D97E */ srwi        r0, r0, 5
/* 806DA994 981E00C0 */ stb         r0, 0xc0(r30)
/* 806DA998 80634330 */ lwz         r3, lbl_809c4330@l(r3)
/* 806DA99C 88030054 */ lbz         r0, 0x54(r3)
/* 806DA9A0 2C000000 */ cmpwi       r0, 0
/* 806DA9A4 40820014 */ bne-        lbl_806da9b8
/* 806DA9A8 88030055 */ lbz         r0, 0x55(r3)
/* 806DA9AC 2C000000 */ cmpwi       r0, 0
/* 806DA9B0 40820008 */ bne-        lbl_806da9b8
/* 806DA9B4 38C00000 */ li          r6, 0
lbl_806da9b8:
/* 806DA9B8 98DE00C1 */ stb         r6, 0xc1(r30)
/* 806DA9BC 881E00C0 */ lbz         r0, 0xc0(r30)
/* 806DA9C0 807F0000 */ lwz         r3, 0(r31)
/* 806DA9C4 2C000000 */ cmpwi       r0, 0
/* 806DA9C8 A803002E */ lha         r0, 0x2e(r3)
/* 806DA9CC 901E00C4 */ stw         r0, 0xc4(r30)
/* 806DA9D0 41820030 */ beq-        lbl_806daa00
/* 806DA9D4 3860007C */ li          r3, 0x7c
/* 806DA9D8 4BB4F3F5 */ bl          __nw__FUl
/* 806DA9DC 2C030000 */ cmpwi       r3, 0
/* 806DA9E0 41820018 */ beq-        lbl_806da9f8
/* 806DA9E4 3C80808A */ lis         r4, lbl_808a0354@ha
/* 806DA9E8 38A00000 */ li          r5, 0
/* 806DA9EC 38840354 */ addi        r4, r4, lbl_808a0354@l
/* 806DA9F0 38840009 */ addi        r4, r4, 9
/* 806DA9F4 4BB482D9 */ bl          unk_80222ccc
lbl_806da9f8:
/* 806DA9F8 907E00B8 */ stw         r3, 0xb8(r30)
/* 806DA9FC 4800002C */ b           lbl_806daa28
lbl_806daa00:
/* 806DAA00 3860007C */ li          r3, 0x7c
/* 806DAA04 4BB4F3C9 */ bl          __nw__FUl
/* 806DAA08 2C030000 */ cmpwi       r3, 0
/* 806DAA0C 41820018 */ beq-        lbl_806daa24
/* 806DAA10 3C80808A */ lis         r4, lbl_808a0354@ha
/* 806DAA14 38A00000 */ li          r5, 0
/* 806DAA18 38840354 */ addi        r4, r4, lbl_808a0354@l
/* 806DAA1C 38840017 */ addi        r4, r4, 0x17
/* 806DAA20 4BB482AD */ bl          unk_80222ccc
lbl_806daa24:
/* 806DAA24 907E00B8 */ stw         r3, 0xb8(r30)
lbl_806daa28:
/* 806DAA28 7FC3F378 */ mr          r3, r30
/* 806DAA2C 83E1001C */ lwz         r31, 0x1c(r1)
/* 806DAA30 83C10018 */ lwz         r30, 0x18(r1)
/* 806DAA34 80010024 */ lwz         r0, 0x24(r1)
/* 806DAA38 7C0803A6 */ mtlr        r0
/* 806DAA3C 38210020 */ addi        r1, r1, 0x20
/* 806DAA40 4E800020 */ blr         