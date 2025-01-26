nofralloc
/* 80580438 9421FFF0 */ stwu        r1, -0x10(r1)
/* 8058043C 7C0802A6 */ mflr        r0
/* 80580440 90010014 */ stw         r0, 0x14(r1)
/* 80580444 93E1000C */ stw         r31, 0xc(r1)
/* 80580448 7C7F1B78 */ mr          r31, r3
/* 8058044C 48010611 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80580450 3CA0809C */ lis         r5, spInstance__Q26System11RaceManager@ha
/* 80580454 3C80809C */ lis         r4, spInstance__Q26System10RaceConfig@ha
/* 80580458 80A5D730 */ lwz         r5, spInstance__Q26System11RaceManager@l(r5)
/* 8058045C 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 80580460 8084D728 */ lwz         r4, spInstance__Q26System10RaceConfig@l(r4)
/* 80580464 38600000 */ li          r3, 0
/* 80580468 80C5000C */ lwz         r6, 0xc(r5)
/* 8058046C 38A00000 */ li          r5, 0
/* 80580470 80840B70 */ lwz         r4, 0xb70(r4)
/* 80580474 7CC6002E */ lwzx        r6, r6, r0
/* 80580478 3804FFFD */ addi        r0, r4, -3
/* 8058047C 28000007 */ cmplwi      r0, 7
/* 80580480 88C60020 */ lbz         r6, 0x20(r6)
/* 80580484 41810018 */ bgt-        lbl_8058049c
/* 80580488 38800001 */ li          r4, 1
/* 8058048C 7C800030 */ slw         r0, r4, r0
/* 80580490 700000C1 */ andi.       r0, r0, 0xc1
/* 80580494 41820008 */ beq-        lbl_8058049c
/* 80580498 7C852378 */ mr          r5, r4
lbl_8058049c:
/* 8058049C 2C050000 */ cmpwi       r5, 0
/* 805804A0 4182001C */ beq-        lbl_805804bc
/* 805804A4 7FE3FB78 */ mr          r3, r31
/* 805804A8 388001C2 */ li          r4, 0x1c2
/* 805804AC 38A00000 */ li          r5, 0
/* 805804B0 38C00000 */ li          r6, 0
/* 805804B4 480002C5 */ bl          PlayerSub10_applyLightningEffect
/* 805804B8 48000050 */ b           lbl_80580508
lbl_805804bc:
/* 805804BC 2C060000 */ cmpwi       r6, 0
/* 805804C0 41820048 */ beq-        lbl_80580508
/* 805804C4 2806000C */ cmplwi      r6, 0xc
/* 805804C8 41810040 */ bgt-        lbl_80580508
/* 805804CC 3C60809C */ lis         r3, lbl_809c18f8@ha
/* 805804D0 3806000B */ addi        r0, r6, 0xb
/* 805804D4 80A318F8 */ lwz         r5, lbl_809c18f8@l(r3)
/* 805804D8 3C808089 */ lis         r4, lbl_80891a20@ha
/* 805804DC 38841A20 */ addi        r4, r4, lbl_80891a20@l
/* 805804E0 7FE3FB78 */ mr          r3, r31
/* 805804E4 88E50024 */ lbz         r7, 0x24(r5)
/* 805804E8 38A00000 */ li          r5, 0
/* 805804EC 38C00000 */ li          r6, 0
/* 805804F0 7C070050 */ subf        r0, r7, r0
/* 805804F4 5400083C */ slwi        r0, r0, 1
/* 805804F8 7C8402AE */ lhax        r4, r4, r0
/* 805804FC 38040048 */ addi        r0, r4, 0x48
/* 80580500 7C040734 */ extsh       r4, r0
/* 80580504 48000275 */ bl          PlayerSub10_applyLightningEffect
lbl_80580508:
/* 80580508 80010014 */ lwz         r0, 0x14(r1)
/* 8058050C 83E1000C */ lwz         r31, 0xc(r1)
/* 80580510 7C0803A6 */ mtlr        r0
/* 80580514 38210010 */ addi        r1, r1, 0x10
/* 80580518 4E800020 */ blr         