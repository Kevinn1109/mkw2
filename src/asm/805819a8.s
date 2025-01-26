nofralloc
/* 805819A8 9421FFF0 */ stwu        r1, -0x10(r1)
/* 805819AC 7C0802A6 */ mflr        r0
/* 805819B0 3C80809C */ lis         r4, spInstance__Q26System10RaceConfig@ha
/* 805819B4 38A00000 */ li          r5, 0
/* 805819B8 90010014 */ stw         r0, 0x14(r1)
/* 805819BC 8084D728 */ lwz         r4, spInstance__Q26System10RaceConfig@l(r4)
/* 805819C0 80840B70 */ lwz         r4, 0xb70(r4)
/* 805819C4 3804FFFD */ addi        r0, r4, -3
/* 805819C8 28000007 */ cmplwi      r0, 7
/* 805819CC 41810018 */ bgt-        lbl_805819e4
/* 805819D0 38800001 */ li          r4, 1
/* 805819D4 7C800030 */ slw         r0, r4, r0
/* 805819D8 700000C1 */ andi.       r0, r0, 0xc1
/* 805819DC 41820008 */ beq-        lbl_805819e4
/* 805819E0 7C852378 */ mr          r5, r4
lbl_805819e4:
/* 805819E4 2C050000 */ cmpwi       r5, 0
/* 805819E8 4182002C */ beq-        lbl_80581a14
/* 805819EC 80A30000 */ lwz         r5, 0(r3)
/* 805819F0 3C80808B */ lis         r4, lbl_808b5a14@ha
/* 805819F4 80A50004 */ lwz         r5, 4(r5)
/* 805819F8 80050008 */ lwz         r0, 8(r5)
/* 805819FC 60000100 */ ori         r0, r0, 0x100
/* 80581A00 90050008 */ stw         r0, 8(r5)
/* 80581A04 A8045A14 */ lha         r0, lbl_808b5a14@l(r4)
/* 80581A08 B00301A8 */ sth         r0, 0x1a8(r3)
/* 80581A0C 4800F681 */ bl          kartBlink__Q24Kart15KartObjectProxyFv
/* 80581A10 4BFE88E1 */ bl          unk_8056a2f0
lbl_80581a14:
/* 80581A14 80010014 */ lwz         r0, 0x14(r1)
/* 80581A18 7C0803A6 */ mtlr        r0
/* 80581A1C 38210010 */ addi        r1, r1, 0x10
/* 80581A20 4E800020 */ blr         