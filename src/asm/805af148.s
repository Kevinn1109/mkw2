nofralloc
/* 805AF148 C0430004 */ lfs         f2, 4(r3)
/* 805AF14C 3CC08089 */ lis         r6, lbl_80892550@ha
/* 805AF150 C0240000 */ lfs         f1, 0(r4)
/* 805AF154 C0050000 */ lfs         f0, 0(r5)
/* 805AF158 EC820072 */ fmuls       f4, f2, f1
/* 805AF15C C0630008 */ lfs         f3, 8(r3)
/* 805AF160 C0240004 */ lfs         f1, 4(r4)
/* 805AF164 EC420032 */ fmuls       f2, f2, f0
/* 805AF168 C0050004 */ lfs         f0, 4(r5)
/* 805AF16C EC230072 */ fmuls       f1, f3, f1
/* 805AF170 EC030032 */ fmuls       f0, f3, f0
/* 805AF174 C0C3000C */ lfs         f6, 0xc(r3)
/* 805AF178 C0A40008 */ lfs         f5, 8(r4)
/* 805AF17C C0650008 */ lfs         f3, 8(r5)
/* 805AF180 EC84082A */ fadds       f4, f4, f1
/* 805AF184 ECA60172 */ fmuls       f5, f6, f5
/* 805AF188 EC02002A */ fadds       f0, f2, f0
/* 805AF18C C0262550 */ lfs         f1, lbl_80892550@l(r6)
/* 805AF190 EC6600F2 */ fmuls       f3, f6, f3
/* 805AF194 EC45202A */ fadds       f2, f5, f4
/* 805AF198 EC63002A */ fadds       f3, f3, f0
/* 805AF19C FC021800 */ fcmpu       cr0, f2, f3
/* 805AF1A0 4D820020 */ beqlr-      
/* 805AF1A4 C0230010 */ lfs         f1, 0x10(r3)
/* 805AF1A8 EC021828 */ fsubs       f0, f2, f3
/* 805AF1AC EC23082A */ fadds       f1, f3, f1
/* 805AF1B0 FC200850 */ fneg        f1, f1
/* 805AF1B4 EC210024 */ fdivs       f1, f1, f0
/* 805AF1B8 4E800020 */ blr         