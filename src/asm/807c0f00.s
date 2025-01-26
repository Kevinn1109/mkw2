nofralloc
/* 807C0F00 9421FF50 */ stwu        r1, -0xb0(r1)
/* 807C0F04 7C0802A6 */ mflr        r0
/* 807C0F08 900100B4 */ stw         r0, 0xb4(r1)
/* 807C0F0C DBE100A0 */ stfd        f31, 0xa0(r1)
/* 807C0F10 F3E100A8 */ psq_st      f31, 0xa8(r1), 0, 0
/* 807C0F14 DBC10090 */ stfd        f30, 0x90(r1)
/* 807C0F18 F3C10098 */ psq_st      f30, 0x98(r1), 0, 0
/* 807C0F1C DBA10080 */ stfd        f29, 0x80(r1)
/* 807C0F20 F3A10088 */ psq_st      f29, 0x88(r1), 0, 0
/* 807C0F24 DB810070 */ stfd        f28, 0x70(r1)
/* 807C0F28 F3810078 */ psq_st      f28, 0x78(r1), 0, 0
/* 807C0F2C DB610060 */ stfd        f27, 0x60(r1)
/* 807C0F30 F3610068 */ psq_st      f27, 0x68(r1), 0, 0
/* 807C0F34 39610060 */ addi        r11, r1, 0x60
/* 807C0F38 4B860655 */ bl          _savegpr_22
/* 807C0F3C 80030068 */ lwz         r0, 0x68(r3)
/* 807C0F40 38A3008C */ addi        r5, r3, 0x8c
/* 807C0F44 80C3028C */ lwz         r6, 0x28c(r3)
/* 807C0F48 7C781B78 */ mr          r24, r3
/* 807C0F4C 2C000000 */ cmpwi       r0, 0
/* 807C0F50 C3830060 */ lfs         f28, 0x60(r3)
/* 807C0F54 7C862850 */ subf        r4, r6, r5
/* 807C0F58 7C053050 */ subf        r0, r5, r6
/* 807C0F5C 7C800378 */ or          r0, r4, r0
/* 807C0F60 83230004 */ lwz         r25, 4(r3)
/* 807C0F64 541A0FFE */ srwi        r26, r0, 0x1f
/* 807C0F68 4082000C */ bne-        lbl_807c0f74
/* 807C0F6C 38600000 */ li          r3, 0
/* 807C0F70 48000564 */ b           lbl_807c14d4
lbl_807c0f74:
/* 807C0F74 3C80808A */ lis         r4, lbl_808a66d8@ha
/* 807C0F78 3C60808A */ lis         r3, lbl_808a66e4@ha
/* 807C0F7C C3C466D8 */ lfs         f30, lbl_808a66d8@l(r4)
/* 807C0F80 3B610008 */ addi        r27, r1, 8
/* 807C0F84 C3E366E4 */ lfs         f31, lbl_808a66e4@l(r3)
/* 807C0F88 3B810014 */ addi        r28, r1, 0x14
/* 807C0F8C 3BA10020 */ addi        r29, r1, 0x20
/* 807C0F90 3BC1002C */ addi        r30, r1, 0x2c
/* 807C0F94 3EC0808B */ lis         r22, lbl_808b56f4@ha
/* 807C0F98 3EE0808B */ lis         r23, lbl_808b56d0@ha
/* 807C0F9C 3BE00001 */ li          r31, 1
/* 807C0FA0 48000510 */ b           lbl_807c14b0
lbl_807c0fa4:
/* 807C0FA4 2C1A0000 */ cmpwi       r26, 0
/* 807C0FA8 4182003C */ beq-        lbl_807c0fe4
/* 807C0FAC 80B8028C */ lwz         r5, 0x28c(r24)
/* 807C0FB0 3818008C */ addi        r0, r24, 0x8c
/* 807C0FB4 48000018 */ b           lbl_807c0fcc
lbl_807c0fb8:
/* 807C0FB8 80980068 */ lwz         r4, 0x68(r24)
/* 807C0FBC A0650000 */ lhz         r3, 0(r5)
/* 807C0FC0 A0840000 */ lhz         r4, 0(r4)
/* 807C0FC4 7C041840 */ cmplw       r4, r3
/* 807C0FC8 41820010 */ beq-        lbl_807c0fd8
lbl_807c0fcc:
/* 807C0FCC 38A5FFFE */ addi        r5, r5, -2
/* 807C0FD0 7C050040 */ cmplw       r5, r0
/* 807C0FD4 4080FFE4 */ bge+        lbl_807c0fb8
lbl_807c0fd8:
/* 807C0FD8 3818008C */ addi        r0, r24, 0x8c
/* 807C0FDC 7C050040 */ cmplw       r5, r0
/* 807C0FE0 408004D0 */ bge-        lbl_807c14b0
lbl_807c0fe4:
/* 807C0FE4 80780068 */ lwz         r3, 0x68(r24)
/* 807C0FE8 80B80008 */ lwz         r5, 8(r24)
/* 807C0FEC A0030000 */ lhz         r0, 0(r3)
/* 807C0FF0 80980000 */ lwz         r4, 0(r24)
/* 807C0FF4 54002036 */ slwi        r0, r0, 4
/* 807C0FF8 E058003C */ psq_l       f2, 0x3c(r24), 0, 0
/* 807C0FFC 7CA50214 */ add         r5, r5, r0
/* 807C1000 A0650004 */ lhz         r3, 4(r5)
/* 807C1004 A0050008 */ lhz         r0, 8(r5)
/* 807C1008 1C63000C */ mulli       r3, r3, 0xc
/* 807C100C 7C641A14 */ add         r3, r4, r3
/* 807C1010 E0230000 */ psq_l       f1, 0(r3), 0, 0
/* 807C1014 1C00000C */ mulli       r0, r0, 0xc
/* 807C1018 10020828 */ ps_sub      f0, f2, f1
/* 807C101C E0588044 */ psq_l       f2, 0x44(r24), 1, 0
/* 807C1020 E0238008 */ psq_l       f1, 8(r3), 1, 0
/* 807C1024 7C990214 */ add         r4, r25, r0
/* 807C1028 F01E0000 */ psq_st      f0, 0(r30), 0, 0
/* 807C102C 10020828 */ ps_sub      f0, f2, f1
/* 807C1030 E0240004 */ psq_l       f1, 4(r4), 0, 0
/* 807C1034 F01E8008 */ psq_st      f0, 8(r30), 1, 0
/* 807C1038 E07E8000 */ psq_l       f3, 0(r30), 1, 0
/* 807C103C E05E0004 */ psq_l       f2, 4(r30), 0, 0
/* 807C1040 E0048000 */ psq_l       f0, 0(r4), 1, 0
/* 807C1044 10420072 */ ps_mul      f2, f2, f1
/* 807C1048 1023103A */ ps_madd     f1, f3, f0, f2
/* 807C104C 10011094 */ ps_sum0     f0, f1, f2, f2
/* 807C1050 FC00E040 */ fcmpo       cr0, f0, f28
/* 807C1054 4C411382 */ cror        cr0eq, cr0gt, cr0eq
/* 807C1058 41820458 */ beq-        lbl_807c14b0
/* 807C105C A005000A */ lhz         r0, 0xa(r5)
/* 807C1060 E09E0004 */ psq_l       f4, 4(r30), 0, 0
/* 807C1064 1C00000C */ mulli       r0, r0, 0xc
/* 807C1068 7CD90214 */ add         r6, r25, r0
/* 807C106C E0460004 */ psq_l       f2, 4(r6), 0, 0
/* 807C1070 E0268000 */ psq_l       f1, 0(r6), 1, 0
/* 807C1074 108400B2 */ ps_mul      f4, f4, f2
/* 807C1078 1043207A */ ps_madd     f2, f3, f1, f4
/* 807C107C 10222114 */ ps_sum0     f1, f2, f4, f4
/* 807C1080 FC01E040 */ fcmpo       cr0, f1, f28
/* 807C1084 4C411382 */ cror        cr0eq, cr0gt, cr0eq
/* 807C1088 41820428 */ beq-        lbl_807c14b0
/* 807C108C A005000C */ lhz         r0, 0xc(r5)
/* 807C1090 E0DE0004 */ psq_l       f6, 4(r30), 0, 0
/* 807C1094 1C00000C */ mulli       r0, r0, 0xc
/* 807C1098 C0450000 */ lfs         f2, 0(r5)
/* 807C109C 7CF90214 */ add         r7, r25, r0
/* 807C10A0 E0A70004 */ psq_l       f5, 4(r7), 0, 0
/* 807C10A4 E0878000 */ psq_l       f4, 0(r7), 1, 0
/* 807C10A8 10C60172 */ ps_mul      f6, f6, f5
/* 807C10AC 10A3313A */ ps_madd     f5, f3, f4, f6
/* 807C10B0 10853194 */ ps_sum0     f4, f5, f6, f6
/* 807C10B4 EC441028 */ fsubs       f2, f4, f2
/* 807C10B8 FC02E040 */ fcmpo       cr0, f2, f28
/* 807C10BC 4C411382 */ cror        cr0eq, cr0gt, cr0eq
/* 807C10C0 418203F0 */ beq-        lbl_807c14b0
/* 807C10C4 A0050006 */ lhz         r0, 6(r5)
/* 807C10C8 E0DE0004 */ psq_l       f6, 4(r30), 0, 0
/* 807C10CC 1C00000C */ mulli       r0, r0, 0xc
/* 807C10D0 7C790214 */ add         r3, r25, r0
/* 807C10D4 E0A30004 */ psq_l       f5, 4(r3), 0, 0
/* 807C10D8 E0838000 */ psq_l       f4, 0(r3), 1, 0
/* 807C10DC 10C60172 */ ps_mul      f6, f6, f5
/* 807C10E0 10A3313A */ ps_madd     f5, f3, f4, f6
/* 807C10E4 13A53194 */ ps_sum0     f29, f5, f6, f6
/* 807C10E8 EC9CE828 */ fsubs       f4, f28, f29
/* 807C10EC FC04F040 */ fcmpo       cr0, f4, f30
/* 807C10F0 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C10F4 418203BC */ beq-        lbl_807c14b0
/* 807C10F8 C0780010 */ lfs         f3, 0x10(r24)
/* 807C10FC FC032040 */ fcmpo       cr0, f3, f4
/* 807C1100 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C1104 40820014 */ bne-        lbl_807c1118
/* 807C1108 EC63E02A */ fadds       f3, f3, f28
/* 807C110C FC032040 */ fcmpo       cr0, f3, f4
/* 807C1110 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C1114 4182039C */ beq-        lbl_807c14b0
lbl_807c1118:
/* 807C1118 A065000E */ lhz         r3, 0xe(r5)
/* 807C111C 80180064 */ lwz         r0, 0x64(r24)
/* 807C1120 546306FE */ clrlwi      r3, r3, 0x1b
/* 807C1124 7FE31830 */ slw         r3, r31, r3
/* 807C1128 7C600039 */ and.        r0, r3, r0
/* 807C112C 41820384 */ beq-        lbl_807c14b0
/* 807C1130 FC000840 */ fcmpo       cr0, f0, f1
/* 807C1134 EC7C0732 */ fmuls       f3, f28, f28
/* 807C1138 40810010 */ ble-        lbl_807c1148
/* 807C113C FC001040 */ fcmpo       cr0, f0, f2
/* 807C1140 408100EC */ ble-        lbl_807c122c
/* 807C1144 48000010 */ b           lbl_807c1154
lbl_807c1148:
/* 807C1148 FC011040 */ fcmpo       cr0, f1, f2
/* 807C114C 408100E0 */ ble-        lbl_807c122c
/* 807C1150 48000070 */ b           lbl_807c11c0
lbl_807c1154:
/* 807C1154 FC00F040 */ fcmpo       cr0, f0, f30
/* 807C1158 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C115C 4182034C */ beq-        lbl_807c14a8
/* 807C1160 FC011040 */ fcmpo       cr0, f1, f2
/* 807C1164 40810030 */ ble-        lbl_807c1194
/* 807C1168 E0A40004 */ psq_l       f5, 4(r4), 0, 0
/* 807C116C E0860004 */ psq_l       f4, 4(r6), 0, 0
/* 807C1170 E0448000 */ psq_l       f2, 0(r4), 1, 0
/* 807C1174 10A50132 */ ps_mul      f5, f5, f4
/* 807C1178 E0868000 */ psq_l       f4, 0(r6), 1, 0
/* 807C117C 1082293A */ ps_madd     f4, f2, f4, f5
/* 807C1180 11442954 */ ps_sum0     f10, f4, f5, f5
/* 807C1184 EC4A0032 */ fmuls       f2, f10, f0
/* 807C1188 FC020840 */ fcmpo       cr0, f2, f1
/* 807C118C 40810130 */ ble-        lbl_807c12bc
/* 807C1190 48000108 */ b           lbl_807c1298
lbl_807c1194:
/* 807C1194 E0A40004 */ psq_l       f5, 4(r4), 0, 0
/* 807C1198 E0870004 */ psq_l       f4, 4(r7), 0, 0
/* 807C119C E0248000 */ psq_l       f1, 0(r4), 1, 0
/* 807C11A0 10A50132 */ ps_mul      f5, f5, f4
/* 807C11A4 E0878000 */ psq_l       f4, 0(r7), 1, 0
/* 807C11A8 1081293A */ ps_madd     f4, f1, f4, f5
/* 807C11AC 11642954 */ ps_sum0     f11, f4, f5, f5
/* 807C11B0 EC2B0032 */ fmuls       f1, f11, f0
/* 807C11B4 FC011040 */ fcmpo       cr0, f1, f2
/* 807C11B8 408101F4 */ ble-        lbl_807c13ac
/* 807C11BC 480000DC */ b           lbl_807c1298
lbl_807c11c0:
/* 807C11C0 FC01F040 */ fcmpo       cr0, f1, f30
/* 807C11C4 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C11C8 418202E0 */ beq-        lbl_807c14a8
/* 807C11CC FC020040 */ fcmpo       cr0, f2, f0
/* 807C11D0 40810030 */ ble-        lbl_807c1200
/* 807C11D4 E0A60004 */ psq_l       f5, 4(r6), 0, 0
/* 807C11D8 E0870004 */ psq_l       f4, 4(r7), 0, 0
/* 807C11DC E0068000 */ psq_l       f0, 0(r6), 1, 0
/* 807C11E0 10A50132 */ ps_mul      f5, f5, f4
/* 807C11E4 E0878000 */ psq_l       f4, 0(r7), 1, 0
/* 807C11E8 1080293A */ ps_madd     f4, f0, f4, f5
/* 807C11EC 11642954 */ ps_sum0     f11, f4, f5, f5
/* 807C11F0 EC0B0072 */ fmuls       f0, f11, f1
/* 807C11F4 FC001040 */ fcmpo       cr0, f0, f2
/* 807C11F8 4081013C */ ble-        lbl_807c1334
/* 807C11FC 480000A8 */ b           lbl_807c12a4
lbl_807c1200:
/* 807C1200 E0A60004 */ psq_l       f5, 4(r6), 0, 0
/* 807C1204 E0840004 */ psq_l       f4, 4(r4), 0, 0
/* 807C1208 E0468000 */ psq_l       f2, 0(r6), 1, 0
/* 807C120C 10A50132 */ ps_mul      f5, f5, f4
/* 807C1210 E0848000 */ psq_l       f4, 0(r4), 1, 0
/* 807C1214 1082293A */ ps_madd     f4, f2, f4, f5
/* 807C1218 11442954 */ ps_sum0     f10, f4, f5, f5
/* 807C121C EC4A0072 */ fmuls       f2, f10, f1
/* 807C1220 FC020040 */ fcmpo       cr0, f2, f0
/* 807C1224 40810098 */ ble-        lbl_807c12bc
/* 807C1228 4800007C */ b           lbl_807c12a4
lbl_807c122c:
/* 807C122C FC02F040 */ fcmpo       cr0, f2, f30
/* 807C1230 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C1234 41820274 */ beq-        lbl_807c14a8
/* 807C1238 FC000840 */ fcmpo       cr0, f0, f1
/* 807C123C 40810030 */ ble-        lbl_807c126c
/* 807C1240 E0A70004 */ psq_l       f5, 4(r7), 0, 0
/* 807C1244 E0840004 */ psq_l       f4, 4(r4), 0, 0
/* 807C1248 E0278000 */ psq_l       f1, 0(r7), 1, 0
/* 807C124C 10A50132 */ ps_mul      f5, f5, f4
/* 807C1250 E0848000 */ psq_l       f4, 0(r4), 1, 0
/* 807C1254 1081293A */ ps_madd     f4, f1, f4, f5
/* 807C1258 11642954 */ ps_sum0     f11, f4, f5, f5
/* 807C125C EC2B00B2 */ fmuls       f1, f11, f2
/* 807C1260 FC010040 */ fcmpo       cr0, f1, f0
/* 807C1264 40810148 */ ble-        lbl_807c13ac
/* 807C1268 48000048 */ b           lbl_807c12b0
lbl_807c126c:
/* 807C126C E0A70004 */ psq_l       f5, 4(r7), 0, 0
/* 807C1270 E0860004 */ psq_l       f4, 4(r6), 0, 0
/* 807C1274 E0078000 */ psq_l       f0, 0(r7), 1, 0
/* 807C1278 10A50132 */ ps_mul      f5, f5, f4
/* 807C127C E0868000 */ psq_l       f4, 0(r6), 1, 0
/* 807C1280 1080293A */ ps_madd     f4, f0, f4, f5
/* 807C1284 11642954 */ ps_sum0     f11, f4, f5, f5
/* 807C1288 EC0B00B2 */ fmuls       f0, f11, f2
/* 807C128C FC000840 */ fcmpo       cr0, f0, f1
/* 807C1290 408100A4 */ ble-        lbl_807c1334
/* 807C1294 4800001C */ b           lbl_807c12b0
lbl_807c1298:
/* 807C1298 EC000032 */ fmuls       f0, f0, f0
/* 807C129C EF630028 */ fsubs       f27, f3, f0
/* 807C12A0 48000190 */ b           lbl_807c1430
lbl_807c12a4:
/* 807C12A4 EC010072 */ fmuls       f0, f1, f1
/* 807C12A8 EF630028 */ fsubs       f27, f3, f0
/* 807C12AC 48000184 */ b           lbl_807c1430
lbl_807c12b0:
/* 807C12B0 EC0200B2 */ fmuls       f0, f2, f2
/* 807C12B4 EF630028 */ fsubs       f27, f3, f0
/* 807C12B8 48000178 */ b           lbl_807c1430
lbl_807c12bc:
/* 807C12BC ECEA0072 */ fmuls       f7, f10, f1
/* 807C12C0 C0A40004 */ lfs         f5, 4(r4)
/* 807C12C4 ECCA02B2 */ fmuls       f6, f10, f10
/* 807C12C8 C0860004 */ lfs         f4, 4(r6)
/* 807C12CC C0440000 */ lfs         f2, 0(r4)
/* 807C12D0 ED270028 */ fsubs       f9, f7, f0
/* 807C12D4 ED06F828 */ fsubs       f8, f6, f31
/* 807C12D8 C0060000 */ lfs         f0, 0(r6)
/* 807C12DC C0E40008 */ lfs         f7, 8(r4)
/* 807C12E0 C0C60008 */ lfs         f6, 8(r6)
/* 807C12E4 ED294024 */ fdivs       f9, f9, f8
/* 807C12E8 ED0902B2 */ fmuls       f8, f9, f10
/* 807C12EC ECA50272 */ fmuls       f5, f5, f9
/* 807C12F0 EC420272 */ fmuls       f2, f2, f9
/* 807C12F4 ED014028 */ fsubs       f8, f1, f8
/* 807C12F8 ECE70272 */ fmuls       f7, f7, f9
/* 807C12FC EC240232 */ fmuls       f1, f4, f8
/* 807C1300 EC000232 */ fmuls       f0, f0, f8
/* 807C1304 EC860232 */ fmuls       f4, f6, f8
/* 807C1308 EC25082A */ fadds       f1, f5, f1
/* 807C130C EC02002A */ fadds       f0, f2, f0
/* 807C1310 D0210024 */ stfs        f1, 0x24(r1)
/* 807C1314 EC27202A */ fadds       f1, f7, f4
/* 807C1318 D0010020 */ stfs        f0, 0x20(r1)
/* 807C131C E01D0000 */ psq_l       f0, 0(r29), 0, 0
/* 807C1320 D0210028 */ stfs        f1, 0x28(r1)
/* 807C1324 10000032 */ ps_mul      f0, f0, f0
/* 807C1328 1021007A */ ps_madd     f1, f1, f1, f0
/* 807C132C 10210014 */ ps_sum0     f1, f1, f0, f0
/* 807C1330 480000F0 */ b           lbl_807c1420
lbl_807c1334:
/* 807C1334 ECEB00B2 */ fmuls       f7, f11, f2
/* 807C1338 C0860000 */ lfs         f4, 0(r6)
/* 807C133C EC0B02F2 */ fmuls       f0, f11, f11
/* 807C1340 C0C60004 */ lfs         f6, 4(r6)
/* 807C1344 C0A70004 */ lfs         f5, 4(r7)
/* 807C1348 ED270828 */ fsubs       f9, f7, f1
/* 807C134C EC20F828 */ fsubs       f1, f0, f31
/* 807C1350 C0070000 */ lfs         f0, 0(r7)
/* 807C1354 C1060008 */ lfs         f8, 8(r6)
/* 807C1358 C0E70008 */ lfs         f7, 8(r7)
/* 807C135C ED490824 */ fdivs       f10, f9, f1
/* 807C1360 ED2A02F2 */ fmuls       f9, f10, f11
/* 807C1364 EC2402B2 */ fmuls       f1, f4, f10
/* 807C1368 ECC602B2 */ fmuls       f6, f6, f10
/* 807C136C EC824828 */ fsubs       f4, f2, f9
/* 807C1370 ED0802B2 */ fmuls       f8, f8, f10
/* 807C1374 EC450132 */ fmuls       f2, f5, f4
/* 807C1378 EC000132 */ fmuls       f0, f0, f4
/* 807C137C EC870132 */ fmuls       f4, f7, f4
/* 807C1380 EC46102A */ fadds       f2, f6, f2
/* 807C1384 EC01002A */ fadds       f0, f1, f0
/* 807C1388 D0410018 */ stfs        f2, 0x18(r1)
/* 807C138C EC28202A */ fadds       f1, f8, f4
/* 807C1390 D0010014 */ stfs        f0, 0x14(r1)
/* 807C1394 E01C0000 */ psq_l       f0, 0(r28), 0, 0
/* 807C1398 D021001C */ stfs        f1, 0x1c(r1)
/* 807C139C 10000032 */ ps_mul      f0, f0, f0
/* 807C13A0 1021007A */ ps_madd     f1, f1, f1, f0
/* 807C13A4 10210014 */ ps_sum0     f1, f1, f0, f0
/* 807C13A8 48000078 */ b           lbl_807c1420
lbl_807c13ac:
/* 807C13AC ECEB0032 */ fmuls       f7, f11, f0
/* 807C13B0 C0C70004 */ lfs         f6, 4(r7)
/* 807C13B4 EC2B02F2 */ fmuls       f1, f11, f11
/* 807C13B8 C0A40004 */ lfs         f5, 4(r4)
/* 807C13BC C0870000 */ lfs         f4, 0(r7)
/* 807C13C0 ED271028 */ fsubs       f9, f7, f2
/* 807C13C4 EC41F828 */ fsubs       f2, f1, f31
/* 807C13C8 C0240000 */ lfs         f1, 0(r4)
/* 807C13CC C1070008 */ lfs         f8, 8(r7)
/* 807C13D0 C0E40008 */ lfs         f7, 8(r4)
/* 807C13D4 ED491024 */ fdivs       f10, f9, f2
/* 807C13D8 ED2A02F2 */ fmuls       f9, f10, f11
/* 807C13DC ECC602B2 */ fmuls       f6, f6, f10
/* 807C13E0 EC4402B2 */ fmuls       f2, f4, f10
/* 807C13E4 ED204828 */ fsubs       f9, f0, f9
/* 807C13E8 ED0802B2 */ fmuls       f8, f8, f10
/* 807C13EC EC010272 */ fmuls       f0, f1, f9
/* 807C13F0 EC850272 */ fmuls       f4, f5, f9
/* 807C13F4 EC270272 */ fmuls       f1, f7, f9
/* 807C13F8 EC02002A */ fadds       f0, f2, f0
/* 807C13FC EC86202A */ fadds       f4, f6, f4
/* 807C1400 D0010008 */ stfs        f0, 8(r1)
/* 807C1404 EC28082A */ fadds       f1, f8, f1
/* 807C1408 D081000C */ stfs        f4, 0xc(r1)
/* 807C140C E01B0000 */ psq_l       f0, 0(r27), 0, 0
/* 807C1410 D0210010 */ stfs        f1, 0x10(r1)
/* 807C1414 10000032 */ ps_mul      f0, f0, f0
/* 807C1418 1021007A */ ps_madd     f1, f1, f1, f0
/* 807C141C 10210014 */ ps_sum0     f1, f1, f0, f0
lbl_807c1420:
/* 807C1420 EF630828 */ fsubs       f27, f3, f1
/* 807C1424 FC1BF040 */ fcmpo       cr0, f27, f30
/* 807C1428 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C142C 41820084 */ beq-        lbl_807c14b0
lbl_807c1430:
/* 807C1430 EC1D0772 */ fmuls       f0, f29, f29
/* 807C1434 FC1B0040 */ fcmpo       cr0, f27, f0
/* 807C1438 41800078 */ blt-        lbl_807c14b0
/* 807C143C FC1BF040 */ fcmpo       cr0, f27, f30
/* 807C1440 4C411382 */ cror        cr0eq, cr0gt, cr0eq
/* 807C1444 7C000026 */ mfcr        r0
/* 807C1448 54001FFE */ rlwinm      r0, r0, 3, 0x1f, 0x1f
/* 807C144C 7C000034 */ cntlzw      r0, r0
/* 807C1450 5400D97F */ rlwinm.     r0, r0, 0x1b, 5, 0x1f
/* 807C1454 4082005C */ bne-        lbl_807c14b0
/* 807C1458 FC1BF040 */ fcmpo       cr0, f27, f30
/* 807C145C 4C411382 */ cror        cr0eq, cr0gt, cr0eq
/* 807C1460 41820018 */ beq-        lbl_807c1478
/* 807C1464 387656F4 */ addi        r3, r22, lbl_808b56f4@l
/* 807C1468 38B756D0 */ addi        r5, r23, lbl_808b56d0@l
/* 807C146C 38800273 */ li          r4, 0x273
/* 807C1470 4CC63182 */ crclr       cr1eq
/* 807C1474 4B864BDD */ bl          VWarning
lbl_807c1478:
/* 807C1478 FC1BF040 */ fcmpo       cr0, f27, f30
/* 807C147C 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C1480 4082000C */ bne-        lbl_807c148c
/* 807C1484 FC00F090 */ fmr         f0, f30
/* 807C1488 48000010 */ b           lbl_807c1498
lbl_807c148c:
/* 807C148C FC20D890 */ fmr         f1, f27
/* 807C1490 4B8C3BB1 */ bl          FrSqrt
/* 807C1494 EC1B0072 */ fmuls       f0, f27, f1
lbl_807c1498:
/* 807C1498 EC00E828 */ fsubs       f0, f0, f29
/* 807C149C FC00F040 */ fcmpo       cr0, f0, f30
/* 807C14A0 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C14A4 4182000C */ beq-        lbl_807c14b0
lbl_807c14a8:
/* 807C14A8 38600001 */ li          r3, 1
/* 807C14AC 48000028 */ b           lbl_807c14d4
lbl_807c14b0:
/* 807C14B0 80780068 */ lwz         r3, 0x68(r24)
/* 807C14B4 38630002 */ addi        r3, r3, 2
/* 807C14B8 90780068 */ stw         r3, 0x68(r24)
/* 807C14BC A0030000 */ lhz         r0, 0(r3)
/* 807C14C0 2C000000 */ cmpwi       r0, 0
/* 807C14C4 4082FAE0 */ bne+        lbl_807c0fa4
/* 807C14C8 38000000 */ li          r0, 0
/* 807C14CC 90180068 */ stw         r0, 0x68(r24)
/* 807C14D0 38600000 */ li          r3, 0
lbl_807c14d4:
/* 807C14D4 E3E100A8 */ psq_l       f31, 0xa8(r1), 0, 0
/* 807C14D8 CBE100A0 */ lfd         f31, 0xa0(r1)
/* 807C14DC E3C10098 */ psq_l       f30, 0x98(r1), 0, 0
/* 807C14E0 CBC10090 */ lfd         f30, 0x90(r1)
/* 807C14E4 E3A10088 */ psq_l       f29, 0x88(r1), 0, 0
/* 807C14E8 CBA10080 */ lfd         f29, 0x80(r1)
/* 807C14EC E3810078 */ psq_l       f28, 0x78(r1), 0, 0
/* 807C14F0 CB810070 */ lfd         f28, 0x70(r1)
/* 807C14F4 E3610068 */ psq_l       f27, 0x68(r1), 0, 0
/* 807C14F8 39610060 */ addi        r11, r1, 0x60
/* 807C14FC CB610060 */ lfd         f27, 0x60(r1)
/* 807C1500 4B8600D9 */ bl          _restgpr_22
/* 807C1504 800100B4 */ lwz         r0, 0xb4(r1)
/* 807C1508 7C0803A6 */ mtlr        r0
/* 807C150C 382100B0 */ addi        r1, r1, 0xb0
/* 807C1510 4E800020 */ blr         