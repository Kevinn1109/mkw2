nofralloc
/* 80591784 80630000 */ lwz         r3, 0(r3)
/* 80591788 80030024 */ lwz         r0, 0x24(r3)
/* 8059178C 2C000000 */ cmpwi       r0, 0
/* 80591790 4D820020 */ beqlr-      
/* 80591794 80630004 */ lwz         r3, 4(r3)
/* 80591798 48002F5C */ b           PlayerSub1c_startOobWipe
/* 8059179C 4E800020 */ blr         