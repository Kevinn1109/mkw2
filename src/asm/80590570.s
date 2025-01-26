nofralloc
/* 80590570 80830000 */ lwz         r4, 0(r3)
/* 80590574 80A40004 */ lwz         r5, 4(r4)
/* 80590578 80050008 */ lwz         r0, 8(r5)
/* 8059057C 54000001 */ rlwinm.     r0, r0, 0, 0, 0
/* 80590580 41820064 */ beq-        lbl_805905e4
/* 80590584 3C60809C */ lis         r3, spInstance__Q26System10RaceConfig@ha
/* 80590588 8063D728 */ lwz         r3, spInstance__Q26System10RaceConfig@l(r3)
/* 8059058C 80030B74 */ lwz         r0, 0xb74(r3)
/* 80590590 2C000001 */ cmpwi       r0, 1
/* 80590594 4D820020 */ beqlr-      
/* 80590598 8005000C */ lwz         r0, 0xc(r5)
/* 8059059C 54000319 */ rlwinm.     r0, r0, 0, 0xc, 0xc
/* 805905A0 4C820020 */ bnelr-      
/* 805905A4 80050004 */ lwz         r0, 4(r5)
/* 805905A8 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 805905AC 4C820020 */ bnelr-      
/* 805905B0 80840000 */ lwz         r4, 0(r4)
/* 805905B4 3C60809C */ lis         r3, spInstance__Q26System11RaceManager@ha
/* 805905B8 80A3D730 */ lwz         r5, spInstance__Q26System11RaceManager@l(r3)
/* 805905BC 3C608089 */ lis         r3, lbl_80891c5c@ha
/* 805905C0 88040010 */ lbz         r0, 0x10(r4)
/* 805905C4 38800019 */ li          r4, 0x19
/* 805905C8 80C5000C */ lwz         r6, 0xc(r5)
/* 805905CC 38A00001 */ li          r5, 1
/* 805905D0 5400103A */ slwi        r0, r0, 2
/* 805905D4 C0231C5C */ lfs         f1, lbl_80891c5c@l(r3)
/* 805905D8 7C66002E */ lwzx        r3, r6, r0
/* 805905DC 80630048 */ lwz         r3, 0x48(r3)
/* 805905E0 4BF91454 */ b           unk_80521a34
lbl_805905e4:
/* 805905E4 80C5000C */ lwz         r6, 0xc(r5)
/* 805905E8 54C00421 */ rlwinm.     r0, r6, 0, 0x10, 0x10
/* 805905EC 4D820020 */ beqlr-      
/* 805905F0 3C60809C */ lis         r3, spInstance__Q26System10RaceConfig@ha
/* 805905F4 8063D728 */ lwz         r3, spInstance__Q26System10RaceConfig@l(r3)
/* 805905F8 80030B74 */ lwz         r0, 0xb74(r3)
/* 805905FC 2C000001 */ cmpwi       r0, 1
/* 80590600 4D820020 */ beqlr-      
/* 80590604 54C00319 */ rlwinm.     r0, r6, 0, 0xc, 0xc
/* 80590608 4C820020 */ bnelr-      
/* 8059060C 80050004 */ lwz         r0, 4(r5)
/* 80590610 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 80590614 4C820020 */ bnelr-      
/* 80590618 80840000 */ lwz         r4, 0(r4)
/* 8059061C 3C60809C */ lis         r3, spInstance__Q26System11RaceManager@ha
/* 80590620 80A3D730 */ lwz         r5, spInstance__Q26System11RaceManager@l(r3)
/* 80590624 3C608089 */ lis         r3, lbl_80891c5c@ha
/* 80590628 88040010 */ lbz         r0, 0x10(r4)
/* 8059062C 3880001D */ li          r4, 0x1d
/* 80590630 80C5000C */ lwz         r6, 0xc(r5)
/* 80590634 38A00001 */ li          r5, 1
/* 80590638 5400103A */ slwi        r0, r0, 2
/* 8059063C C0231C5C */ lfs         f1, lbl_80891c5c@l(r3)
/* 80590640 7C66002E */ lwzx        r3, r6, r0
/* 80590644 80630048 */ lwz         r3, 0x48(r3)
/* 80590648 4BF913EC */ b           unk_80521a34
/* 8059064C 4E800020 */ blr         