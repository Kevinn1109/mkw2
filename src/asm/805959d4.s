nofralloc
/* 805959D4 9421FFF0 */ stwu        r1, -0x10(r1)
/* 805959D8 7C0802A6 */ mflr        r0
/* 805959DC 3C80809C */ lis         r4, spInstance__Q26System11RaceManager@ha
/* 805959E0 90010014 */ stw         r0, 0x14(r1)
/* 805959E4 93E1000C */ stw         r31, 0xc(r1)
/* 805959E8 7C7F1B78 */ mr          r31, r3
/* 805959EC 8064D730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r4)
/* 805959F0 4BF9D6A1 */ bl          RaceInfo_getCountdown
/* 805959F4 2C030000 */ cmpwi       r3, 0
/* 805959F8 408200EC */ bne-        lbl_80595ae4
/* 805959FC 807F0018 */ lwz         r3, 0x18(r31)
/* 80595A00 4BFFAC65 */ bl          PlayerPointers_isCpu
/* 80595A04 2C030000 */ cmpwi       r3, 0
/* 80595A08 408200C4 */ bne-        lbl_80595acc
/* 80595A0C 3C60809C */ lis         r3, spInstance__Q26System10RaceConfig@ha
/* 80595A10 8063D728 */ lwz         r3, spInstance__Q26System10RaceConfig@l(r3)
/* 80595A14 80030B68 */ lwz         r0, 0xb68(r3)
/* 80595A18 2C000022 */ cmpwi       r0, 0x22
/* 80595A1C 418200B0 */ beq-        lbl_80595acc
/* 80595A20 2C000023 */ cmpwi       r0, 0x23
/* 80595A24 418200A8 */ beq-        lbl_80595acc
/* 80595A28 801F0004 */ lwz         r0, 4(r31)
/* 80595A2C 540007FF */ clrlwi.     r0, r0, 0x1f
/* 80595A30 4182009C */ beq-        lbl_80595acc
/* 80595A34 3C80808B */ lis         r4, lbl_808b64f8@ha
/* 80595A38 C03F009C */ lfs         f1, 0x9c(r31)
/* 80595A3C 386464F8 */ addi        r3, r4, lbl_808b64f8@l
/* 80595A40 C0030028 */ lfs         f0, 0x28(r3)
/* 80595A44 FC010040 */ fcmpo       cr0, f1, f0
/* 80595A48 40810010 */ ble-        lbl_80595a58
/* 80595A4C 3800FFFF */ li          r0, -1
/* 80595A50 901F00A0 */ stw         r0, 0xa0(r31)
/* 80595A54 48000078 */ b           lbl_80595acc
lbl_80595a58:
/* 80595A58 C00464F8 */ lfs         f0, lbl_808b64f8@l(r4)
/* 80595A5C FC010040 */ fcmpo       cr0, f1, f0
/* 80595A60 4081006C */ ble-        lbl_80595acc
/* 80595A64 38000005 */ li          r0, 5
/* 80595A68 38800001 */ li          r4, 1
/* 80595A6C 7C0903A6 */ mtctr       r0
lbl_80595a70:
/* 80595A70 54801D78 */ rlwinm      r0, r4, 3, 0x15, 0x1c
/* 80595A74 C03F009C */ lfs         f1, 0x9c(r31)
/* 80595A78 7CA30214 */ add         r5, r3, r0
/* 80595A7C C005FFF8 */ lfs         f0, -8(r5)
/* 80595A80 FC010040 */ fcmpo       cr0, f1, f0
/* 80595A84 40810040 */ ble-        lbl_80595ac4
/* 80595A88 C0050000 */ lfs         f0, 0(r5)
/* 80595A8C FC010040 */ fcmpo       cr0, f1, f0
/* 80595A90 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 80595A94 40820030 */ bne-        lbl_80595ac4
/* 80595A98 5480063E */ clrlwi      r0, r4, 0x18
/* 80595A9C 901F00A0 */ stw         r0, 0xa0(r31)
/* 80595AA0 807F0018 */ lwz         r3, 0x18(r31)
/* 80595AA4 80630000 */ lwz         r3, 0(r3)
/* 80595AA8 80630000 */ lwz         r3, 0(r3)
/* 80595AAC 80630034 */ lwz         r3, 0x34(r3)
/* 80595AB0 2C030000 */ cmpwi       r3, 0
/* 80595AB4 41820018 */ beq-        lbl_80595acc
/* 80595AB8 38000001 */ li          r0, 1
/* 80595ABC 98030000 */ stb         r0, 0(r3)
/* 80595AC0 4800000C */ b           lbl_80595acc
lbl_80595ac4:
/* 80595AC4 38840001 */ addi        r4, r4, 1
/* 80595AC8 4200FFA8 */ bdnz        lbl_80595a70
lbl_80595acc:
/* 80595ACC 809F00A0 */ lwz         r4, 0xa0(r31)
/* 80595AD0 7FE3FB78 */ mr          r3, r31
/* 80595AD4 48000025 */ bl          PlayerSub1c_applyStartBoost
/* 80595AD8 801F0010 */ lwz         r0, 0x10(r31)
/* 80595ADC 5400062C */ rlwinm      r0, r0, 0, 0x18, 0x16
/* 80595AE0 901F0010 */ stw         r0, 0x10(r31)
lbl_80595ae4:
/* 80595AE4 80010014 */ lwz         r0, 0x14(r1)
/* 80595AE8 83E1000C */ lwz         r31, 0xc(r1)
/* 80595AEC 7C0803A6 */ mtlr        r0
/* 80595AF0 38210010 */ addi        r1, r1, 0x10
/* 80595AF4 4E800020 */ blr         