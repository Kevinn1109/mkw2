nofralloc
/* 805718D4 9421FF90 */ stwu        r1, -0x70(r1)
/* 805718D8 7C0802A6 */ mflr        r0
/* 805718DC 90010074 */ stw         r0, 0x74(r1)
/* 805718E0 DBE10060 */ stfd        f31, 0x60(r1)
/* 805718E4 F3E10068 */ psq_st      f31, 0x68(r1), 0, 0
/* 805718E8 DBC10050 */ stfd        f30, 0x50(r1)
/* 805718EC F3C10058 */ psq_st      f30, 0x58(r1), 0, 0
/* 805718F0 39610050 */ addi        r11, r1, 0x50
/* 805718F4 4BAAFCA1 */ bl          _savegpr_24
/* 805718F8 2C060000 */ cmpwi       r6, 0
/* 805718FC 3FE08089 */ lis         r31, lbl_80891730@ha
/* 80571900 7C791B78 */ mr          r25, r3
/* 80571904 7C9A2378 */ mr          r26, r4
/* 80571908 7CBB2B78 */ mr          r27, r5
/* 8057190C 7CDC3378 */ mr          r28, r6
/* 80571910 3BFF1730 */ addi        r31, r31, lbl_80891730@l
/* 80571914 41820014 */ beq-        lbl_80571928
/* 80571918 38630004 */ addi        r3, r3, 4
/* 8057191C 4801EA91 */ bl          kartPhysics__Q24Kart15KartObjectProxyFv
/* 80571920 3BC30018 */ addi        r30, r3, 0x18
/* 80571924 4800000C */ b           lbl_80571930
lbl_80571928:
/* 80571928 3FC0809C */ lis         r30, VEC_INFINITY@ha
/* 8057192C 3BDE3C04 */ addi        r30, r30, VEC_INFINITY@l
lbl_80571930:
/* 80571930 2C1C0000 */ cmpwi       r28, 0
/* 80571934 C3FF0048 */ lfs         f31, 0x48(r31)
/* 80571938 4182000C */ beq-        lbl_80571944
/* 8057193C 3F000507 */ lis         r24, 0x507
/* 80571940 48000010 */ b           lbl_80571950
lbl_80571944:
/* 80571944 3C60E0F9 */ lis         r3, 0xe0f9
/* 80571948 C3FF0008 */ lfs         f31, 8(r31)
/* 8057194C 3B03BDFF */ addi        r24, r3, -0x4201
lbl_80571950:
/* 80571950 38790004 */ addi        r3, r25, 4
/* 80571954 4801EE29 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80571958 C3C30170 */ lfs         f30, 0x170(r3)
/* 8057195C 38790004 */ addi        r3, r25, 4
/* 80571960 4801EF29 */ bl          bsp__Q24Kart15KartObjectProxyCFv
/* 80571964 C0030000 */ lfs         f0, 0(r3)
/* 80571968 38790004 */ addi        r3, r25, 4
/* 8057196C FC000050 */ fneg        f0, f0
/* 80571970 EFC007B2 */ fmuls       f30, f0, f30
/* 80571974 4801F35D */ bl          unk_80590cd0
/* 80571978 C01F002C */ lfs         f0, 0x2c(r31)
/* 8057197C C0230000 */ lfs         f1, 0(r3)
/* 80571980 EC4007B2 */ fmuls       f2, f0, f30
/* 80571984 C01B0000 */ lfs         f0, 0(r27)
/* 80571988 EC220072 */ fmuls       f1, f2, f1
/* 8057198C EC00082A */ fadds       f0, f0, f1
/* 80571990 D0010018 */ stfs        f0, 0x18(r1)
/* 80571994 C0230004 */ lfs         f1, 4(r3)
/* 80571998 C01B0004 */ lfs         f0, 4(r27)
/* 8057199C EC220072 */ fmuls       f1, f2, f1
/* 805719A0 EC00082A */ fadds       f0, f0, f1
/* 805719A4 D001001C */ stfs        f0, 0x1c(r1)
/* 805719A8 C0230008 */ lfs         f1, 8(r3)
/* 805719AC 38790004 */ addi        r3, r25, 4
/* 805719B0 C01B0008 */ lfs         f0, 8(r27)
/* 805719B4 EC220072 */ fmuls       f1, f2, f1
/* 805719B8 EC00082A */ fadds       f0, f0, f1
/* 805719BC D0010020 */ stfs        f0, 0x20(r1)
/* 805719C0 4801EA0D */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 805719C4 3C80802A */ lis         r4, lbl_802a4148@ha
/* 805719C8 38A1000C */ addi        r5, r1, 0xc
/* 805719CC 38844148 */ addi        r4, r4, lbl_802a4148@l
/* 805719D0 386300F0 */ addi        r3, r3, 0xf0
/* 805719D4 4BCC88FD */ bl          rotateVector__Q23EGG5QuatfFRCQ23EGG8Vector3fRQ23EGG8Vector3f
/* 805719D8 38790004 */ addi        r3, r25, 4
/* 805719DC 4801EDA1 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 805719E0 C061000C */ lfs         f3, 0xc(r1)
/* 805719E4 C0430038 */ lfs         f2, 0x38(r3)
/* 805719E8 C0210010 */ lfs         f1, 0x10(r1)
/* 805719EC C003003C */ lfs         f0, 0x3c(r3)
/* 805719F0 EC6300B2 */ fmuls       f3, f3, f2
/* 805719F4 C0830040 */ lfs         f4, 0x40(r3)
/* 805719F8 38790004 */ addi        r3, r25, 4
/* 805719FC EC210032 */ fmuls       f1, f1, f0
/* 80571A00 C0010014 */ lfs         f0, 0x14(r1)
/* 80571A04 C0590050 */ lfs         f2, 0x50(r25)
/* 80571A08 EC800132 */ fmuls       f4, f0, f4
/* 80571A0C C01F002C */ lfs         f0, 0x2c(r31)
/* 80571A10 EC23082A */ fadds       f1, f3, f1
/* 80571A14 EC24082A */ fadds       f1, f4, f1
/* 80571A18 EC211028 */ fsubs       f1, f1, f2
/* 80571A1C EC000072 */ fmuls       f0, f0, f1
/* 80571A20 EC02002A */ fadds       f0, f2, f0
/* 80571A24 D0190050 */ stfs        f0, 0x50(r25)
/* 80571A28 4801ED55 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80571A2C C3C30170 */ lfs         f30, 0x170(r3)
/* 80571A30 38790004 */ addi        r3, r25, 4
/* 80571A34 4801E979 */ bl          kartPhysics__Q24Kart15KartObjectProxyFv
/* 80571A38 C00300FC */ lfs         f0, 0xfc(r3)
/* 80571A3C 2C1C0000 */ cmpwi       r28, 0
/* 80571A40 C0390050 */ lfs         f1, 0x50(r25)
/* 80571A44 FC400050 */ fneg        f2, f0
/* 80571A48 C01F004C */ lfs         f0, 0x4c(r31)
/* 80571A4C C0A1000C */ lfs         f5, 0xc(r1)
/* 80571A50 C0610010 */ lfs         f3, 0x10(r1)
/* 80571A54 ECC100B2 */ fmuls       f6, f1, f2
/* 80571A58 C0210014 */ lfs         f1, 0x14(r1)
/* 80571A5C C0810018 */ lfs         f4, 0x18(r1)
/* 80571A60 C041001C */ lfs         f2, 0x1c(r1)
/* 80571A64 ECC001B2 */ fmuls       f6, f0, f6
/* 80571A68 C0010020 */ lfs         f0, 0x20(r1)
/* 80571A6C ECC607B2 */ fmuls       f6, f6, f30
/* 80571A70 ECA60172 */ fmuls       f5, f6, f5
/* 80571A74 EC6600F2 */ fmuls       f3, f6, f3
/* 80571A78 EC260072 */ fmuls       f1, f6, f1
/* 80571A7C EC84282A */ fadds       f4, f4, f5
/* 80571A80 EC42182A */ fadds       f2, f2, f3
/* 80571A84 EC00082A */ fadds       f0, f0, f1
/* 80571A88 D0810018 */ stfs        f4, 0x18(r1)
/* 80571A8C D041001C */ stfs        f2, 0x1c(r1)
/* 80571A90 D0010020 */ stfs        f0, 0x20(r1)
/* 80571A94 40820014 */ bne-        lbl_80571aa8
/* 80571A98 38790004 */ addi        r3, r25, 4
/* 80571A9C 4801ECE1 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80571AA0 C0030170 */ lfs         f0, 0x170(r3)
/* 80571AA4 EFFF0032 */ fmuls       f31, f31, f0
lbl_80571aa8:
/* 80571AA8 3C80808A */ lis         r4, gColInfo@ha
/* 80571AAC 3C60809C */ lis         r3, spInstance__Q25Field11CourseModel@ha
/* 80571AB0 83A46700 */ lwz         r29, gColInfo@l(r4)
/* 80571AB4 FC20F890 */ fmr         f1, f31
/* 80571AB8 80632F44 */ lwz         r3, spInstance__Q25Field11CourseModel@l(r3)
/* 80571ABC 7FC5F378 */ mr          r5, r30
/* 80571AC0 7F06C378 */ mr          r6, r24
/* 80571AC4 7FA7EB78 */ mr          r7, r29
/* 80571AC8 7F48D378 */ mr          r8, r26
/* 80571ACC 38810018 */ addi        r4, r1, 0x18
/* 80571AD0 39200000 */ li          r9, 0
/* 80571AD4 4821E8E9 */ bl          checkSphereCachedPartialPush__Q25Field11CourseModelFRCQ23EGG8Vector3fRCQ23EGG8Vector3fUlPQ25Field14ColInfoPartialPUlfUl
/* 80571AD8 2C030000 */ cmpwi       r3, 0
/* 80571ADC 41820098 */ beq-        lbl_80571b74
/* 80571AE0 2C1C0000 */ cmpwi       r28, 0
/* 80571AE4 41820014 */ beq-        lbl_80571af8
/* 80571AE8 7F23CB78 */ mr          r3, r25
/* 80571AEC 7F44D378 */ mr          r4, r26
/* 80571AF0 4BFFDA21 */ bl          unk_8056f510
/* 80571AF4 48000080 */ b           lbl_80571b74
lbl_80571af8:
/* 80571AF8 3C6020E8 */ lis         r3, 0x20e8
/* 80571AFC 801A0000 */ lwz         r0, 0(r26)
/* 80571B00 38830FFF */ addi        r4, r3, 0xfff
/* 80571B04 7C002039 */ and.        r0, r0, r4
/* 80571B08 41820010 */ beq-        lbl_80571b18
/* 80571B0C 7F43D378 */ mr          r3, r26
/* 80571B10 4824BE5D */ bl          findClosestCollisionEntry__5FieldFPUlUl
/* 80571B14 48000008 */ b           lbl_80571b1c
lbl_80571b18:
/* 80571B18 38600000 */ li          r3, 0
lbl_80571b1c:
/* 80571B1C 2C030000 */ cmpwi       r3, 0
/* 80571B20 4182001C */ beq-        lbl_80571b3c
/* 80571B24 3C80809C */ lis         r4, closestCollisionEntry__5Field@ha
/* 80571B28 38790004 */ addi        r3, r25, 4
/* 80571B2C 80843BDC */ lwz         r4, closestCollisionEntry__5Field@l(r4)
/* 80571B30 A0040004 */ lhz         r0, 4(r4)
/* 80571B34 5404C77E */ rlwinm      r4, r0, 0x18, 0x1d, 0x1f
/* 80571B38 4801FE45 */ bl          unk_8059197c
lbl_80571b3c:
/* 80571B3C 3C60D011 */ lis         r3, 0xd011
/* 80571B40 809A0000 */ lwz         r4, 0(r26)
/* 80571B44 3803F000 */ addi        r0, r3, -0x1000
/* 80571B48 7C800039 */ and.        r0, r4, r0
/* 80571B4C 41820010 */ beq-        lbl_80571b5c
/* 80571B50 8019002C */ lwz         r0, 0x2c(r25)
/* 80571B54 60000001 */ ori         r0, r0, 1
/* 80571B58 9019002C */ stw         r0, 0x2c(r25)
lbl_80571b5c:
/* 80571B5C 801A0000 */ lwz         r0, 0(r26)
/* 80571B60 5400056B */ rlwinm.     r0, r0, 0, 0x15, 0x15
/* 80571B64 41820010 */ beq-        lbl_80571b74
/* 80571B68 8019002C */ lwz         r0, 0x2c(r25)
/* 80571B6C 60000002 */ ori         r0, r0, 2
/* 80571B70 9019002C */ stw         r0, 0x2c(r25)
lbl_80571b74:
/* 80571B74 3C60809C */ lis         r3, spInstance__Q26System10RaceConfig@ha
/* 80571B78 8063D728 */ lwz         r3, spInstance__Q26System10RaceConfig@l(r3)
/* 80571B7C 80030B70 */ lwz         r0, 0xb70(r3)
/* 80571B80 2C000004 */ cmpwi       r0, 4
/* 80571B84 408200B0 */ bne-        lbl_80571c34
/* 80571B88 2C1C0000 */ cmpwi       r28, 0
/* 80571B8C 418200A8 */ beq-        lbl_80571c34
/* 80571B90 3B400000 */ li          r26, 0
/* 80571B94 93410008 */ stw         r26, 8(r1)
/* 80571B98 38790004 */ addi        r3, r25, 4
/* 80571B9C 4801EC3D */ bl          hitboxGroup__Q24Kart15KartObjectProxyFv
/* 80571BA0 C0230004 */ lfs         f1, 4(r3)
/* 80571BA4 3C60809C */ lis         r3, spInstance__Q25Field11CourseModel@ha
/* 80571BA8 C01F0050 */ lfs         f0, 0x50(r31)
/* 80571BAC 7F64DB78 */ mr          r4, r27
/* 80571BB0 80632F44 */ lwz         r3, spInstance__Q25Field11CourseModel@l(r3)
/* 80571BB4 7FC5F378 */ mr          r5, r30
/* 80571BB8 EC200072 */ fmuls       f1, f0, f1
/* 80571BBC 7FA7EB78 */ mr          r7, r29
/* 80571BC0 39010008 */ addi        r8, r1, 8
/* 80571BC4 3CC00400 */ lis         r6, 0x400
/* 80571BC8 39200000 */ li          r9, 0
/* 80571BCC 4821E7F1 */ bl          checkSphereCachedPartialPush__Q25Field11CourseModelFRCQ23EGG8Vector3fRCQ23EGG8Vector3fUlPQ25Field14ColInfoPartialPUlfUl
/* 80571BD0 2C030000 */ cmpwi       r3, 0
/* 80571BD4 41820060 */ beq-        lbl_80571c34
/* 80571BD8 80010008 */ lwz         r0, 8(r1)
/* 80571BDC 5400014B */ rlwinm.     r0, r0, 0, 5, 5
/* 80571BE0 41820014 */ beq-        lbl_80571bf4
/* 80571BE4 38610008 */ addi        r3, r1, 8
/* 80571BE8 3C800400 */ lis         r4, 0x400
/* 80571BEC 4824BD81 */ bl          findClosestCollisionEntry__5FieldFPUlUl
/* 80571BF0 48000008 */ b           lbl_80571bf8
lbl_80571bf4:
/* 80571BF4 7F43D378 */ mr          r3, r26
lbl_80571bf8:
/* 80571BF8 2C030000 */ cmpwi       r3, 0
/* 80571BFC 41820038 */ beq-        lbl_80571c34
/* 80571C00 3C60809C */ lis         r3, closestCollisionEntry__5Field@ha
/* 80571C04 80633BDC */ lwz         r3, closestCollisionEntry__5Field@l(r3)
/* 80571C08 A0030004 */ lhz         r0, 4(r3)
/* 80571C0C 5400DF7E */ rlwinm      r0, r0, 0x1b, 0x1d, 0x1f
/* 80571C10 2C000004 */ cmpwi       r0, 4
/* 80571C14 40820020 */ bne-        lbl_80571c34
/* 80571C18 38790004 */ addi        r3, r25, 4
/* 80571C1C 4801FCE9 */ bl          kartHalfPipe__Q24Kart15KartObjectProxyFv
/* 80571C20 38800001 */ li          r4, 1
/* 80571C24 48003CC1 */ bl          PlayerZipper_end
/* 80571C28 8019002C */ lwz         r0, 0x2c(r25)
/* 80571C2C 64000001 */ oris        r0, r0, 1
/* 80571C30 9019002C */ stw         r0, 0x2c(r25)
lbl_80571c34:
/* 80571C34 E3E10068 */ psq_l       f31, 0x68(r1), 0, 0
/* 80571C38 CBE10060 */ lfd         f31, 0x60(r1)
/* 80571C3C E3C10058 */ psq_l       f30, 0x58(r1), 0, 0
/* 80571C40 39610050 */ addi        r11, r1, 0x50
/* 80571C44 CBC10050 */ lfd         f30, 0x50(r1)
/* 80571C48 4BAAF999 */ bl          _restgpr_24
/* 80571C4C 80010074 */ lwz         r0, 0x74(r1)
/* 80571C50 7C0803A6 */ mtlr        r0
/* 80571C54 38210070 */ addi        r1, r1, 0x70
/* 80571C58 4E800020 */ blr         