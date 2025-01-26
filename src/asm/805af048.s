nofralloc
/* 805AF048 9421FFE0 */ stwu        r1, -0x20(r1)
/* 805AF04C 7C0802A6 */ mflr        r0
/* 805AF050 C0250000 */ lfs         f1, 0(r5)
/* 805AF054 C0050004 */ lfs         f0, 4(r5)
/* 805AF058 90010024 */ stw         r0, 0x24(r1)
/* 805AF05C EC210072 */ fmuls       f1, f1, f1
/* 805AF060 EC000032 */ fmuls       f0, f0, f0
/* 805AF064 C0450008 */ lfs         f2, 8(r5)
/* 805AF068 93E1001C */ stw         r31, 0x1c(r1)
/* 805AF06C 7CBF2B78 */ mr          r31, r5
/* 805AF070 EC4200B2 */ fmuls       f2, f2, f2
/* 805AF074 93C10018 */ stw         r30, 0x18(r1)
/* 805AF078 EC01002A */ fadds       f0, f1, f0
/* 805AF07C 7C9E2378 */ mr          r30, r4
/* 805AF080 93A10014 */ stw         r29, 0x14(r1)
/* 805AF084 7C7D1B78 */ mr          r29, r3
/* 805AF088 EC22002A */ fadds       f1, f2, f0
/* 805AF08C 4BC80781 */ bl          sqrt__Q23EGG5MathfFf
/* 805AF090 C0BF0000 */ lfs         f5, 0(r31)
/* 805AF094 38600001 */ li          r3, 1
/* 805AF098 C09F0004 */ lfs         f4, 4(r31)
/* 805AF09C C03E0000 */ lfs         f1, 0(r30)
/* 805AF0A0 C01E0004 */ lfs         f0, 4(r30)
/* 805AF0A4 C07F0008 */ lfs         f3, 8(r31)
/* 805AF0A8 EC250072 */ fmuls       f1, f5, f1
/* 805AF0AC EC040032 */ fmuls       f0, f4, f0
/* 805AF0B0 C05E0008 */ lfs         f2, 8(r30)
/* 805AF0B4 D0BD0004 */ stfs        f5, 4(r29)
/* 805AF0B8 EC4300B2 */ fmuls       f2, f3, f2
/* 805AF0BC EC01002A */ fadds       f0, f1, f0
/* 805AF0C0 D09D0008 */ stfs        f4, 8(r29)
/* 805AF0C4 D07D000C */ stfs        f3, 0xc(r29)
/* 805AF0C8 EC02002A */ fadds       f0, f2, f0
/* 805AF0CC FC000050 */ fneg        f0, f0
/* 805AF0D0 D01D0010 */ stfs        f0, 0x10(r29)
/* 805AF0D4 83E1001C */ lwz         r31, 0x1c(r1)
/* 805AF0D8 83C10018 */ lwz         r30, 0x18(r1)
/* 805AF0DC 83A10014 */ lwz         r29, 0x14(r1)
/* 805AF0E0 80010024 */ lwz         r0, 0x24(r1)
/* 805AF0E4 7C0803A6 */ mtlr        r0
/* 805AF0E8 38210020 */ addi        r1, r1, 0x20
/* 805AF0EC 4E800020 */ blr         