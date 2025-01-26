nofralloc
/* 806DD2D8 9421FFE0 */ stwu        r1, -0x20(r1)
/* 806DD2DC 7C0802A6 */ mflr        r0
/* 806DD2E0 3CC0809C */ lis         r6, lbl_809c4330@ha
/* 806DD2E4 90010024 */ stw         r0, 0x24(r1)
/* 806DD2E8 93E1001C */ stw         r31, 0x1c(r1)
/* 806DD2EC 7C7F1B78 */ mr          r31, r3
/* 806DD2F0 93C10018 */ stw         r30, 0x18(r1)
/* 806DD2F4 7C9E2378 */ mr          r30, r4
/* 806DD2F8 80C64330 */ lwz         r6, lbl_809c4330@l(r6)
/* 806DD2FC 80A40000 */ lwz         r5, 0(r4)
/* 806DD300 80C60004 */ lwz         r6, 4(r6)
/* 806DD304 A0050000 */ lhz         r0, 0(r5)
/* 806DD308 80A6000C */ lwz         r5, 0xc(r6)
/* 806DD30C 5400083C */ slwi        r0, r0, 1
/* 806DD310 80C60008 */ lwz         r6, 8(r6)
/* 806DD314 7C0502AE */ lhax        r0, r5, r0
/* 806DD318 1C000074 */ mulli       r0, r0, 0x74
/* 806DD31C 7CA60214 */ add         r5, r6, r0
/* 806DD320 38A50002 */ addi        r5, r5, 2
/* 806DD324 48141CC9 */ bl          unk_8081efec
/* 806DD328 3C60808C */ lis         r3, lbl_808c5f18@ha
/* 806DD32C 3C004330 */ lis         r0, 0x4330
/* 806DD330 38635F18 */ addi        r3, r3, lbl_808c5f18@l
/* 806DD334 907F0000 */ stw         r3, 0(r31)
/* 806DD338 3C80808A */ lis         r4, lbl_808a03f0@ha
/* 806DD33C 80BE0000 */ lwz         r5, 0(r30)
/* 806DD340 7FE3FB78 */ mr          r3, r31
/* 806DD344 90010008 */ stw         r0, 8(r1)
/* 806DD348 A805002C */ lha         r0, 0x2c(r5)
/* 806DD34C C82403F0 */ lfd         f1, lbl_808a03f0@l(r4)
/* 806DD350 6C008000 */ xoris       r0, r0, 0x8000
/* 806DD354 9001000C */ stw         r0, 0xc(r1)
/* 806DD358 C8010008 */ lfd         f0, 8(r1)
/* 806DD35C EC000828 */ fsubs       f0, f0, f1
/* 806DD360 D01F00B0 */ stfs        f0, 0xb0(r31)
/* 806DD364 819F0000 */ lwz         r12, 0(r31)
/* 806DD368 818C0028 */ lwz         r12, 0x28(r12)
/* 806DD36C 7D8903A6 */ mtctr       r12
/* 806DD370 4E800421 */ bctrl       
/* 806DD374 3FC0808A */ lis         r30, lbl_808a0420@ha
/* 806DD378 389E0420 */ addi        r4, r30, lbl_808a0420@l
/* 806DD37C 4B935F21 */ bl          strcmp
/* 806DD380 2C030000 */ cmpwi       r3, 0
/* 806DD384 40820010 */ bne-        lbl_806dd394
/* 806DD388 38000000 */ li          r0, 0
/* 806DD38C 901F00B4 */ stw         r0, 0xb4(r31)
/* 806DD390 48000094 */ b           lbl_806dd424
lbl_806dd394:
/* 806DD394 819F0000 */ lwz         r12, 0(r31)
/* 806DD398 7FE3FB78 */ mr          r3, r31
/* 806DD39C 818C0028 */ lwz         r12, 0x28(r12)
/* 806DD3A0 7D8903A6 */ mtctr       r12
/* 806DD3A4 4E800421 */ bctrl       
/* 806DD3A8 3BDE0420 */ addi        r30, r30, lbl_808a0420@l
/* 806DD3AC 389E000E */ addi        r4, r30, 0xe
/* 806DD3B0 4B935EED */ bl          strcmp
/* 806DD3B4 2C030000 */ cmpwi       r3, 0
/* 806DD3B8 40820010 */ bne-        lbl_806dd3c8
/* 806DD3BC 38000001 */ li          r0, 1
/* 806DD3C0 901F00B4 */ stw         r0, 0xb4(r31)
/* 806DD3C4 48000060 */ b           lbl_806dd424
lbl_806dd3c8:
/* 806DD3C8 819F0000 */ lwz         r12, 0(r31)
/* 806DD3CC 7FE3FB78 */ mr          r3, r31
/* 806DD3D0 818C0028 */ lwz         r12, 0x28(r12)
/* 806DD3D4 7D8903A6 */ mtctr       r12
/* 806DD3D8 4E800421 */ bctrl       
/* 806DD3DC 389E001B */ addi        r4, r30, 0x1b
/* 806DD3E0 4B935EBD */ bl          strcmp
/* 806DD3E4 2C030000 */ cmpwi       r3, 0
/* 806DD3E8 40820010 */ bne-        lbl_806dd3f8
/* 806DD3EC 38000002 */ li          r0, 2
/* 806DD3F0 901F00B4 */ stw         r0, 0xb4(r31)
/* 806DD3F4 48000030 */ b           lbl_806dd424
lbl_806dd3f8:
/* 806DD3F8 819F0000 */ lwz         r12, 0(r31)
/* 806DD3FC 7FE3FB78 */ mr          r3, r31
/* 806DD400 818C0028 */ lwz         r12, 0x28(r12)
/* 806DD404 7D8903A6 */ mtctr       r12
/* 806DD408 4E800421 */ bctrl       
/* 806DD40C 389E0023 */ addi        r4, r30, 0x23
/* 806DD410 4B935E8D */ bl          strcmp
/* 806DD414 2C030000 */ cmpwi       r3, 0
/* 806DD418 4082000C */ bne-        lbl_806dd424
/* 806DD41C 38000003 */ li          r0, 3
/* 806DD420 901F00B4 */ stw         r0, 0xb4(r31)
lbl_806dd424:
/* 806DD424 7FE3FB78 */ mr          r3, r31
/* 806DD428 83E1001C */ lwz         r31, 0x1c(r1)
/* 806DD42C 83C10018 */ lwz         r30, 0x18(r1)
/* 806DD430 80010024 */ lwz         r0, 0x24(r1)
/* 806DD434 7C0803A6 */ mtlr        r0
/* 806DD438 38210020 */ addi        r1, r1, 0x20
/* 806DD43C 4E800020 */ blr         