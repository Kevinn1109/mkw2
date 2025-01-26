nofralloc
/* 80511E7C 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80511E80 7C0802A6 */ mflr        r0
/* 80511E84 C0260008 */ lfs         f1, 8(r6)
/* 80511E88 90010024 */ stw         r0, 0x24(r1)
/* 80511E8C C0060000 */ lfs         f0, 0(r6)
/* 80511E90 C0650008 */ lfs         f3, 8(r5)
/* 80511E94 C0450000 */ lfs         f2, 0(r5)
/* 80511E98 D0010010 */ stfs        f0, 0x10(r1)
/* 80511E9C D0210014 */ stfs        f1, 0x14(r1)
/* 80511EA0 D0410008 */ stfs        f2, 8(r1)
/* 80511EA4 D061000C */ stfs        f3, 0xc(r1)
/* 80511EA8 48003D7D */ bl          getCheckPoint__Q26System9CourseMapCFUs
/* 80511EAC 38810010 */ addi        r4, r1, 0x10
/* 80511EB0 38A10008 */ addi        r5, r1, 8
/* 80511EB4 48000015 */ bl          computeExactFinishingTimeInner
/* 80511EB8 80010024 */ lwz         r0, 0x24(r1)
/* 80511EBC 7C0803A6 */ mtlr        r0
/* 80511EC0 38210020 */ addi        r1, r1, 0x20
/* 80511EC4 4E800020 */ blr         