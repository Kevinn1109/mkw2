nofralloc
/* 80573ED4 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80573ED8 7C0802A6 */ mflr        r0
/* 80573EDC 90010014 */ stw         r0, 0x14(r1)
/* 80573EE0 93E1000C */ stw         r31, 0xc(r1)
/* 80573EE4 7C7F1B78 */ mr          r31, r3
/* 80573EE8 80830004 */ lwz         r4, 4(r3)
/* 80573EEC 80840004 */ lwz         r4, 4(r4)
/* 80573EF0 80040014 */ lwz         r0, 0x14(r4)
/* 80573EF4 54000739 */ rlwinm.     r0, r0, 0, 0x1c, 0x1c
/* 80573EF8 408200E4 */ bne-        lbl_80573fdc
/* 80573EFC 38630004 */ addi        r3, r3, 4
/* 80573F00 4801C30D */ bl          getPos__Q24Kart15KartObjectProxyCFv
/* 80573F04 3C808089 */ lis         r4, lbl_80891730@ha
/* 80573F08 C0230004 */ lfs         f1, 4(r3)
/* 80573F0C C0041730 */ lfs         f0, lbl_80891730@l(r4)
/* 80573F10 FC010040 */ fcmpo       cr0, f1, f0
/* 80573F14 4080001C */ bge-        lbl_80573f30
/* 80573F18 7FE3FB78 */ mr          r3, r31
/* 80573F1C 38800001 */ li          r4, 1
/* 80573F20 38A00000 */ li          r5, 0
/* 80573F24 38C00000 */ li          r6, 0
/* 80573F28 38E00000 */ li          r7, 0
/* 80573F2C 4BFFFBD5 */ bl          PlayerSub18_activateOob
lbl_80573f30:
/* 80573F30 807F0004 */ lwz         r3, 4(r31)
/* 80573F34 80630004 */ lwz         r3, 4(r3)
/* 80573F38 80030004 */ lwz         r0, 4(r3)
/* 80573F3C 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 80573F40 41820080 */ beq-        lbl_80573fc0
/* 80573F44 A87F0048 */ lha         r3, 0x48(r31)
/* 80573F48 3803FFFF */ addi        r0, r3, -1
/* 80573F4C B01F0048 */ sth         r0, 0x48(r31)
/* 80573F50 7C000734 */ extsh       r0, r0
/* 80573F54 2C00005A */ cmpwi       r0, 0x5a
/* 80573F58 40820034 */ bne-        lbl_80573f8c
/* 80573F5C 387F0004 */ addi        r3, r31, 4
/* 80573F60 4801D841 */ bl          PlayerPointers_getOobWipeState
/* 80573F64 2C03FFFF */ cmpwi       r3, -1
/* 80573F68 40820024 */ bne-        lbl_80573f8c
/* 80573F6C 807F0004 */ lwz         r3, 4(r31)
/* 80573F70 80630004 */ lwz         r3, 4(r3)
/* 80573F74 80030014 */ lwz         r0, 0x14(r3)
/* 80573F78 70004400 */ andi.       r0, r0, 0x4400
/* 80573F7C 40820010 */ bne-        lbl_80573f8c
/* 80573F80 387F0004 */ addi        r3, r31, 4
/* 80573F84 38800000 */ li          r4, 0
/* 80573F88 4801D7FD */ bl          unk_80591784
lbl_80573f8c:
/* 80573F8C A81F0048 */ lha         r0, 0x48(r31)
/* 80573F90 2C000000 */ cmpwi       r0, 0
/* 80573F94 4181002C */ bgt-        lbl_80573fc0
/* 80573F98 809F0004 */ lwz         r4, 4(r31)
/* 80573F9C 38000000 */ li          r0, 0
/* 80573FA0 387F0004 */ addi        r3, r31, 4
/* 80573FA4 80A40004 */ lwz         r5, 4(r4)
/* 80573FA8 80850004 */ lwz         r4, 4(r5)
/* 80573FAC 54840734 */ rlwinm      r4, r4, 0, 0x1c, 0x1a
/* 80573FB0 90850004 */ stw         r4, 4(r5)
/* 80573FB4 B01F0048 */ sth         r0, 0x48(r31)
/* 80573FB8 4801C7C5 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80573FBC 480059F1 */ bl          PlayerSub10_respawn
lbl_80573fc0:
/* 80573FC0 A87F004C */ lha         r3, 0x4c(r31)
/* 80573FC4 3803FFFF */ addi        r0, r3, -1
/* 80573FC8 B01F004C */ sth         r0, 0x4c(r31)
/* 80573FCC 7C000735 */ extsh.      r0, r0
/* 80573FD0 4080000C */ bge-        lbl_80573fdc
/* 80573FD4 38000000 */ li          r0, 0
/* 80573FD8 B01F004C */ sth         r0, 0x4c(r31)
lbl_80573fdc:
/* 80573FDC 80010014 */ lwz         r0, 0x14(r1)
/* 80573FE0 83E1000C */ lwz         r31, 0xc(r1)
/* 80573FE4 7C0803A6 */ mtlr        r0
/* 80573FE8 38210010 */ addi        r1, r1, 0x10
/* 80573FEC 4E800020 */ blr         