nofralloc
/* 805AEF6C 9421FFE0 */ stwu        r1, -0x20(r1)
/* 805AEF70 7C0802A6 */ mflr        r0
/* 805AEF74 C0250000 */ lfs         f1, 0(r5)
/* 805AEF78 3CC0808B */ lis         r6, lbl_808b6e70@ha
/* 805AEF7C C0050004 */ lfs         f0, 4(r5)
/* 805AEF80 38C66E70 */ addi        r6, r6, lbl_808b6e70@l
/* 805AEF84 90010024 */ stw         r0, 0x24(r1)
/* 805AEF88 EC210072 */ fmuls       f1, f1, f1
/* 805AEF8C EC000032 */ fmuls       f0, f0, f0
/* 805AEF90 C0450008 */ lfs         f2, 8(r5)
/* 805AEF94 93E1001C */ stw         r31, 0x1c(r1)
/* 805AEF98 7CBF2B78 */ mr          r31, r5
/* 805AEF9C EC4200B2 */ fmuls       f2, f2, f2
/* 805AEFA0 93C10018 */ stw         r30, 0x18(r1)
/* 805AEFA4 EC01002A */ fadds       f0, f1, f0
/* 805AEFA8 7C9E2378 */ mr          r30, r4
/* 805AEFAC 93A10014 */ stw         r29, 0x14(r1)
/* 805AEFB0 7C7D1B78 */ mr          r29, r3
/* 805AEFB4 EC22002A */ fadds       f1, f2, f0
/* 805AEFB8 90C30000 */ stw         r6, 0(r3)
/* 805AEFBC 4BC80851 */ bl          sqrt__Q23EGG5MathfFf
/* 805AEFC0 C0BF0000 */ lfs         f5, 0(r31)
/* 805AEFC4 7FA3EB78 */ mr          r3, r29
/* 805AEFC8 C09F0004 */ lfs         f4, 4(r31)
/* 805AEFCC C03E0000 */ lfs         f1, 0(r30)
/* 805AEFD0 C01E0004 */ lfs         f0, 4(r30)
/* 805AEFD4 C07F0008 */ lfs         f3, 8(r31)
/* 805AEFD8 EC250072 */ fmuls       f1, f5, f1
/* 805AEFDC EC040032 */ fmuls       f0, f4, f0
/* 805AEFE0 C05E0008 */ lfs         f2, 8(r30)
/* 805AEFE4 D0BD0004 */ stfs        f5, 4(r29)
/* 805AEFE8 EC4300B2 */ fmuls       f2, f3, f2
/* 805AEFEC EC01002A */ fadds       f0, f1, f0
/* 805AEFF0 D09D0008 */ stfs        f4, 8(r29)
/* 805AEFF4 D07D000C */ stfs        f3, 0xc(r29)
/* 805AEFF8 EC02002A */ fadds       f0, f2, f0
/* 805AEFFC FC000050 */ fneg        f0, f0
/* 805AF000 D01D0010 */ stfs        f0, 0x10(r29)
/* 805AF004 83E1001C */ lwz         r31, 0x1c(r1)
/* 805AF008 83C10018 */ lwz         r30, 0x18(r1)
/* 805AF00C 83A10014 */ lwz         r29, 0x14(r1)
/* 805AF010 80010024 */ lwz         r0, 0x24(r1)
/* 805AF014 7C0803A6 */ mtlr        r0
/* 805AF018 38210020 */ addi        r1, r1, 0x20
/* 805AF01C 4E800020 */ blr         