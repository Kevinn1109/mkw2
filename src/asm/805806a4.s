nofralloc
/* 805806A4 9421FFF0 */ stwu        r1, -0x10(r1)
/* 805806A8 7C0802A6 */ mflr        r0
/* 805806AC 3CE0809C */ lis         r7, spInstance__Q26System10RaceConfig@ha
/* 805806B0 7CA92B78 */ mr          r9, r5
/* 805806B4 90010014 */ stw         r0, 0x14(r1)
/* 805806B8 39000000 */ li          r8, 0
/* 805806BC 80E7D728 */ lwz         r7, spInstance__Q26System10RaceConfig@l(r7)
/* 805806C0 80A70B70 */ lwz         r5, 0xb70(r7)
/* 805806C4 38E00000 */ li          r7, 0
/* 805806C8 3805FFFD */ addi        r0, r5, -3
/* 805806CC 28000007 */ cmplwi      r0, 7
/* 805806D0 41810018 */ bgt-        lbl_805806e8
/* 805806D4 38A00001 */ li          r5, 1
/* 805806D8 7CA00030 */ slw         r0, r5, r0
/* 805806DC 700000C1 */ andi.       r0, r0, 0xc1
/* 805806E0 41820008 */ beq-        lbl_805806e8
/* 805806E4 7CA72B78 */ mr          r7, r5
lbl_805806e8:
/* 805806E8 2C070000 */ cmpwi       r7, 0
/* 805806EC 4182001C */ beq-        lbl_80580708
/* 805806F0 7C852378 */ mr          r5, r4
/* 805806F4 7D264B78 */ mr          r6, r9
/* 805806F8 388001C2 */ li          r4, 0x1c2
/* 805806FC 4800007D */ bl          PlayerSub10_applyLightningEffect
/* 80580700 7C681B78 */ mr          r8, r3
/* 80580704 48000050 */ b           lbl_80580754
lbl_80580708:
/* 80580708 2C060000 */ cmpwi       r6, 0
/* 8058070C 41820048 */ beq-        lbl_80580754
/* 80580710 2806000C */ cmplwi      r6, 0xc
/* 80580714 41810040 */ bgt-        lbl_80580754
/* 80580718 3CA0809C */ lis         r5, lbl_809c18f8@ha
/* 8058071C 3806000B */ addi        r0, r6, 0xb
/* 80580720 80A518F8 */ lwz         r5, lbl_809c18f8@l(r5)
/* 80580724 3CE08089 */ lis         r7, lbl_80891a20@ha
/* 80580728 38E71A20 */ addi        r7, r7, lbl_80891a20@l
/* 8058072C 7D264B78 */ mr          r6, r9
/* 80580730 89050024 */ lbz         r8, 0x24(r5)
/* 80580734 7C852378 */ mr          r5, r4
/* 80580738 7C080050 */ subf        r0, r8, r0
/* 8058073C 5400083C */ slwi        r0, r0, 1
/* 80580740 7C8702AE */ lhax        r4, r7, r0
/* 80580744 38040048 */ addi        r0, r4, 0x48
/* 80580748 7C040734 */ extsh       r4, r0
/* 8058074C 4800002D */ bl          PlayerSub10_applyLightningEffect
/* 80580750 7C681B78 */ mr          r8, r3
lbl_80580754:
/* 80580754 80010014 */ lwz         r0, 0x14(r1)
/* 80580758 7D034378 */ mr          r3, r8
/* 8058075C 7C0803A6 */ mtlr        r0
/* 80580760 38210010 */ addi        r1, r1, 0x10
/* 80580764 4E800020 */ blr         