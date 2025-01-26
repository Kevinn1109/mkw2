nofralloc
/* 8056F7F0 9421FEF0 */ stwu        r1, -0x110(r1)
/* 8056F7F4 7C0802A6 */ mflr        r0
/* 8056F7F8 90010114 */ stw         r0, 0x114(r1)
/* 8056F7FC DBE10100 */ stfd        f31, 0x100(r1)
/* 8056F800 F3E10108 */ psq_st      f31, 0x108(r1), 0, 0
/* 8056F804 39610100 */ addi        r11, r1, 0x100
/* 8056F808 4BAB1D75 */ bl          _savegpr_18
/* 8056F80C 80A30004 */ lwz         r5, 4(r3)
/* 8056F810 3F808089 */ lis         r28, lbl_80891730@ha
/* 8056F814 7C7E1B78 */ mr          r30, r3
/* 8056F818 7C9F2378 */ mr          r31, r4
/* 8056F81C 80A50004 */ lwz         r5, 4(r5)
/* 8056F820 3B9C1730 */ addi        r28, r28, lbl_80891730@l
/* 8056F824 3B600001 */ li          r27, 1
/* 8056F828 3BA00001 */ li          r29, 1
/* 8056F82C 80050008 */ lwz         r0, 8(r5)
/* 8056F830 3B400001 */ li          r26, 1
/* 8056F834 3A400001 */ li          r18, 1
/* 8056F838 3A600001 */ li          r19, 1
/* 8056F83C 70000102 */ andi.       r0, r0, 0x102
/* 8056F840 38C00001 */ li          r6, 1
/* 8056F844 4082001C */ bne-        lbl_8056f860
/* 8056F848 3C80020C */ lis         r4, 0x20c
/* 8056F84C 80A5000C */ lwz         r5, 0xc(r5)
/* 8056F850 38046000 */ addi        r0, r4, 0x6000
/* 8056F854 7CA00039 */ and.        r0, r5, r0
/* 8056F858 40820008 */ bne-        lbl_8056f860
/* 8056F85C 38C00000 */ li          r6, 0
lbl_8056f860:
/* 8056F860 2C060000 */ cmpwi       r6, 0
/* 8056F864 40820018 */ bne-        lbl_8056f87c
/* 8056F868 38630004 */ addi        r3, r3, 4
/* 8056F86C 48020E0D */ bl          PlayerPointers_isGhost
/* 8056F870 2C030000 */ cmpwi       r3, 0
/* 8056F874 40820008 */ bne-        lbl_8056f87c
/* 8056F878 3A600000 */ li          r19, 0
lbl_8056f87c:
/* 8056F87C 2C130000 */ cmpwi       r19, 0
/* 8056F880 4082001C */ bne-        lbl_8056f89c
/* 8056F884 807E0004 */ lwz         r3, 4(r30)
/* 8056F888 80630004 */ lwz         r3, 4(r3)
/* 8056F88C 80030008 */ lwz         r0, 8(r3)
/* 8056F890 540006F9 */ rlwinm.     r0, r0, 0, 0x1b, 0x1c
/* 8056F894 40820008 */ bne-        lbl_8056f89c
/* 8056F898 3A400000 */ li          r18, 0
lbl_8056f89c:
/* 8056F89C 2C120000 */ cmpwi       r18, 0
/* 8056F8A0 4082001C */ bne-        lbl_8056f8bc
/* 8056F8A4 807E0004 */ lwz         r3, 4(r30)
/* 8056F8A8 80630004 */ lwz         r3, 4(r3)
/* 8056F8AC 8003000C */ lwz         r0, 0xc(r3)
/* 8056F8B0 540005EF */ rlwinm.     r0, r0, 0, 0x17, 0x17
/* 8056F8B4 40820008 */ bne-        lbl_8056f8bc
/* 8056F8B8 3B400000 */ li          r26, 0
lbl_8056f8bc:
/* 8056F8BC 2C1A0000 */ cmpwi       r26, 0
/* 8056F8C0 40820034 */ bne-        lbl_8056f8f4
/* 8056F8C4 807E0004 */ lwz         r3, 4(r30)
/* 8056F8C8 38800000 */ li          r4, 0
/* 8056F8CC 80630004 */ lwz         r3, 4(r3)
/* 8056F8D0 8063000C */ lwz         r3, 0xc(r3)
/* 8056F8D4 546003DF */ rlwinm.     r0, r3, 0, 0xf, 0xf
/* 8056F8D8 41820010 */ beq-        lbl_8056f8e8
/* 8056F8DC 5460039D */ rlwinm.     r0, r3, 0, 0xe, 0xe
/* 8056F8E0 41820008 */ beq-        lbl_8056f8e8
/* 8056F8E4 38800001 */ li          r4, 1
lbl_8056f8e8:
/* 8056F8E8 2C040000 */ cmpwi       r4, 0
/* 8056F8EC 40820008 */ bne-        lbl_8056f8f4
/* 8056F8F0 3BA00000 */ li          r29, 0
lbl_8056f8f4:
/* 8056F8F4 2C1D0000 */ cmpwi       r29, 0
/* 8056F8F8 4082001C */ bne-        lbl_8056f914
/* 8056F8FC 807E0004 */ lwz         r3, 4(r30)
/* 8056F900 80630004 */ lwz         r3, 4(r3)
/* 8056F904 80030010 */ lwz         r0, 0x10(r3)
/* 8056F908 54000673 */ rlwinm.     r0, r0, 0, 0x19, 0x19
/* 8056F90C 40820008 */ bne-        lbl_8056f914
/* 8056F910 3B600000 */ li          r27, 0
lbl_8056f914:
/* 8056F914 2C1B0000 */ cmpwi       r27, 0
/* 8056F918 408213E8 */ bne-        lbl_80570d00
/* 8056F91C 807F0000 */ lwz         r3, 0(r31)
/* 8056F920 3B400001 */ li          r26, 1
/* 8056F924 3B600001 */ li          r27, 1
/* 8056F928 3BA00001 */ li          r29, 1
/* 8056F92C 80830004 */ lwz         r4, 4(r3)
/* 8056F930 3A400001 */ li          r18, 1
/* 8056F934 3A600001 */ li          r19, 1
/* 8056F938 38A00001 */ li          r5, 1
/* 8056F93C 80040008 */ lwz         r0, 8(r4)
/* 8056F940 70000102 */ andi.       r0, r0, 0x102
/* 8056F944 4082001C */ bne-        lbl_8056f960
/* 8056F948 3C60020C */ lis         r3, 0x20c
/* 8056F94C 8084000C */ lwz         r4, 0xc(r4)
/* 8056F950 38036000 */ addi        r0, r3, 0x6000
/* 8056F954 7C800039 */ and.        r0, r4, r0
/* 8056F958 40820008 */ bne-        lbl_8056f960
/* 8056F95C 38A00000 */ li          r5, 0
lbl_8056f960:
/* 8056F960 2C050000 */ cmpwi       r5, 0
/* 8056F964 40820018 */ bne-        lbl_8056f97c
/* 8056F968 7FE3FB78 */ mr          r3, r31
/* 8056F96C 48020D0D */ bl          PlayerPointers_isGhost
/* 8056F970 2C030000 */ cmpwi       r3, 0
/* 8056F974 40820008 */ bne-        lbl_8056f97c
/* 8056F978 3A600000 */ li          r19, 0
lbl_8056f97c:
/* 8056F97C 2C130000 */ cmpwi       r19, 0
/* 8056F980 4082001C */ bne-        lbl_8056f99c
/* 8056F984 807F0000 */ lwz         r3, 0(r31)
/* 8056F988 80630004 */ lwz         r3, 4(r3)
/* 8056F98C 80030008 */ lwz         r0, 8(r3)
/* 8056F990 540006F9 */ rlwinm.     r0, r0, 0, 0x1b, 0x1c
/* 8056F994 40820008 */ bne-        lbl_8056f99c
/* 8056F998 3A400000 */ li          r18, 0
lbl_8056f99c:
/* 8056F99C 2C120000 */ cmpwi       r18, 0
/* 8056F9A0 4082001C */ bne-        lbl_8056f9bc
/* 8056F9A4 807F0000 */ lwz         r3, 0(r31)
/* 8056F9A8 80630004 */ lwz         r3, 4(r3)
/* 8056F9AC 8003000C */ lwz         r0, 0xc(r3)
/* 8056F9B0 540005EF */ rlwinm.     r0, r0, 0, 0x17, 0x17
/* 8056F9B4 40820008 */ bne-        lbl_8056f9bc
/* 8056F9B8 3BA00000 */ li          r29, 0
lbl_8056f9bc:
/* 8056F9BC 2C1D0000 */ cmpwi       r29, 0
/* 8056F9C0 40820034 */ bne-        lbl_8056f9f4
/* 8056F9C4 807F0000 */ lwz         r3, 0(r31)
/* 8056F9C8 38800000 */ li          r4, 0
/* 8056F9CC 80630004 */ lwz         r3, 4(r3)
/* 8056F9D0 8063000C */ lwz         r3, 0xc(r3)
/* 8056F9D4 546003DF */ rlwinm.     r0, r3, 0, 0xf, 0xf
/* 8056F9D8 41820010 */ beq-        lbl_8056f9e8
/* 8056F9DC 5460039D */ rlwinm.     r0, r3, 0, 0xe, 0xe
/* 8056F9E0 41820008 */ beq-        lbl_8056f9e8
/* 8056F9E4 38800001 */ li          r4, 1
lbl_8056f9e8:
/* 8056F9E8 2C040000 */ cmpwi       r4, 0
/* 8056F9EC 40820008 */ bne-        lbl_8056f9f4
/* 8056F9F0 3B600000 */ li          r27, 0
lbl_8056f9f4:
/* 8056F9F4 2C1B0000 */ cmpwi       r27, 0
/* 8056F9F8 4082001C */ bne-        lbl_8056fa14
/* 8056F9FC 807F0000 */ lwz         r3, 0(r31)
/* 8056FA00 80630004 */ lwz         r3, 4(r3)
/* 8056FA04 80030010 */ lwz         r0, 0x10(r3)
/* 8056FA08 54000673 */ rlwinm.     r0, r0, 0, 0x19, 0x19
/* 8056FA0C 40820008 */ bne-        lbl_8056fa14
/* 8056FA10 3B400000 */ li          r26, 0
lbl_8056fa14:
/* 8056FA14 2C1A0000 */ cmpwi       r26, 0
/* 8056FA18 41820008 */ beq-        lbl_8056fa20
/* 8056FA1C 480012E4 */ b           lbl_80570d00
lbl_8056fa20:
/* 8056FA20 7FE3FB78 */ mr          r3, r31
/* 8056FA24 48021039 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8056FA28 809E0004 */ lwz         r4, 4(r30)
/* 8056FA2C 5460063E */ clrlwi      r0, r3, 0x18
/* 8056FA30 3BA00001 */ li          r29, 1
/* 8056FA34 80640004 */ lwz         r3, 4(r4)
/* 8056FA38 7FA00030 */ slw         r0, r29, r0
/* 8056FA3C A0630084 */ lhz         r3, 0x84(r3)
/* 8056FA40 7C600039 */ and.        r0, r3, r0
/* 8056FA44 408212BC */ bne-        lbl_80570d00
/* 8056FA48 7FE3FB78 */ mr          r3, r31
/* 8056FA4C 48021011 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8056FA50 5472063E */ clrlwi      r18, r3, 0x18
/* 8056FA54 387E0004 */ addi        r3, r30, 4
/* 8056FA58 48021005 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8056FA5C 5460063E */ clrlwi      r0, r3, 0x18
/* 8056FA60 7C009040 */ cmplw       r0, r18
/* 8056FA64 4182129C */ beq-        lbl_80570d00
/* 8056FA68 7FE3FB78 */ mr          r3, r31
/* 8056FA6C 48020FF1 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8056FA70 809E0004 */ lwz         r4, 4(r30)
/* 8056FA74 5460063E */ clrlwi      r0, r3, 0x18
/* 8056FA78 7FA00030 */ slw         r0, r29, r0
/* 8056FA7C 387E0004 */ addi        r3, r30, 4
/* 8056FA80 80A40004 */ lwz         r5, 4(r4)
/* 8056FA84 A0850084 */ lhz         r4, 0x84(r5)
/* 8056FA88 7C800378 */ or          r0, r4, r0
/* 8056FA8C B0050084 */ sth         r0, 0x84(r5)
/* 8056FA90 48020FCD */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8056FA94 809F0000 */ lwz         r4, 0(r31)
/* 8056FA98 5460063E */ clrlwi      r0, r3, 0x18
/* 8056FA9C 7FA00030 */ slw         r0, r29, r0
/* 8056FAA0 3D20802A */ lis         r9, lbl_802a4148@ha
/* 8056FAA4 80E40004 */ lwz         r7, 4(r4)
/* 8056FAA8 7FC3F378 */ mr          r3, r30
/* 8056FAAC C01C0000 */ lfs         f0, 0(r28)
/* 8056FAB0 7FE6FB78 */ mr          r6, r31
/* 8056FAB4 A0A70084 */ lhz         r5, 0x84(r7)
/* 8056FAB8 388100A8 */ addi        r4, r1, 0xa8
/* 8056FABC 7CA00378 */ or          r0, r5, r0
/* 8056FAC0 B0070084 */ sth         r0, 0x84(r7)
/* 8056FAC4 38A10090 */ addi        r5, r1, 0x90
/* 8056FAC8 85094148 */ lwzu        r8, lbl_802a4148@l(r9)
/* 8056FACC 91010080 */ stw         r8, 0x80(r1)
/* 8056FAD0 80E90004 */ lwz         r7, 4(r9)
/* 8056FAD4 80090008 */ lwz         r0, 8(r9)
/* 8056FAD8 90E10084 */ stw         r7, 0x84(r1)
/* 8056FADC 90010088 */ stw         r0, 0x88(r1)
/* 8056FAE0 D00100A8 */ stfs        f0, 0xa8(r1)
/* 8056FAE4 D00100AC */ stfs        f0, 0xac(r1)
/* 8056FAE8 D00100B0 */ stfs        f0, 0xb0(r1)
/* 8056FAEC D00100B4 */ stfs        f0, 0xb4(r1)
/* 8056FAF0 D00100B8 */ stfs        f0, 0xb8(r1)
/* 8056FAF4 D00100BC */ stfs        f0, 0xbc(r1)
/* 8056FAF8 D0010090 */ stfs        f0, 0x90(r1)
/* 8056FAFC D0010094 */ stfs        f0, 0x94(r1)
/* 8056FB00 D0010098 */ stfs        f0, 0x98(r1)
/* 8056FB04 D001009C */ stfs        f0, 0x9c(r1)
/* 8056FB08 D00100A0 */ stfs        f0, 0xa0(r1)
/* 8056FB0C D00100A4 */ stfs        f0, 0xa4(r1)
/* 8056FB10 4BFFF3E5 */ bl          unk_8056eef4
/* 8056FB14 2C030000 */ cmpwi       r3, 0
/* 8056FB18 418211E8 */ beq-        lbl_80570d00
/* 8056FB1C 388100B4 */ addi        r4, r1, 0xb4
/* 8056FB20 38A100A8 */ addi        r5, r1, 0xa8
/* 8056FB24 E0050000 */ psq_l       f0, 0(r5), 0, 0
/* 8056FB28 38610080 */ addi        r3, r1, 0x80
/* 8056FB2C E0240000 */ psq_l       f1, 0(r4), 0, 0
/* 8056FB30 1040082A */ ps_add      f2, f0, f1
/* 8056FB34 E0058008 */ psq_l       f0, 8(r5), 1, 0
/* 8056FB38 E0248008 */ psq_l       f1, 8(r4), 1, 0
/* 8056FB3C F0430000 */ psq_st      f2, 0(r3), 0, 0
/* 8056FB40 1040082A */ ps_add      f2, f0, f1
/* 8056FB44 F0438008 */ psq_st      f2, 8(r3), 1, 0
/* 8056FB48 4BCD3F95 */ bl          normalise__Q23EGG8Vector3fFv
/* 8056FB4C 80610080 */ lwz         r3, 0x80(r1)
/* 8056FB50 38A1009C */ addi        r5, r1, 0x9c
/* 8056FB54 C01C0018 */ lfs         f0, 0x18(r28)
/* 8056FB58 38C10090 */ addi        r6, r1, 0x90
/* 8056FB5C 90610068 */ stw         r3, 0x68(r1)
/* 8056FB60 FFE00890 */ fmr         f31, f1
/* 8056FB64 80810084 */ lwz         r4, 0x84(r1)
/* 8056FB68 EC400072 */ fmuls       f2, f0, f1
/* 8056FB6C 80010088 */ lwz         r0, 0x88(r1)
/* 8056FB70 38E10074 */ addi        r7, r1, 0x74
/* 8056FB74 9081006C */ stw         r4, 0x6c(r1)
/* 8056FB78 C0010068 */ lfs         f0, 0x68(r1)
/* 8056FB7C 7FE3FB78 */ mr          r3, r31
/* 8056FB80 C021006C */ lfs         f1, 0x6c(r1)
/* 8056FB84 ED6000B2 */ fmuls       f11, f0, f2
/* 8056FB88 90010070 */ stw         r0, 0x70(r1)
/* 8056FB8C ED4100B2 */ fmuls       f10, f1, f2
/* 8056FB90 C03E0030 */ lfs         f1, 0x30(r30)
/* 8056FB94 C0010070 */ lfs         f0, 0x70(r1)
/* 8056FB98 ED01582A */ fadds       f8, f1, f11
/* 8056FB9C ED2000B2 */ fmuls       f9, f0, f2
/* 8056FBA0 C01E0034 */ lfs         f0, 0x34(r30)
/* 8056FBA4 C05E003C */ lfs         f2, 0x3c(r30)
/* 8056FBA8 C03E0040 */ lfs         f1, 0x40(r30)
/* 8056FBAC ECE0502A */ fadds       f7, f0, f10
/* 8056FBB0 ECA2582A */ fadds       f5, f2, f11
/* 8056FBB4 EC81502A */ fadds       f4, f1, f10
/* 8056FBB8 E0660000 */ psq_l       f3, 0(r6), 0, 0
/* 8056FBBC E1850000 */ psq_l       f12, 0(r5), 0, 0
/* 8056FBC0 FC405850 */ fneg        f2, f11
/* 8056FBC4 D1610068 */ stfs        f11, 0x68(r1)
/* 8056FBC8 11A3602A */ ps_add      f13, f3, f12
/* 8056FBCC C07E0038 */ lfs         f3, 0x38(r30)
/* 8056FBD0 FC205050 */ fneg        f1, f10
/* 8056FBD4 D141006C */ stfs        f10, 0x6c(r1)
/* 8056FBD8 ECC3482A */ fadds       f6, f3, f9
/* 8056FBDC C01E0044 */ lfs         f0, 0x44(r30)
/* 8056FBE0 E0668008 */ psq_l       f3, 8(r6), 1, 0
/* 8056FBE4 E1858008 */ psq_l       f12, 8(r5), 1, 0
/* 8056FBE8 F1A70000 */ psq_st      f13, 0(r7), 0, 0
/* 8056FBEC 11A3602A */ ps_add      f13, f3, f12
/* 8056FBF0 EC60482A */ fadds       f3, f0, f9
/* 8056FBF4 D1210070 */ stfs        f9, 0x70(r1)
/* 8056FBF8 FC004850 */ fneg        f0, f9
/* 8056FBFC F1A78008 */ psq_st      f13, 8(r7), 1, 0
/* 8056FC00 D11E0030 */ stfs        f8, 0x30(r30)
/* 8056FC04 D0FE0034 */ stfs        f7, 0x34(r30)
/* 8056FC08 D0DE0038 */ stfs        f6, 0x38(r30)
/* 8056FC0C D0BE003C */ stfs        f5, 0x3c(r30)
/* 8056FC10 D09E0040 */ stfs        f4, 0x40(r30)
/* 8056FC14 D07E0044 */ stfs        f3, 0x44(r30)
/* 8056FC18 D0410068 */ stfs        f2, 0x68(r1)
/* 8056FC1C D021006C */ stfs        f1, 0x6c(r1)
/* 8056FC20 D0010070 */ stfs        f0, 0x70(r1)
/* 8056FC24 48020C29 */ bl          kartCollide__Q24Kart15KartObjectProxyFv
/* 8056FC28 C0430030 */ lfs         f2, 0x30(r3)
/* 8056FC2C FC20F850 */ fneg        f1, f31
/* 8056FC30 C0E10068 */ lfs         f7, 0x68(r1)
/* 8056FC34 C01C001C */ lfs         f0, 0x1c(r28)
/* 8056FC38 EC42382A */ fadds       f2, f2, f7
/* 8056FC3C C0A1006C */ lfs         f5, 0x6c(r1)
/* 8056FC40 ECC00072 */ fmuls       f6, f0, f1
/* 8056FC44 C0610070 */ lfs         f3, 0x70(r1)
/* 8056FC48 D0430030 */ stfs        f2, 0x30(r3)
/* 8056FC4C C0810074 */ lfs         f4, 0x74(r1)
/* 8056FC50 C0030034 */ lfs         f0, 0x34(r3)
/* 8056FC54 C0410078 */ lfs         f2, 0x78(r1)
/* 8056FC58 EC20282A */ fadds       f1, f0, f5
/* 8056FC5C C001007C */ lfs         f0, 0x7c(r1)
/* 8056FC60 D0230034 */ stfs        f1, 0x34(r3)
/* 8056FC64 C0230038 */ lfs         f1, 0x38(r3)
/* 8056FC68 EC21182A */ fadds       f1, f1, f3
/* 8056FC6C D0230038 */ stfs        f1, 0x38(r3)
/* 8056FC70 C023003C */ lfs         f1, 0x3c(r3)
/* 8056FC74 EC21382A */ fadds       f1, f1, f7
/* 8056FC78 D023003C */ stfs        f1, 0x3c(r3)
/* 8056FC7C C0230040 */ lfs         f1, 0x40(r3)
/* 8056FC80 EC21282A */ fadds       f1, f1, f5
/* 8056FC84 D0230040 */ stfs        f1, 0x40(r3)
/* 8056FC88 C0230044 */ lfs         f1, 0x44(r3)
/* 8056FC8C EC21182A */ fadds       f1, f1, f3
/* 8056FC90 D0230044 */ stfs        f1, 0x44(r3)
/* 8056FC94 387E0004 */ addi        r3, r30, 4
/* 8056FC98 C0A10080 */ lfs         f5, 0x80(r1)
/* 8056FC9C C0610084 */ lfs         f3, 0x84(r1)
/* 8056FCA0 C0210088 */ lfs         f1, 0x88(r1)
/* 8056FCA4 ECA60172 */ fmuls       f5, f6, f5
/* 8056FCA8 EC6600F2 */ fmuls       f3, f6, f3
/* 8056FCAC EC260072 */ fmuls       f1, f6, f1
/* 8056FCB0 EC84282A */ fadds       f4, f4, f5
/* 8056FCB4 EC42182A */ fadds       f2, f2, f3
/* 8056FCB8 EC00082A */ fadds       f0, f0, f1
/* 8056FCBC D081005C */ stfs        f4, 0x5c(r1)
/* 8056FCC0 D0410060 */ stfs        f2, 0x60(r1)
/* 8056FCC4 80A1005C */ lwz         r5, 0x5c(r1)
/* 8056FCC8 D0010064 */ stfs        f0, 0x64(r1)
/* 8056FCCC 80810060 */ lwz         r4, 0x60(r1)
/* 8056FCD0 80010064 */ lwz         r0, 0x64(r1)
/* 8056FCD4 90A10050 */ stw         r5, 0x50(r1)
/* 8056FCD8 90810054 */ stw         r4, 0x54(r1)
/* 8056FCDC 90010058 */ stw         r0, 0x58(r1)
/* 8056FCE0 48020D7D */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8056FCE4 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 8056FCE8 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 8056FCEC 808421D0 */ lwz         r4, lbl_809c21d0@l(r4)
/* 8056FCF0 7FE3FB78 */ mr          r3, r31
/* 8056FCF4 80840068 */ lwz         r4, 0x68(r4)
/* 8056FCF8 7E44002E */ lwzx        r18, r4, r0
/* 8056FCFC 48020D61 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8056FD00 7C601B78 */ mr          r0, r3
/* 8056FD04 7E439378 */ mr          r3, r18
/* 8056FD08 3881005C */ addi        r4, r1, 0x5c
/* 8056FD0C 5405063E */ clrlwi      r5, r0, 0x18
/* 8056FD10 48136719 */ bl          unk_806a6428
/* 8056FD14 3C60809C */ lis         r3, spInstance__Q26System10RaceConfig@ha
/* 8056FD18 809E0004 */ lwz         r4, 4(r30)
/* 8056FD1C 83A3D728 */ lwz         r29, spInstance__Q26System10RaceConfig@l(r3)
/* 8056FD20 807F0000 */ lwz         r3, 0(r31)
/* 8056FD24 801D0B90 */ lwz         r0, 0xb90(r29)
/* 8056FD28 80840004 */ lwz         r4, 4(r4)
/* 8056FD2C 80A30004 */ lwz         r5, 4(r3)
/* 8056FD30 541BFFFF */ rlwinm.     r27, r0, 0x1f, 0x1f, 0x1f
/* 8056FD34 80C4000C */ lwz         r6, 0xc(r4)
/* 8056FD38 80E5000C */ lwz         r7, 0xc(r5)
/* 8056FD3C 80640008 */ lwz         r3, 8(r4)
/* 8056FD40 54D88FFE */ rlwinm      r24, r6, 0x11, 0x1f, 0x1f
/* 8056FD44 80050008 */ lwz         r0, 8(r5)
/* 8056FD48 54F78FFE */ rlwinm      r23, r7, 0x11, 0x1f, 0x1f
/* 8056FD4C 547A0FFE */ srwi        r26, r3, 0x1f
/* 8056FD50 54D687FE */ rlwinm      r22, r6, 0x10, 0x1f, 0x1f
/* 8056FD54 54190FFE */ srwi        r25, r0, 0x1f
/* 8056FD58 54F587FE */ rlwinm      r21, r7, 0x10, 0x1f, 0x1f
/* 8056FD5C 54D42FFE */ rlwinm      r20, r6, 5, 0x1f, 0x1f
/* 8056FD60 54F32FFE */ rlwinm      r19, r7, 5, 0x1f, 0x1f
/* 8056FD64 41820064 */ beq-        lbl_8056fdc8
/* 8056FD68 7FE3FB78 */ mr          r3, r31
/* 8056FD6C 48020CF1 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8056FD70 7C721B78 */ mr          r18, r3
/* 8056FD74 387E0004 */ addi        r3, r30, 4
/* 8056FD78 48020CE5 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8056FD7C 5460063E */ clrlwi      r0, r3, 0x18
/* 8056FD80 1C0000F0 */ mulli       r0, r0, 0xf0
/* 8056FD84 7C7D0214 */ add         r3, r29, r0
/* 8056FD88 808300F4 */ lwz         r4, 0xf4(r3)
/* 8056FD8C 2C040002 */ cmpwi       r4, 2
/* 8056FD90 4082000C */ bne-        lbl_8056fd9c
/* 8056FD94 3B600000 */ li          r27, 0
/* 8056FD98 48000030 */ b           lbl_8056fdc8
lbl_8056fd9c:
/* 8056FD9C 5640063E */ clrlwi      r0, r18, 0x18
/* 8056FDA0 1C0000F0 */ mulli       r0, r0, 0xf0
/* 8056FDA4 7C7D0214 */ add         r3, r29, r0
/* 8056FDA8 800300F4 */ lwz         r0, 0xf4(r3)
/* 8056FDAC 2C000002 */ cmpwi       r0, 2
/* 8056FDB0 4082000C */ bne-        lbl_8056fdbc
/* 8056FDB4 3B600000 */ li          r27, 0
/* 8056FDB8 48000010 */ b           lbl_8056fdc8
lbl_8056fdbc:
/* 8056FDBC 7C040050 */ subf        r0, r4, r0
/* 8056FDC0 7C000034 */ cntlzw      r0, r0
/* 8056FDC4 541BD97E */ srwi        r27, r0, 5
lbl_8056fdc8:
/* 8056FDC8 3C60809C */ lis         r3, spInstance__Q26System10RaceConfig@ha
/* 8056FDCC 3BA00000 */ li          r29, 0
/* 8056FDD0 8063D728 */ lwz         r3, spInstance__Q26System10RaceConfig@l(r3)
/* 8056FDD4 80630B70 */ lwz         r3, 0xb70(r3)
/* 8056FDD8 3863FFFD */ addi        r3, r3, -3
/* 8056FDDC 28030007 */ cmplwi      r3, 7
/* 8056FDE0 41810018 */ bgt-        lbl_8056fdf8
/* 8056FDE4 38000001 */ li          r0, 1
/* 8056FDE8 7C001830 */ slw         r0, r0, r3
/* 8056FDEC 700000C1 */ andi.       r0, r0, 0xc1
/* 8056FDF0 41820008 */ beq-        lbl_8056fdf8
/* 8056FDF4 3BA00001 */ li          r29, 1
lbl_8056fdf8:
/* 8056FDF8 2C1B0000 */ cmpwi       r27, 0
/* 8056FDFC 3A400000 */ li          r18, 0
/* 8056FE00 40820938 */ bne-        lbl_80570738
/* 8056FE04 2C140000 */ cmpwi       r20, 0
/* 8056FE08 4182000C */ beq-        lbl_8056fe14
/* 8056FE0C 2C130000 */ cmpwi       r19, 0
/* 8056FE10 41820014 */ beq-        lbl_8056fe24
lbl_8056fe14:
/* 8056FE14 2C140000 */ cmpwi       r20, 0
/* 8056FE18 408201AC */ bne-        lbl_8056ffc4
/* 8056FE1C 2C130000 */ cmpwi       r19, 0
/* 8056FE20 418201A4 */ beq-        lbl_8056ffc4
lbl_8056fe24:
/* 8056FE24 2C130000 */ cmpwi       r19, 0
/* 8056FE28 38000000 */ li          r0, 0
/* 8056FE2C 38600000 */ li          r3, 0
/* 8056FE30 4182001C */ beq-        lbl_8056fe4c
/* 8056FE34 2C140000 */ cmpwi       r20, 0
/* 8056FE38 40820014 */ bne-        lbl_8056fe4c
/* 8056FE3C 2C1A0000 */ cmpwi       r26, 0
/* 8056FE40 4082000C */ bne-        lbl_8056fe4c
/* 8056FE44 38000001 */ li          r0, 1
/* 8056FE48 48000020 */ b           lbl_8056fe68
lbl_8056fe4c:
/* 8056FE4C 2C140000 */ cmpwi       r20, 0
/* 8056FE50 41820018 */ beq-        lbl_8056fe68
/* 8056FE54 2C130000 */ cmpwi       r19, 0
/* 8056FE58 40820010 */ bne-        lbl_8056fe68
/* 8056FE5C 2C190000 */ cmpwi       r25, 0
/* 8056FE60 40820008 */ bne-        lbl_8056fe68
/* 8056FE64 38600001 */ li          r3, 1
lbl_8056fe68:
/* 8056FE68 2C000000 */ cmpwi       r0, 0
/* 8056FE6C 418200C4 */ beq-        lbl_8056ff30
/* 8056FE70 80C10080 */ lwz         r6, 0x80(r1)
/* 8056FE74 387E0004 */ addi        r3, r30, 4
/* 8056FE78 90C10044 */ stw         r6, 0x44(r1)
/* 8056FE7C 38810044 */ addi        r4, r1, 0x44
/* 8056FE80 80A10084 */ lwz         r5, 0x84(r1)
/* 8056FE84 80010088 */ lwz         r0, 0x88(r1)
/* 8056FE88 90A10048 */ stw         r5, 0x48(r1)
/* 8056FE8C C0010044 */ lfs         f0, 0x44(r1)
/* 8056FE90 C0210048 */ lfs         f1, 0x48(r1)
/* 8056FE94 FC400050 */ fneg        f2, f0
/* 8056FE98 9001004C */ stw         r0, 0x4c(r1)
/* 8056FE9C FC200850 */ fneg        f1, f1
/* 8056FEA0 C001004C */ lfs         f0, 0x4c(r1)
/* 8056FEA4 D0410044 */ stfs        f2, 0x44(r1)
/* 8056FEA8 FC000050 */ fneg        f0, f0
/* 8056FEAC D0210048 */ stfs        f1, 0x48(r1)
/* 8056FEB0 D001004C */ stfs        f0, 0x4c(r1)
/* 8056FEB4 48020E85 */ bl          unk_80590d38
/* 8056FEB8 7FE3FB78 */ mr          r3, r31
/* 8056FEBC 48020BA1 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8056FEC0 7C731B78 */ mr          r19, r3
/* 8056FEC4 387E0004 */ addi        r3, r30, 4
/* 8056FEC8 48020E59 */ bl          kartAction__Q24Kart15KartObjectProxyFv
/* 8056FECC 8183000C */ lwz         r12, 0xc(r3)
/* 8056FED0 5668063E */ clrlwi      r8, r19, 0x18
/* 8056FED4 38800006 */ li          r4, 6
/* 8056FED8 38A00001 */ li          r5, 1
/* 8056FEDC 818C000C */ lwz         r12, 0xc(r12)
/* 8056FEE0 38C00001 */ li          r6, 1
/* 8056FEE4 38E00000 */ li          r7, 0
/* 8056FEE8 39200000 */ li          r9, 0
/* 8056FEEC 7D8903A6 */ mtctr       r12
/* 8056FEF0 4E800421 */ bctrl       
/* 8056FEF4 2C030000 */ cmpwi       r3, 0
/* 8056FEF8 41820844 */ beq-        lbl_8057073c
/* 8056FEFC 387E0004 */ addi        r3, r30, 4
/* 8056FF00 48020895 */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 8056FF04 81830000 */ lwz         r12, 0(r3)
/* 8056FF08 38800110 */ li          r4, 0x110
/* 8056FF0C C03C0000 */ lfs         f1, 0(r28)
/* 8056FF10 818C00E4 */ lwz         r12, 0xe4(r12)
/* 8056FF14 7D8903A6 */ mtctr       r12
/* 8056FF18 4E800421 */ bctrl       
/* 8056FF1C 387E0004 */ addi        r3, r30, 4
/* 8056FF20 480219C1 */ bl          unk_805918e0
/* 8056FF24 7FE3FB78 */ mr          r3, r31
/* 8056FF28 48021995 */ bl          unk_805918bc
/* 8056FF2C 48000810 */ b           lbl_8057073c
lbl_8056ff30:
/* 8056FF30 2C030000 */ cmpwi       r3, 0
/* 8056FF34 41820088 */ beq-        lbl_8056ffbc
/* 8056FF38 7FE3FB78 */ mr          r3, r31
/* 8056FF3C 38810080 */ addi        r4, r1, 0x80
/* 8056FF40 48020DF9 */ bl          unk_80590d38
/* 8056FF44 387E0004 */ addi        r3, r30, 4
/* 8056FF48 48020B15 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8056FF4C 7C731B78 */ mr          r19, r3
/* 8056FF50 7FE3FB78 */ mr          r3, r31
/* 8056FF54 48020DCD */ bl          kartAction__Q24Kart15KartObjectProxyFv
/* 8056FF58 8183000C */ lwz         r12, 0xc(r3)
/* 8056FF5C 5668063E */ clrlwi      r8, r19, 0x18
/* 8056FF60 38800006 */ li          r4, 6
/* 8056FF64 38A00001 */ li          r5, 1
/* 8056FF68 818C000C */ lwz         r12, 0xc(r12)
/* 8056FF6C 38C00001 */ li          r6, 1
/* 8056FF70 38E00000 */ li          r7, 0
/* 8056FF74 39200000 */ li          r9, 0
/* 8056FF78 7D8903A6 */ mtctr       r12
/* 8056FF7C 4E800421 */ bctrl       
/* 8056FF80 2C030000 */ cmpwi       r3, 0
/* 8056FF84 418207B8 */ beq-        lbl_8057073c
/* 8056FF88 7FE3FB78 */ mr          r3, r31
/* 8056FF8C 48020809 */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 8056FF90 81830000 */ lwz         r12, 0(r3)
/* 8056FF94 38800110 */ li          r4, 0x110
/* 8056FF98 C03C0000 */ lfs         f1, 0(r28)
/* 8056FF9C 818C00E4 */ lwz         r12, 0xe4(r12)
/* 8056FFA0 7D8903A6 */ mtctr       r12
/* 8056FFA4 4E800421 */ bctrl       
/* 8056FFA8 387E0004 */ addi        r3, r30, 4
/* 8056FFAC 48021911 */ bl          unk_805918bc
/* 8056FFB0 7FE3FB78 */ mr          r3, r31
/* 8056FFB4 4802192D */ bl          unk_805918e0
/* 8056FFB8 48000784 */ b           lbl_8057073c
lbl_8056ffbc:
/* 8056FFBC 3A400001 */ li          r18, 1
/* 8056FFC0 4800077C */ b           lbl_8057073c
lbl_8056ffc4:
/* 8056FFC4 2C1A0000 */ cmpwi       r26, 0
/* 8056FFC8 4182000C */ beq-        lbl_8056ffd4
/* 8056FFCC 2C190000 */ cmpwi       r25, 0
/* 8056FFD0 41820014 */ beq-        lbl_8056ffe4
lbl_8056ffd4:
/* 8056FFD4 2C1A0000 */ cmpwi       r26, 0
/* 8056FFD8 408203CC */ bne-        lbl_805703a4
/* 8056FFDC 2C190000 */ cmpwi       r25, 0
/* 8056FFE0 418203C4 */ beq-        lbl_805703a4
lbl_8056ffe4:
/* 8056FFE4 2C190000 */ cmpwi       r25, 0
/* 8056FFE8 38000000 */ li          r0, 0
/* 8056FFEC 38600000 */ li          r3, 0
/* 8056FFF0 4182001C */ beq-        lbl_8057000c
/* 8056FFF4 2C140000 */ cmpwi       r20, 0
/* 8056FFF8 40820014 */ bne-        lbl_8057000c
/* 8056FFFC 2C1A0000 */ cmpwi       r26, 0
/* 80570000 4082000C */ bne-        lbl_8057000c
/* 80570004 38000001 */ li          r0, 1
/* 80570008 48000020 */ b           lbl_80570028
lbl_8057000c:
/* 8057000C 2C1A0000 */ cmpwi       r26, 0
/* 80570010 41820018 */ beq-        lbl_80570028
/* 80570014 2C130000 */ cmpwi       r19, 0
/* 80570018 40820010 */ bne-        lbl_80570028
/* 8057001C 2C190000 */ cmpwi       r25, 0
/* 80570020 40820008 */ bne-        lbl_80570028
/* 80570024 38600001 */ li          r3, 1
lbl_80570028:
/* 80570028 2C000000 */ cmpwi       r0, 0
/* 8057002C 418201D4 */ beq-        lbl_80570200
/* 80570030 80C10080 */ lwz         r6, 0x80(r1)
/* 80570034 387E0004 */ addi        r3, r30, 4
/* 80570038 90C10038 */ stw         r6, 0x38(r1)
/* 8057003C 38810038 */ addi        r4, r1, 0x38
/* 80570040 80A10084 */ lwz         r5, 0x84(r1)
/* 80570044 80010088 */ lwz         r0, 0x88(r1)
/* 80570048 90A1003C */ stw         r5, 0x3c(r1)
/* 8057004C C0010038 */ lfs         f0, 0x38(r1)
/* 80570050 C021003C */ lfs         f1, 0x3c(r1)
/* 80570054 FC400050 */ fneg        f2, f0
/* 80570058 90010040 */ stw         r0, 0x40(r1)
/* 8057005C FC200850 */ fneg        f1, f1
/* 80570060 C0010040 */ lfs         f0, 0x40(r1)
/* 80570064 D0410038 */ stfs        f2, 0x38(r1)
/* 80570068 FC000050 */ fneg        f0, f0
/* 8057006C D021003C */ stfs        f1, 0x3c(r1)
/* 80570070 D0010040 */ stfs        f0, 0x40(r1)
/* 80570074 48020CC5 */ bl          unk_80590d38
/* 80570078 7FE3FB78 */ mr          r3, r31
/* 8057007C 480209E1 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80570080 7C731B78 */ mr          r19, r3
/* 80570084 387E0004 */ addi        r3, r30, 4
/* 80570088 48020C99 */ bl          kartAction__Q24Kart15KartObjectProxyFv
/* 8057008C 8183000C */ lwz         r12, 0xc(r3)
/* 80570090 5668063E */ clrlwi      r8, r19, 0x18
/* 80570094 38800003 */ li          r4, 3
/* 80570098 38A00001 */ li          r5, 1
/* 8057009C 818C000C */ lwz         r12, 0xc(r12)
/* 805700A0 38C00001 */ li          r6, 1
/* 805700A4 38E00000 */ li          r7, 0
/* 805700A8 39200000 */ li          r9, 0
/* 805700AC 7D8903A6 */ mtctr       r12
/* 805700B0 4E800421 */ bctrl       
/* 805700B4 2C030000 */ cmpwi       r3, 0
/* 805700B8 41820684 */ beq-        lbl_8057073c
/* 805700BC 387E0004 */ addi        r3, r30, 4
/* 805700C0 480206D5 */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 805700C4 81830000 */ lwz         r12, 0(r3)
/* 805700C8 38800110 */ li          r4, 0x110
/* 805700CC C03C0000 */ lfs         f1, 0(r28)
/* 805700D0 818C00E4 */ lwz         r12, 0xe4(r12)
/* 805700D4 7D8903A6 */ mtctr       r12
/* 805700D8 4E800421 */ bctrl       
/* 805700DC 7FE3FB78 */ mr          r3, r31
/* 805700E0 38800005 */ li          r4, 5
/* 805700E4 480206CD */ bl          unk_805907b0
/* 805700E8 C03C0004 */ lfs         f1, 4(r28)
/* 805700EC 7FE3FB78 */ mr          r3, r31
/* 805700F0 38800018 */ li          r4, 0x18
/* 805700F4 38A00001 */ li          r5, 1
/* 805700F8 48020325 */ bl          unk_8059041c
/* 805700FC 2C1D0000 */ cmpwi       r29, 0
/* 80570100 418200EC */ beq-        lbl_805701ec
/* 80570104 7FE3FB78 */ mr          r3, r31
/* 80570108 48020955 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8057010C 7C731B78 */ mr          r19, r3
/* 80570110 387E0004 */ addi        r3, r30, 4
/* 80570114 48020949 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80570118 3C80809C */ lis         r4, spInstance__Q26System10RaceConfig@ha
/* 8057011C 3CA0809C */ lis         r5, spInstance__Q26System11RaceManager@ha
/* 80570120 8084D728 */ lwz         r4, spInstance__Q26System10RaceConfig@l(r4)
/* 80570124 7C601B78 */ mr          r0, r3
/* 80570128 8065D730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r5)
/* 8057012C 80A40B70 */ lwz         r5, 0xb70(r4)
/* 80570130 2C050003 */ cmpwi       r5, 3
/* 80570134 40820058 */ bne-        lbl_8057018c
/* 80570138 80840B78 */ lwz         r4, 0xb78(r4)
/* 8057013C 2C040000 */ cmpwi       r4, 0
/* 80570140 40820024 */ bne-        lbl_80570164
/* 80570144 80630010 */ lwz         r3, 0x10(r3)
/* 80570148 5404063E */ clrlwi      r4, r0, 0x18
/* 8057014C 5665063E */ clrlwi      r5, r19, 0x18
/* 80570150 81830000 */ lwz         r12, 0(r3)
/* 80570154 818C0030 */ lwz         r12, 0x30(r12)
/* 80570158 7D8903A6 */ mtctr       r12
/* 8057015C 4E800421 */ bctrl       
/* 80570160 4800008C */ b           lbl_805701ec
lbl_80570164:
/* 80570164 2C040001 */ cmpwi       r4, 1
/* 80570168 40820084 */ bne-        lbl_805701ec
/* 8057016C 80630010 */ lwz         r3, 0x10(r3)
/* 80570170 5404063E */ clrlwi      r4, r0, 0x18
/* 80570174 5665063E */ clrlwi      r5, r19, 0x18
/* 80570178 81830000 */ lwz         r12, 0(r3)
/* 8057017C 818C0030 */ lwz         r12, 0x30(r12)
/* 80570180 7D8903A6 */ mtctr       r12
/* 80570184 4E800421 */ bctrl       
/* 80570188 48000064 */ b           lbl_805701ec
lbl_8057018c:
/* 8057018C 2C050009 */ cmpwi       r5, 9
/* 80570190 4182000C */ beq-        lbl_8057019c
/* 80570194 2C05000A */ cmpwi       r5, 0xa
/* 80570198 40820054 */ bne-        lbl_805701ec
lbl_8057019c:
/* 8057019C 80840B78 */ lwz         r4, 0xb78(r4)
/* 805701A0 2C040000 */ cmpwi       r4, 0
/* 805701A4 40820024 */ bne-        lbl_805701c8
/* 805701A8 80630010 */ lwz         r3, 0x10(r3)
/* 805701AC 5404063E */ clrlwi      r4, r0, 0x18
/* 805701B0 5665063E */ clrlwi      r5, r19, 0x18
/* 805701B4 81830000 */ lwz         r12, 0(r3)
/* 805701B8 818C0030 */ lwz         r12, 0x30(r12)
/* 805701BC 7D8903A6 */ mtctr       r12
/* 805701C0 4E800421 */ bctrl       
/* 805701C4 48000028 */ b           lbl_805701ec
lbl_805701c8:
/* 805701C8 2C040001 */ cmpwi       r4, 1
/* 805701CC 40820020 */ bne-        lbl_805701ec
/* 805701D0 80630010 */ lwz         r3, 0x10(r3)
/* 805701D4 5404063E */ clrlwi      r4, r0, 0x18
/* 805701D8 5665063E */ clrlwi      r5, r19, 0x18
/* 805701DC 81830000 */ lwz         r12, 0(r3)
/* 805701E0 818C0030 */ lwz         r12, 0x30(r12)
/* 805701E4 7D8903A6 */ mtctr       r12
/* 805701E8 4E800421 */ bctrl       
lbl_805701ec:
/* 805701EC 387E0004 */ addi        r3, r30, 4
/* 805701F0 480216F1 */ bl          unk_805918e0
/* 805701F4 7FE3FB78 */ mr          r3, r31
/* 805701F8 480216C5 */ bl          unk_805918bc
/* 805701FC 48000540 */ b           lbl_8057073c
lbl_80570200:
/* 80570200 2C030000 */ cmpwi       r3, 0
/* 80570204 41820198 */ beq-        lbl_8057039c
/* 80570208 7FE3FB78 */ mr          r3, r31
/* 8057020C 38810080 */ addi        r4, r1, 0x80
/* 80570210 48020B29 */ bl          unk_80590d38
/* 80570214 387E0004 */ addi        r3, r30, 4
/* 80570218 48020845 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8057021C 7C731B78 */ mr          r19, r3
/* 80570220 7FE3FB78 */ mr          r3, r31
/* 80570224 48020AFD */ bl          kartAction__Q24Kart15KartObjectProxyFv
/* 80570228 8183000C */ lwz         r12, 0xc(r3)
/* 8057022C 5668063E */ clrlwi      r8, r19, 0x18
/* 80570230 38800003 */ li          r4, 3
/* 80570234 38A00001 */ li          r5, 1
/* 80570238 818C000C */ lwz         r12, 0xc(r12)
/* 8057023C 38C00001 */ li          r6, 1
/* 80570240 38E00000 */ li          r7, 0
/* 80570244 39200000 */ li          r9, 0
/* 80570248 7D8903A6 */ mtctr       r12
/* 8057024C 4E800421 */ bctrl       
/* 80570250 2C030000 */ cmpwi       r3, 0
/* 80570254 418204E8 */ beq-        lbl_8057073c
/* 80570258 7FE3FB78 */ mr          r3, r31
/* 8057025C 48020539 */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 80570260 81830000 */ lwz         r12, 0(r3)
/* 80570264 38800110 */ li          r4, 0x110
/* 80570268 C03C0000 */ lfs         f1, 0(r28)
/* 8057026C 818C00E4 */ lwz         r12, 0xe4(r12)
/* 80570270 7D8903A6 */ mtctr       r12
/* 80570274 4E800421 */ bctrl       
/* 80570278 387E0004 */ addi        r3, r30, 4
/* 8057027C 38800005 */ li          r4, 5
/* 80570280 48020531 */ bl          unk_805907b0
/* 80570284 C03C0004 */ lfs         f1, 4(r28)
/* 80570288 387E0004 */ addi        r3, r30, 4
/* 8057028C 38800018 */ li          r4, 0x18
/* 80570290 38A00001 */ li          r5, 1
/* 80570294 48020189 */ bl          unk_8059041c
/* 80570298 2C1D0000 */ cmpwi       r29, 0
/* 8057029C 418200EC */ beq-        lbl_80570388
/* 805702A0 387E0004 */ addi        r3, r30, 4
/* 805702A4 480207B9 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 805702A8 7C731B78 */ mr          r19, r3
/* 805702AC 7FE3FB78 */ mr          r3, r31
/* 805702B0 480207AD */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 805702B4 3C80809C */ lis         r4, spInstance__Q26System10RaceConfig@ha
/* 805702B8 3CA0809C */ lis         r5, spInstance__Q26System11RaceManager@ha
/* 805702BC 8084D728 */ lwz         r4, spInstance__Q26System10RaceConfig@l(r4)
/* 805702C0 7C601B78 */ mr          r0, r3
/* 805702C4 8065D730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r5)
/* 805702C8 80A40B70 */ lwz         r5, 0xb70(r4)
/* 805702CC 2C050003 */ cmpwi       r5, 3
/* 805702D0 40820058 */ bne-        lbl_80570328
/* 805702D4 80840B78 */ lwz         r4, 0xb78(r4)
/* 805702D8 2C040000 */ cmpwi       r4, 0
/* 805702DC 40820024 */ bne-        lbl_80570300
/* 805702E0 80630010 */ lwz         r3, 0x10(r3)
/* 805702E4 5404063E */ clrlwi      r4, r0, 0x18
/* 805702E8 5665063E */ clrlwi      r5, r19, 0x18
/* 805702EC 81830000 */ lwz         r12, 0(r3)
/* 805702F0 818C0030 */ lwz         r12, 0x30(r12)
/* 805702F4 7D8903A6 */ mtctr       r12
/* 805702F8 4E800421 */ bctrl       
/* 805702FC 4800008C */ b           lbl_80570388
lbl_80570300:
/* 80570300 2C040001 */ cmpwi       r4, 1
/* 80570304 40820084 */ bne-        lbl_80570388
/* 80570308 80630010 */ lwz         r3, 0x10(r3)
/* 8057030C 5404063E */ clrlwi      r4, r0, 0x18
/* 80570310 5665063E */ clrlwi      r5, r19, 0x18
/* 80570314 81830000 */ lwz         r12, 0(r3)
/* 80570318 818C0030 */ lwz         r12, 0x30(r12)
/* 8057031C 7D8903A6 */ mtctr       r12
/* 80570320 4E800421 */ bctrl       
/* 80570324 48000064 */ b           lbl_80570388
lbl_80570328:
/* 80570328 2C050009 */ cmpwi       r5, 9
/* 8057032C 4182000C */ beq-        lbl_80570338
/* 80570330 2C05000A */ cmpwi       r5, 0xa
/* 80570334 40820054 */ bne-        lbl_80570388
lbl_80570338:
/* 80570338 80840B78 */ lwz         r4, 0xb78(r4)
/* 8057033C 2C040000 */ cmpwi       r4, 0
/* 80570340 40820024 */ bne-        lbl_80570364
/* 80570344 80630010 */ lwz         r3, 0x10(r3)
/* 80570348 5404063E */ clrlwi      r4, r0, 0x18
/* 8057034C 5665063E */ clrlwi      r5, r19, 0x18
/* 80570350 81830000 */ lwz         r12, 0(r3)
/* 80570354 818C0030 */ lwz         r12, 0x30(r12)
/* 80570358 7D8903A6 */ mtctr       r12
/* 8057035C 4E800421 */ bctrl       
/* 80570360 48000028 */ b           lbl_80570388
lbl_80570364:
/* 80570364 2C040001 */ cmpwi       r4, 1
/* 80570368 40820020 */ bne-        lbl_80570388
/* 8057036C 80630010 */ lwz         r3, 0x10(r3)
/* 80570370 5404063E */ clrlwi      r4, r0, 0x18
/* 80570374 5665063E */ clrlwi      r5, r19, 0x18
/* 80570378 81830000 */ lwz         r12, 0(r3)
/* 8057037C 818C0030 */ lwz         r12, 0x30(r12)
/* 80570380 7D8903A6 */ mtctr       r12
/* 80570384 4E800421 */ bctrl       
lbl_80570388:
/* 80570388 387E0004 */ addi        r3, r30, 4
/* 8057038C 48021531 */ bl          unk_805918bc
/* 80570390 7FE3FB78 */ mr          r3, r31
/* 80570394 4802154D */ bl          unk_805918e0
/* 80570398 480003A4 */ b           lbl_8057073c
lbl_8057039c:
/* 8057039C 3A400001 */ li          r18, 1
/* 805703A0 4800039C */ b           lbl_8057073c
lbl_805703a4:
/* 805703A4 2C180000 */ cmpwi       r24, 0
/* 805703A8 41820014 */ beq-        lbl_805703bc
/* 805703AC 2C170000 */ cmpwi       r23, 0
/* 805703B0 4082000C */ bne-        lbl_805703bc
/* 805703B4 2C150000 */ cmpwi       r21, 0
/* 805703B8 4182001C */ beq-        lbl_805703d4
lbl_805703bc:
/* 805703BC 2C180000 */ cmpwi       r24, 0
/* 805703C0 40820370 */ bne-        lbl_80570730
/* 805703C4 2C160000 */ cmpwi       r22, 0
/* 805703C8 40820368 */ bne-        lbl_80570730
/* 805703CC 2C170000 */ cmpwi       r23, 0
/* 805703D0 41820360 */ beq-        lbl_80570730
lbl_805703d4:
/* 805703D4 2C170000 */ cmpwi       r23, 0
/* 805703D8 38000000 */ li          r0, 0
/* 805703DC 38600000 */ li          r3, 0
/* 805703E0 41820014 */ beq-        lbl_805703f4
/* 805703E4 2C180000 */ cmpwi       r24, 0
/* 805703E8 4082000C */ bne-        lbl_805703f4
/* 805703EC 38000001 */ li          r0, 1
/* 805703F0 48000018 */ b           lbl_80570408
lbl_805703f4:
/* 805703F4 2C180000 */ cmpwi       r24, 0
/* 805703F8 41820010 */ beq-        lbl_80570408
/* 805703FC 2C170000 */ cmpwi       r23, 0
/* 80570400 40820008 */ bne-        lbl_80570408
/* 80570404 38600001 */ li          r3, 1
lbl_80570408:
/* 80570408 2C000000 */ cmpwi       r0, 0
/* 8057040C 4182018C */ beq-        lbl_80570598
/* 80570410 7FE3FB78 */ mr          r3, r31
/* 80570414 48020649 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80570418 7C731B78 */ mr          r19, r3
/* 8057041C 387E0004 */ addi        r3, r30, 4
/* 80570420 48020901 */ bl          kartAction__Q24Kart15KartObjectProxyFv
/* 80570424 8183000C */ lwz         r12, 0xc(r3)
/* 80570428 5668063E */ clrlwi      r8, r19, 0x18
/* 8057042C 3880000D */ li          r4, 0xd
/* 80570430 38A00001 */ li          r5, 1
/* 80570434 818C000C */ lwz         r12, 0xc(r12)
/* 80570438 38C00000 */ li          r6, 0
/* 8057043C 38E00000 */ li          r7, 0
/* 80570440 39200000 */ li          r9, 0
/* 80570444 7D8903A6 */ mtctr       r12
/* 80570448 4E800421 */ bctrl       
/* 8057044C 2C030000 */ cmpwi       r3, 0
/* 80570450 418202EC */ beq-        lbl_8057073c
/* 80570454 387E0004 */ addi        r3, r30, 4
/* 80570458 4802033D */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 8057045C 81830000 */ lwz         r12, 0(r3)
/* 80570460 38800110 */ li          r4, 0x110
/* 80570464 C03C0000 */ lfs         f1, 0(r28)
/* 80570468 818C00E4 */ lwz         r12, 0xe4(r12)
/* 8057046C 7D8903A6 */ mtctr       r12
/* 80570470 4E800421 */ bctrl       
/* 80570474 7FE3FB78 */ mr          r3, r31
/* 80570478 38800005 */ li          r4, 5
/* 8057047C 48020335 */ bl          unk_805907b0
/* 80570480 C03C0004 */ lfs         f1, 4(r28)
/* 80570484 7FE3FB78 */ mr          r3, r31
/* 80570488 3880001C */ li          r4, 0x1c
/* 8057048C 38A00001 */ li          r5, 1
/* 80570490 4801FF8D */ bl          unk_8059041c
/* 80570494 2C1D0000 */ cmpwi       r29, 0
/* 80570498 418200EC */ beq-        lbl_80570584
/* 8057049C 387E0004 */ addi        r3, r30, 4
/* 805704A0 480205BD */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 805704A4 7C731B78 */ mr          r19, r3
/* 805704A8 7FE3FB78 */ mr          r3, r31
/* 805704AC 480205B1 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 805704B0 3C80809C */ lis         r4, spInstance__Q26System10RaceConfig@ha
/* 805704B4 3CA0809C */ lis         r5, spInstance__Q26System11RaceManager@ha
/* 805704B8 8084D728 */ lwz         r4, spInstance__Q26System10RaceConfig@l(r4)
/* 805704BC 7C601B78 */ mr          r0, r3
/* 805704C0 8065D730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r5)
/* 805704C4 80A40B70 */ lwz         r5, 0xb70(r4)
/* 805704C8 2C050003 */ cmpwi       r5, 3
/* 805704CC 40820058 */ bne-        lbl_80570524
/* 805704D0 80840B78 */ lwz         r4, 0xb78(r4)
/* 805704D4 2C040000 */ cmpwi       r4, 0
/* 805704D8 40820024 */ bne-        lbl_805704fc
/* 805704DC 80630010 */ lwz         r3, 0x10(r3)
/* 805704E0 5404063E */ clrlwi      r4, r0, 0x18
/* 805704E4 5665063E */ clrlwi      r5, r19, 0x18
/* 805704E8 81830000 */ lwz         r12, 0(r3)
/* 805704EC 818C002C */ lwz         r12, 0x2c(r12)
/* 805704F0 7D8903A6 */ mtctr       r12
/* 805704F4 4E800421 */ bctrl       
/* 805704F8 4800008C */ b           lbl_80570584
lbl_805704fc:
/* 805704FC 2C040001 */ cmpwi       r4, 1
/* 80570500 40820084 */ bne-        lbl_80570584
/* 80570504 80630010 */ lwz         r3, 0x10(r3)
/* 80570508 5404063E */ clrlwi      r4, r0, 0x18
/* 8057050C 5665063E */ clrlwi      r5, r19, 0x18
/* 80570510 81830000 */ lwz         r12, 0(r3)
/* 80570514 818C002C */ lwz         r12, 0x2c(r12)
/* 80570518 7D8903A6 */ mtctr       r12
/* 8057051C 4E800421 */ bctrl       
/* 80570520 48000064 */ b           lbl_80570584
lbl_80570524:
/* 80570524 2C050009 */ cmpwi       r5, 9
/* 80570528 4182000C */ beq-        lbl_80570534
/* 8057052C 2C05000A */ cmpwi       r5, 0xa
/* 80570530 40820054 */ bne-        lbl_80570584
lbl_80570534:
/* 80570534 80840B78 */ lwz         r4, 0xb78(r4)
/* 80570538 2C040000 */ cmpwi       r4, 0
/* 8057053C 40820024 */ bne-        lbl_80570560
/* 80570540 80630010 */ lwz         r3, 0x10(r3)
/* 80570544 5404063E */ clrlwi      r4, r0, 0x18
/* 80570548 5665063E */ clrlwi      r5, r19, 0x18
/* 8057054C 81830000 */ lwz         r12, 0(r3)
/* 80570550 818C002C */ lwz         r12, 0x2c(r12)
/* 80570554 7D8903A6 */ mtctr       r12
/* 80570558 4E800421 */ bctrl       
/* 8057055C 48000028 */ b           lbl_80570584
lbl_80570560:
/* 80570560 2C040001 */ cmpwi       r4, 1
/* 80570564 40820020 */ bne-        lbl_80570584
/* 80570568 80630010 */ lwz         r3, 0x10(r3)
/* 8057056C 5404063E */ clrlwi      r4, r0, 0x18
/* 80570570 5665063E */ clrlwi      r5, r19, 0x18
/* 80570574 81830000 */ lwz         r12, 0(r3)
/* 80570578 818C002C */ lwz         r12, 0x2c(r12)
/* 8057057C 7D8903A6 */ mtctr       r12
/* 80570580 4E800421 */ bctrl       
lbl_80570584:
/* 80570584 387E0004 */ addi        r3, r30, 4
/* 80570588 48021359 */ bl          unk_805918e0
/* 8057058C 7FE3FB78 */ mr          r3, r31
/* 80570590 4802132D */ bl          unk_805918bc
/* 80570594 480001A8 */ b           lbl_8057073c
lbl_80570598:
/* 80570598 2C030000 */ cmpwi       r3, 0
/* 8057059C 4182018C */ beq-        lbl_80570728
/* 805705A0 387E0004 */ addi        r3, r30, 4
/* 805705A4 480204B9 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 805705A8 7C731B78 */ mr          r19, r3
/* 805705AC 7FE3FB78 */ mr          r3, r31
/* 805705B0 48020771 */ bl          kartAction__Q24Kart15KartObjectProxyFv
/* 805705B4 8183000C */ lwz         r12, 0xc(r3)
/* 805705B8 5668063E */ clrlwi      r8, r19, 0x18
/* 805705BC 3880000D */ li          r4, 0xd
/* 805705C0 38A00001 */ li          r5, 1
/* 805705C4 818C000C */ lwz         r12, 0xc(r12)
/* 805705C8 38C00000 */ li          r6, 0
/* 805705CC 38E00000 */ li          r7, 0
/* 805705D0 39200000 */ li          r9, 0
/* 805705D4 7D8903A6 */ mtctr       r12
/* 805705D8 4E800421 */ bctrl       
/* 805705DC 2C030000 */ cmpwi       r3, 0
/* 805705E0 4182015C */ beq-        lbl_8057073c
/* 805705E4 7FE3FB78 */ mr          r3, r31
/* 805705E8 480201AD */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 805705EC 81830000 */ lwz         r12, 0(r3)
/* 805705F0 38800110 */ li          r4, 0x110
/* 805705F4 C03C0000 */ lfs         f1, 0(r28)
/* 805705F8 818C00E4 */ lwz         r12, 0xe4(r12)
/* 805705FC 7D8903A6 */ mtctr       r12
/* 80570600 4E800421 */ bctrl       
/* 80570604 387E0004 */ addi        r3, r30, 4
/* 80570608 38800005 */ li          r4, 5
/* 8057060C 480201A5 */ bl          unk_805907b0
/* 80570610 C03C0004 */ lfs         f1, 4(r28)
/* 80570614 387E0004 */ addi        r3, r30, 4
/* 80570618 3880001C */ li          r4, 0x1c
/* 8057061C 38A00001 */ li          r5, 1
/* 80570620 4801FDFD */ bl          unk_8059041c
/* 80570624 2C1D0000 */ cmpwi       r29, 0
/* 80570628 418200EC */ beq-        lbl_80570714
/* 8057062C 7FE3FB78 */ mr          r3, r31
/* 80570630 4802042D */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80570634 7C731B78 */ mr          r19, r3
/* 80570638 387E0004 */ addi        r3, r30, 4
/* 8057063C 48020421 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80570640 3C80809C */ lis         r4, spInstance__Q26System10RaceConfig@ha
/* 80570644 3CA0809C */ lis         r5, spInstance__Q26System11RaceManager@ha
/* 80570648 8084D728 */ lwz         r4, spInstance__Q26System10RaceConfig@l(r4)
/* 8057064C 7C601B78 */ mr          r0, r3
/* 80570650 8065D730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r5)
/* 80570654 80A40B70 */ lwz         r5, 0xb70(r4)
/* 80570658 2C050003 */ cmpwi       r5, 3
/* 8057065C 40820058 */ bne-        lbl_805706b4
/* 80570660 80840B78 */ lwz         r4, 0xb78(r4)
/* 80570664 2C040000 */ cmpwi       r4, 0
/* 80570668 40820024 */ bne-        lbl_8057068c
/* 8057066C 80630010 */ lwz         r3, 0x10(r3)
/* 80570670 5404063E */ clrlwi      r4, r0, 0x18
/* 80570674 5665063E */ clrlwi      r5, r19, 0x18
/* 80570678 81830000 */ lwz         r12, 0(r3)
/* 8057067C 818C002C */ lwz         r12, 0x2c(r12)
/* 80570680 7D8903A6 */ mtctr       r12
/* 80570684 4E800421 */ bctrl       
/* 80570688 4800008C */ b           lbl_80570714
lbl_8057068c:
/* 8057068C 2C040001 */ cmpwi       r4, 1
/* 80570690 40820084 */ bne-        lbl_80570714
/* 80570694 80630010 */ lwz         r3, 0x10(r3)
/* 80570698 5404063E */ clrlwi      r4, r0, 0x18
/* 8057069C 5665063E */ clrlwi      r5, r19, 0x18
/* 805706A0 81830000 */ lwz         r12, 0(r3)
/* 805706A4 818C002C */ lwz         r12, 0x2c(r12)
/* 805706A8 7D8903A6 */ mtctr       r12
/* 805706AC 4E800421 */ bctrl       
/* 805706B0 48000064 */ b           lbl_80570714
lbl_805706b4:
/* 805706B4 2C050009 */ cmpwi       r5, 9
/* 805706B8 4182000C */ beq-        lbl_805706c4
/* 805706BC 2C05000A */ cmpwi       r5, 0xa
/* 805706C0 40820054 */ bne-        lbl_80570714
lbl_805706c4:
/* 805706C4 80840B78 */ lwz         r4, 0xb78(r4)
/* 805706C8 2C040000 */ cmpwi       r4, 0
/* 805706CC 40820024 */ bne-        lbl_805706f0
/* 805706D0 80630010 */ lwz         r3, 0x10(r3)
/* 805706D4 5404063E */ clrlwi      r4, r0, 0x18
/* 805706D8 5665063E */ clrlwi      r5, r19, 0x18
/* 805706DC 81830000 */ lwz         r12, 0(r3)
/* 805706E0 818C002C */ lwz         r12, 0x2c(r12)
/* 805706E4 7D8903A6 */ mtctr       r12
/* 805706E8 4E800421 */ bctrl       
/* 805706EC 48000028 */ b           lbl_80570714
lbl_805706f0:
/* 805706F0 2C040001 */ cmpwi       r4, 1
/* 805706F4 40820020 */ bne-        lbl_80570714
/* 805706F8 80630010 */ lwz         r3, 0x10(r3)
/* 805706FC 5404063E */ clrlwi      r4, r0, 0x18
/* 80570700 5665063E */ clrlwi      r5, r19, 0x18
/* 80570704 81830000 */ lwz         r12, 0(r3)
/* 80570708 818C002C */ lwz         r12, 0x2c(r12)
/* 8057070C 7D8903A6 */ mtctr       r12
/* 80570710 4E800421 */ bctrl       
lbl_80570714:
/* 80570714 387E0004 */ addi        r3, r30, 4
/* 80570718 480211A5 */ bl          unk_805918bc
/* 8057071C 7FE3FB78 */ mr          r3, r31
/* 80570720 480211C1 */ bl          unk_805918e0
/* 80570724 48000018 */ b           lbl_8057073c
lbl_80570728:
/* 80570728 3A400001 */ li          r18, 1
/* 8057072C 48000010 */ b           lbl_8057073c
lbl_80570730:
/* 80570730 3A400001 */ li          r18, 1
/* 80570734 48000008 */ b           lbl_8057073c
lbl_80570738:
/* 80570738 3A400001 */ li          r18, 1
lbl_8057073c:
/* 8057073C 2C120000 */ cmpwi       r18, 0
/* 80570740 418205C0 */ beq-        lbl_80570d00
/* 80570744 7FE3FB78 */ mr          r3, r31
/* 80570748 38810014 */ addi        r4, r1, 0x14
/* 8057074C 480204F9 */ bl          PlayerPointers_getPlayerMatCol0
/* 80570750 7FE3FB78 */ mr          r3, r31
/* 80570754 48020029 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80570758 7C651B78 */ mr          r5, r3
/* 8057075C 38610014 */ addi        r3, r1, 0x14
/* 80570760 7C641B78 */ mr          r4, r3
/* 80570764 38C00001 */ li          r6, 1
/* 80570768 38A5005C */ addi        r5, r5, 0x5c
/* 8057076C 4803E281 */ bl          VEC3_perpInPlane
/* 80570770 38610020 */ addi        r3, r1, 0x20
/* 80570774 38810080 */ addi        r4, r1, 0x80
/* 80570778 38A10014 */ addi        r5, r1, 0x14
/* 8057077C 4803E40D */ bl          projUnit__6RKGeomFRQ23EGG8Vector3fRCQ23EGG8Vector3fRCQ23EGG8Vector3f
/* 80570780 38610020 */ addi        r3, r1, 0x20
/* 80570784 4BCD3359 */ bl          normalise__Q23EGG8Vector3fFv
/* 80570788 2C1E0000 */ cmpwi       r30, 0
/* 8057078C 7FD2F378 */ mr          r18, r30
/* 80570790 41820008 */ beq-        lbl_80570798
/* 80570794 3A5E0004 */ addi        r18, r30, 4
lbl_80570798:
/* 80570798 7E439378 */ mr          r3, r18
/* 8057079C 38810008 */ addi        r4, r1, 8
/* 805707A0 480204A5 */ bl          PlayerPointers_getPlayerMatCol0
/* 805707A4 7E439378 */ mr          r3, r18
/* 805707A8 4801FFD5 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 805707AC 7C651B78 */ mr          r5, r3
/* 805707B0 38610008 */ addi        r3, r1, 8
/* 805707B4 7C641B78 */ mr          r4, r3
/* 805707B8 38C00001 */ li          r6, 1
/* 805707BC 38A5005C */ addi        r5, r5, 0x5c
/* 805707C0 4803E22D */ bl          VEC3_perpInPlane
/* 805707C4 3861002C */ addi        r3, r1, 0x2c
/* 805707C8 38810020 */ addi        r4, r1, 0x20
/* 805707CC 38A10008 */ addi        r5, r1, 8
/* 805707D0 4803E3B9 */ bl          projUnit__6RKGeomFRQ23EGG8Vector3fRCQ23EGG8Vector3fRCQ23EGG8Vector3f
/* 805707D4 3861002C */ addi        r3, r1, 0x2c
/* 805707D8 4BCD3305 */ bl          normalise__Q23EGG8Vector3fFv
/* 805707DC 807F0000 */ lwz         r3, 0(r31)
/* 805707E0 80630004 */ lwz         r3, 4(r3)
/* 805707E4 8003000C */ lwz         r0, 0xc(r3)
/* 805707E8 54000109 */ rlwinm.     r0, r0, 0, 4, 4
/* 805707EC 4082002C */ bne-        lbl_80570818
/* 805707F0 2C1E0000 */ cmpwi       r30, 0
/* 805707F4 7FC4F378 */ mr          r4, r30
/* 805707F8 41820008 */ beq-        lbl_80570800
/* 805707FC 389E0004 */ addi        r4, r30, 4
lbl_80570800:
/* 80570800 C03C0004 */ lfs         f1, 4(r28)
/* 80570804 7FC3F378 */ mr          r3, r30
/* 80570808 7FE5FB78 */ mr          r5, r31
/* 8057080C 38C10020 */ addi        r6, r1, 0x20
/* 80570810 38E10080 */ addi        r7, r1, 0x80
/* 80570814 48000595 */ bl          unk_80570da8
lbl_80570818:
/* 80570818 807E0004 */ lwz         r3, 4(r30)
/* 8057081C 80630004 */ lwz         r3, 4(r3)
/* 80570820 8003000C */ lwz         r0, 0xc(r3)
/* 80570824 54000109 */ rlwinm.     r0, r0, 0, 4, 4
/* 80570828 4082002C */ bne-        lbl_80570854
/* 8057082C 2C1E0000 */ cmpwi       r30, 0
/* 80570830 7FC5F378 */ mr          r5, r30
/* 80570834 41820008 */ beq-        lbl_8057083c
/* 80570838 38BE0004 */ addi        r5, r30, 4
lbl_8057083c:
/* 8057083C C03C0014 */ lfs         f1, 0x14(r28)
/* 80570840 7FC3F378 */ mr          r3, r30
/* 80570844 7FE4FB78 */ mr          r4, r31
/* 80570848 38C1002C */ addi        r6, r1, 0x2c
/* 8057084C 38E10080 */ addi        r7, r1, 0x80
/* 80570850 48000559 */ bl          unk_80570da8
lbl_80570854:
/* 80570854 387E0004 */ addi        r3, r30, 4
/* 80570858 480201E9 */ bl          kartModel__Q24Kart15KartObjectProxyFv
/* 8057085C 38810050 */ addi        r4, r1, 0x50
/* 80570860 38A00001 */ li          r5, 1
/* 80570864 38C00000 */ li          r6, 0
/* 80570868 48263105 */ bl          unk_807d396c
/* 8057086C 7FE3FB78 */ mr          r3, r31
/* 80570870 480201D1 */ bl          kartModel__Q24Kart15KartObjectProxyFv
/* 80570874 38810050 */ addi        r4, r1, 0x50
/* 80570878 38A00001 */ li          r5, 1
/* 8057087C 38C00000 */ li          r6, 0
/* 80570880 482630ED */ bl          unk_807d396c
/* 80570884 387E0004 */ addi        r3, r30, 4
/* 80570888 480201E5 */ bl          PlayerPointers_isBike
/* 8057088C 2C030001 */ cmpwi       r3, 1
/* 80570890 40820034 */ bne-        lbl_805708c4
/* 80570894 807E0004 */ lwz         r3, 4(r30)
/* 80570898 80630004 */ lwz         r3, 4(r3)
/* 8057089C 80030004 */ lwz         r0, 4(r3)
/* 805708A0 54000085 */ rlwinm.     r0, r0, 0, 2, 2
/* 805708A4 41820020 */ beq-        lbl_805708c4
/* 805708A8 7FE3FB78 */ mr          r3, r31
/* 805708AC 480201B1 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 805708B0 7C721B78 */ mr          r18, r3
/* 805708B4 387E0004 */ addi        r3, r30, 4
/* 805708B8 4801FEC5 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 805708BC 5644063E */ clrlwi      r4, r18, 0x18
/* 805708C0 480096AD */ bl          unk_80579f6c
lbl_805708c4:
/* 805708C4 7FE3FB78 */ mr          r3, r31
/* 805708C8 480201A5 */ bl          PlayerPointers_isBike
/* 805708CC 2C030001 */ cmpwi       r3, 1
/* 805708D0 40820034 */ bne-        lbl_80570904
/* 805708D4 807F0000 */ lwz         r3, 0(r31)
/* 805708D8 80630004 */ lwz         r3, 4(r3)
/* 805708DC 80030004 */ lwz         r0, 4(r3)
/* 805708E0 54000085 */ rlwinm.     r0, r0, 0, 2, 2
/* 805708E4 41820020 */ beq-        lbl_80570904
/* 805708E8 387E0004 */ addi        r3, r30, 4
/* 805708EC 48020171 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 805708F0 7C721B78 */ mr          r18, r3
/* 805708F4 7FE3FB78 */ mr          r3, r31
/* 805708F8 4801FE85 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 805708FC 5644063E */ clrlwi      r4, r18, 0x18
/* 80570900 4800966D */ bl          unk_80579f6c
lbl_80570904:
/* 80570904 807E0004 */ lwz         r3, 4(r30)
/* 80570908 80630004 */ lwz         r3, 4(r3)
/* 8057090C 80030004 */ lwz         r0, 4(r3)
/* 80570910 5404014B */ rlwinm.     r4, r0, 0, 5, 5
/* 80570914 418201D0 */ beq-        lbl_80570ae4
/* 80570918 80BF0000 */ lwz         r5, 0(r31)
/* 8057091C 81850004 */ lwz         r12, 4(r5)
/* 80570920 824C0004 */ lwz         r18, 4(r12)
/* 80570924 5645014B */ rlwinm.     r5, r18, 0, 5, 5
/* 80570928 408201BC */ bne-        lbl_80570ae4
/* 8057092C 826C0008 */ lwz         r19, 8(r12)
/* 80570930 38E00001 */ li          r7, 1
/* 80570934 39000001 */ li          r8, 1
/* 80570938 39200001 */ li          r9, 1
/* 8057093C 72650102 */ andi.       r5, r19, 0x102
/* 80570940 39400001 */ li          r10, 1
/* 80570944 39600001 */ li          r11, 1
/* 80570948 4082001C */ bne-        lbl_80570964
/* 8057094C 3CA0020C */ lis         r5, 0x20c
/* 80570950 80CC000C */ lwz         r6, 0xc(r12)
/* 80570954 38A56000 */ addi        r5, r5, 0x6000
/* 80570958 7CC52839 */ and.        r5, r6, r5
/* 8057095C 40820008 */ bne-        lbl_80570964
/* 80570960 39600000 */ li          r11, 0
lbl_80570964:
/* 80570964 2C0B0000 */ cmpwi       r11, 0
/* 80570968 40820010 */ bne-        lbl_80570978
/* 8057096C 564506F7 */ rlwinm.     r5, r18, 0, 0x1b, 0x1b
/* 80570970 40820008 */ bne-        lbl_80570978
/* 80570974 39400000 */ li          r10, 0
lbl_80570978:
/* 80570978 2C0A0000 */ cmpwi       r10, 0
/* 8057097C 40820014 */ bne-        lbl_80570990
/* 80570980 80AC0014 */ lwz         r5, 0x14(r12)
/* 80570984 54A50631 */ rlwinm.     r5, r5, 0, 0x18, 0x18
/* 80570988 40820008 */ bne-        lbl_80570990
/* 8057098C 39200000 */ li          r9, 0
lbl_80570990:
/* 80570990 2C090000 */ cmpwi       r9, 0
/* 80570994 40820018 */ bne-        lbl_805709ac
/* 80570998 3CA08000 */ lis         r5, 0x8000
/* 8057099C 38A50019 */ addi        r5, r5, 0x19
/* 805709A0 7E652839 */ and.        r5, r19, r5
/* 805709A4 40820008 */ bne-        lbl_805709ac
/* 805709A8 39000000 */ li          r8, 0
lbl_805709ac:
/* 805709AC 2C080000 */ cmpwi       r8, 0
/* 805709B0 4082001C */ bne-        lbl_805709cc
/* 805709B4 3CA00A01 */ lis         r5, 0xa01
/* 805709B8 80CC000C */ lwz         r6, 0xc(r12)
/* 805709BC 38A58000 */ addi        r5, r5, -0x8000
/* 805709C0 7CC52839 */ and.        r5, r6, r5
/* 805709C4 40820008 */ bne-        lbl_805709cc
/* 805709C8 38E00000 */ li          r7, 0
lbl_805709cc:
/* 805709CC 2C070000 */ cmpwi       r7, 0
/* 805709D0 40820114 */ bne-        lbl_80570ae4
/* 805709D4 2C1D0000 */ cmpwi       r29, 0
/* 805709D8 41820018 */ beq-        lbl_805709f0
/* 805709DC 2C1B0000 */ cmpwi       r27, 0
/* 805709E0 40820010 */ bne-        lbl_805709f0
/* 805709E4 7FE3FB78 */ mr          r3, r31
/* 805709E8 4801FD95 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 805709EC 48010FBD */ bl          unk_805819a8
lbl_805709f0:
/* 805709F0 2C1B0000 */ cmpwi       r27, 0
/* 805709F4 408202C0 */ bne-        lbl_80570cb4
/* 805709F8 387E0004 */ addi        r3, r30, 4
/* 805709FC 48020061 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80570A00 7C721B78 */ mr          r18, r3
/* 80570A04 7FE3FB78 */ mr          r3, r31
/* 80570A08 48020055 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80570A0C 3C80809C */ lis         r4, spInstance__Q26System10RaceConfig@ha
/* 80570A10 3CA0809C */ lis         r5, spInstance__Q26System11RaceManager@ha
/* 80570A14 8084D728 */ lwz         r4, spInstance__Q26System10RaceConfig@l(r4)
/* 80570A18 7C601B78 */ mr          r0, r3
/* 80570A1C 8065D730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r5)
/* 80570A20 80A40B70 */ lwz         r5, 0xb70(r4)
/* 80570A24 2C050003 */ cmpwi       r5, 3
/* 80570A28 40820058 */ bne-        lbl_80570a80
/* 80570A2C 80840B78 */ lwz         r4, 0xb78(r4)
/* 80570A30 2C040000 */ cmpwi       r4, 0
/* 80570A34 40820024 */ bne-        lbl_80570a58
/* 80570A38 80630010 */ lwz         r3, 0x10(r3)
/* 80570A3C 5404063E */ clrlwi      r4, r0, 0x18
/* 80570A40 5645063E */ clrlwi      r5, r18, 0x18
/* 80570A44 81830000 */ lwz         r12, 0(r3)
/* 80570A48 818C0030 */ lwz         r12, 0x30(r12)
/* 80570A4C 7D8903A6 */ mtctr       r12
/* 80570A50 4E800421 */ bctrl       
/* 80570A54 48000260 */ b           lbl_80570cb4
lbl_80570a58:
/* 80570A58 2C040001 */ cmpwi       r4, 1
/* 80570A5C 40820258 */ bne-        lbl_80570cb4
/* 80570A60 80630010 */ lwz         r3, 0x10(r3)
/* 80570A64 5404063E */ clrlwi      r4, r0, 0x18
/* 80570A68 5645063E */ clrlwi      r5, r18, 0x18
/* 80570A6C 81830000 */ lwz         r12, 0(r3)
/* 80570A70 818C0030 */ lwz         r12, 0x30(r12)
/* 80570A74 7D8903A6 */ mtctr       r12
/* 80570A78 4E800421 */ bctrl       
/* 80570A7C 48000238 */ b           lbl_80570cb4
lbl_80570a80:
/* 80570A80 2C050009 */ cmpwi       r5, 9
/* 80570A84 4182000C */ beq-        lbl_80570a90
/* 80570A88 2C05000A */ cmpwi       r5, 0xa
/* 80570A8C 40820228 */ bne-        lbl_80570cb4
lbl_80570a90:
/* 80570A90 80840B78 */ lwz         r4, 0xb78(r4)
/* 80570A94 2C040000 */ cmpwi       r4, 0
/* 80570A98 40820024 */ bne-        lbl_80570abc
/* 80570A9C 80630010 */ lwz         r3, 0x10(r3)
/* 80570AA0 5404063E */ clrlwi      r4, r0, 0x18
/* 80570AA4 5645063E */ clrlwi      r5, r18, 0x18
/* 80570AA8 81830000 */ lwz         r12, 0(r3)
/* 80570AAC 818C0030 */ lwz         r12, 0x30(r12)
/* 80570AB0 7D8903A6 */ mtctr       r12
/* 80570AB4 4E800421 */ bctrl       
/* 80570AB8 480001FC */ b           lbl_80570cb4
lbl_80570abc:
/* 80570ABC 2C040001 */ cmpwi       r4, 1
/* 80570AC0 408201F4 */ bne-        lbl_80570cb4
/* 80570AC4 80630010 */ lwz         r3, 0x10(r3)
/* 80570AC8 5404063E */ clrlwi      r4, r0, 0x18
/* 80570ACC 5645063E */ clrlwi      r5, r18, 0x18
/* 80570AD0 81830000 */ lwz         r12, 0(r3)
/* 80570AD4 818C0030 */ lwz         r12, 0x30(r12)
/* 80570AD8 7D8903A6 */ mtctr       r12
/* 80570ADC 4E800421 */ bctrl       
/* 80570AE0 480001D4 */ b           lbl_80570cb4
lbl_80570ae4:
/* 80570AE4 2C040000 */ cmpwi       r4, 0
/* 80570AE8 408201CC */ bne-        lbl_80570cb4
/* 80570AEC 81630008 */ lwz         r11, 8(r3)
/* 80570AF0 38C00001 */ li          r6, 1
/* 80570AF4 38E00001 */ li          r7, 1
/* 80570AF8 39000001 */ li          r8, 1
/* 80570AFC 71640102 */ andi.       r4, r11, 0x102
/* 80570B00 39200001 */ li          r9, 1
/* 80570B04 39400001 */ li          r10, 1
/* 80570B08 4082001C */ bne-        lbl_80570b24
/* 80570B0C 3C80020C */ lis         r4, 0x20c
/* 80570B10 80A3000C */ lwz         r5, 0xc(r3)
/* 80570B14 38846000 */ addi        r4, r4, 0x6000
/* 80570B18 7CA42039 */ and.        r4, r5, r4
/* 80570B1C 40820008 */ bne-        lbl_80570b24
/* 80570B20 39400000 */ li          r10, 0
lbl_80570b24:
/* 80570B24 2C0A0000 */ cmpwi       r10, 0
/* 80570B28 40820010 */ bne-        lbl_80570b38
/* 80570B2C 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 80570B30 40820008 */ bne-        lbl_80570b38
/* 80570B34 39200000 */ li          r9, 0
lbl_80570b38:
/* 80570B38 2C090000 */ cmpwi       r9, 0
/* 80570B3C 40820014 */ bne-        lbl_80570b50
/* 80570B40 80030014 */ lwz         r0, 0x14(r3)
/* 80570B44 54000631 */ rlwinm.     r0, r0, 0, 0x18, 0x18
/* 80570B48 40820008 */ bne-        lbl_80570b50
/* 80570B4C 39000000 */ li          r8, 0
lbl_80570b50:
/* 80570B50 2C080000 */ cmpwi       r8, 0
/* 80570B54 40820018 */ bne-        lbl_80570b6c
/* 80570B58 3C808000 */ lis         r4, 0x8000
/* 80570B5C 38040019 */ addi        r0, r4, 0x19
/* 80570B60 7D600039 */ and.        r0, r11, r0
/* 80570B64 40820008 */ bne-        lbl_80570b6c
/* 80570B68 38E00000 */ li          r7, 0
lbl_80570b6c:
/* 80570B6C 2C070000 */ cmpwi       r7, 0
/* 80570B70 4082001C */ bne-        lbl_80570b8c
/* 80570B74 3C800A01 */ lis         r4, 0xa01
/* 80570B78 8063000C */ lwz         r3, 0xc(r3)
/* 80570B7C 38048000 */ addi        r0, r4, -0x8000
/* 80570B80 7C600039 */ and.        r0, r3, r0
/* 80570B84 40820008 */ bne-        lbl_80570b8c
/* 80570B88 38C00000 */ li          r6, 0
lbl_80570b8c:
/* 80570B8C 2C060000 */ cmpwi       r6, 0
/* 80570B90 40820124 */ bne-        lbl_80570cb4
/* 80570B94 807F0000 */ lwz         r3, 0(r31)
/* 80570B98 80630004 */ lwz         r3, 4(r3)
/* 80570B9C 80030004 */ lwz         r0, 4(r3)
/* 80570BA0 5400014B */ rlwinm.     r0, r0, 0, 5, 5
/* 80570BA4 41820110 */ beq-        lbl_80570cb4
/* 80570BA8 2C1D0000 */ cmpwi       r29, 0
/* 80570BAC 41820018 */ beq-        lbl_80570bc4
/* 80570BB0 2C1B0000 */ cmpwi       r27, 0
/* 80570BB4 40820010 */ bne-        lbl_80570bc4
/* 80570BB8 387E0004 */ addi        r3, r30, 4
/* 80570BBC 4801FBC1 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80570BC0 48010DE9 */ bl          unk_805819a8
lbl_80570bc4:
/* 80570BC4 2C1B0000 */ cmpwi       r27, 0
/* 80570BC8 408200EC */ bne-        lbl_80570cb4
/* 80570BCC 7FE3FB78 */ mr          r3, r31
/* 80570BD0 4801FE8D */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80570BD4 7C721B78 */ mr          r18, r3
/* 80570BD8 387E0004 */ addi        r3, r30, 4
/* 80570BDC 4801FE81 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80570BE0 3C80809C */ lis         r4, spInstance__Q26System10RaceConfig@ha
/* 80570BE4 3CA0809C */ lis         r5, spInstance__Q26System11RaceManager@ha
/* 80570BE8 8084D728 */ lwz         r4, spInstance__Q26System10RaceConfig@l(r4)
/* 80570BEC 7C601B78 */ mr          r0, r3
/* 80570BF0 8065D730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r5)
/* 80570BF4 80A40B70 */ lwz         r5, 0xb70(r4)
/* 80570BF8 2C050003 */ cmpwi       r5, 3
/* 80570BFC 40820058 */ bne-        lbl_80570c54
/* 80570C00 80840B78 */ lwz         r4, 0xb78(r4)
/* 80570C04 2C040000 */ cmpwi       r4, 0
/* 80570C08 40820024 */ bne-        lbl_80570c2c
/* 80570C0C 80630010 */ lwz         r3, 0x10(r3)
/* 80570C10 5404063E */ clrlwi      r4, r0, 0x18
/* 80570C14 5645063E */ clrlwi      r5, r18, 0x18
/* 80570C18 81830000 */ lwz         r12, 0(r3)
/* 80570C1C 818C0030 */ lwz         r12, 0x30(r12)
/* 80570C20 7D8903A6 */ mtctr       r12
/* 80570C24 4E800421 */ bctrl       
/* 80570C28 4800008C */ b           lbl_80570cb4
lbl_80570c2c:
/* 80570C2C 2C040001 */ cmpwi       r4, 1
/* 80570C30 40820084 */ bne-        lbl_80570cb4
/* 80570C34 80630010 */ lwz         r3, 0x10(r3)
/* 80570C38 5404063E */ clrlwi      r4, r0, 0x18
/* 80570C3C 5645063E */ clrlwi      r5, r18, 0x18
/* 80570C40 81830000 */ lwz         r12, 0(r3)
/* 80570C44 818C0030 */ lwz         r12, 0x30(r12)
/* 80570C48 7D8903A6 */ mtctr       r12
/* 80570C4C 4E800421 */ bctrl       
/* 80570C50 48000064 */ b           lbl_80570cb4
lbl_80570c54:
/* 80570C54 2C050009 */ cmpwi       r5, 9
/* 80570C58 4182000C */ beq-        lbl_80570c64
/* 80570C5C 2C05000A */ cmpwi       r5, 0xa
/* 80570C60 40820054 */ bne-        lbl_80570cb4
lbl_80570c64:
/* 80570C64 80840B78 */ lwz         r4, 0xb78(r4)
/* 80570C68 2C040000 */ cmpwi       r4, 0
/* 80570C6C 40820024 */ bne-        lbl_80570c90
/* 80570C70 80630010 */ lwz         r3, 0x10(r3)
/* 80570C74 5404063E */ clrlwi      r4, r0, 0x18
/* 80570C78 5645063E */ clrlwi      r5, r18, 0x18
/* 80570C7C 81830000 */ lwz         r12, 0(r3)
/* 80570C80 818C0030 */ lwz         r12, 0x30(r12)
/* 80570C84 7D8903A6 */ mtctr       r12
/* 80570C88 4E800421 */ bctrl       
/* 80570C8C 48000028 */ b           lbl_80570cb4
lbl_80570c90:
/* 80570C90 2C040001 */ cmpwi       r4, 1
/* 80570C94 40820020 */ bne-        lbl_80570cb4
/* 80570C98 80630010 */ lwz         r3, 0x10(r3)
/* 80570C9C 5404063E */ clrlwi      r4, r0, 0x18
/* 80570CA0 5645063E */ clrlwi      r5, r18, 0x18
/* 80570CA4 81830000 */ lwz         r12, 0(r3)
/* 80570CA8 818C0030 */ lwz         r12, 0x30(r12)
/* 80570CAC 7D8903A6 */ mtctr       r12
/* 80570CB0 4E800421 */ bctrl       
lbl_80570cb4:
/* 80570CB4 387E0004 */ addi        r3, r30, 4
/* 80570CB8 4801FAC5 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80570CBC 8183000C */ lwz         r12, 0xc(r3)
/* 80570CC0 818C0030 */ lwz         r12, 0x30(r12)
/* 80570CC4 7D8903A6 */ mtctr       r12
/* 80570CC8 4E800421 */ bctrl       
/* 80570CCC 7FE3FB78 */ mr          r3, r31
/* 80570CD0 4801FAAD */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80570CD4 8183000C */ lwz         r12, 0xc(r3)
/* 80570CD8 818C0030 */ lwz         r12, 0x30(r12)
/* 80570CDC 7D8903A6 */ mtctr       r12
/* 80570CE0 4E800421 */ bctrl       
/* 80570CE4 387E0004 */ addi        r3, r30, 4
/* 80570CE8 4801FAAD */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 80570CEC 7C721B78 */ mr          r18, r3
/* 80570CF0 7FE3FB78 */ mr          r3, r31
/* 80570CF4 4801FAA1 */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 80570CF8 7E449378 */ mr          r4, r18
/* 80570CFC 481984B1 */ bl          unk_807091ac
lbl_80570d00:
/* 80570D00 E3E10108 */ psq_l       f31, 0x108(r1), 0, 0
/* 80570D04 39610100 */ addi        r11, r1, 0x100
/* 80570D08 CBE10100 */ lfd         f31, 0x100(r1)
/* 80570D0C 4BAB08BD */ bl          _restgpr_18
/* 80570D10 80010114 */ lwz         r0, 0x114(r1)
/* 80570D14 7C0803A6 */ mtlr        r0
/* 80570D18 38210110 */ addi        r1, r1, 0x110
/* 80570D1C 4E800020 */ blr         