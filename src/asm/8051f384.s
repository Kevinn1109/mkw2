nofralloc
/* 8051F384 5460063E */ clrlwi      r0, r3, 0x18
/* 8051F388 3CA0809C */ lis         r5, spInstance__Q26System12KPadDirector@ha
/* 8051F38C 1C600920 */ mulli       r3, r0, 0x920
/* 8051F390 80A5D70C */ lwz         r5, spInstance__Q26System12KPadDirector@l(r5)
/* 8051F394 2C040000 */ cmpwi       r4, 0
/* 8051F398 38000000 */ li          r0, 0
/* 8051F39C 7C651A14 */ add         r3, r5, r3
/* 8051F3A0 98031778 */ stb         r0, 0x1778(r3)
/* 8051F3A4 4C820020 */ bnelr-      
/* 8051F3A8 88032014 */ lbz         r0, 0x2014(r3)
/* 8051F3AC 90031774 */ stw         r0, 0x1774(r3)
/* 8051F3B0 4E800020 */ blr         