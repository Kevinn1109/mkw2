nofralloc
/* 805AF1BC 3C608089 */ lis         r3, lbl_80892538@ha
/* 805AF1C0 C0460000 */ lfs         f2, 0(r6)
/* 805AF1C4 C0E50000 */ lfs         f7, 0(r5)
/* 805AF1C8 C0032538 */ lfs         f0, lbl_80892538@l(r3)
/* 805AF1CC EC823828 */ fsubs       f4, f2, f7
/* 805AF1D0 C0460004 */ lfs         f2, 4(r6)
/* 805AF1D4 EC600828 */ fsubs       f3, f0, f1
/* 805AF1D8 C0C50004 */ lfs         f6, 4(r5)
/* 805AF1DC C0060008 */ lfs         f0, 8(r6)
/* 805AF1E0 C0A50008 */ lfs         f5, 8(r5)
/* 805AF1E4 EC2400F2 */ fmuls       f1, f4, f3
/* 805AF1E8 9421FFE0 */ stwu        r1, -0x20(r1)
/* 805AF1EC EC423028 */ fsubs       f2, f2, f6
/* 805AF1F0 EC802828 */ fsubs       f4, f0, f5
/* 805AF1F4 D0210008 */ stfs        f1, 8(r1)
/* 805AF1F8 EC0200F2 */ fmuls       f0, f2, f3
/* 805AF1FC EC47082A */ fadds       f2, f7, f1
/* 805AF200 EC6400F2 */ fmuls       f3, f4, f3
/* 805AF204 D001000C */ stfs        f0, 0xc(r1)
/* 805AF208 EC26002A */ fadds       f1, f6, f0
/* 805AF20C D0610010 */ stfs        f3, 0x10(r1)
/* 805AF210 EC05182A */ fadds       f0, f5, f3
/* 805AF214 D0440000 */ stfs        f2, 0(r4)
/* 805AF218 D0240004 */ stfs        f1, 4(r4)
/* 805AF21C D0040008 */ stfs        f0, 8(r4)
/* 805AF220 38210020 */ addi        r1, r1, 0x20
/* 805AF224 4E800020 */ blr         