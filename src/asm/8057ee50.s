nofralloc
/* 8057EE50 A8A300FC */ lha         r5, 0xfc(r3)
/* 8057EE54 3CC0808B */ lis         r6, lbl_808b58f0@ha
/* 8057EE58 38C658F0 */ addi        r6, r6, lbl_808b58f0@l
/* 8057EE5C 2C050003 */ cmpwi       r5, 3
/* 8057EE60 4C800020 */ bgelr-      
/* 8057EE64 80830000 */ lwz         r4, 0(r3)
/* 8057EE68 80840004 */ lwz         r4, 4(r4)
/* 8057EE6C 80040014 */ lwz         r0, 0x14(r4)
/* 8057EE70 54000739 */ rlwinm.     r0, r0, 0, 0x1c, 0x1c
/* 8057EE74 4C820020 */ bnelr-      
/* 8057EE78 2C050001 */ cmpwi       r5, 1
/* 8057EE7C A90603D2 */ lha         r8, 0x3d2(r6)
/* 8057EE80 A8E603D0 */ lha         r7, 0x3d0(r6)
/* 8057EE84 408200A4 */ bne-        lbl_8057ef28
/* 8057EE88 A8A300FE */ lha         r5, 0xfe(r3)
/* 8057EE8C 3C80809C */ lis         r4, lbl_809c18e0@ha
/* 8057EE90 800300CC */ lwz         r0, 0xcc(r3)
/* 8057EE94 7CA53A14 */ add         r5, r5, r7
/* 8057EE98 B0A300FE */ sth         r5, 0xfe(r3)
/* 8057EE9C 2C00FFFF */ cmpwi       r0, -1
/* 8057EEA0 A80603D8 */ lha         r0, 0x3d8(r6)
/* 8057EEA4 A8E418E0 */ lha         r7, lbl_809c18e0@l(r4)
/* 8057EEA8 C02603DC */ lfs         f1, 0x3dc(r6)
/* 8057EEAC 7C050378 */ mr          r5, r0
/* 8057EEB0 4082000C */ bne-        lbl_8057eebc
/* 8057EEB4 7CE53B78 */ mr          r5, r7
/* 8057EEB8 7C070378 */ mr          r7, r0
lbl_8057eebc:
/* 8057EEBC 80830000 */ lwz         r4, 0(r3)
/* 8057EEC0 FC000850 */ fneg        f0, f1
/* 8057EEC4 80840004 */ lwz         r4, 4(r4)
/* 8057EEC8 C0440088 */ lfs         f2, 0x88(r4)
/* 8057EECC FC020040 */ fcmpo       cr0, f2, f0
/* 8057EED0 40800014 */ bge-        lbl_8057eee4
/* 8057EED4 A80300FE */ lha         r0, 0xfe(r3)
/* 8057EED8 7C002A14 */ add         r0, r0, r5
/* 8057EEDC B00300FE */ sth         r0, 0xfe(r3)
/* 8057EEE0 48000018 */ b           lbl_8057eef8
lbl_8057eee4:
/* 8057EEE4 FC020840 */ fcmpo       cr0, f2, f1
/* 8057EEE8 40810010 */ ble-        lbl_8057eef8
/* 8057EEEC A80300FE */ lha         r0, 0xfe(r3)
/* 8057EEF0 7C003A14 */ add         r0, r0, r7
/* 8057EEF4 B00300FE */ sth         r0, 0xfe(r3)
lbl_8057eef8:
/* 8057EEF8 A80300FE */ lha         r0, 0xfe(r3)
/* 8057EEFC 7C080000 */ cmpw        r8, r0
/* 8057EF00 40800010 */ bge-        lbl_8057ef10
/* 8057EF04 B10300FE */ sth         r8, 0xfe(r3)
/* 8057EF08 38000001 */ li          r0, 1
/* 8057EF0C 48000008 */ b           lbl_8057ef14
lbl_8057ef10:
/* 8057EF10 38000000 */ li          r0, 0
lbl_8057ef14:
/* 8057EF14 2C000000 */ cmpwi       r0, 0
/* 8057EF18 41820010 */ beq-        lbl_8057ef28
/* 8057EF1C A88300FC */ lha         r4, 0xfc(r3)
/* 8057EF20 38040001 */ addi        r0, r4, 1
/* 8057EF24 B00300FC */ sth         r0, 0xfc(r3)
lbl_8057ef28:
/* 8057EF28 A80300FC */ lha         r0, 0xfc(r3)
/* 8057EF2C A90603D6 */ lha         r8, 0x3d6(r6)
/* 8057EF30 2C000002 */ cmpwi       r0, 2
/* 8057EF34 A8E603D4 */ lha         r7, 0x3d4(r6)
/* 8057EF38 4C820020 */ bnelr-      
/* 8057EF3C A8A30100 */ lha         r5, 0x100(r3)
/* 8057EF40 3C80809C */ lis         r4, lbl_809c18e0@ha
/* 8057EF44 800300CC */ lwz         r0, 0xcc(r3)
/* 8057EF48 7CA53A14 */ add         r5, r5, r7
/* 8057EF4C B0A30100 */ sth         r5, 0x100(r3)
/* 8057EF50 2C00FFFF */ cmpwi       r0, -1
/* 8057EF54 A80603D8 */ lha         r0, 0x3d8(r6)
/* 8057EF58 A8E418E0 */ lha         r7, lbl_809c18e0@l(r4)
/* 8057EF5C C02603DC */ lfs         f1, 0x3dc(r6)
/* 8057EF60 7C050378 */ mr          r5, r0
/* 8057EF64 4082000C */ bne-        lbl_8057ef70
/* 8057EF68 7CE53B78 */ mr          r5, r7
/* 8057EF6C 7C070378 */ mr          r7, r0
lbl_8057ef70:
/* 8057EF70 80830000 */ lwz         r4, 0(r3)
/* 8057EF74 FC000850 */ fneg        f0, f1
/* 8057EF78 80840004 */ lwz         r4, 4(r4)
/* 8057EF7C C0440088 */ lfs         f2, 0x88(r4)
/* 8057EF80 FC020040 */ fcmpo       cr0, f2, f0
/* 8057EF84 40800014 */ bge-        lbl_8057ef98
/* 8057EF88 A8030100 */ lha         r0, 0x100(r3)
/* 8057EF8C 7C002A14 */ add         r0, r0, r5
/* 8057EF90 B0030100 */ sth         r0, 0x100(r3)
/* 8057EF94 48000018 */ b           lbl_8057efac
lbl_8057ef98:
/* 8057EF98 FC020840 */ fcmpo       cr0, f2, f1
/* 8057EF9C 40810010 */ ble-        lbl_8057efac
/* 8057EFA0 A8030100 */ lha         r0, 0x100(r3)
/* 8057EFA4 7C003A14 */ add         r0, r0, r7
/* 8057EFA8 B0030100 */ sth         r0, 0x100(r3)
lbl_8057efac:
/* 8057EFAC A8030100 */ lha         r0, 0x100(r3)
/* 8057EFB0 7C080000 */ cmpw        r8, r0
/* 8057EFB4 40800010 */ bge-        lbl_8057efc4
/* 8057EFB8 B1030100 */ sth         r8, 0x100(r3)
/* 8057EFBC 38000001 */ li          r0, 1
/* 8057EFC0 48000008 */ b           lbl_8057efc8
lbl_8057efc4:
/* 8057EFC4 38000000 */ li          r0, 0
lbl_8057efc8:
/* 8057EFC8 2C000000 */ cmpwi       r0, 0
/* 8057EFCC 4D820020 */ beqlr-      
/* 8057EFD0 A88300FC */ lha         r4, 0xfc(r3)
/* 8057EFD4 38040001 */ addi        r0, r4, 1
/* 8057EFD8 B00300FC */ sth         r0, 0xfc(r3)
/* 8057EFDC 4E800020 */ blr         