nofralloc
/* 80599690 9421FF30 */ stwu        r1, -0xd0(r1)
/* 80599694 7C0802A6 */ mflr        r0
/* 80599698 900100D4 */ stw         r0, 0xd4(r1)
/* 8059969C DBE100C0 */ stfd        f31, 0xc0(r1)
/* 805996A0 F3E100C8 */ psq_st      f31, 0xc8(r1), 0, 0
/* 805996A4 DBC100B0 */ stfd        f30, 0xb0(r1)
/* 805996A8 F3C100B8 */ psq_st      f30, 0xb8(r1), 0, 0
/* 805996AC DBA100A0 */ stfd        f29, 0xa0(r1)
/* 805996B0 F3A100A8 */ psq_st      f29, 0xa8(r1), 0, 0
/* 805996B4 DB810090 */ stfd        f28, 0x90(r1)
/* 805996B8 F3810098 */ psq_st      f28, 0x98(r1), 0, 0
/* 805996BC DB610080 */ stfd        f27, 0x80(r1)
/* 805996C0 F3610088 */ psq_st      f27, 0x88(r1), 0, 0
/* 805996C4 DB410070 */ stfd        f26, 0x70(r1)
/* 805996C8 F3410078 */ psq_st      f26, 0x78(r1), 0, 0
/* 805996CC DB210060 */ stfd        f25, 0x60(r1)
/* 805996D0 F3210068 */ psq_st      f25, 0x68(r1), 0, 0
/* 805996D4 39610060 */ addi        r11, r1, 0x60
/* 805996D8 4BA87EC1 */ bl          _savegpr_25
/* 805996DC 3FE08089 */ lis         r31, lbl_80891f68@ha
/* 805996E0 7C791B78 */ mr          r25, r3
/* 805996E4 7C9A2378 */ mr          r26, r4
/* 805996E8 7CBB2B78 */ mr          r27, r5
/* 805996EC 3BFF1F68 */ addi        r31, r31, lbl_80891f68@l
/* 805996F0 4BFF6CDD */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 805996F4 83B9001C */ lwz         r29, 0x1c(r25)
/* 805996F8 7C7C1B78 */ mr          r28, r3
/* 805996FC 80990018 */ lwz         r4, 0x18(r25)
/* 80599700 83DD008C */ lwz         r30, 0x8c(r29)
/* 80599704 C0040020 */ lfs         f0, 0x20(r4)
/* 80599708 D0190070 */ stfs        f0, 0x70(r25)
/* 8059970C 80790000 */ lwz         r3, 0(r25)
/* 80599710 80630004 */ lwz         r3, 4(r3)
/* 80599714 80A3000C */ lwz         r5, 0xc(r3)
/* 80599718 54A006B5 */ rlwinm.     r0, r5, 0, 0x1a, 0x1a
/* 8059971C 4082025C */ bne-        lbl_80599978
/* 80599720 54A0018D */ rlwinm.     r0, r5, 0, 6, 6
/* 80599724 40820254 */ bne-        lbl_80599978
/* 80599728 80030010 */ lwz         r0, 0x10(r3)
/* 8059972C 5400056B */ rlwinm.     r0, r0, 0, 0x15, 0x15
/* 80599730 40820248 */ bne-        lbl_80599978
/* 80599734 C3E40024 */ lfs         f31, 0x24(r4)
/* 80599738 7F23CB78 */ mr          r3, r25
/* 8059973C C359006C */ lfs         f26, 0x6c(r25)
/* 80599740 4BFF703D */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80599744 C3630170 */ lfs         f27, 0x170(r3)
/* 80599748 7F23CB78 */ mr          r3, r25
/* 8059974C 4BFF7D71 */ bl          getScale__Q24Kart15KartObjectProxyFv
/* 80599750 C0030004 */ lfs         f0, 4(r3)
/* 80599754 EC9F06F2 */ fmuls       f4, f31, f27
/* 80599758 C05A0000 */ lfs         f2, 0(r26)
/* 8059975C 7F23CB78 */ mr          r3, r25
/* 80599760 ECBA0032 */ fmuls       f5, f26, f0
/* 80599764 C0790020 */ lfs         f3, 0x20(r25)
/* 80599768 C03A0004 */ lfs         f1, 4(r26)
/* 8059976C C01A0008 */ lfs         f0, 8(r26)
/* 80599770 38810020 */ addi        r4, r1, 0x20
/* 80599774 ECA52028 */ fsubs       f5, f5, f4
/* 80599778 EC8500B2 */ fmuls       f4, f5, f2
/* 8059977C EC450072 */ fmuls       f2, f5, f1
/* 80599780 EC250032 */ fmuls       f1, f5, f0
/* 80599784 EC03202A */ fadds       f0, f3, f4
/* 80599788 D001002C */ stfs        f0, 0x2c(r1)
/* 8059978C C0190024 */ lfs         f0, 0x24(r25)
/* 80599790 EC00102A */ fadds       f0, f0, f2
/* 80599794 D0010030 */ stfs        f0, 0x30(r1)
/* 80599798 C0190028 */ lfs         f0, 0x28(r25)
/* 8059979C EC00082A */ fadds       f0, f0, f1
/* 805997A0 D0010034 */ stfs        f0, 0x34(r1)
/* 805997A4 4BFF74A1 */ bl          PlayerPointers_getPlayerMatCol0
/* 805997A8 7F23CB78 */ mr          r3, r25
/* 805997AC 4BFF6FD1 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 805997B0 C3430170 */ lfs         f26, 0x170(r3)
/* 805997B4 7F23CB78 */ mr          r3, r25
/* 805997B8 4BFF6FC5 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 805997BC 8183000C */ lwz         r12, 0xc(r3)
/* 805997C0 818C0038 */ lwz         r12, 0x38(r12)
/* 805997C4 7D8903A6 */ mtctr       r12
/* 805997C8 4E800421 */ bctrl       
/* 805997CC 3C60808B */ lis         r3, forwardFactor__4Kart@ha
/* 805997D0 EC3F0072 */ fmuls       f1, f31, f1
/* 805997D4 C0036694 */ lfs         f0, forwardFactor__4Kart@l(r3)
/* 805997D8 C0A10020 */ lfs         f5, 0x20(r1)
/* 805997DC EC000072 */ fmuls       f0, f0, f1
/* 805997E0 C0610024 */ lfs         f3, 0x24(r1)
/* 805997E4 C0210028 */ lfs         f1, 0x28(r1)
/* 805997E8 C081002C */ lfs         f4, 0x2c(r1)
/* 805997EC ECC006B2 */ fmuls       f6, f0, f26
/* 805997F0 C0410030 */ lfs         f2, 0x30(r1)
/* 805997F4 C0010034 */ lfs         f0, 0x34(r1)
/* 805997F8 ECA60172 */ fmuls       f5, f6, f5
/* 805997FC EC6600F2 */ fmuls       f3, f6, f3
/* 80599800 EC260072 */ fmuls       f1, f6, f1
/* 80599804 EC84282A */ fadds       f4, f4, f5
/* 80599808 EC42182A */ fadds       f2, f2, f3
/* 8059980C EC00082A */ fadds       f0, f0, f1
/* 80599810 D081002C */ stfs        f4, 0x2c(r1)
/* 80599814 D0410030 */ stfs        f2, 0x30(r1)
/* 80599818 D0010034 */ stfs        f0, 0x34(r1)
/* 8059981C 80790000 */ lwz         r3, 0(r25)
/* 80599820 80630004 */ lwz         r3, 4(r3)
/* 80599824 8003000C */ lwz         r0, 0xc(r3)
/* 80599828 54000211 */ rlwinm.     r0, r0, 0, 8, 8
/* 8059982C 40820120 */ bne-        lbl_8059994c
/* 80599830 80030008 */ lwz         r0, 8(r3)
/* 80599834 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 80599838 40820114 */ bne-        lbl_8059994c
/* 8059983C 7F23CB78 */ mr          r3, r25
/* 80599840 4BFF6F3D */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80599844 C0230170 */ lfs         f1, 0x170(r3)
/* 80599848 8079001C */ lwz         r3, 0x1c(r25)
/* 8059984C 4801EB8D */ bl          setHitboxScale__Q24Kart11HitboxGroupFf
/* 80599850 80790000 */ lwz         r3, 0(r25)
/* 80599854 80630004 */ lwz         r3, 4(r3)
/* 80599858 80030010 */ lwz         r0, 0x10(r3)
/* 8059985C 540007BD */ rlwinm.     r0, r0, 0, 0x1e, 0x1e
/* 80599860 41820024 */ beq-        lbl_80599884
/* 80599864 7F23CB78 */ mr          r3, r25
/* 80599868 4BFF69A5 */ bl          getPos__Q24Kart15KartObjectProxyCFv
/* 8059986C C0030000 */ lfs         f0, 0(r3)
/* 80599870 D01E0018 */ stfs        f0, 0x18(r30)
/* 80599874 C0030004 */ lfs         f0, 4(r3)
/* 80599878 D01E001C */ stfs        f0, 0x1c(r30)
/* 8059987C C0030008 */ lfs         f0, 8(r3)
/* 80599880 D01E0020 */ stfs        f0, 0x20(r30)
lbl_80599884:
/* 80599884 7F23CB78 */ mr          r3, r25
/* 80599888 4BFF71D5 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8059988C 7C7E1B78 */ mr          r30, r3
/* 80599890 7F23CB78 */ mr          r3, r25
/* 80599894 4BFF6FB9 */ bl          kartCollide__Q24Kart15KartObjectProxyFv
/* 80599898 FC20F890 */ fmr         f1, f31
/* 8059989C 80B90010 */ lwz         r5, 0x10(r25)
/* 805998A0 80F9001C */ lwz         r7, 0x1c(r25)
/* 805998A4 7F86E378 */ mr          r6, r28
/* 805998A8 57C4063E */ clrlwi      r4, r30, 0x18
/* 805998AC 39190048 */ addi        r8, r25, 0x48
/* 805998B0 3921002C */ addi        r9, r1, 0x2c
/* 805998B4 4801D699 */ bl          unk_805b6f4c
/* 805998B8 801D0008 */ lwz         r0, 8(r29)
/* 805998BC 70000043 */ andi.       r0, r0, 0x43
/* 805998C0 41820098 */ beq-        lbl_80599958
/* 805998C4 C0390020 */ lfs         f1, 0x20(r25)
/* 805998C8 C01D000C */ lfs         f0, 0xc(r29)
/* 805998CC C0590024 */ lfs         f2, 0x24(r25)
/* 805998D0 EC01002A */ fadds       f0, f1, f0
/* 805998D4 C0390028 */ lfs         f1, 0x28(r25)
/* 805998D8 D0190020 */ stfs        f0, 0x20(r25)
/* 805998DC C01D0010 */ lfs         f0, 0x10(r29)
/* 805998E0 EC02002A */ fadds       f0, f2, f0
/* 805998E4 D0190024 */ stfs        f0, 0x24(r25)
/* 805998E8 C01D0014 */ lfs         f0, 0x14(r29)
/* 805998EC EC01002A */ fadds       f0, f1, f0
/* 805998F0 D0190028 */ stfs        f0, 0x28(r25)
/* 805998F4 801D0084 */ lwz         r0, 0x84(r29)
/* 805998F8 2C000000 */ cmpwi       r0, 0
/* 805998FC 4180005C */ blt-        lbl_80599958
/* 80599900 6C038000 */ xoris       r3, r0, 0x8000
/* 80599904 3C004330 */ lis         r0, 0x4330
/* 80599908 9061003C */ stw         r3, 0x3c(r1)
/* 8059990C 3CA0808B */ lis         r5, lbl_808b6590@ha
/* 80599910 C83F0018 */ lfd         f1, 0x18(r31)
/* 80599914 7F23CB78 */ mr          r3, r25
/* 80599918 90010038 */ stw         r0, 0x38(r1)
/* 8059991C C0456590 */ lfs         f2, lbl_808b6590@l(r5)
/* 80599920 C8010038 */ lfd         f0, 0x38(r1)
/* 80599924 80990018 */ lwz         r4, 0x18(r25)
/* 80599928 EC000828 */ fsubs       f0, f0, f1
/* 8059992C C0240020 */ lfs         f1, 0x20(r4)
/* 80599930 EF220032 */ fmuls       f25, f2, f0
/* 80599934 EC01C828 */ fsubs       f0, f1, f25
/* 80599938 D0190070 */ stfs        f0, 0x70(r25)
/* 8059993C 4BFF6D61 */ bl          kartBody__Q24Kart15KartObjectProxyFv
/* 80599940 FC20C890 */ fmr         f1, f25
/* 80599944 4BFD300D */ bl          unk_8056c950
/* 80599948 48000010 */ b           lbl_80599958
lbl_8059994c:
/* 8059994C 8079001C */ lwz         r3, 0x1c(r25)
/* 80599950 38630008 */ addi        r3, r3, 8
/* 80599954 4801E8C9 */ bl          reset__Q24Kart17KartCollisionInfoFv
lbl_80599958:
/* 80599958 8079001C */ lwz         r3, 0x1c(r25)
/* 8059995C C001002C */ lfs         f0, 0x2c(r1)
/* 80599960 8063008C */ lwz         r3, 0x8c(r3)
/* 80599964 D0030018 */ stfs        f0, 0x18(r3)
/* 80599968 C0010030 */ lfs         f0, 0x30(r1)
/* 8059996C D003001C */ stfs        f0, 0x1c(r3)
/* 80599970 C0010034 */ lfs         f0, 0x34(r1)
/* 80599974 D0030020 */ stfs        f0, 0x20(r3)
lbl_80599978:
/* 80599978 7F23CB78 */ mr          r3, r25
/* 8059997C 4BFF6E01 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80599980 C3990020 */ lfs         f28, 0x20(r25)
/* 80599984 C11B0000 */ lfs         f8, 0(r27)
/* 80599988 C3F90024 */ lfs         f31, 0x24(r25)
/* 8059998C C07B0004 */ lfs         f3, 4(r27)
/* 80599990 ECDC4028 */ fsubs       f6, f28, f8
/* 80599994 C35A0000 */ lfs         f26, 0(r26)
/* 80599998 C1230170 */ lfs         f9, 0x170(r3)
/* 8059999C ECBF1828 */ fsubs       f5, f31, f3
/* 805999A0 C3BA0004 */ lfs         f29, 4(r26)
/* 805999A4 EC5A01B2 */ fmuls       f2, f26, f6
/* 805999A8 C0FB0008 */ lfs         f7, 8(r27)
/* 805999AC C1790028 */ lfs         f11, 0x28(r25)
/* 805999B0 EC3D0172 */ fmuls       f1, f29, f5
/* 805999B4 C339006C */ lfs         f25, 0x6c(r25)
/* 805999B8 EC8B3828 */ fsubs       f4, f11, f7
/* 805999BC C0190070 */ lfs         f0, 0x70(r25)
/* 805999C0 ED990272 */ fmuls       f12, f25, f9
/* 805999C4 C1BA0008 */ lfs         f13, 8(r26)
/* 805999C8 ED40C828 */ fsubs       f10, f0, f25
/* 805999CC D079007C */ stfs        f3, 0x7c(r25)
/* 805999D0 EF6C06B2 */ fmuls       f27, f12, f26
/* 805999D4 C13F000C */ lfs         f9, 0xc(r31)
/* 805999D8 EFCC0772 */ fmuls       f30, f12, f29
/* 805999DC D1190078 */ stfs        f8, 0x78(r25)
/* 805999E0 ED0902B2 */ fmuls       f8, f9, f10
/* 805999E4 C01F0000 */ lfs         f0, 0(r31)
/* 805999E8 ED8C0372 */ fmuls       f12, f12, f13
/* 805999EC D0F90080 */ stfs        f7, 0x80(r25)
/* 805999F0 EF9CD82A */ fadds       f28, f28, f27
/* 805999F4 ED5FF02A */ fadds       f10, f31, f30
/* 805999F8 D0C10014 */ stfs        f6, 0x14(r1)
/* 805999FC ED2B602A */ fadds       f9, f11, f12
/* 80599A00 ED19402A */ fadds       f8, f25, f8
/* 80599A04 D3990060 */ stfs        f28, 0x60(r25)
/* 80599A08 EC6D0132 */ fmuls       f3, f13, f4
/* 80599A0C EC22082A */ fadds       f1, f2, f1
/* 80599A10 D1590064 */ stfs        f10, 0x64(r25)
/* 80599A14 D1390068 */ stfs        f9, 0x68(r25)
/* 80599A18 EC63082A */ fadds       f3, f3, f1
/* 80599A1C D119006C */ stfs        f8, 0x6c(r25)
/* 80599A20 FC030040 */ fcmpo       cr0, f3, f0
/* 80599A24 D0A10018 */ stfs        f5, 0x18(r1)
/* 80599A28 D081001C */ stfs        f4, 0x1c(r1)
/* 80599A2C D0790044 */ stfs        f3, 0x44(r25)
/* 80599A30 4080004C */ bge-        lbl_80599a7c
/* 80599A34 C01F0010 */ lfs         f0, 0x10(r31)
/* 80599A38 EC4306B2 */ fmuls       f2, f3, f26
/* 80599A3C D0190074 */ stfs        f0, 0x74(r25)
/* 80599A40 EC230772 */ fmuls       f1, f3, f29
/* 80599A44 EC030372 */ fmuls       f0, f3, f13
/* 80599A48 7F23CB78 */ mr          r3, r25
/* 80599A4C D0410008 */ stfs        f2, 8(r1)
/* 80599A50 D021000C */ stfs        f1, 0xc(r1)
/* 80599A54 D0010010 */ stfs        f0, 0x10(r1)
/* 80599A58 4BFF6D0D */ bl          kartPhysicsEngine__Q24Kart15KartObjectProxyFv
/* 80599A5C 38810008 */ addi        r4, r1, 8
/* 80599A60 4BFFDF8D */ bl          unk_805979ec
/* 80599A64 80790000 */ lwz         r3, 0(r25)
/* 80599A68 80630004 */ lwz         r3, 4(r3)
/* 80599A6C 80030008 */ lwz         r0, 8(r3)
/* 80599A70 64000008 */ oris        r0, r0, 8
/* 80599A74 90030008 */ stw         r0, 8(r3)
/* 80599A78 48000008 */ b           lbl_80599a80
lbl_80599a7c:
/* 80599A7C D0190074 */ stfs        f0, 0x74(r25)
lbl_80599a80:
/* 80599A80 E3E100C8 */ psq_l       f31, 0xc8(r1), 0, 0
/* 80599A84 CBE100C0 */ lfd         f31, 0xc0(r1)
/* 80599A88 E3C100B8 */ psq_l       f30, 0xb8(r1), 0, 0
/* 80599A8C CBC100B0 */ lfd         f30, 0xb0(r1)
/* 80599A90 E3A100A8 */ psq_l       f29, 0xa8(r1), 0, 0
/* 80599A94 CBA100A0 */ lfd         f29, 0xa0(r1)
/* 80599A98 E3810098 */ psq_l       f28, 0x98(r1), 0, 0
/* 80599A9C CB810090 */ lfd         f28, 0x90(r1)
/* 80599AA0 E3610088 */ psq_l       f27, 0x88(r1), 0, 0
/* 80599AA4 CB610080 */ lfd         f27, 0x80(r1)
/* 80599AA8 E3410078 */ psq_l       f26, 0x78(r1), 0, 0
/* 80599AAC CB410070 */ lfd         f26, 0x70(r1)
/* 80599AB0 E3210068 */ psq_l       f25, 0x68(r1), 0, 0
/* 80599AB4 39610060 */ addi        r11, r1, 0x60
/* 80599AB8 CB210060 */ lfd         f25, 0x60(r1)
/* 80599ABC 4BA87B29 */ bl          _restgpr_25
/* 80599AC0 800100D4 */ lwz         r0, 0xd4(r1)
/* 80599AC4 7C0803A6 */ mtlr        r0
/* 80599AC8 382100D0 */ addi        r1, r1, 0xd0
/* 80599ACC 4E800020 */ blr         