nofralloc
/* 80590478 80A30000 */ lwz         r5, 0(r3)
/* 8059047C 80C50004 */ lwz         r6, 4(r5)
/* 80590480 80060008 */ lwz         r0, 8(r6)
/* 80590484 54000001 */ rlwinm.     r0, r0, 0, 0, 0
/* 80590488 41820070 */ beq-        lbl_805904f8
/* 8059048C 3C60809C */ lis         r3, spInstance__Q26System10RaceConfig@ha
/* 80590490 8063D728 */ lwz         r3, spInstance__Q26System10RaceConfig@l(r3)
/* 80590494 80030B74 */ lwz         r0, 0xb74(r3)
/* 80590498 2C000001 */ cmpwi       r0, 1
/* 8059049C 4D820020 */ beqlr-      
/* 805904A0 8006000C */ lwz         r0, 0xc(r6)
/* 805904A4 54000319 */ rlwinm.     r0, r0, 0, 0xc, 0xc
/* 805904A8 4C820020 */ bnelr-      
/* 805904AC 80060004 */ lwz         r0, 4(r6)
/* 805904B0 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 805904B4 4C820020 */ bnelr-      
/* 805904B8 80A50000 */ lwz         r5, 0(r5)
/* 805904BC 3C60809C */ lis         r3, spInstance__Q26System11RaceManager@ha
/* 805904C0 8063D730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r3)
/* 805904C4 2C040000 */ cmpwi       r4, 0
/* 805904C8 88050010 */ lbz         r0, 0x10(r5)
/* 805904CC 38800019 */ li          r4, 0x19
/* 805904D0 8063000C */ lwz         r3, 0xc(r3)
/* 805904D4 5400103A */ slwi        r0, r0, 2
/* 805904D8 7C63002E */ lwzx        r3, r3, r0
/* 805904DC 80630048 */ lwz         r3, 0x48(r3)
/* 805904E0 41820008 */ beq-        lbl_805904e8
/* 805904E4 3880001A */ li          r4, 0x1a
lbl_805904e8:
/* 805904E8 3CA08089 */ lis         r5, lbl_80891c5c@ha
/* 805904EC C0251C5C */ lfs         f1, lbl_80891c5c@l(r5)
/* 805904F0 38A00001 */ li          r5, 1
/* 805904F4 4BF91540 */ b           unk_80521a34
lbl_805904f8:
/* 805904F8 80E6000C */ lwz         r7, 0xc(r6)
/* 805904FC 54E00421 */ rlwinm.     r0, r7, 0, 0x10, 0x10
/* 80590500 4D820020 */ beqlr-      
/* 80590504 3C60809C */ lis         r3, spInstance__Q26System10RaceConfig@ha
/* 80590508 8063D728 */ lwz         r3, spInstance__Q26System10RaceConfig@l(r3)
/* 8059050C 80030B74 */ lwz         r0, 0xb74(r3)
/* 80590510 2C000001 */ cmpwi       r0, 1
/* 80590514 4D820020 */ beqlr-      
/* 80590518 54E00319 */ rlwinm.     r0, r7, 0, 0xc, 0xc
/* 8059051C 4C820020 */ bnelr-      
/* 80590520 80060004 */ lwz         r0, 4(r6)
/* 80590524 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 80590528 4C820020 */ bnelr-      
/* 8059052C 80A50000 */ lwz         r5, 0(r5)
/* 80590530 3C60809C */ lis         r3, spInstance__Q26System11RaceManager@ha
/* 80590534 8063D730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r3)
/* 80590538 2C040000 */ cmpwi       r4, 0
/* 8059053C 88050010 */ lbz         r0, 0x10(r5)
/* 80590540 3880001D */ li          r4, 0x1d
/* 80590544 8063000C */ lwz         r3, 0xc(r3)
/* 80590548 5400103A */ slwi        r0, r0, 2
/* 8059054C 7C63002E */ lwzx        r3, r3, r0
/* 80590550 80630048 */ lwz         r3, 0x48(r3)
/* 80590554 41820008 */ beq-        lbl_8059055c
/* 80590558 3880001E */ li          r4, 0x1e
lbl_8059055c:
/* 8059055C 3CA08089 */ lis         r5, lbl_80891c5c@ha
/* 80590560 C0251C5C */ lfs         f1, lbl_80891c5c@l(r5)
/* 80590564 38A00001 */ li          r5, 1
/* 80590568 4BF914CC */ b           unk_80521a34
/* 8059056C 4E800020 */ blr         