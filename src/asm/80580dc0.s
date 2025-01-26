nofralloc
/* 80580DC0 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80580DC4 7C0802A6 */ mflr        r0
/* 80580DC8 90010014 */ stw         r0, 0x14(r1)
/* 80580DCC 93E1000C */ stw         r31, 0xc(r1)
/* 80580DD0 3FE08089 */ lis         r31, lbl_80891a00@ha
/* 80580DD4 3BFF1A00 */ addi        r31, r31, lbl_80891a00@l
/* 80580DD8 93C10008 */ stw         r30, 8(r1)
/* 80580DDC 7C7E1B78 */ mr          r30, r3
/* 80580DE0 80830000 */ lwz         r4, 0(r3)
/* 80580DE4 80840004 */ lwz         r4, 4(r4)
/* 80580DE8 8004000C */ lwz         r0, 0xc(r4)
/* 80580DEC 54000421 */ rlwinm.     r0, r0, 0, 0x10, 0x10
/* 80580DF0 41820100 */ beq-        lbl_80580ef0
/* 80580DF4 A8830194 */ lha         r4, 0x194(r3)
/* 80580DF8 3804FFFF */ addi        r0, r4, -1
/* 80580DFC B0030194 */ sth         r0, 0x194(r3)
/* 80580E00 7C040735 */ extsh.      r4, r0
/* 80580E04 41810094 */ bgt-        lbl_80580e98
/* 80580E08 80830000 */ lwz         r4, 0(r3)
/* 80580E0C 80840004 */ lwz         r4, 4(r4)
/* 80580E10 8004000C */ lwz         r0, 0xc(r4)
/* 80580E14 5400045E */ rlwinm      r0, r0, 0, 0x11, 0xf
/* 80580E18 9004000C */ stw         r0, 0xc(r4)
/* 80580E1C 4800FC41 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80580E20 3C80809C */ lis         r4, lbl_809c3618@ha
/* 80580E24 5460063E */ clrlwi      r0, r3, 0x18
/* 80580E28 80643618 */ lwz         r3, lbl_809c3618@l(r4)
/* 80580E2C 1C000248 */ mulli       r0, r0, 0x248
/* 80580E30 80630014 */ lwz         r3, 0x14(r3)
/* 80580E34 7C630214 */ add         r3, r3, r0
/* 80580E38 482178D5 */ bl          unk_8079870c
/* 80580E3C 7FC3F378 */ mr          r3, r30
/* 80580E40 4800F955 */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 80580E44 81830000 */ lwz         r12, 0(r3)
/* 80580E48 38800113 */ li          r4, 0x113
/* 80580E4C C03F0000 */ lfs         f1, 0(r31)
/* 80580E50 818C00E0 */ lwz         r12, 0xe0(r12)
/* 80580E54 7D8903A6 */ mtctr       r12
/* 80580E58 4E800421 */ bctrl       
/* 80580E5C 38000000 */ li          r0, 0
/* 80580E60 B01E0194 */ sth         r0, 0x194(r30)
/* 80580E64 7FC3F378 */ mr          r3, r30
/* 80580E68 4800F8FD */ bl          kartPhysicsEngine__Q24Kart15KartObjectProxyFv
/* 80580E6C C03F0004 */ lfs         f1, 4(r31)
/* 80580E70 480174C9 */ bl          unk_80598338
/* 80580E74 881E0196 */ lbz         r0, 0x196(r30)
/* 80580E78 2C000000 */ cmpwi       r0, 0
/* 80580E7C 40820044 */ bne-        lbl_80580ec0
/* 80580E80 807E0260 */ lwz         r3, 0x260(r30)
/* 80580E84 38800001 */ li          r4, 1
/* 80580E88 4BFEA2E1 */ bl          unk_8056b168
/* 80580E8C 38000001 */ li          r0, 1
/* 80580E90 981E0196 */ stb         r0, 0x196(r30)
/* 80580E94 4800002C */ b           lbl_80580ec0
lbl_80580e98:
/* 80580E98 88030196 */ lbz         r0, 0x196(r3)
/* 80580E9C 2C000000 */ cmpwi       r0, 0
/* 80580EA0 40820020 */ bne-        lbl_80580ec0
/* 80580EA4 2C040019 */ cmpwi       r4, 0x19
/* 80580EA8 41810018 */ bgt-        lbl_80580ec0
/* 80580EAC 38000001 */ li          r0, 1
/* 80580EB0 98030196 */ stb         r0, 0x196(r3)
/* 80580EB4 80630260 */ lwz         r3, 0x260(r3)
/* 80580EB8 38800001 */ li          r4, 1
/* 80580EBC 4BFEA2AD */ bl          unk_8056b168
lbl_80580ec0:
/* 80580EC0 C03E017C */ lfs         f1, 0x17c(r30)
/* 80580EC4 7FC3F378 */ mr          r3, r30
/* 80580EC8 C01F003C */ lfs         f0, 0x3c(r31)
/* 80580ECC EC01002A */ fadds       f0, f1, f0
/* 80580ED0 D01E017C */ stfs        f0, 0x17c(r30)
/* 80580ED4 4800F9A1 */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 80580ED8 C0230184 */ lfs         f1, 0x184(r3)
/* 80580EDC C01E017C */ lfs         f0, 0x17c(r30)
/* 80580EE0 FC010040 */ fcmpo       cr0, f1, f0
/* 80580EE4 4080002C */ bge-        lbl_80580f10
/* 80580EE8 D03E017C */ stfs        f1, 0x17c(r30)
/* 80580EEC 48000024 */ b           lbl_80580f10
lbl_80580ef0:
/* 80580EF0 C043017C */ lfs         f2, 0x17c(r3)
/* 80580EF4 C03F0040 */ lfs         f1, 0x40(r31)
/* 80580EF8 C01F0004 */ lfs         f0, 4(r31)
/* 80580EFC EC220828 */ fsubs       f1, f2, f1
/* 80580F00 D023017C */ stfs        f1, 0x17c(r3)
/* 80580F04 FC000840 */ fcmpo       cr0, f0, f1
/* 80580F08 40810008 */ ble-        lbl_80580f10
/* 80580F0C D003017C */ stfs        f0, 0x17c(r3)
lbl_80580f10:
/* 80580F10 80010014 */ lwz         r0, 0x14(r1)
/* 80580F14 83E1000C */ lwz         r31, 0xc(r1)
/* 80580F18 83C10008 */ lwz         r30, 8(r1)
/* 80580F1C 7C0803A6 */ mtlr        r0
/* 80580F20 38210010 */ addi        r1, r1, 0x10
/* 80580F24 4E800020 */ blr         