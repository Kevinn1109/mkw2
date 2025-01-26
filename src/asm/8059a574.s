nofralloc
/* 8059A574 9421FF40 */ stwu        r1, -0xc0(r1)
/* 8059A578 7C0802A6 */ mflr        r0
/* 8059A57C 900100C4 */ stw         r0, 0xc4(r1)
/* 8059A580 DBE100B0 */ stfd        f31, 0xb0(r1)
/* 8059A584 F3E100B8 */ psq_st      f31, 0xb8(r1), 0, 0
/* 8059A588 DBC100A0 */ stfd        f30, 0xa0(r1)
/* 8059A58C F3C100A8 */ psq_st      f30, 0xa8(r1), 0, 0
/* 8059A590 DBA10090 */ stfd        f29, 0x90(r1)
/* 8059A594 F3A10098 */ psq_st      f29, 0x98(r1), 0, 0
/* 8059A598 39610090 */ addi        r11, r1, 0x90
/* 8059A59C 4BA86FF9 */ bl          _savegpr_24
/* 8059A5A0 81030014 */ lwz         r8, 0x14(r3)
/* 8059A5A4 7C7A1B78 */ mr          r26, r3
/* 8059A5A8 3FA0808B */ lis         r29, rateForward__4Kart@ha
/* 8059A5AC 3FC08089 */ lis         r30, lbl_80891f68@ha
/* 8059A5B0 80E80038 */ lwz         r7, 0x38(r8)
/* 8059A5B4 7C9B2378 */ mr          r27, r4
/* 8059A5B8 80C8003C */ lwz         r6, 0x3c(r8)
/* 8059A5BC 7D034378 */ mr          r3, r8
/* 8059A5C0 80080040 */ lwz         r0, 0x40(r8)
/* 8059A5C4 3BBD6688 */ addi        r29, r29, rateForward__4Kart@l
/* 8059A5C8 90E10058 */ stw         r7, 0x58(r1)
/* 8059A5CC 3BDE1F68 */ addi        r30, r30, lbl_80891f68@l
/* 8059A5D0 389A003C */ addi        r4, r26, 0x3c
/* 8059A5D4 90C1005C */ stw         r6, 0x5c(r1)
/* 8059A5D8 90010060 */ stw         r0, 0x60(r1)
/* 8059A5DC 4BFFF4F5 */ bl          calc__Q24Kart16KartWheelPhysicsFRCQ23EGG8Vector3fRCQ23EGG8Vector3f
/* 8059A5E0 807A0014 */ lwz         r3, 0x14(r26)
/* 8059A5E4 83E3001C */ lwz         r31, 0x1c(r3)
/* 8059A5E8 801F0008 */ lwz         r0, 8(r31)
/* 8059A5EC 540007FF */ clrlwi.     r0, r0, 0x1f
/* 8059A5F0 41820398 */ beq-        lbl_8059a988
/* 8059A5F4 C0630020 */ lfs         f3, 0x20(r3)
/* 8059A5F8 C03A0024 */ lfs         f1, 0x24(r26)
/* 8059A5FC C0430024 */ lfs         f2, 0x24(r3)
/* 8059A600 ECC30828 */ fsubs       f6, f3, f1
/* 8059A604 C01A0028 */ lfs         f0, 0x28(r26)
/* 8059A608 C03A003C */ lfs         f1, 0x3c(r26)
/* 8059A60C ECA20028 */ fsubs       f5, f2, f0
/* 8059A610 C01A0040 */ lfs         f0, 0x40(r26)
/* 8059A614 EC4101B2 */ fmuls       f2, f1, f6
/* 8059A618 C0830028 */ lfs         f4, 0x28(r3)
/* 8059A61C EC200172 */ fmuls       f1, f0, f5
/* 8059A620 C07A002C */ lfs         f3, 0x2c(r26)
/* 8059A624 C01E0000 */ lfs         f0, 0(r30)
/* 8059A628 EC841828 */ fsubs       f4, f4, f3
/* 8059A62C C07A0044 */ lfs         f3, 0x44(r26)
/* 8059A630 EC22082A */ fadds       f1, f2, f1
/* 8059A634 D0C1004C */ stfs        f6, 0x4c(r1)
/* 8059A638 EC430132 */ fmuls       f2, f3, f4
/* 8059A63C D0A10050 */ stfs        f5, 0x50(r1)
/* 8059A640 EFE2082A */ fadds       f31, f2, f1
/* 8059A644 D0810054 */ stfs        f4, 0x54(r1)
/* 8059A648 FC00F840 */ fcmpo       cr0, f0, f31
/* 8059A64C 40810008 */ ble-        lbl_8059a654
/* 8059A650 FFE00090 */ fmr         f31, f0
lbl_8059a654:
/* 8059A654 C0610058 */ lfs         f3, 0x58(r1)
/* 8059A658 C021004C */ lfs         f1, 0x4c(r1)
/* 8059A65C C041005C */ lfs         f2, 0x5c(r1)
/* 8059A660 ECA30828 */ fsubs       f5, f3, f1
/* 8059A664 C0010050 */ lfs         f0, 0x50(r1)
/* 8059A668 C03A003C */ lfs         f1, 0x3c(r26)
/* 8059A66C EC820028 */ fsubs       f4, f2, f0
/* 8059A670 C01A0040 */ lfs         f0, 0x40(r26)
/* 8059A674 C0610060 */ lfs         f3, 0x60(r1)
/* 8059A678 C0410054 */ lfs         f2, 0x54(r1)
/* 8059A67C EC210172 */ fmuls       f1, f1, f5
/* 8059A680 EC000132 */ fmuls       f0, f0, f4
/* 8059A684 EC631028 */ fsubs       f3, f3, f2
/* 8059A688 C0DA0030 */ lfs         f6, 0x30(r26)
/* 8059A68C A81A0036 */ lha         r0, 0x36(r26)
/* 8059A690 C05A0044 */ lfs         f2, 0x44(r26)
/* 8059A694 EC01002A */ fadds       f0, f1, f0
/* 8059A698 2C000000 */ cmpwi       r0, 0
/* 8059A69C EC2200F2 */ fmuls       f1, f2, f3
/* 8059A6A0 D0A10040 */ stfs        f5, 0x40(r1)
/* 8059A6A4 EFC6F828 */ fsubs       f30, f6, f31
/* 8059A6A8 D0810044 */ stfs        f4, 0x44(r1)
/* 8059A6AC EFA1002A */ fadds       f29, f1, f0
/* 8059A6B0 D0610048 */ stfs        f3, 0x48(r1)
/* 8059A6B4 40810094 */ ble-        lbl_8059a748
/* 8059A6B8 7F43D378 */ mr          r3, r26
/* 8059A6BC 3B3F0018 */ addi        r25, r31, 0x18
/* 8059A6C0 4BFF5CED */ bl          kartPhysics__Q24Kart15KartObjectProxyFv
/* 8059A6C4 C06300F0 */ lfs         f3, 0xf0(r3)
/* 8059A6C8 C0590000 */ lfs         f2, 0(r25)
/* 8059A6CC C02300F4 */ lfs         f1, 0xf4(r3)
/* 8059A6D0 C0190004 */ lfs         f0, 4(r25)
/* 8059A6D4 EC4300B2 */ fmuls       f2, f3, f2
/* 8059A6D8 C08300F8 */ lfs         f4, 0xf8(r3)
/* 8059A6DC EC210032 */ fmuls       f1, f1, f0
/* 8059A6E0 C0790008 */ lfs         f3, 8(r25)
/* 8059A6E4 C01E002C */ lfs         f0, 0x2c(r30)
/* 8059A6E8 EC6400F2 */ fmuls       f3, f4, f3
/* 8059A6EC EC22082A */ fadds       f1, f2, f1
/* 8059A6F0 EC23082A */ fadds       f1, f3, f1
/* 8059A6F4 FC010040 */ fcmpo       cr0, f1, f0
/* 8059A6F8 40800050 */ bge-        lbl_8059a748
/* 8059A6FC C03A0030 */ lfs         f1, 0x30(r26)
/* 8059A700 C01E0000 */ lfs         f0, 0(r30)
/* 8059A704 FC010040 */ fcmpo       cr0, f1, f0
/* 8059A708 40810040 */ ble-        lbl_8059a748
/* 8059A70C EC5F0824 */ fdivs       f2, f31, f1
/* 8059A710 FC001040 */ fcmpo       cr0, f0, f2
/* 8059A714 4081000C */ ble-        lbl_8059a720
/* 8059A718 FC400090 */ fmr         f2, f0
/* 8059A71C 48000014 */ b           lbl_8059a730
lbl_8059a720:
/* 8059A720 C01E0010 */ lfs         f0, 0x10(r30)
/* 8059A724 FC001040 */ fcmpo       cr0, f0, f2
/* 8059A728 40800008 */ bge-        lbl_8059a730
/* 8059A72C FC400090 */ fmr         f2, f0
lbl_8059a730:
/* 8059A730 C03D0018 */ lfs         f1, 0x18(r29)
/* 8059A734 C01E0010 */ lfs         f0, 0x10(r30)
/* 8059A738 EC000828 */ fsubs       f0, f0, f1
/* 8059A73C EC0000B2 */ fmuls       f0, f0, f2
/* 8059A740 EC01002A */ fadds       f0, f1, f0
/* 8059A744 EFBD0032 */ fmuls       f29, f29, f0
lbl_8059a748:
/* 8059A748 A87A0036 */ lha         r3, 0x36(r26)
/* 8059A74C 3803FFFF */ addi        r0, r3, -1
/* 8059A750 B01A0036 */ sth         r0, 0x36(r26)
/* 8059A754 7C000735 */ extsh.      r0, r0
/* 8059A758 4080000C */ bge-        lbl_8059a764
/* 8059A75C 38000000 */ li          r0, 0
/* 8059A760 B01A0036 */ sth         r0, 0x36(r26)
lbl_8059a764:
/* 8059A764 80BA0010 */ lwz         r5, 0x10(r26)
/* 8059A768 7F43D378 */ mr          r3, r26
/* 8059A76C 809A003C */ lwz         r4, 0x3c(r26)
/* 8059A770 C0250004 */ lfs         f1, 4(r5)
/* 8059A774 C0050008 */ lfs         f0, 8(r5)
/* 8059A778 801A0040 */ lwz         r0, 0x40(r26)
/* 8059A77C EC2107B2 */ fmuls       f1, f1, f30
/* 8059A780 EC000772 */ fmuls       f0, f0, f29
/* 8059A784 90010038 */ stw         r0, 0x38(r1)
/* 8059A788 90810034 */ stw         r4, 0x34(r1)
/* 8059A78C EC01002A */ fadds       f0, f1, f0
/* 8059A790 C0210038 */ lfs         f1, 0x38(r1)
/* 8059A794 801A0044 */ lwz         r0, 0x44(r26)
/* 8059A798 9001003C */ stw         r0, 0x3c(r1)
/* 8059A79C FC600050 */ fneg        f3, f0
/* 8059A7A0 C0410034 */ lfs         f2, 0x34(r1)
/* 8059A7A4 C001003C */ lfs         f0, 0x3c(r1)
/* 8059A7A8 EC4200F2 */ fmuls       f2, f2, f3
/* 8059A7AC EC2100F2 */ fmuls       f1, f1, f3
/* 8059A7B0 EC0000F2 */ fmuls       f0, f0, f3
/* 8059A7B4 D0410034 */ stfs        f2, 0x34(r1)
/* 8059A7B8 D0210038 */ stfs        f1, 0x38(r1)
/* 8059A7BC D001003C */ stfs        f0, 0x3c(r1)
/* 8059A7C0 4BFF6D35 */ bl          inRespawn__Q24Kart15KartObjectProxyFv
/* 8059A7C4 2C030000 */ cmpwi       r3, 0
/* 8059A7C8 4182002C */ beq-        lbl_8059a7f4
/* 8059A7CC C05D0010 */ lfs         f2, 0x10(r29)
/* 8059A7D0 C0010038 */ lfs         f0, 0x38(r1)
/* 8059A7D4 FC201050 */ fneg        f1, f2
/* 8059A7D8 FC010040 */ fcmpo       cr0, f1, f0
/* 8059A7DC 4081000C */ ble-        lbl_8059a7e8
/* 8059A7E0 D0210038 */ stfs        f1, 0x38(r1)
/* 8059A7E4 48000010 */ b           lbl_8059a7f4
lbl_8059a7e8:
/* 8059A7E8 FC020040 */ fcmpo       cr0, f2, f0
/* 8059A7EC 40800008 */ bge-        lbl_8059a7f4
/* 8059A7F0 D0410038 */ stfs        f2, 0x38(r1)
lbl_8059a7f4:
/* 8059A7F4 80C10038 */ lwz         r6, 0x38(r1)
/* 8059A7F8 3861001C */ addi        r3, r1, 0x1c
/* 8059A7FC 90C10020 */ stw         r6, 0x20(r1)
/* 8059A800 7C641B78 */ mr          r4, r3
/* 8059A804 80E10034 */ lwz         r7, 0x34(r1)
/* 8059A808 38BF0018 */ addi        r5, r31, 0x18
/* 8059A80C 8001003C */ lwz         r0, 0x3c(r1)
/* 8059A810 C01E0000 */ lfs         f0, 0(r30)
/* 8059A814 90E10010 */ stw         r7, 0x10(r1)
/* 8059A818 90C10014 */ stw         r6, 0x14(r1)
/* 8059A81C 90010018 */ stw         r0, 0x18(r1)
/* 8059A820 90E10028 */ stw         r7, 0x28(r1)
/* 8059A824 90C1002C */ stw         r6, 0x2c(r1)
/* 8059A828 90010030 */ stw         r0, 0x30(r1)
/* 8059A82C 90E1001C */ stw         r7, 0x1c(r1)
/* 8059A830 90010024 */ stw         r0, 0x24(r1)
/* 8059A834 D0010020 */ stfs        f0, 0x20(r1)
/* 8059A838 48014351 */ bl          projUnit__6RKGeomFRQ23EGG8Vector3fRCQ23EGG8Vector3fRCQ23EGG8Vector3f
/* 8059A83C C021002C */ lfs         f1, 0x2c(r1)
/* 8059A840 7F43D378 */ mr          r3, r26
/* 8059A844 C0010020 */ lfs         f0, 0x20(r1)
/* 8059A848 EC01002A */ fadds       f0, f1, f0
/* 8059A84C D001002C */ stfs        f0, 0x2c(r1)
/* 8059A850 4BFF6025 */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 8059A854 C0230180 */ lfs         f1, 0x180(r3)
/* 8059A858 C001002C */ lfs         f0, 0x2c(r1)
/* 8059A85C FC010040 */ fcmpo       cr0, f1, f0
/* 8059A860 40800008 */ bge-        lbl_8059a868
/* 8059A864 D021002C */ stfs        f1, 0x2c(r1)
lbl_8059a868:
/* 8059A868 7F43D378 */ mr          r3, r26
/* 8059A86C 4BFF5B61 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8059A870 C0230078 */ lfs         f1, 0x78(r3)
/* 8059A874 C01D0014 */ lfs         f0, 0x14(r29)
/* 8059A878 FC010040 */ fcmpo       cr0, f1, f0
/* 8059A87C 4081000C */ ble-        lbl_8059a888
/* 8059A880 C01E0000 */ lfs         f0, 0(r30)
/* 8059A884 D001002C */ stfs        f0, 0x2c(r1)
lbl_8059a888:
/* 8059A888 807A0000 */ lwz         r3, 0(r26)
/* 8059A88C 80630004 */ lwz         r3, 4(r3)
/* 8059A890 8003000C */ lwz         r0, 0xc(r3)
/* 8059A894 54000253 */ rlwinm.     r0, r0, 0, 9, 9
/* 8059A898 4182000C */ beq-        lbl_8059a8a4
/* 8059A89C C01E0000 */ lfs         f0, 0(r30)
/* 8059A8A0 D001002C */ stfs        f0, 0x2c(r1)
lbl_8059a8a4:
/* 8059A8A4 7F43D378 */ mr          r3, r26
/* 8059A8A8 4BFF5B25 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8059A8AC 80FA0000 */ lwz         r7, 0(r26)
/* 8059A8B0 389A0024 */ addi        r4, r26, 0x24
/* 8059A8B4 38A10028 */ addi        r5, r1, 0x28
/* 8059A8B8 38C10034 */ addi        r6, r1, 0x34
/* 8059A8BC 80E70004 */ lwz         r7, 4(r7)
/* 8059A8C0 8007000C */ lwz         r0, 0xc(r7)
/* 8059A8C4 5407E7FE */ rlwinm      r7, r0, 0x1c, 0x1f, 0x1f
/* 8059A8C8 4801B889 */ bl          applySuspensionWrench__Q24Kart12KartDynamicsFRCQ23EGG8Vector3fRCQ23EGG8Vector3fRCQ23EGG8Vector3fb
/* 8059A8CC 807A0000 */ lwz         r3, 0(r26)
/* 8059A8D0 80630004 */ lwz         r3, 4(r3)
/* 8059A8D4 8003000C */ lwz         r0, 0xc(r3)
/* 8059A8D8 54000109 */ rlwinm.     r0, r0, 0, 4, 4
/* 8059A8DC 408200AC */ bne-        lbl_8059a988
/* 8059A8E0 839A0014 */ lwz         r28, 0x14(r26)
/* 8059A8E4 807C0000 */ lwz         r3, 0(r28)
/* 8059A8E8 80630004 */ lwz         r3, 4(r3)
/* 8059A8EC 80030010 */ lwz         r0, 0x10(r3)
/* 8059A8F0 54000739 */ rlwinm.     r0, r0, 0, 0x1c, 0x1c
/* 8059A8F4 4182000C */ beq-        lbl_8059a900
/* 8059A8F8 C3BE0020 */ lfs         f29, 0x20(r30)
/* 8059A8FC 48000010 */ b           lbl_8059a90c
lbl_8059a900:
/* 8059A900 7F83E378 */ mr          r3, r28
/* 8059A904 4BFF5F49 */ bl          kartCollide__Q24Kart15KartObjectProxyFv
/* 8059A908 C3A3001C */ lfs         f29, 0x1c(r3)
lbl_8059a90c:
/* 8059A90C 807C0000 */ lwz         r3, 0(r28)
/* 8059A910 3B000001 */ li          r24, 1
/* 8059A914 80630004 */ lwz         r3, 4(r3)
/* 8059A918 80030004 */ lwz         r0, 4(r3)
/* 8059A91C 5400018D */ rlwinm.     r0, r0, 0, 6, 6
/* 8059A920 40820014 */ bne-        lbl_8059a934
/* 8059A924 8003000C */ lwz         r0, 0xc(r3)
/* 8059A928 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 8059A92C 40820008 */ bne-        lbl_8059a934
/* 8059A930 3B000000 */ li          r24, 0
lbl_8059a934:
/* 8059A934 7F83E378 */ mr          r3, r28
/* 8059A938 4BFF5E45 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 8059A93C 7C791B78 */ mr          r25, r3
/* 8059A940 7F83E378 */ mr          r3, r28
/* 8059A944 4BFF5A89 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8059A948 7C7E1B78 */ mr          r30, r3
/* 8059A94C 7F83E378 */ mr          r3, r28
/* 8059A950 4BFF5EFD */ bl          kartCollide__Q24Kart15KartObjectProxyFv
/* 8059A954 7F000034 */ cntlzw      r0, r24
/* 8059A958 FC40E890 */ fmr         f2, f29
/* 8059A95C 5400D97E */ srwi        r0, r0, 5
/* 8059A960 90010008 */ stw         r0, 8(r1)
/* 8059A964 7FC4F378 */ mr          r4, r30
/* 8059A968 7F66DB78 */ mr          r6, r27
/* 8059A96C 80BC001C */ lwz         r5, 0x1c(r28)
/* 8059A970 C03D0000 */ lfs         f1, 0(r29)
/* 8059A974 38F9005C */ addi        r7, r25, 0x5c
/* 8059A978 391C0054 */ addi        r8, r28, 0x54
/* 8059A97C 39200001 */ li          r9, 1
/* 8059A980 39400001 */ li          r10, 1
/* 8059A984 4801CFA5 */ bl          applySomeFloorMoment__Q24Kart11KartCollideFPQ24Kart12KartDynamicsPQ24Kart11HitboxGroupRCQ23EGG8Vector3fRCQ23EGG8Vector3fRCQ23EGG8Vector3fffbbb
lbl_8059a988:
/* 8059A988 801F0008 */ lwz         r0, 8(r31)
/* 8059A98C 540007FE */ clrlwi      r0, r0, 0x1f
/* 8059A990 981A0034 */ stb         r0, 0x34(r26)
/* 8059A994 E3E100B8 */ psq_l       f31, 0xb8(r1), 0, 0
/* 8059A998 CBE100B0 */ lfd         f31, 0xb0(r1)
/* 8059A99C E3C100A8 */ psq_l       f30, 0xa8(r1), 0, 0
/* 8059A9A0 CBC100A0 */ lfd         f30, 0xa0(r1)
/* 8059A9A4 E3A10098 */ psq_l       f29, 0x98(r1), 0, 0
/* 8059A9A8 CBA10090 */ lfd         f29, 0x90(r1)
/* 8059A9AC 39610090 */ addi        r11, r1, 0x90
/* 8059A9B0 4BA86C31 */ bl          _restgpr_24
/* 8059A9B4 800100C4 */ lwz         r0, 0xc4(r1)
/* 8059A9B8 7C0803A6 */ mtlr        r0
/* 8059A9BC 382100C0 */ addi        r1, r1, 0xc0
/* 8059A9C0 4E800020 */ blr         