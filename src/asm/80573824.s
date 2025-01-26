nofralloc
/* 80573824 9421FF80 */ stwu        r1, -0x80(r1)
/* 80573828 7C0802A6 */ mflr        r0
/* 8057382C 90010084 */ stw         r0, 0x84(r1)
/* 80573830 DBE10070 */ stfd        f31, 0x70(r1)
/* 80573834 F3E10078 */ psq_st      f31, 0x78(r1), 0, 0
/* 80573838 DBC10060 */ stfd        f30, 0x60(r1)
/* 8057383C F3C10068 */ psq_st      f30, 0x68(r1), 0, 0
/* 80573840 93E1005C */ stw         r31, 0x5c(r1)
/* 80573844 3FE08089 */ lis         r31, lbl_80891730@ha
/* 80573848 3BFF1730 */ addi        r31, r31, lbl_80891730@l
/* 8057384C 93C10058 */ stw         r30, 0x58(r1)
/* 80573850 7C9E2378 */ mr          r30, r4
/* 80573854 93A10054 */ stw         r29, 0x54(r1)
/* 80573858 7C7D1B78 */ mr          r29, r3
/* 8057385C 38630004 */ addi        r3, r3, 4
/* 80573860 4801CF61 */ bl          kartAccessor_34__Q24Kart15KartObjectProxyFv
/* 80573864 7C641B78 */ mr          r4, r3
/* 80573868 7FC5F378 */ mr          r5, r30
/* 8057386C 38610020 */ addi        r3, r1, 0x20
/* 80573870 4BFFECD5 */ bl          unk_80572544
/* 80573874 387D0004 */ addi        r3, r29, 4
/* 80573878 4801CF05 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 8057387C 7C641B78 */ mr          r4, r3
/* 80573880 3861002C */ addi        r3, r1, 0x2c
/* 80573884 38840068 */ addi        r4, r4, 0x68
/* 80573888 38A10020 */ addi        r5, r1, 0x20
/* 8057388C 4803B345 */ bl          rejUnit__6RKGeomFRQ23EGG8Vector3fRCQ23EGG8Vector3fRCQ23EGG8Vector3f
/* 80573890 387D0004 */ addi        r3, r29, 4
/* 80573894 4801CF2D */ bl          kartAccessor_34__Q24Kart15KartObjectProxyFv
/* 80573898 7C641B78 */ mr          r4, r3
/* 8057389C 7FC5F378 */ mr          r5, r30
/* 805738A0 38610014 */ addi        r3, r1, 0x14
/* 805738A4 4BFFECA1 */ bl          unk_80572544
/* 805738A8 387D0004 */ addi        r3, r29, 4
/* 805738AC 4801CED1 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 805738B0 C0630068 */ lfs         f3, 0x68(r3)
/* 805738B4 C0410014 */ lfs         f2, 0x14(r1)
/* 805738B8 C023006C */ lfs         f1, 0x6c(r3)
/* 805738BC C0010018 */ lfs         f0, 0x18(r1)
/* 805738C0 EC4300B2 */ fmuls       f2, f3, f2
/* 805738C4 C0A30070 */ lfs         f5, 0x70(r3)
/* 805738C8 387D0004 */ addi        r3, r29, 4
/* 805738CC EC210032 */ fmuls       f1, f1, f0
/* 805738D0 C081001C */ lfs         f4, 0x1c(r1)
/* 805738D4 C001002C */ lfs         f0, 0x2c(r1)
/* 805738D8 ECA50132 */ fmuls       f5, f5, f4
/* 805738DC C07F0068 */ lfs         f3, 0x68(r31)
/* 805738E0 EC82082A */ fadds       f4, f2, f1
/* 805738E4 EC4000F2 */ fmuls       f2, f0, f3
/* 805738E8 C0210030 */ lfs         f1, 0x30(r1)
/* 805738EC C0010034 */ lfs         f0, 0x34(r1)
/* 805738F0 EC2100F2 */ fmuls       f1, f1, f3
/* 805738F4 D041002C */ stfs        f2, 0x2c(r1)
/* 805738F8 EC0000F2 */ fmuls       f0, f0, f3
/* 805738FC EFE5202A */ fadds       f31, f5, f4
/* 80573900 D0210030 */ stfs        f1, 0x30(r1)
/* 80573904 D0010034 */ stfs        f0, 0x34(r1)
/* 80573908 4801CEB9 */ bl          kartAccessor_34__Q24Kart15KartObjectProxyFv
/* 8057390C 7C641B78 */ mr          r4, r3
/* 80573910 7FC5F378 */ mr          r5, r30
/* 80573914 38610008 */ addi        r3, r1, 8
/* 80573918 4BFFEC2D */ bl          unk_80572544
/* 8057391C FC60FA10 */ fabs        f3, f31
/* 80573920 C05F0004 */ lfs         f2, 4(r31)
/* 80573924 C03F006C */ lfs         f1, 0x6c(r31)
/* 80573928 38610038 */ addi        r3, r1, 0x38
/* 8057392C C01F0068 */ lfs         f0, 0x68(r31)
/* 80573930 EC421828 */ fsubs       f2, f2, f3
/* 80573934 C0A10008 */ lfs         f5, 8(r1)
/* 80573938 C061000C */ lfs         f3, 0xc(r1)
/* 8057393C ECC100B2 */ fmuls       f6, f1, f2
/* 80573940 C0210010 */ lfs         f1, 0x10(r1)
/* 80573944 C0810038 */ lfs         f4, 0x38(r1)
/* 80573948 C041003C */ lfs         f2, 0x3c(r1)
/* 8057394C ECC0302A */ fadds       f6, f0, f6
/* 80573950 C0010040 */ lfs         f0, 0x40(r1)
/* 80573954 ECA60172 */ fmuls       f5, f6, f5
/* 80573958 EC6600F2 */ fmuls       f3, f6, f3
/* 8057395C EC260072 */ fmuls       f1, f6, f1
/* 80573960 EC84282A */ fadds       f4, f4, f5
/* 80573964 EC42182A */ fadds       f2, f2, f3
/* 80573968 EC00082A */ fadds       f0, f0, f1
/* 8057396C D0810038 */ stfs        f4, 0x38(r1)
/* 80573970 D041003C */ stfs        f2, 0x3c(r1)
/* 80573974 D0010040 */ stfs        f0, 0x40(r1)
/* 80573978 4BCD0165 */ bl          normalise__Q23EGG8Vector3fFv
/* 8057397C 387D0004 */ addi        r3, r29, 4
/* 80573980 4801CDFD */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80573984 C3DF0000 */ lfs         f30, 0(r31)
/* 80573988 C0030020 */ lfs         f0, 0x20(r3)
/* 8057398C FC1FF040 */ fcmpo       cr0, f31, f30
/* 80573990 40800008 */ bge-        lbl_80573998
/* 80573994 48000008 */ b           lbl_8057399c
lbl_80573998:
/* 80573998 EFC007F2 */ fmuls       f30, f0, f31
lbl_8057399c:
/* 8057399C 387D0004 */ addi        r3, r29, 4
/* 805739A0 4801CDDD */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 805739A4 D3C30020 */ stfs        f30, 0x20(r3)
/* 805739A8 807D0004 */ lwz         r3, 4(r29)
/* 805739AC 80630004 */ lwz         r3, 4(r3)
/* 805739B0 80030004 */ lwz         r0, 4(r3)
/* 805739B4 5400014B */ rlwinm.     r0, r0, 0, 5, 5
/* 805739B8 4182000C */ beq-        lbl_805739c4
/* 805739BC C3FF0054 */ lfs         f31, 0x54(r31)
/* 805739C0 48000008 */ b           lbl_805739c8
lbl_805739c4:
/* 805739C4 C3FF0008 */ lfs         f31, 8(r31)
lbl_805739c8:
/* 805739C8 387D0004 */ addi        r3, r29, 4
/* 805739CC 4801CDB1 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 805739D0 FC20F890 */ fmr         f1, f31
/* 805739D4 38810038 */ addi        r4, r1, 0x38
/* 805739D8 38A00000 */ li          r5, 0
/* 805739DC 480133D9 */ bl          unk_80586db4
/* 805739E0 387D0004 */ addi        r3, r29, 4
/* 805739E4 4801CD99 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 805739E8 38800000 */ li          r4, 0
/* 805739EC 4800F8F9 */ bl          clearBoost__Q24Kart8KartMoveFv
/* 805739F0 387D0004 */ addi        r3, r29, 4
/* 805739F4 38800001 */ li          r4, 1
/* 805739F8 4801D3BD */ bl          clearBoost__Q24Kart15KartObjectProxyFv
/* 805739FC 3860FFFF */ li          r3, -1
/* 80573A00 E3E10078 */ psq_l       f31, 0x78(r1), 0, 0
/* 80573A04 CBE10070 */ lfd         f31, 0x70(r1)
/* 80573A08 E3C10068 */ psq_l       f30, 0x68(r1), 0, 0
/* 80573A0C CBC10060 */ lfd         f30, 0x60(r1)
/* 80573A10 83E1005C */ lwz         r31, 0x5c(r1)
/* 80573A14 83C10058 */ lwz         r30, 0x58(r1)
/* 80573A18 83A10054 */ lwz         r29, 0x54(r1)
/* 80573A1C 80010084 */ lwz         r0, 0x84(r1)
/* 80573A20 7C0803A6 */ mtlr        r0
/* 80573A24 38210080 */ addi        r1, r1, 0x80
/* 80573A28 4E800020 */ blr         