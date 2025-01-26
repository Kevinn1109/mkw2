nofralloc
/* 8057ED8C A80300FC */ lha         r0, 0xfc(r3)
/* 8057ED90 39400000 */ li          r10, 0
/* 8057ED94 7C002000 */ cmpw        r0, r4
/* 8057ED98 408200B0 */ bne-        lbl_8057ee48
/* 8057ED9C A8050000 */ lha         r0, 0(r5)
/* 8057EDA0 3C80808B */ lis         r4, lbl_808b5cc8@ha
/* 8057EDA4 3D00809C */ lis         r8, lbl_809c18e0@ha
/* 8057EDA8 3D20808B */ lis         r9, lbl_808b5ccc@ha
/* 8057EDAC 7C003214 */ add         r0, r0, r6
/* 8057EDB0 B0050000 */ sth         r0, 0(r5)
/* 8057EDB4 800300CC */ lwz         r0, 0xcc(r3)
/* 8057EDB8 A8845CC8 */ lha         r4, lbl_808b5cc8@l(r4)
/* 8057EDBC 2C00FFFF */ cmpwi       r0, -1
/* 8057EDC0 A90818E0 */ lha         r8, lbl_809c18e0@l(r8)
/* 8057EDC4 C0295CCC */ lfs         f1, lbl_808b5ccc@l(r9)
/* 8057EDC8 7C862378 */ mr          r6, r4
/* 8057EDCC 4082000C */ bne-        lbl_8057edd8
/* 8057EDD0 7D064378 */ mr          r6, r8
/* 8057EDD4 7C882378 */ mr          r8, r4
lbl_8057edd8:
/* 8057EDD8 80830000 */ lwz         r4, 0(r3)
/* 8057EDDC FC000850 */ fneg        f0, f1
/* 8057EDE0 80840004 */ lwz         r4, 4(r4)
/* 8057EDE4 C0440088 */ lfs         f2, 0x88(r4)
/* 8057EDE8 FC020040 */ fcmpo       cr0, f2, f0
/* 8057EDEC 40800014 */ bge-        lbl_8057ee00
/* 8057EDF0 A8050000 */ lha         r0, 0(r5)
/* 8057EDF4 7C003214 */ add         r0, r0, r6
/* 8057EDF8 B0050000 */ sth         r0, 0(r5)
/* 8057EDFC 48000018 */ b           lbl_8057ee14
lbl_8057ee00:
/* 8057EE00 FC020840 */ fcmpo       cr0, f2, f1
/* 8057EE04 40810010 */ ble-        lbl_8057ee14
/* 8057EE08 A8050000 */ lha         r0, 0(r5)
/* 8057EE0C 7C004214 */ add         r0, r0, r8
/* 8057EE10 B0050000 */ sth         r0, 0(r5)
lbl_8057ee14:
/* 8057EE14 A8050000 */ lha         r0, 0(r5)
/* 8057EE18 7C070000 */ cmpw        r7, r0
/* 8057EE1C 40800010 */ bge-        lbl_8057ee2c
/* 8057EE20 B0E50000 */ sth         r7, 0(r5)
/* 8057EE24 38000001 */ li          r0, 1
/* 8057EE28 48000008 */ b           lbl_8057ee30
lbl_8057ee2c:
/* 8057EE2C 38000000 */ li          r0, 0
lbl_8057ee30:
/* 8057EE30 2C000000 */ cmpwi       r0, 0
/* 8057EE34 41820014 */ beq-        lbl_8057ee48
/* 8057EE38 A88300FC */ lha         r4, 0xfc(r3)
/* 8057EE3C 39400001 */ li          r10, 1
/* 8057EE40 38040001 */ addi        r0, r4, 1
/* 8057EE44 B00300FC */ sth         r0, 0xfc(r3)
lbl_8057ee48:
/* 8057EE48 7D435378 */ mr          r3, r10
/* 8057EE4C 4E800020 */ blr         