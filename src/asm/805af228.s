nofralloc
/* 805AF228 9421FFE0 */ stwu        r1, -0x20(r1)
/* 805AF22C 3CE08089 */ lis         r7, lbl_80892538@ha
/* 805AF230 C0250000 */ lfs         f1, 0(r5)
/* 805AF234 38E72538 */ addi        r7, r7, lbl_80892538@l
/* 805AF238 C0630004 */ lfs         f3, 4(r3)
/* 805AF23C 38000000 */ li          r0, 0
/* 805AF240 C0060000 */ lfs         f0, 0(r6)
/* 805AF244 ECA30072 */ fmuls       f5, f3, f1
/* 805AF248 C0830008 */ lfs         f4, 8(r3)
/* 805AF24C EC230032 */ fmuls       f1, f3, f0
/* 805AF250 C0450004 */ lfs         f2, 4(r5)
/* 805AF254 C0060004 */ lfs         f0, 4(r6)
/* 805AF258 EC6400B2 */ fmuls       f3, f4, f2
/* 805AF25C EC040032 */ fmuls       f0, f4, f0
/* 805AF260 C0C3000C */ lfs         f6, 0xc(r3)
/* 805AF264 C0850008 */ lfs         f4, 8(r5)
/* 805AF268 C0460008 */ lfs         f2, 8(r6)
/* 805AF26C EC65182A */ fadds       f3, f5, f3
/* 805AF270 EC860132 */ fmuls       f4, f6, f4
/* 805AF274 EC4600B2 */ fmuls       f2, f6, f2
/* 805AF278 C0A70018 */ lfs         f5, 0x18(r7)
/* 805AF27C EC01002A */ fadds       f0, f1, f0
/* 805AF280 EC64182A */ fadds       f3, f4, f3
/* 805AF284 EC42002A */ fadds       f2, f2, f0
/* 805AF288 FC031000 */ fcmpu       cr0, f3, f2
/* 805AF28C 40820008 */ bne-        lbl_805af294
/* 805AF290 48000018 */ b           lbl_805af2a8
lbl_805af294:
/* 805AF294 C0230010 */ lfs         f1, 0x10(r3)
/* 805AF298 EC031028 */ fsubs       f0, f3, f2
/* 805AF29C EC22082A */ fadds       f1, f2, f1
/* 805AF2A0 FC200850 */ fneg        f1, f1
/* 805AF2A4 ECA10024 */ fdivs       f5, f1, f0
lbl_805af2a8:
/* 805AF2A8 C0070004 */ lfs         f0, 4(r7)
/* 805AF2AC FC050040 */ fcmpo       cr0, f5, f0
/* 805AF2B0 4C411382 */ cror        cr0eq, cr0gt, cr0eq
/* 805AF2B4 40820070 */ bne-        lbl_805af324
/* 805AF2B8 C0070000 */ lfs         f0, 0(r7)
/* 805AF2BC FC050040 */ fcmpo       cr0, f5, f0
/* 805AF2C0 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 805AF2C4 40820060 */ bne-        lbl_805af324
/* 805AF2C8 C0460000 */ lfs         f2, 0(r6)
/* 805AF2CC EC202828 */ fsubs       f1, f0, f5
/* 805AF2D0 C0E50000 */ lfs         f7, 0(r5)
/* 805AF2D4 38000001 */ li          r0, 1
/* 805AF2D8 C0060004 */ lfs         f0, 4(r6)
/* 805AF2DC EC623828 */ fsubs       f3, f2, f7
/* 805AF2E0 C0C50004 */ lfs         f6, 4(r5)
/* 805AF2E4 C0460008 */ lfs         f2, 8(r6)
/* 805AF2E8 EC803028 */ fsubs       f4, f0, f6
/* 805AF2EC C0A50008 */ lfs         f5, 8(r5)
/* 805AF2F0 EC030072 */ fmuls       f0, f3, f1
/* 805AF2F4 EC622828 */ fsubs       f3, f2, f5
/* 805AF2F8 EC840072 */ fmuls       f4, f4, f1
/* 805AF2FC D0010008 */ stfs        f0, 8(r1)
/* 805AF300 EC47002A */ fadds       f2, f7, f0
/* 805AF304 EC630072 */ fmuls       f3, f3, f1
/* 805AF308 D081000C */ stfs        f4, 0xc(r1)
/* 805AF30C EC26202A */ fadds       f1, f6, f4
/* 805AF310 D0610010 */ stfs        f3, 0x10(r1)
/* 805AF314 EC05182A */ fadds       f0, f5, f3
/* 805AF318 D0440000 */ stfs        f2, 0(r4)
/* 805AF31C D0240004 */ stfs        f1, 4(r4)
/* 805AF320 D0040008 */ stfs        f0, 8(r4)
lbl_805af324:
/* 805AF324 7C030378 */ mr          r3, r0
/* 805AF328 38210020 */ addi        r1, r1, 0x20
/* 805AF32C 4E800020 */ blr         