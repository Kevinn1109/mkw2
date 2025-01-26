nofralloc
/* 80590ED8 80630000 */ lwz         r3, 0(r3)
/* 80590EDC 80630024 */ lwz         r3, 0x24(r3)
/* 80590EE0 2C030000 */ cmpwi       r3, 0
/* 80590EE4 4D820020 */ beqlr-      
/* 80590EE8 A0030334 */ lhz         r0, 0x334(r3)
/* 80590EEC 540006B0 */ rlwinm      r0, r0, 0, 0x1a, 0x18
/* 80590EF0 B0030334 */ sth         r0, 0x334(r3)
/* 80590EF4 4E800020 */ blr         