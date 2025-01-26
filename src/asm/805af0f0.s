nofralloc
/* 805AF0F0 C0630004 */ lfs         f3, 4(r3)
/* 805AF0F4 3CA08089 */ lis         r5, lbl_8089253c@ha
/* 805AF0F8 C0440000 */ lfs         f2, 0(r4)
/* 805AF0FC 38000000 */ li          r0, 0
/* 805AF100 C0230008 */ lfs         f1, 8(r3)
/* 805AF104 C0040004 */ lfs         f0, 4(r4)
/* 805AF108 EC6300B2 */ fmuls       f3, f3, f2
/* 805AF10C C083000C */ lfs         f4, 0xc(r3)
/* 805AF110 EC410032 */ fmuls       f2, f1, f0
/* 805AF114 C0040008 */ lfs         f0, 8(r4)
/* 805AF118 C0230010 */ lfs         f1, 0x10(r3)
/* 805AF11C EC840032 */ fmuls       f4, f4, f0
/* 805AF120 C005253C */ lfs         f0, lbl_8089253c@l(r5)
/* 805AF124 EC43102A */ fadds       f2, f3, f2
/* 805AF128 EC44102A */ fadds       f2, f4, f2
/* 805AF12C EC21102A */ fadds       f1, f1, f2
/* 805AF130 FC010040 */ fcmpo       cr0, f1, f0
/* 805AF134 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 805AF138 40820008 */ bne-        lbl_805af140
/* 805AF13C 38000001 */ li          r0, 1
lbl_805af140:
/* 805AF140 7C030378 */ mr          r3, r0
/* 805AF144 4E800020 */ blr         