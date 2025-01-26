nofralloc
/* 8057B868 9421FFE0 */ stwu        r1, -0x20(r1)
/* 8057B86C 7C0802A6 */ mflr        r0
/* 8057B870 90010024 */ stw         r0, 0x24(r1)
/* 8057B874 DBE10010 */ stfd        f31, 0x10(r1)
/* 8057B878 F3E10018 */ psq_st      f31, 0x18(r1), 0, 0
/* 8057B87C 3C808089 */ lis         r4, lbl_80891a00@ha
/* 8057B880 C0041A00 */ lfs         f0, lbl_80891a00@l(r4)
/* 8057B884 93E1000C */ stw         r31, 0xc(r1)
/* 8057B888 93C10008 */ stw         r30, 8(r1)
/* 8057B88C 7C7E1B78 */ mr          r30, r3
/* 8057B890 C0230018 */ lfs         f1, 0x18(r3)
/* 8057B894 C0430020 */ lfs         f2, 0x20(r3)
/* 8057B898 EFE20824 */ fdivs       f31, f2, f1
/* 8057B89C FC1F0040 */ fcmpo       cr0, f31, f0
/* 8057B8A0 40800010 */ bge-        lbl_8057b8b0
/* 8057B8A4 3C608089 */ lis         r3, lbl_80891a04@ha
/* 8057B8A8 C0231A04 */ lfs         f1, lbl_80891a04@l(r3)
/* 8057B8AC 480000D0 */ b           lbl_8057b97c
lbl_8057b8b0:
/* 8057B8B0 48014FC5 */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 8057B8B4 3BE30024 */ addi        r31, r3, 0x24
/* 8057B8B8 7FC3F378 */ mr          r3, r30
/* 8057B8BC 48014FB9 */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 8057B8C0 809E0000 */ lwz         r4, 0(r30)
/* 8057B8C4 38A30034 */ addi        r5, r3, 0x34
/* 8057B8C8 38C00004 */ li          r6, 4
/* 8057B8CC 38E00003 */ li          r7, 3
/* 8057B8D0 80640004 */ lwz         r3, 4(r4)
/* 8057B8D4 80630004 */ lwz         r3, 4(r3)
/* 8057B8D8 546000C6 */ rlwinm      r0, r3, 0, 3, 3
/* 8057B8DC 50600739 */ rlwimi.     r0, r3, 0, 0x1c, 0x1c
/* 8057B8E0 41820024 */ beq-        lbl_8057b904
/* 8057B8E4 7FC3F378 */ mr          r3, r30
/* 8057B8E8 48014F8D */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 8057B8EC 3BE30040 */ addi        r31, r3, 0x40
/* 8057B8F0 7FC3F378 */ mr          r3, r30
/* 8057B8F4 48014F81 */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 8057B8F8 38A30048 */ addi        r5, r3, 0x48
/* 8057B8FC 38C00002 */ li          r6, 2
/* 8057B900 38E00001 */ li          r7, 1
lbl_8057b904:
/* 8057B904 3C608089 */ lis         r3, lbl_80891a00@ha
/* 8057B908 38800000 */ li          r4, 0
/* 8057B90C C0231A00 */ lfs         f1, lbl_80891a00@l(r3)
/* 8057B910 FC400890 */ fmr         f2, f1
/* 8057B914 7CE903A6 */ mtctr       r7
/* 8057B918 28070000 */ cmplwi      r7, 0
/* 8057B91C 40810048 */ ble-        lbl_8057b964
lbl_8057b920:
/* 8057B920 548015BA */ rlwinm      r0, r4, 2, 0x16, 0x1d
/* 8057B924 7C05042E */ lfsx        f0, r5, r0
/* 8057B928 7C7F0214 */ add         r3, r31, r0
/* 8057B92C 7C7F042E */ lfsx        f3, r31, r0
/* 8057B930 FC1F0040 */ fcmpo       cr0, f31, f0
/* 8057B934 C0830004 */ lfs         f4, 4(r3)
/* 8057B938 40800020 */ bge-        lbl_8057b958
/* 8057B93C ECA01028 */ fsubs       f5, f0, f2
/* 8057B940 EC241828 */ fsubs       f1, f4, f3
/* 8057B944 EC1F1028 */ fsubs       f0, f31, f2
/* 8057B948 EC212824 */ fdivs       f1, f1, f5
/* 8057B94C EC010032 */ fmuls       f0, f1, f0
/* 8057B950 EC23002A */ fadds       f1, f3, f0
/* 8057B954 48000010 */ b           lbl_8057b964
lbl_8057b958:
/* 8057B958 FC400090 */ fmr         f2, f0
/* 8057B95C 38840001 */ addi        r4, r4, 1
/* 8057B960 4200FFC0 */ bdnz        lbl_8057b920
lbl_8057b964:
/* 8057B964 5480063E */ clrlwi      r0, r4, 0x18
/* 8057B968 7C003840 */ cmplw       r0, r7
/* 8057B96C 41800010 */ blt-        lbl_8057b97c
/* 8057B970 3806FFFF */ addi        r0, r6, -1
/* 8057B974 5400103A */ slwi        r0, r0, 2
/* 8057B978 7C3F042E */ lfsx        f1, r31, r0
lbl_8057b97c:
/* 8057B97C E3E10018 */ psq_l       f31, 0x18(r1), 0, 0
/* 8057B980 80010024 */ lwz         r0, 0x24(r1)
/* 8057B984 CBE10010 */ lfd         f31, 0x10(r1)
/* 8057B988 83E1000C */ lwz         r31, 0xc(r1)
/* 8057B98C 83C10008 */ lwz         r30, 8(r1)
/* 8057B990 7C0803A6 */ mtlr        r0
/* 8057B994 38210020 */ addi        r1, r1, 0x20
/* 8057B998 4E800020 */ blr         