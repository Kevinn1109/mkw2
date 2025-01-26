nofralloc
/* 807C0884 9421FF20 */ stwu        r1, -0xe0(r1)
/* 807C0888 7C0802A6 */ mflr        r0
/* 807C088C 900100E4 */ stw         r0, 0xe4(r1)
/* 807C0890 DBE100D0 */ stfd        f31, 0xd0(r1)
/* 807C0894 F3E100D8 */ psq_st      f31, 0xd8(r1), 0, 0
/* 807C0898 DBC100C0 */ stfd        f30, 0xc0(r1)
/* 807C089C F3C100C8 */ psq_st      f30, 0xc8(r1), 0, 0
/* 807C08A0 DBA100B0 */ stfd        f29, 0xb0(r1)
/* 807C08A4 F3A100B8 */ psq_st      f29, 0xb8(r1), 0, 0
/* 807C08A8 DB8100A0 */ stfd        f28, 0xa0(r1)
/* 807C08AC F38100A8 */ psq_st      f28, 0xa8(r1), 0, 0
/* 807C08B0 DB610090 */ stfd        f27, 0x90(r1)
/* 807C08B4 F3610098 */ psq_st      f27, 0x98(r1), 0, 0
/* 807C08B8 39610090 */ addi        r11, r1, 0x90
/* 807C08BC 4B860CBD */ bl          _savegpr_17
/* 807C08C0 80030068 */ lwz         r0, 0x68(r3)
/* 807C08C4 7C711B78 */ mr          r17, r3
/* 807C08C8 C3A30060 */ lfs         f29, 0x60(r3)
/* 807C08CC 7C922378 */ mr          r18, r4
/* 807C08D0 2C000000 */ cmpwi       r0, 0
/* 807C08D4 82E30004 */ lwz         r23, 4(r3)
/* 807C08D8 7CB32B78 */ mr          r19, r5
/* 807C08DC 7CD43378 */ mr          r20, r6
/* 807C08E0 4082000C */ bne-        lbl_807c08ec
/* 807C08E4 38600000 */ li          r3, 0
/* 807C08E8 480005D8 */ b           lbl_807c0ec0
lbl_807c08ec:
/* 807C08EC 3C60808A */ lis         r3, lbl_808a66d8@ha
/* 807C08F0 3C80808A */ lis         r4, lbl_808a66e4@ha
/* 807C08F4 C3E466E4 */ lfs         f31, lbl_808a66e4@l(r4)
/* 807C08F8 3B410008 */ addi        r26, r1, 8
/* 807C08FC C38366D8 */ lfs         f28, lbl_808a66d8@l(r3)
/* 807C0900 3B610014 */ addi        r27, r1, 0x14
/* 807C0904 3B810020 */ addi        r28, r1, 0x20
/* 807C0908 3B010038 */ addi        r24, r1, 0x38
/* 807C090C 3B21002C */ addi        r25, r1, 0x2c
/* 807C0910 3FC0808B */ lis         r30, lbl_808b56f4@ha
/* 807C0914 3FE0808B */ lis         r31, lbl_808b56d0@ha
/* 807C0918 3BA00001 */ li          r29, 1
/* 807C091C 48000580 */ b           lbl_807c0e9c
lbl_807c0920:
/* 807C0920 80710068 */ lwz         r3, 0x68(r17)
/* 807C0924 80B10008 */ lwz         r5, 8(r17)
/* 807C0928 A0030000 */ lhz         r0, 0(r3)
/* 807C092C 80910000 */ lwz         r4, 0(r17)
/* 807C0930 54002036 */ slwi        r0, r0, 4
/* 807C0934 E051003C */ psq_l       f2, 0x3c(r17), 0, 0
/* 807C0938 7EC50214 */ add         r22, r5, r0
/* 807C093C A0760004 */ lhz         r3, 4(r22)
/* 807C0940 A0160008 */ lhz         r0, 8(r22)
/* 807C0944 1C63000C */ mulli       r3, r3, 0xc
/* 807C0948 7C641A14 */ add         r3, r4, r3
/* 807C094C E0230000 */ psq_l       f1, 0(r3), 0, 0
/* 807C0950 1C00000C */ mulli       r0, r0, 0xc
/* 807C0954 10020828 */ ps_sub      f0, f2, f1
/* 807C0958 E0238008 */ psq_l       f1, 8(r3), 1, 0
/* 807C095C E0518044 */ psq_l       f2, 0x44(r17), 1, 0
/* 807C0960 7C770214 */ add         r3, r23, r0
/* 807C0964 F0180000 */ psq_st      f0, 0(r24), 0, 0
/* 807C0968 10020828 */ ps_sub      f0, f2, f1
/* 807C096C E0230004 */ psq_l       f1, 4(r3), 0, 0
/* 807C0970 F0188008 */ psq_st      f0, 8(r24), 1, 0
/* 807C0974 E0788000 */ psq_l       f3, 0(r24), 1, 0
/* 807C0978 E0580004 */ psq_l       f2, 4(r24), 0, 0
/* 807C097C E0038000 */ psq_l       f0, 0(r3), 1, 0
/* 807C0980 10420072 */ ps_mul      f2, f2, f1
/* 807C0984 1023103A */ ps_madd     f1, f3, f0, f2
/* 807C0988 10011094 */ ps_sum0     f0, f1, f2, f2
/* 807C098C FC00E840 */ fcmpo       cr0, f0, f29
/* 807C0990 4C411382 */ cror        cr0eq, cr0gt, cr0eq
/* 807C0994 41820508 */ beq-        lbl_807c0e9c
/* 807C0998 A016000A */ lhz         r0, 0xa(r22)
/* 807C099C E0980004 */ psq_l       f4, 4(r24), 0, 0
/* 807C09A0 1C00000C */ mulli       r0, r0, 0xc
/* 807C09A4 7CB70214 */ add         r5, r23, r0
/* 807C09A8 E0450004 */ psq_l       f2, 4(r5), 0, 0
/* 807C09AC E0258000 */ psq_l       f1, 0(r5), 1, 0
/* 807C09B0 108400B2 */ ps_mul      f4, f4, f2
/* 807C09B4 1043207A */ ps_madd     f2, f3, f1, f4
/* 807C09B8 10222114 */ ps_sum0     f1, f2, f4, f4
/* 807C09BC FC01E840 */ fcmpo       cr0, f1, f29
/* 807C09C0 4C411382 */ cror        cr0eq, cr0gt, cr0eq
/* 807C09C4 418204D8 */ beq-        lbl_807c0e9c
/* 807C09C8 A016000C */ lhz         r0, 0xc(r22)
/* 807C09CC E0D80004 */ psq_l       f6, 4(r24), 0, 0
/* 807C09D0 1C00000C */ mulli       r0, r0, 0xc
/* 807C09D4 C0560000 */ lfs         f2, 0(r22)
/* 807C09D8 7CD70214 */ add         r6, r23, r0
/* 807C09DC E0A60004 */ psq_l       f5, 4(r6), 0, 0
/* 807C09E0 E0868000 */ psq_l       f4, 0(r6), 1, 0
/* 807C09E4 10C60172 */ ps_mul      f6, f6, f5
/* 807C09E8 10A3313A */ ps_madd     f5, f3, f4, f6
/* 807C09EC 10853194 */ ps_sum0     f4, f5, f6, f6
/* 807C09F0 EC441028 */ fsubs       f2, f4, f2
/* 807C09F4 FC02E840 */ fcmpo       cr0, f2, f29
/* 807C09F8 4C411382 */ cror        cr0eq, cr0gt, cr0eq
/* 807C09FC 418204A0 */ beq-        lbl_807c0e9c
/* 807C0A00 A0160006 */ lhz         r0, 6(r22)
/* 807C0A04 E0D80004 */ psq_l       f6, 4(r24), 0, 0
/* 807C0A08 1C00000C */ mulli       r0, r0, 0xc
/* 807C0A0C 7EB70214 */ add         r21, r23, r0
/* 807C0A10 E0B50004 */ psq_l       f5, 4(r21), 0, 0
/* 807C0A14 E0958000 */ psq_l       f4, 0(r21), 1, 0
/* 807C0A18 10C60172 */ ps_mul      f6, f6, f5
/* 807C0A1C 10A3313A */ ps_madd     f5, f3, f4, f6
/* 807C0A20 13C53194 */ ps_sum0     f30, f5, f6, f6
/* 807C0A24 ECFDF028 */ fsubs       f7, f29, f30
/* 807C0A28 FC07E040 */ fcmpo       cr0, f7, f28
/* 807C0A2C 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C0A30 4182046C */ beq-        lbl_807c0e9c
/* 807C0A34 C0710010 */ lfs         f3, 0x10(r17)
/* 807C0A38 FC033840 */ fcmpo       cr0, f3, f7
/* 807C0A3C 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C0A40 4182045C */ beq-        lbl_807c0e9c
/* 807C0A44 A096000E */ lhz         r4, 0xe(r22)
/* 807C0A48 80110064 */ lwz         r0, 0x64(r17)
/* 807C0A4C 548406FE */ clrlwi      r4, r4, 0x1b
/* 807C0A50 7FA42030 */ slw         r4, r29, r4
/* 807C0A54 7C800039 */ and.        r0, r4, r0
/* 807C0A58 41820444 */ beq-        lbl_807c0e9c
/* 807C0A5C 74800507 */ andis.      r0, r4, 0x507
/* 807C0A60 41820024 */ beq-        lbl_807c0a84
/* 807C0A64 E0D10058 */ psq_l       f6, 0x58(r17), 0, 0
/* 807C0A68 E0B50004 */ psq_l       f5, 4(r21), 0, 0
/* 807C0A6C E0718054 */ psq_l       f3, 0x54(r17), 1, 0
/* 807C0A70 10C60172 */ ps_mul      f6, f6, f5
/* 807C0A74 10A3313A */ ps_madd     f5, f3, f4, f6
/* 807C0A78 10653194 */ ps_sum0     f3, f5, f6, f6
/* 807C0A7C FC03E040 */ fcmpo       cr0, f3, f28
/* 807C0A80 4181041C */ bgt-        lbl_807c0e9c
lbl_807c0a84:
/* 807C0A84 FC000840 */ fcmpo       cr0, f0, f1
/* 807C0A88 38000001 */ li          r0, 1
/* 807C0A8C EC7D0772 */ fmuls       f3, f29, f29
/* 807C0A90 40810010 */ ble-        lbl_807c0aa0
/* 807C0A94 FC001040 */ fcmpo       cr0, f0, f2
/* 807C0A98 408100EC */ ble-        lbl_807c0b84
/* 807C0A9C 48000010 */ b           lbl_807c0aac
lbl_807c0aa0:
/* 807C0AA0 FC011040 */ fcmpo       cr0, f1, f2
/* 807C0AA4 408100E0 */ ble-        lbl_807c0b84
/* 807C0AA8 48000070 */ b           lbl_807c0b18
lbl_807c0aac:
/* 807C0AAC FC00E040 */ fcmpo       cr0, f0, f28
/* 807C0AB0 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C0AB4 41820350 */ beq-        lbl_807c0e04
/* 807C0AB8 FC011040 */ fcmpo       cr0, f1, f2
/* 807C0ABC 40810030 */ ble-        lbl_807c0aec
/* 807C0AC0 E0A30004 */ psq_l       f5, 4(r3), 0, 0
/* 807C0AC4 E0850004 */ psq_l       f4, 4(r5), 0, 0
/* 807C0AC8 E0438000 */ psq_l       f2, 0(r3), 1, 0
/* 807C0ACC 10A50132 */ ps_mul      f5, f5, f4
/* 807C0AD0 E0858000 */ psq_l       f4, 0(r5), 1, 0
/* 807C0AD4 1082293A */ ps_madd     f4, f2, f4, f5
/* 807C0AD8 11442954 */ ps_sum0     f10, f4, f5, f5
/* 807C0ADC EC4A0032 */ fmuls       f2, f10, f0
/* 807C0AE0 FC020840 */ fcmpo       cr0, f2, f1
/* 807C0AE4 40810130 */ ble-        lbl_807c0c14
/* 807C0AE8 48000108 */ b           lbl_807c0bf0
lbl_807c0aec:
/* 807C0AEC E0A30004 */ psq_l       f5, 4(r3), 0, 0
/* 807C0AF0 E0860004 */ psq_l       f4, 4(r6), 0, 0
/* 807C0AF4 E0238000 */ psq_l       f1, 0(r3), 1, 0
/* 807C0AF8 10A50132 */ ps_mul      f5, f5, f4
/* 807C0AFC E0868000 */ psq_l       f4, 0(r6), 1, 0
/* 807C0B00 1081293A */ ps_madd     f4, f1, f4, f5
/* 807C0B04 11642954 */ ps_sum0     f11, f4, f5, f5
/* 807C0B08 EC2B0032 */ fmuls       f1, f11, f0
/* 807C0B0C FC011040 */ fcmpo       cr0, f1, f2
/* 807C0B10 408101F4 */ ble-        lbl_807c0d04
/* 807C0B14 480000DC */ b           lbl_807c0bf0
lbl_807c0b18:
/* 807C0B18 FC01E040 */ fcmpo       cr0, f1, f28
/* 807C0B1C 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C0B20 418202E4 */ beq-        lbl_807c0e04
/* 807C0B24 FC020040 */ fcmpo       cr0, f2, f0
/* 807C0B28 40810030 */ ble-        lbl_807c0b58
/* 807C0B2C E0A50004 */ psq_l       f5, 4(r5), 0, 0
/* 807C0B30 E0860004 */ psq_l       f4, 4(r6), 0, 0
/* 807C0B34 E0058000 */ psq_l       f0, 0(r5), 1, 0
/* 807C0B38 10A50132 */ ps_mul      f5, f5, f4
/* 807C0B3C E0868000 */ psq_l       f4, 0(r6), 1, 0
/* 807C0B40 1080293A */ ps_madd     f4, f0, f4, f5
/* 807C0B44 11642954 */ ps_sum0     f11, f4, f5, f5
/* 807C0B48 EC0B0072 */ fmuls       f0, f11, f1
/* 807C0B4C FC001040 */ fcmpo       cr0, f0, f2
/* 807C0B50 4081013C */ ble-        lbl_807c0c8c
/* 807C0B54 480000A8 */ b           lbl_807c0bfc
lbl_807c0b58:
/* 807C0B58 E0A50004 */ psq_l       f5, 4(r5), 0, 0
/* 807C0B5C E0830004 */ psq_l       f4, 4(r3), 0, 0
/* 807C0B60 E0458000 */ psq_l       f2, 0(r5), 1, 0
/* 807C0B64 10A50132 */ ps_mul      f5, f5, f4
/* 807C0B68 E0838000 */ psq_l       f4, 0(r3), 1, 0
/* 807C0B6C 1082293A */ ps_madd     f4, f2, f4, f5
/* 807C0B70 11442954 */ ps_sum0     f10, f4, f5, f5
/* 807C0B74 EC4A0072 */ fmuls       f2, f10, f1
/* 807C0B78 FC020040 */ fcmpo       cr0, f2, f0
/* 807C0B7C 40810098 */ ble-        lbl_807c0c14
/* 807C0B80 4800007C */ b           lbl_807c0bfc
lbl_807c0b84:
/* 807C0B84 FC02E040 */ fcmpo       cr0, f2, f28
/* 807C0B88 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C0B8C 41820278 */ beq-        lbl_807c0e04
/* 807C0B90 FC000840 */ fcmpo       cr0, f0, f1
/* 807C0B94 40810030 */ ble-        lbl_807c0bc4
/* 807C0B98 E0A60004 */ psq_l       f5, 4(r6), 0, 0
/* 807C0B9C E0830004 */ psq_l       f4, 4(r3), 0, 0
/* 807C0BA0 E0268000 */ psq_l       f1, 0(r6), 1, 0
/* 807C0BA4 10A50132 */ ps_mul      f5, f5, f4
/* 807C0BA8 E0838000 */ psq_l       f4, 0(r3), 1, 0
/* 807C0BAC 1081293A */ ps_madd     f4, f1, f4, f5
/* 807C0BB0 11642954 */ ps_sum0     f11, f4, f5, f5
/* 807C0BB4 EC2B00B2 */ fmuls       f1, f11, f2
/* 807C0BB8 FC010040 */ fcmpo       cr0, f1, f0
/* 807C0BBC 40810148 */ ble-        lbl_807c0d04
/* 807C0BC0 48000048 */ b           lbl_807c0c08
lbl_807c0bc4:
/* 807C0BC4 E0A60004 */ psq_l       f5, 4(r6), 0, 0
/* 807C0BC8 E0850004 */ psq_l       f4, 4(r5), 0, 0
/* 807C0BCC E0068000 */ psq_l       f0, 0(r6), 1, 0
/* 807C0BD0 10A50132 */ ps_mul      f5, f5, f4
/* 807C0BD4 E0858000 */ psq_l       f4, 0(r5), 1, 0
/* 807C0BD8 1080293A */ ps_madd     f4, f0, f4, f5
/* 807C0BDC 11642954 */ ps_sum0     f11, f4, f5, f5
/* 807C0BE0 EC0B00B2 */ fmuls       f0, f11, f2
/* 807C0BE4 FC000840 */ fcmpo       cr0, f0, f1
/* 807C0BE8 408100A4 */ ble-        lbl_807c0c8c
/* 807C0BEC 4800001C */ b           lbl_807c0c08
lbl_807c0bf0:
/* 807C0BF0 EC000032 */ fmuls       f0, f0, f0
/* 807C0BF4 EF630028 */ fsubs       f27, f3, f0
/* 807C0BF8 48000190 */ b           lbl_807c0d88
lbl_807c0bfc:
/* 807C0BFC EC010072 */ fmuls       f0, f1, f1
/* 807C0C00 EF630028 */ fsubs       f27, f3, f0
/* 807C0C04 48000184 */ b           lbl_807c0d88
lbl_807c0c08:
/* 807C0C08 EC0200B2 */ fmuls       f0, f2, f2
/* 807C0C0C EF630028 */ fsubs       f27, f3, f0
/* 807C0C10 48000178 */ b           lbl_807c0d88
lbl_807c0c14:
/* 807C0C14 ECEA0072 */ fmuls       f7, f10, f1
/* 807C0C18 C0A30004 */ lfs         f5, 4(r3)
/* 807C0C1C ECCA02B2 */ fmuls       f6, f10, f10
/* 807C0C20 C0850004 */ lfs         f4, 4(r5)
/* 807C0C24 C0430000 */ lfs         f2, 0(r3)
/* 807C0C28 ED270028 */ fsubs       f9, f7, f0
/* 807C0C2C ED06F828 */ fsubs       f8, f6, f31
/* 807C0C30 C0050000 */ lfs         f0, 0(r5)
/* 807C0C34 C0E30008 */ lfs         f7, 8(r3)
/* 807C0C38 C0C50008 */ lfs         f6, 8(r5)
/* 807C0C3C ED294024 */ fdivs       f9, f9, f8
/* 807C0C40 ED0902B2 */ fmuls       f8, f9, f10
/* 807C0C44 ECA50272 */ fmuls       f5, f5, f9
/* 807C0C48 EC420272 */ fmuls       f2, f2, f9
/* 807C0C4C ED014028 */ fsubs       f8, f1, f8
/* 807C0C50 ECE70272 */ fmuls       f7, f7, f9
/* 807C0C54 EC240232 */ fmuls       f1, f4, f8
/* 807C0C58 EC000232 */ fmuls       f0, f0, f8
/* 807C0C5C EC860232 */ fmuls       f4, f6, f8
/* 807C0C60 EC25082A */ fadds       f1, f5, f1
/* 807C0C64 EC02002A */ fadds       f0, f2, f0
/* 807C0C68 D0210024 */ stfs        f1, 0x24(r1)
/* 807C0C6C EC27202A */ fadds       f1, f7, f4
/* 807C0C70 D0010020 */ stfs        f0, 0x20(r1)
/* 807C0C74 E01C0000 */ psq_l       f0, 0(r28), 0, 0
/* 807C0C78 D0210028 */ stfs        f1, 0x28(r1)
/* 807C0C7C 10000032 */ ps_mul      f0, f0, f0
/* 807C0C80 1021007A */ ps_madd     f1, f1, f1, f0
/* 807C0C84 10210014 */ ps_sum0     f1, f1, f0, f0
/* 807C0C88 480000F0 */ b           lbl_807c0d78
lbl_807c0c8c:
/* 807C0C8C ECEB00B2 */ fmuls       f7, f11, f2
/* 807C0C90 C0850000 */ lfs         f4, 0(r5)
/* 807C0C94 EC0B02F2 */ fmuls       f0, f11, f11
/* 807C0C98 C0C50004 */ lfs         f6, 4(r5)
/* 807C0C9C C0A60004 */ lfs         f5, 4(r6)
/* 807C0CA0 ED270828 */ fsubs       f9, f7, f1
/* 807C0CA4 EC20F828 */ fsubs       f1, f0, f31
/* 807C0CA8 C0060000 */ lfs         f0, 0(r6)
/* 807C0CAC C1050008 */ lfs         f8, 8(r5)
/* 807C0CB0 C0E60008 */ lfs         f7, 8(r6)
/* 807C0CB4 ED490824 */ fdivs       f10, f9, f1
/* 807C0CB8 ED2A02F2 */ fmuls       f9, f10, f11
/* 807C0CBC EC2402B2 */ fmuls       f1, f4, f10
/* 807C0CC0 ECC602B2 */ fmuls       f6, f6, f10
/* 807C0CC4 EC824828 */ fsubs       f4, f2, f9
/* 807C0CC8 ED0802B2 */ fmuls       f8, f8, f10
/* 807C0CCC EC450132 */ fmuls       f2, f5, f4
/* 807C0CD0 EC000132 */ fmuls       f0, f0, f4
/* 807C0CD4 EC870132 */ fmuls       f4, f7, f4
/* 807C0CD8 EC46102A */ fadds       f2, f6, f2
/* 807C0CDC EC01002A */ fadds       f0, f1, f0
/* 807C0CE0 D0410018 */ stfs        f2, 0x18(r1)
/* 807C0CE4 EC28202A */ fadds       f1, f8, f4
/* 807C0CE8 D0010014 */ stfs        f0, 0x14(r1)
/* 807C0CEC E01B0000 */ psq_l       f0, 0(r27), 0, 0
/* 807C0CF0 D021001C */ stfs        f1, 0x1c(r1)
/* 807C0CF4 10000032 */ ps_mul      f0, f0, f0
/* 807C0CF8 1021007A */ ps_madd     f1, f1, f1, f0
/* 807C0CFC 10210014 */ ps_sum0     f1, f1, f0, f0
/* 807C0D00 48000078 */ b           lbl_807c0d78
lbl_807c0d04:
/* 807C0D04 ECEB0032 */ fmuls       f7, f11, f0
/* 807C0D08 C0C60004 */ lfs         f6, 4(r6)
/* 807C0D0C EC2B02F2 */ fmuls       f1, f11, f11
/* 807C0D10 C0A30004 */ lfs         f5, 4(r3)
/* 807C0D14 C0860000 */ lfs         f4, 0(r6)
/* 807C0D18 ED271028 */ fsubs       f9, f7, f2
/* 807C0D1C EC41F828 */ fsubs       f2, f1, f31
/* 807C0D20 C0230000 */ lfs         f1, 0(r3)
/* 807C0D24 C1060008 */ lfs         f8, 8(r6)
/* 807C0D28 C0E30008 */ lfs         f7, 8(r3)
/* 807C0D2C ED491024 */ fdivs       f10, f9, f2
/* 807C0D30 ED2A02F2 */ fmuls       f9, f10, f11
/* 807C0D34 ECC602B2 */ fmuls       f6, f6, f10
/* 807C0D38 EC4402B2 */ fmuls       f2, f4, f10
/* 807C0D3C ED204828 */ fsubs       f9, f0, f9
/* 807C0D40 ED0802B2 */ fmuls       f8, f8, f10
/* 807C0D44 EC010272 */ fmuls       f0, f1, f9
/* 807C0D48 EC850272 */ fmuls       f4, f5, f9
/* 807C0D4C EC270272 */ fmuls       f1, f7, f9
/* 807C0D50 EC02002A */ fadds       f0, f2, f0
/* 807C0D54 EC86202A */ fadds       f4, f6, f4
/* 807C0D58 D0010008 */ stfs        f0, 8(r1)
/* 807C0D5C EC28082A */ fadds       f1, f8, f1
/* 807C0D60 D081000C */ stfs        f4, 0xc(r1)
/* 807C0D64 E01A0000 */ psq_l       f0, 0(r26), 0, 0
/* 807C0D68 D0210010 */ stfs        f1, 0x10(r1)
/* 807C0D6C 10000032 */ ps_mul      f0, f0, f0
/* 807C0D70 1021007A */ ps_madd     f1, f1, f1, f0
/* 807C0D74 10210014 */ ps_sum0     f1, f1, f0, f0
lbl_807c0d78:
/* 807C0D78 EF630828 */ fsubs       f27, f3, f1
/* 807C0D7C FC1BE040 */ fcmpo       cr0, f27, f28
/* 807C0D80 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C0D84 41820118 */ beq-        lbl_807c0e9c
lbl_807c0d88:
/* 807C0D88 EC1E07B2 */ fmuls       f0, f30, f30
/* 807C0D8C FC1B0040 */ fcmpo       cr0, f27, f0
/* 807C0D90 4180010C */ blt-        lbl_807c0e9c
/* 807C0D94 FC1BE040 */ fcmpo       cr0, f27, f28
/* 807C0D98 4C411382 */ cror        cr0eq, cr0gt, cr0eq
/* 807C0D9C 7C000026 */ mfcr        r0
/* 807C0DA0 54001FFE */ rlwinm      r0, r0, 3, 0x1f, 0x1f
/* 807C0DA4 7C000034 */ cntlzw      r0, r0
/* 807C0DA8 5400D97F */ rlwinm.     r0, r0, 0x1b, 5, 0x1f
/* 807C0DAC 408200F0 */ bne-        lbl_807c0e9c
/* 807C0DB0 FC1BE040 */ fcmpo       cr0, f27, f28
/* 807C0DB4 4C411382 */ cror        cr0eq, cr0gt, cr0eq
/* 807C0DB8 41820018 */ beq-        lbl_807c0dd0
/* 807C0DBC 387E56F4 */ addi        r3, r30, lbl_808b56f4@l
/* 807C0DC0 38BF56D0 */ addi        r5, r31, lbl_808b56d0@l
/* 807C0DC4 38800273 */ li          r4, 0x273
/* 807C0DC8 4CC63182 */ crclr       cr1eq
/* 807C0DCC 4B865285 */ bl          VWarning
lbl_807c0dd0:
/* 807C0DD0 FC1BE040 */ fcmpo       cr0, f27, f28
/* 807C0DD4 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C0DD8 4082000C */ bne-        lbl_807c0de4
/* 807C0DDC FC00E090 */ fmr         f0, f28
/* 807C0DE0 48000010 */ b           lbl_807c0df0
lbl_807c0de4:
/* 807C0DE4 FC20D890 */ fmr         f1, f27
/* 807C0DE8 4B8C4259 */ bl          FrSqrt
/* 807C0DEC EC1B0072 */ fmuls       f0, f27, f1
lbl_807c0df0:
/* 807C0DF0 ECE0F028 */ fsubs       f7, f0, f30
/* 807C0DF4 FC07E040 */ fcmpo       cr0, f7, f28
/* 807C0DF8 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C0DFC 418200A0 */ beq-        lbl_807c0e9c
/* 807C0E00 38000000 */ li          r0, 0
lbl_807c0e04:
/* 807C0E04 2C000000 */ cmpwi       r0, 0
/* 807C0E08 4182000C */ beq-        lbl_807c0e14
/* 807C0E0C FC1EE040 */ fcmpo       cr0, f30, f28
/* 807C0E10 40800048 */ bge-        lbl_807c0e58
lbl_807c0e14:
/* 807C0E14 E0580000 */ psq_l       f2, 0(r24), 0, 0
/* 807C0E18 E0310054 */ psq_l       f1, 0x54(r17), 0, 0
/* 807C0E1C E0750004 */ psq_l       f3, 4(r21), 0, 0
/* 807C0E20 10020828 */ ps_sub      f0, f2, f1
/* 807C0E24 E0588008 */ psq_l       f2, 8(r24), 1, 0
/* 807C0E28 E031805C */ psq_l       f1, 0x5c(r17), 1, 0
/* 807C0E2C F0190000 */ psq_st      f0, 0(r25), 0, 0
/* 807C0E30 10020828 */ ps_sub      f0, f2, f1
/* 807C0E34 E0558000 */ psq_l       f2, 0(r21), 1, 0
/* 807C0E38 E0398000 */ psq_l       f1, 0(r25), 1, 0
/* 807C0E3C F0198008 */ psq_st      f0, 8(r25), 1, 0
/* 807C0E40 E0190004 */ psq_l       f0, 4(r25), 0, 0
/* 807C0E44 100000F2 */ ps_mul      f0, f0, f3
/* 807C0E48 106100BA */ ps_madd     f3, f1, f2, f0
/* 807C0E4C 10030014 */ ps_sum0     f0, f3, f0, f0
/* 807C0E50 FC00E040 */ fcmpo       cr0, f0, f28
/* 807C0E54 41800048 */ blt-        lbl_807c0e9c
lbl_807c0e58:
/* 807C0E58 2C120000 */ cmpwi       r18, 0
/* 807C0E5C 41820008 */ beq-        lbl_807c0e64
/* 807C0E60 D0F20000 */ stfs        f7, 0(r18)
lbl_807c0e64:
/* 807C0E64 2C130000 */ cmpwi       r19, 0
/* 807C0E68 4182001C */ beq-        lbl_807c0e84
/* 807C0E6C C0150000 */ lfs         f0, 0(r21)
/* 807C0E70 D0130000 */ stfs        f0, 0(r19)
/* 807C0E74 C0150004 */ lfs         f0, 4(r21)
/* 807C0E78 D0130004 */ stfs        f0, 4(r19)
/* 807C0E7C C0150008 */ lfs         f0, 8(r21)
/* 807C0E80 D0130008 */ stfs        f0, 8(r19)
lbl_807c0e84:
/* 807C0E84 2C140000 */ cmpwi       r20, 0
/* 807C0E88 4182000C */ beq-        lbl_807c0e94
/* 807C0E8C A016000E */ lhz         r0, 0xe(r22)
/* 807C0E90 B0140000 */ sth         r0, 0(r20)
lbl_807c0e94:
/* 807C0E94 38600001 */ li          r3, 1
/* 807C0E98 48000028 */ b           lbl_807c0ec0
lbl_807c0e9c:
/* 807C0E9C 80710068 */ lwz         r3, 0x68(r17)
/* 807C0EA0 38630002 */ addi        r3, r3, 2
/* 807C0EA4 90710068 */ stw         r3, 0x68(r17)
/* 807C0EA8 A0030000 */ lhz         r0, 0(r3)
/* 807C0EAC 2C000000 */ cmpwi       r0, 0
/* 807C0EB0 4082FA70 */ bne+        lbl_807c0920
/* 807C0EB4 38000000 */ li          r0, 0
/* 807C0EB8 90110068 */ stw         r0, 0x68(r17)
/* 807C0EBC 38600000 */ li          r3, 0
lbl_807c0ec0:
/* 807C0EC0 E3E100D8 */ psq_l       f31, 0xd8(r1), 0, 0
/* 807C0EC4 CBE100D0 */ lfd         f31, 0xd0(r1)
/* 807C0EC8 E3C100C8 */ psq_l       f30, 0xc8(r1), 0, 0
/* 807C0ECC CBC100C0 */ lfd         f30, 0xc0(r1)
/* 807C0ED0 E3A100B8 */ psq_l       f29, 0xb8(r1), 0, 0
/* 807C0ED4 CBA100B0 */ lfd         f29, 0xb0(r1)
/* 807C0ED8 E38100A8 */ psq_l       f28, 0xa8(r1), 0, 0
/* 807C0EDC CB8100A0 */ lfd         f28, 0xa0(r1)
/* 807C0EE0 E3610098 */ psq_l       f27, 0x98(r1), 0, 0
/* 807C0EE4 39610090 */ addi        r11, r1, 0x90
/* 807C0EE8 CB610090 */ lfd         f27, 0x90(r1)
/* 807C0EEC 4B8606D9 */ bl          _restgpr_17
/* 807C0EF0 800100E4 */ lwz         r0, 0xe4(r1)
/* 807C0EF4 7C0803A6 */ mtlr        r0
/* 807C0EF8 382100E0 */ addi        r1, r1, 0xe0
/* 807C0EFC 4E800020 */ blr         