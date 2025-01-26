nofralloc
/* 8057D1D4 9421FFD0 */ stwu        r1, -0x30(r1)
/* 8057D1D8 7C0802A6 */ mflr        r0
/* 8057D1DC 90010034 */ stw         r0, 0x34(r1)
/* 8057D1E0 DBE10020 */ stfd        f31, 0x20(r1)
/* 8057D1E4 F3E10028 */ psq_st      f31, 0x28(r1), 0, 0
/* 8057D1E8 3CC0808B */ lis         r6, lbl_808b58f0@ha
/* 8057D1EC 38C658F0 */ addi        r6, r6, lbl_808b58f0@l
/* 8057D1F0 93E1001C */ stw         r31, 0x1c(r1)
/* 8057D1F4 3FE08089 */ lis         r31, lbl_80891a00@ha
/* 8057D1F8 3BFF1A00 */ addi        r31, r31, lbl_80891a00@l
/* 8057D1FC 93C10018 */ stw         r30, 0x18(r1)
/* 8057D200 7C7E1B78 */ mr          r30, r3
/* 8057D204 C3FF0000 */ lfs         f31, 0(r31)
/* 8057D208 80A30000 */ lwz         r5, 0(r3)
/* 8057D20C C09F0004 */ lfs         f4, 4(r31)
/* 8057D210 80E50004 */ lwz         r7, 4(r5)
/* 8057D214 81070004 */ lwz         r8, 4(r7)
/* 8057D218 5500035B */ rlwinm.     r0, r8, 0, 0xd, 0xd
/* 8057D21C 41820108 */ beq-        lbl_8057d324
/* 8057D220 3C80809C */ lis         r4, spInstance__Q26System11RaceManager@ha
/* 8057D224 8084D730 */ lwz         r4, spInstance__Q26System11RaceManager@l(r4)
/* 8057D228 80040028 */ lwz         r0, 0x28(r4)
/* 8057D22C 2C000001 */ cmpwi       r0, 1
/* 8057D230 4082001C */ bne-        lbl_8057d24c
/* 8057D234 80850004 */ lwz         r4, 4(r5)
/* 8057D238 C006005C */ lfs         f0, 0x5c(r6)
/* 8057D23C C024009C */ lfs         f1, 0x9c(r4)
/* 8057D240 FC200850 */ fneg        f1, f1
/* 8057D244 EFE00072 */ fmuls       f31, f0, f1
/* 8057D248 480000DC */ b           lbl_8057d324
lbl_8057d24c:
/* 8057D24C 80070008 */ lwz         r0, 8(r7)
/* 8057D250 5400018D */ rlwinm.     r0, r0, 0, 6, 6
/* 8057D254 41820050 */ beq-        lbl_8057d2a4
/* 8057D258 A8A3014C */ lha         r5, 0x14c(r3)
/* 8057D25C 3C804330 */ lis         r4, 0x4330
/* 8057D260 A8060248 */ lha         r0, 0x248(r6)
/* 8057D264 6CA58000 */ xoris       r5, r5, 0x8000
/* 8057D268 90A1000C */ stw         r5, 0xc(r1)
/* 8057D26C 6C008000 */ xoris       r0, r0, 0x8000
/* 8057D270 C87F0060 */ lfd         f3, 0x60(r31)
/* 8057D274 90810008 */ stw         r4, 8(r1)
/* 8057D278 C006005C */ lfs         f0, 0x5c(r6)
/* 8057D27C C8210008 */ lfd         f1, 8(r1)
/* 8057D280 90010014 */ stw         r0, 0x14(r1)
/* 8057D284 EC411828 */ fsubs       f2, f1, f3
/* 8057D288 90810010 */ stw         r4, 0x10(r1)
/* 8057D28C C8210010 */ lfd         f1, 0x10(r1)
/* 8057D290 FC401050 */ fneg        f2, f2
/* 8057D294 EC211828 */ fsubs       f1, f1, f3
/* 8057D298 EC220824 */ fdivs       f1, f2, f1
/* 8057D29C EFE00072 */ fmuls       f31, f0, f1
/* 8057D2A0 48000084 */ b           lbl_8057d324
lbl_8057d2a4:
/* 8057D2A4 55000003 */ rlwinm.     r0, r8, 0, 0, 1
/* 8057D2A8 4082007C */ bne-        lbl_8057d324
/* 8057D2AC 80070010 */ lwz         r0, 0x10(r7)
/* 8057D2B0 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 8057D2B4 40820070 */ bne-        lbl_8057d324
/* 8057D2B8 C0260058 */ lfs         f1, 0x58(r6)
/* 8057D2BC C0430020 */ lfs         f2, 0x20(r3)
/* 8057D2C0 C0630024 */ lfs         f3, 0x24(r3)
/* 8057D2C4 FC000850 */ fneg        f0, f1
/* 8057D2C8 EC431028 */ fsubs       f2, f3, f2
/* 8057D2CC FC001040 */ fcmpo       cr0, f0, f2
/* 8057D2D0 4081000C */ ble-        lbl_8057d2dc
/* 8057D2D4 FC400090 */ fmr         f2, f0
/* 8057D2D8 48000010 */ b           lbl_8057d2e8
lbl_8057d2dc:
/* 8057D2DC FC011040 */ fcmpo       cr0, f1, f2
/* 8057D2E0 40800008 */ bge-        lbl_8057d2e8
/* 8057D2E4 FC400890 */ fmr         f2, f1
lbl_8057d2e8:
/* 8057D2E8 C006004C */ lfs         f0, 0x4c(r6)
/* 8057D2EC 5500014B */ rlwinm.     r0, r8, 0, 5, 5
/* 8057D2F0 EFE20032 */ fmuls       f31, f2, f0
/* 8057D2F4 41820020 */ beq-        lbl_8057d314
/* 8057D2F8 C0060054 */ lfs         f0, 0x54(r6)
/* 8057D2FC 55000085 */ rlwinm.     r0, r8, 0, 2, 2
/* 8057D300 EFFF0032 */ fmuls       f31, f31, f0
/* 8057D304 41820018 */ beq-        lbl_8057d31c
/* 8057D308 C01F001C */ lfs         f0, 0x1c(r31)
/* 8057D30C EFFF0032 */ fmuls       f31, f31, f0
/* 8057D310 4800000C */ b           lbl_8057d31c
lbl_8057d314:
/* 8057D314 C0060050 */ lfs         f0, 0x50(r6)
/* 8057D318 EFFF0032 */ fmuls       f31, f31, f0
lbl_8057d31c:
/* 8057D31C 80830284 */ lwz         r4, 0x284(r3)
/* 8057D320 C084000C */ lfs         f4, 0xc(r4)
lbl_8057d324:
/* 8057D324 A0030254 */ lhz         r0, 0x254(r3)
/* 8057D328 540005EF */ rlwinm.     r0, r0, 0, 0x17, 0x17
/* 8057D32C 4182002C */ beq-        lbl_8057d358
/* 8057D330 7FC3F378 */ mr          r3, r30
/* 8057D334 48013739 */ bl          PlayerPointers_isBike
/* 8057D338 2C030000 */ cmpwi       r3, 0
/* 8057D33C 4082000C */ bne-        lbl_8057d348
/* 8057D340 C01F0018 */ lfs         f0, 0x18(r31)
/* 8057D344 48000008 */ b           lbl_8057d34c
lbl_8057d348:
/* 8057D348 C01F00A4 */ lfs         f0, 0xa4(r31)
lbl_8057d34c:
/* 8057D34C EC1F0032 */ fmuls       f0, f31, f0
/* 8057D350 D01E00F8 */ stfs        f0, 0xf8(r30)
/* 8057D354 48000020 */ b           lbl_8057d374
lbl_8057d358:
/* 8057D358 C0030184 */ lfs         f0, 0x184(r3)
/* 8057D35C C02300F8 */ lfs         f1, 0xf8(r3)
/* 8057D360 EC1F0032 */ fmuls       f0, f31, f0
/* 8057D364 EC000828 */ fsubs       f0, f0, f1
/* 8057D368 EC040032 */ fmuls       f0, f4, f0
/* 8057D36C EC01002A */ fadds       f0, f1, f0
/* 8057D370 D00300F8 */ stfs        f0, 0xf8(r3)
lbl_8057d374:
/* 8057D374 C03E00F8 */ lfs         f1, 0xf8(r30)
/* 8057D378 E3E10028 */ psq_l       f31, 0x28(r1), 0, 0
/* 8057D37C CBE10020 */ lfd         f31, 0x20(r1)
/* 8057D380 83E1001C */ lwz         r31, 0x1c(r1)
/* 8057D384 83C10018 */ lwz         r30, 0x18(r1)
/* 8057D388 80010034 */ lwz         r0, 0x34(r1)
/* 8057D38C 7C0803A6 */ mtlr        r0
/* 8057D390 38210030 */ addi        r1, r1, 0x30
/* 8057D394 4E800020 */ blr         