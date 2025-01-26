nofralloc
/* 80590EA4 3C80809C */ lis         r4, spInstance__Q26System10RaceConfig@ha
/* 80590EA8 8084D728 */ lwz         r4, spInstance__Q26System10RaceConfig@l(r4)
/* 80590EAC 80040B68 */ lwz         r0, 0xb68(r4)
/* 80590EB0 2C00000D */ cmpwi       r0, 0xd
/* 80590EB4 4C820020 */ bnelr-      
/* 80590EB8 80630000 */ lwz         r3, 0(r3)
/* 80590EBC 80630024 */ lwz         r3, 0x24(r3)
/* 80590EC0 2C030000 */ cmpwi       r3, 0
/* 80590EC4 4D820020 */ beqlr-      
/* 80590EC8 A0030334 */ lhz         r0, 0x334(r3)
/* 80590ECC 60000040 */ ori         r0, r0, 0x40
/* 80590ED0 B0030334 */ sth         r0, 0x334(r3)
/* 80590ED4 4E800020 */ blr         