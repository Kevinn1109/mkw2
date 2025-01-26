nofralloc
/* 8059487C 9421FFD0 */ stwu        r1, -0x30(r1)
/* 80594880 7C0802A6 */ mflr        r0
/* 80594884 90010034 */ stw         r0, 0x34(r1)
/* 80594888 DBE10020 */ stfd        f31, 0x20(r1)
/* 8059488C F3E10028 */ psq_st      f31, 0x28(r1), 0, 0
/* 80594890 38800002 */ li          r4, 2
/* 80594894 93E1001C */ stw         r31, 0x1c(r1)
/* 80594898 3FE08089 */ lis         r31, lbl_80891ef0@ha
/* 8059489C 3BFF1EF0 */ addi        r31, r31, lbl_80891ef0@l
/* 805948A0 93C10018 */ stw         r30, 0x18(r1)
/* 805948A4 7C7E1B78 */ mr          r30, r3
/* 805948A8 93A10014 */ stw         r29, 0x14(r1)
/* 805948AC 3FA0809C */ lis         r29, spInstance__Q26System11RaceManager@ha
/* 805948B0 93810010 */ stw         r28, 0x10(r1)
/* 805948B4 3F80808B */ lis         r28, lbl_808b64e8@ha
/* 805948B8 3B9C64E8 */ addi        r28, r28, lbl_808b64e8@l
/* 805948BC 807DD730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r29)
/* 805948C0 4BFA1971 */ bl          Raceinfo_isAtLeastStage
/* 805948C4 2C030000 */ cmpwi       r3, 0
/* 805948C8 418201EC */ beq-        lbl_80594ab4
/* 805948CC 807E0018 */ lwz         r3, 0x18(r30)
/* 805948D0 38C00001 */ li          r6, 1
/* 805948D4 38E00001 */ li          r7, 1
/* 805948D8 39000001 */ li          r8, 1
/* 805948DC 80830000 */ lwz         r4, 0(r3)
/* 805948E0 38A00001 */ li          r5, 1
/* 805948E4 81240004 */ lwz         r9, 4(r4)
/* 805948E8 80090004 */ lwz         r0, 4(r9)
/* 805948EC 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 805948F0 40820014 */ bne-        lbl_80594904
/* 805948F4 80090008 */ lwz         r0, 8(r9)
/* 805948F8 7000001B */ andi.       r0, r0, 0x1b
/* 805948FC 40820008 */ bne-        lbl_80594904
/* 80594900 38A00000 */ li          r5, 0
lbl_80594904:
/* 80594904 2C050000 */ cmpwi       r5, 0
/* 80594908 4082001C */ bne-        lbl_80594924
/* 8059490C 3C80020C */ lis         r4, 0x20c
/* 80594910 80A9000C */ lwz         r5, 0xc(r9)
/* 80594914 38040100 */ addi        r0, r4, 0x100
/* 80594918 7CA00039 */ and.        r0, r5, r0
/* 8059491C 40820008 */ bne-        lbl_80594924
/* 80594920 39000000 */ li          r8, 0
lbl_80594924:
/* 80594924 2C080000 */ cmpwi       r8, 0
/* 80594928 4082001C */ bne-        lbl_80594944
/* 8059492C 3C800007 */ lis         r4, 0x7
/* 80594930 80A90014 */ lwz         r5, 0x14(r9)
/* 80594934 38044E80 */ addi        r0, r4, 0x4e80
/* 80594938 7CA00039 */ and.        r0, r5, r0
/* 8059493C 40820008 */ bne-        lbl_80594944
/* 80594940 38E00000 */ li          r7, 0
lbl_80594944:
/* 80594944 2C070000 */ cmpwi       r7, 0
/* 80594948 40820014 */ bne-        lbl_8059495c
/* 8059494C 80090008 */ lwz         r0, 8(r9)
/* 80594950 5400056B */ rlwinm.     r0, r0, 0, 0x15, 0x15
/* 80594954 40820008 */ bne-        lbl_8059495c
/* 80594958 38C00000 */ li          r6, 0
lbl_8059495c:
/* 8059495C 2C060000 */ cmpwi       r6, 0
/* 80594960 40820148 */ bne-        lbl_80594aa8
/* 80594964 4BFFBA91 */ bl          KartAccessor_getInput
/* 80594968 2C030000 */ cmpwi       r3, 0
/* 8059496C 41820024 */ beq-        lbl_80594990
/* 80594970 807E0018 */ lwz         r3, 0x18(r30)
/* 80594974 4BFFBA81 */ bl          KartAccessor_getInput
/* 80594978 C0030030 */ lfs         f0, 0x30(r3)
/* 8059497C D01E0088 */ stfs        f0, 0x88(r30)
/* 80594980 807E0018 */ lwz         r3, 0x18(r30)
/* 80594984 4BFFBA71 */ bl          KartAccessor_getInput
/* 80594988 C0030034 */ lfs         f0, 0x34(r3)
/* 8059498C D01E008C */ stfs        f0, 0x8c(r30)
lbl_80594990:
/* 80594990 801E0008 */ lwz         r0, 8(r30)
/* 80594994 540000C7 */ rlwinm.     r0, r0, 0, 3, 3
/* 80594998 40820034 */ bne-        lbl_805949cc
/* 8059499C C03E0088 */ lfs         f1, 0x88(r30)
/* 805949A0 C01F0000 */ lfs         f0, 0(r31)
/* 805949A4 FC010040 */ fcmpo       cr0, f1, f0
/* 805949A8 40800014 */ bge-        lbl_805949bc
/* 805949AC 801E0004 */ lwz         r0, 4(r30)
/* 805949B0 60002000 */ ori         r0, r0, 0x2000
/* 805949B4 901E0004 */ stw         r0, 4(r30)
/* 805949B8 48000014 */ b           lbl_805949cc
lbl_805949bc:
/* 805949BC 40810010 */ ble-        lbl_805949cc
/* 805949C0 801E0004 */ lwz         r0, 4(r30)
/* 805949C4 64000100 */ oris        r0, r0, 0x100
/* 805949C8 901E0004 */ stw         r0, 4(r30)
lbl_805949cc:
/* 805949CC 801E0008 */ lwz         r0, 8(r30)
/* 805949D0 5400035B */ rlwinm.     r0, r0, 0, 0xd, 0xd
/* 805949D4 408200D4 */ bne-        lbl_80594aa8
/* 805949D8 801E000C */ lwz         r0, 0xc(r30)
/* 805949DC 54000109 */ rlwinm.     r0, r0, 0, 4, 4
/* 805949E0 408200C8 */ bne-        lbl_80594aa8
/* 805949E4 807E0018 */ lwz         r3, 0x18(r30)
/* 805949E8 4BFFBA0D */ bl          KartAccessor_getInput
/* 805949EC A003002C */ lhz         r0, 0x2c(r3)
/* 805949F0 540007FF */ clrlwi.     r0, r0, 0x1f
/* 805949F4 41820010 */ beq-        lbl_80594a04
/* 805949F8 801E0004 */ lwz         r0, 4(r30)
/* 805949FC 60000001 */ ori         r0, r0, 1
/* 80594A00 901E0004 */ stw         r0, 4(r30)
lbl_80594a04:
/* 80594A04 807E0018 */ lwz         r3, 0x18(r30)
/* 80594A08 4BFFB9ED */ bl          KartAccessor_getInput
/* 80594A0C A083002C */ lhz         r4, 0x2c(r3)
/* 80594A10 A0030044 */ lhz         r0, 0x44(r3)
/* 80594A14 7C800078 */ andc        r0, r4, r0
/* 80594A18 540007FF */ clrlwi.     r0, r0, 0x1f
/* 80594A1C 41820010 */ beq-        lbl_80594a2c
/* 80594A20 801E0004 */ lwz         r0, 4(r30)
/* 80594A24 60000100 */ ori         r0, r0, 0x100
/* 80594A28 901E0004 */ stw         r0, 4(r30)
lbl_80594a2c:
/* 80594A2C 807E0018 */ lwz         r3, 0x18(r30)
/* 80594A30 4BFFB9C5 */ bl          KartAccessor_getInput
/* 80594A34 A003002C */ lhz         r0, 0x2c(r3)
/* 80594A38 540007BD */ rlwinm.     r0, r0, 0, 0x1e, 0x1e
/* 80594A3C 41820010 */ beq-        lbl_80594a4c
/* 80594A40 801E0004 */ lwz         r0, 4(r30)
/* 80594A44 60000002 */ ori         r0, r0, 2
/* 80594A48 901E0004 */ stw         r0, 4(r30)
lbl_80594a4c:
/* 80594A4C 807E0018 */ lwz         r3, 0x18(r30)
/* 80594A50 80830000 */ lwz         r4, 0(r3)
/* 80594A54 80840004 */ lwz         r4, 4(r4)
/* 80594A58 80040014 */ lwz         r0, 0x14(r4)
/* 80594A5C 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 80594A60 40820048 */ bne-        lbl_80594aa8
/* 80594A64 4BFFB991 */ bl          KartAccessor_getInput
/* 80594A68 A003002C */ lhz         r0, 0x2c(r3)
/* 80594A6C 54000739 */ rlwinm.     r0, r0, 0, 0x1c, 0x1c
/* 80594A70 41820010 */ beq-        lbl_80594a80
/* 80594A74 801E0004 */ lwz         r0, 4(r30)
/* 80594A78 60000004 */ ori         r0, r0, 4
/* 80594A7C 901E0004 */ stw         r0, 4(r30)
lbl_80594a80:
/* 80594A80 807E0018 */ lwz         r3, 0x18(r30)
/* 80594A84 4BFFB971 */ bl          KartAccessor_getInput
/* 80594A88 A083002C */ lhz         r4, 0x2c(r3)
/* 80594A8C A0030044 */ lhz         r0, 0x44(r3)
/* 80594A90 7C800078 */ andc        r0, r4, r0
/* 80594A94 54000739 */ rlwinm.     r0, r0, 0, 0x1c, 0x1c
/* 80594A98 41820010 */ beq-        lbl_80594aa8
/* 80594A9C 801E0004 */ lwz         r0, 4(r30)
/* 80594AA0 60000080 */ ori         r0, r0, 0x80
/* 80594AA4 901E0004 */ stw         r0, 4(r30)
lbl_80594aa8:
/* 80594AA8 7FC3F378 */ mr          r3, r30
/* 80594AAC 48000F29 */ bl          PlayerSub1c_computeStartBoost
/* 80594AB0 480000FC */ b           lbl_80594bac
lbl_80594ab4:
/* 80594AB4 807DD730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r29)
/* 80594AB8 38800001 */ li          r4, 1
/* 80594ABC 4BFA1775 */ bl          Raceinfo_isAtLeastStage
/* 80594AC0 2C030000 */ cmpwi       r3, 0
/* 80594AC4 418200E8 */ beq-        lbl_80594bac
/* 80594AC8 807E0018 */ lwz         r3, 0x18(r30)
/* 80594ACC 80830000 */ lwz         r4, 0(r3)
/* 80594AD0 80840004 */ lwz         r4, 4(r4)
/* 80594AD4 80040014 */ lwz         r0, 0x14(r4)
/* 80594AD8 54000739 */ rlwinm.     r0, r0, 0, 0x1c, 0x1c
/* 80594ADC 408200D0 */ bne-        lbl_80594bac
/* 80594AE0 4BFFB915 */ bl          KartAccessor_getInput
/* 80594AE4 2C030000 */ cmpwi       r3, 0
/* 80594AE8 41820014 */ beq-        lbl_80594afc
/* 80594AEC 807E0018 */ lwz         r3, 0x18(r30)
/* 80594AF0 4BFFB905 */ bl          KartAccessor_getInput
/* 80594AF4 C0030030 */ lfs         f0, 0x30(r3)
/* 80594AF8 D01E0088 */ stfs        f0, 0x88(r30)
lbl_80594afc:
/* 80594AFC 807E0018 */ lwz         r3, 0x18(r30)
/* 80594B00 4BFFB8F5 */ bl          KartAccessor_getInput
/* 80594B04 A003002C */ lhz         r0, 0x2c(r3)
/* 80594B08 540007FF */ clrlwi.     r0, r0, 0x1f
/* 80594B0C 41820014 */ beq-        lbl_80594b20
/* 80594B10 801E0010 */ lwz         r0, 0x10(r30)
/* 80594B14 60000100 */ ori         r0, r0, 0x100
/* 80594B18 901E0010 */ stw         r0, 0x10(r30)
/* 80594B1C 48000010 */ b           lbl_80594b2c
lbl_80594b20:
/* 80594B20 801E0010 */ lwz         r0, 0x10(r30)
/* 80594B24 5400062C */ rlwinm      r0, r0, 0, 0x18, 0x16
/* 80594B28 901E0010 */ stw         r0, 0x10(r30)
lbl_80594b2c:
/* 80594B2C 801E0010 */ lwz         r0, 0x10(r30)
/* 80594B30 540005EF */ rlwinm.     r0, r0, 0, 0x17, 0x17
/* 80594B34 41820028 */ beq-        lbl_80594b5c
/* 80594B38 C03C0000 */ lfs         f1, 0(r28)
/* 80594B3C C01C0004 */ lfs         f0, 4(r28)
/* 80594B40 C05E009C */ lfs         f2, 0x9c(r30)
/* 80594B44 EC010028 */ fsubs       f0, f1, f0
/* 80594B48 EC0000B2 */ fmuls       f0, f0, f2
/* 80594B4C EC010028 */ fsubs       f0, f1, f0
/* 80594B50 EC02002A */ fadds       f0, f2, f0
/* 80594B54 D01E009C */ stfs        f0, 0x9c(r30)
/* 80594B58 48000014 */ b           lbl_80594b6c
lbl_80594b5c:
/* 80594B5C C03E009C */ lfs         f1, 0x9c(r30)
/* 80594B60 C01C0008 */ lfs         f0, 8(r28)
/* 80594B64 EC010032 */ fmuls       f0, f1, f0
/* 80594B68 D01E009C */ stfs        f0, 0x9c(r30)
lbl_80594b6c:
/* 80594B6C C01F0000 */ lfs         f0, 0(r31)
/* 80594B70 C03E009C */ lfs         f1, 0x9c(r30)
/* 80594B74 FC000840 */ fcmpo       cr0, f0, f1
/* 80594B78 4081000C */ ble-        lbl_80594b84
/* 80594B7C D01E009C */ stfs        f0, 0x9c(r30)
/* 80594B80 48000014 */ b           lbl_80594b94
lbl_80594b84:
/* 80594B84 C01F0004 */ lfs         f0, 4(r31)
/* 80594B88 FC000840 */ fcmpo       cr0, f0, f1
/* 80594B8C 40800008 */ bge-        lbl_80594b94
/* 80594B90 D01E009C */ stfs        f0, 0x9c(r30)
lbl_80594b94:
/* 80594B94 C03F0010 */ lfs         f1, 0x10(r31)
/* 80594B98 C01E009C */ lfs         f0, 0x9c(r30)
/* 80594B9C 807E0018 */ lwz         r3, 0x18(r30)
/* 80594BA0 EFE10032 */ fmuls       f31, f1, f0
/* 80594BA4 4BFFBBD9 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80594BA8 D3E30224 */ stfs        f31, 0x224(r3)
lbl_80594bac:
/* 80594BAC E3E10028 */ psq_l       f31, 0x28(r1), 0, 0
/* 80594BB0 80010034 */ lwz         r0, 0x34(r1)
/* 80594BB4 CBE10020 */ lfd         f31, 0x20(r1)
/* 80594BB8 83E1001C */ lwz         r31, 0x1c(r1)
/* 80594BBC 83C10018 */ lwz         r30, 0x18(r1)
/* 80594BC0 83A10014 */ lwz         r29, 0x14(r1)
/* 80594BC4 83810010 */ lwz         r28, 0x10(r1)
/* 80594BC8 7C0803A6 */ mtlr        r0
/* 80594BCC 38210030 */ addi        r1, r1, 0x30
/* 80594BD0 4E800020 */ blr         