nofralloc
/* 8057ED34 800300CC */ lwz         r0, 0xcc(r3)
/* 8057ED38 7CA72B78 */ mr          r7, r5
/* 8057ED3C 2C00FFFF */ cmpwi       r0, -1
/* 8057ED40 4082000C */ bne-        lbl_8057ed4c
/* 8057ED44 7CC73378 */ mr          r7, r6
/* 8057ED48 7CA62B78 */ mr          r6, r5
lbl_8057ed4c:
/* 8057ED4C 80630000 */ lwz         r3, 0(r3)
/* 8057ED50 FC000850 */ fneg        f0, f1
/* 8057ED54 80630004 */ lwz         r3, 4(r3)
/* 8057ED58 C0430088 */ lfs         f2, 0x88(r3)
/* 8057ED5C FC020040 */ fcmpo       cr0, f2, f0
/* 8057ED60 40800014 */ bge-        lbl_8057ed74
/* 8057ED64 A8040000 */ lha         r0, 0(r4)
/* 8057ED68 7C003A14 */ add         r0, r0, r7
/* 8057ED6C B0040000 */ sth         r0, 0(r4)
/* 8057ED70 4E800020 */ blr         
lbl_8057ed74:
/* 8057ED74 FC020840 */ fcmpo       cr0, f2, f1
/* 8057ED78 4C810020 */ blelr-      
/* 8057ED7C A8040000 */ lha         r0, 0(r4)
/* 8057ED80 7C003214 */ add         r0, r0, r6
/* 8057ED84 B0040000 */ sth         r0, 0(r4)
/* 8057ED88 4E800020 */ blr         