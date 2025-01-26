nofralloc
/* 8059041C 3CC0809C */ lis         r6, spInstance__Q26System10RaceConfig@ha
/* 80590420 80C6D728 */ lwz         r6, spInstance__Q26System10RaceConfig@l(r6)
/* 80590424 80060B74 */ lwz         r0, 0xb74(r6)
/* 80590428 2C000001 */ cmpwi       r0, 1
/* 8059042C 4D820020 */ beqlr-      
/* 80590430 80630000 */ lwz         r3, 0(r3)
/* 80590434 80C30004 */ lwz         r6, 4(r3)
/* 80590438 8006000C */ lwz         r0, 0xc(r6)
/* 8059043C 54000319 */ rlwinm.     r0, r0, 0, 0xc, 0xc
/* 80590440 4C820020 */ bnelr-      
/* 80590444 80060004 */ lwz         r0, 4(r6)
/* 80590448 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 8059044C 4C820020 */ bnelr-      
/* 80590450 80630000 */ lwz         r3, 0(r3)
/* 80590454 3CC0809C */ lis         r6, spInstance__Q26System11RaceManager@ha
/* 80590458 80C6D730 */ lwz         r6, spInstance__Q26System11RaceManager@l(r6)
/* 8059045C 88030010 */ lbz         r0, 0x10(r3)
/* 80590460 8066000C */ lwz         r3, 0xc(r6)
/* 80590464 5400103A */ slwi        r0, r0, 2
/* 80590468 7C63002E */ lwzx        r3, r3, r0
/* 8059046C 80630048 */ lwz         r3, 0x48(r3)
/* 80590470 4BF915C4 */ b           unk_80521a34
/* 80590474 4E800020 */ blr         