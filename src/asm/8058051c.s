nofralloc
/* 8058051C 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80580520 7C0802A6 */ mflr        r0
/* 80580524 90010014 */ stw         r0, 0x14(r1)
/* 80580528 93E1000C */ stw         r31, 0xc(r1)
/* 8058052C 7C7F1B78 */ mr          r31, r3
/* 80580530 48010F1D */ bl          kartNetReceiver__Q24Kart15KartObjectProxyFv
/* 80580534 3C80809C */ lis         r4, spInstance__Q26System10RaceConfig@ha
/* 80580538 88C300A4 */ lbz         r6, 0xa4(r3)
/* 8058053C 8084D728 */ lwz         r4, spInstance__Q26System10RaceConfig@l(r4)
/* 80580540 38600000 */ li          r3, 0
/* 80580544 38A00000 */ li          r5, 0
/* 80580548 80840B70 */ lwz         r4, 0xb70(r4)
/* 8058054C 3804FFFD */ addi        r0, r4, -3
/* 80580550 28000007 */ cmplwi      r0, 7
/* 80580554 41810018 */ bgt-        lbl_8058056c
/* 80580558 38800001 */ li          r4, 1
/* 8058055C 7C800030 */ slw         r0, r4, r0
/* 80580560 700000C1 */ andi.       r0, r0, 0xc1
/* 80580564 41820008 */ beq-        lbl_8058056c
/* 80580568 7C852378 */ mr          r5, r4
lbl_8058056c:
/* 8058056C 2C050000 */ cmpwi       r5, 0
/* 80580570 4182001C */ beq-        lbl_8058058c
/* 80580574 7FE3FB78 */ mr          r3, r31
/* 80580578 388001C2 */ li          r4, 0x1c2
/* 8058057C 38A00000 */ li          r5, 0
/* 80580580 38C00000 */ li          r6, 0
/* 80580584 480001F5 */ bl          PlayerSub10_applyLightningEffect
/* 80580588 48000050 */ b           lbl_805805d8
lbl_8058058c:
/* 8058058C 2C060000 */ cmpwi       r6, 0
/* 80580590 41820048 */ beq-        lbl_805805d8
/* 80580594 2806000C */ cmplwi      r6, 0xc
/* 80580598 41810040 */ bgt-        lbl_805805d8
/* 8058059C 3C60809C */ lis         r3, lbl_809c18f8@ha
/* 805805A0 3806000B */ addi        r0, r6, 0xb
/* 805805A4 80A318F8 */ lwz         r5, lbl_809c18f8@l(r3)
/* 805805A8 3C808089 */ lis         r4, lbl_80891a20@ha
/* 805805AC 38841A20 */ addi        r4, r4, lbl_80891a20@l
/* 805805B0 7FE3FB78 */ mr          r3, r31
/* 805805B4 88E50024 */ lbz         r7, 0x24(r5)
/* 805805B8 38A00000 */ li          r5, 0
/* 805805BC 38C00000 */ li          r6, 0
/* 805805C0 7C070050 */ subf        r0, r7, r0
/* 805805C4 5400083C */ slwi        r0, r0, 1
/* 805805C8 7C8402AE */ lhax        r4, r4, r0
/* 805805CC 38040048 */ addi        r0, r4, 0x48
/* 805805D0 7C040734 */ extsh       r4, r0
/* 805805D4 480001A5 */ bl          PlayerSub10_applyLightningEffect
lbl_805805d8:
/* 805805D8 80010014 */ lwz         r0, 0x14(r1)
/* 805805DC 83E1000C */ lwz         r31, 0xc(r1)
/* 805805E0 7C0803A6 */ mtlr        r0
/* 805805E4 38210010 */ addi        r1, r1, 0x10
/* 805805E8 4E800020 */ blr         