nofralloc
/* 806DE568 80830020 */ lwz         r4, 0x20(r3)
/* 806DE56C A8040046 */ lha         r0, 0x46(r4)
/* 806DE570 80840008 */ lwz         r4, 8(r4)
/* 806DE574 54002036 */ slwi        r0, r0, 4
/* 806DE578 7C840214 */ add         r4, r4, r0
/* 806DE57C A084000C */ lhz         r4, 0xc(r4)
/* 806DE580 2C040000 */ cmpwi       r4, 0
/* 806DE584 4D820020 */ beqlr-      
/* 806DE588 38000000 */ li          r0, 0
/* 806DE58C 908300DC */ stw         r4, 0xdc(r3)
/* 806DE590 900300B8 */ stw         r0, 0xb8(r3)
/* 806DE594 4E800020 */ blr         