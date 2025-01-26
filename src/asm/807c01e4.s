nofralloc
/* 807C01E4 9421FF30 */ stwu        r1, -0xd0(r1)
/* 807C01E8 7C0802A6 */ mflr        r0
/* 807C01EC 900100D4 */ stw         r0, 0xd4(r1)
/* 807C01F0 DBE100C0 */ stfd        f31, 0xc0(r1)
/* 807C01F4 F3E100C8 */ psq_st      f31, 0xc8(r1), 0, 0
/* 807C01F8 DBC100B0 */ stfd        f30, 0xb0(r1)
/* 807C01FC F3C100B8 */ psq_st      f30, 0xb8(r1), 0, 0
/* 807C0200 DBA100A0 */ stfd        f29, 0xa0(r1)
/* 807C0204 F3A100A8 */ psq_st      f29, 0xa8(r1), 0, 0
/* 807C0208 DB810090 */ stfd        f28, 0x90(r1)
/* 807C020C F3810098 */ psq_st      f28, 0x98(r1), 0, 0
/* 807C0210 DB610080 */ stfd        f27, 0x80(r1)
/* 807C0214 F3610088 */ psq_st      f27, 0x88(r1), 0, 0
/* 807C0218 39610080 */ addi        r11, r1, 0x80
/* 807C021C 4B861369 */ bl          _savegpr_20
/* 807C0220 80030068 */ lwz         r0, 0x68(r3)
/* 807C0224 38A3008C */ addi        r5, r3, 0x8c
/* 807C0228 80C3028C */ lwz         r6, 0x28c(r3)
/* 807C022C 7C761B78 */ mr          r22, r3
/* 807C0230 2C000000 */ cmpwi       r0, 0
/* 807C0234 C3A30060 */ lfs         f29, 0x60(r3)
/* 807C0238 7C862850 */ subf        r4, r6, r5
/* 807C023C 7C053050 */ subf        r0, r5, r6
/* 807C0240 7C800378 */ or          r0, r4, r0
/* 807C0244 83030004 */ lwz         r24, 4(r3)
/* 807C0248 54190FFE */ srwi        r25, r0, 0x1f
/* 807C024C 4082000C */ bne-        lbl_807c0258
/* 807C0250 38600000 */ li          r3, 0
/* 807C0254 480005F0 */ b           lbl_807c0844
lbl_807c0258:
/* 807C0258 3C60808A */ lis         r3, lbl_808a66d8@ha
/* 807C025C 3C80808A */ lis         r4, lbl_808a66e4@ha
/* 807C0260 C3E466E4 */ lfs         f31, lbl_808a66e4@l(r4)
/* 807C0264 3B810008 */ addi        r28, r1, 8
/* 807C0268 C38366D8 */ lfs         f28, lbl_808a66d8@l(r3)
/* 807C026C 3BA10014 */ addi        r29, r1, 0x14
/* 807C0270 3BC10020 */ addi        r30, r1, 0x20
/* 807C0274 3B410038 */ addi        r26, r1, 0x38
/* 807C0278 3B61002C */ addi        r27, r1, 0x2c
/* 807C027C 3E80808B */ lis         r20, lbl_808b56f4@ha
/* 807C0280 3EA0808B */ lis         r21, lbl_808b56d0@ha
/* 807C0284 3BE00001 */ li          r31, 1
/* 807C0288 48000598 */ b           lbl_807c0820
lbl_807c028c:
/* 807C028C 2C190000 */ cmpwi       r25, 0
/* 807C0290 4182003C */ beq-        lbl_807c02cc
/* 807C0294 80B6028C */ lwz         r5, 0x28c(r22)
/* 807C0298 3816008C */ addi        r0, r22, 0x8c
/* 807C029C 48000018 */ b           lbl_807c02b4
lbl_807c02a0:
/* 807C02A0 80960068 */ lwz         r4, 0x68(r22)
/* 807C02A4 A0650000 */ lhz         r3, 0(r5)
/* 807C02A8 A0840000 */ lhz         r4, 0(r4)
/* 807C02AC 7C041840 */ cmplw       r4, r3
/* 807C02B0 41820010 */ beq-        lbl_807c02c0
lbl_807c02b4:
/* 807C02B4 38A5FFFE */ addi        r5, r5, -2
/* 807C02B8 7C050040 */ cmplw       r5, r0
/* 807C02BC 4080FFE4 */ bge+        lbl_807c02a0
lbl_807c02c0:
/* 807C02C0 3816008C */ addi        r0, r22, 0x8c
/* 807C02C4 7C050040 */ cmplw       r5, r0
/* 807C02C8 40800558 */ bge-        lbl_807c0820
lbl_807c02cc:
/* 807C02CC 80760068 */ lwz         r3, 0x68(r22)
/* 807C02D0 80B60008 */ lwz         r5, 8(r22)
/* 807C02D4 A0030000 */ lhz         r0, 0(r3)
/* 807C02D8 80960000 */ lwz         r4, 0(r22)
/* 807C02DC 54002036 */ slwi        r0, r0, 4
/* 807C02E0 E056003C */ psq_l       f2, 0x3c(r22), 0, 0
/* 807C02E4 7CA50214 */ add         r5, r5, r0
/* 807C02E8 A0650004 */ lhz         r3, 4(r5)
/* 807C02EC A0050008 */ lhz         r0, 8(r5)
/* 807C02F0 1C63000C */ mulli       r3, r3, 0xc
/* 807C02F4 7C641A14 */ add         r3, r4, r3
/* 807C02F8 E0230000 */ psq_l       f1, 0(r3), 0, 0
/* 807C02FC 1C00000C */ mulli       r0, r0, 0xc
/* 807C0300 10020828 */ ps_sub      f0, f2, f1
/* 807C0304 E0568044 */ psq_l       f2, 0x44(r22), 1, 0
/* 807C0308 E0238008 */ psq_l       f1, 8(r3), 1, 0
/* 807C030C 7C980214 */ add         r4, r24, r0
/* 807C0310 F01A0000 */ psq_st      f0, 0(r26), 0, 0
/* 807C0314 10020828 */ ps_sub      f0, f2, f1
/* 807C0318 E0240004 */ psq_l       f1, 4(r4), 0, 0
/* 807C031C F01A8008 */ psq_st      f0, 8(r26), 1, 0
/* 807C0320 E07A8000 */ psq_l       f3, 0(r26), 1, 0
/* 807C0324 E05A0004 */ psq_l       f2, 4(r26), 0, 0
/* 807C0328 E0048000 */ psq_l       f0, 0(r4), 1, 0
/* 807C032C 10420072 */ ps_mul      f2, f2, f1
/* 807C0330 1023103A */ ps_madd     f1, f3, f0, f2
/* 807C0334 10011094 */ ps_sum0     f0, f1, f2, f2
/* 807C0338 FC00E840 */ fcmpo       cr0, f0, f29
/* 807C033C 4C411382 */ cror        cr0eq, cr0gt, cr0eq
/* 807C0340 418204E0 */ beq-        lbl_807c0820
/* 807C0344 A005000A */ lhz         r0, 0xa(r5)
/* 807C0348 E09A0004 */ psq_l       f4, 4(r26), 0, 0
/* 807C034C 1C00000C */ mulli       r0, r0, 0xc
/* 807C0350 7CD80214 */ add         r6, r24, r0
/* 807C0354 E0460004 */ psq_l       f2, 4(r6), 0, 0
/* 807C0358 E0268000 */ psq_l       f1, 0(r6), 1, 0
/* 807C035C 108400B2 */ ps_mul      f4, f4, f2
/* 807C0360 1043207A */ ps_madd     f2, f3, f1, f4
/* 807C0364 10222114 */ ps_sum0     f1, f2, f4, f4
/* 807C0368 FC01E840 */ fcmpo       cr0, f1, f29
/* 807C036C 4C411382 */ cror        cr0eq, cr0gt, cr0eq
/* 807C0370 418204B0 */ beq-        lbl_807c0820
/* 807C0374 A005000C */ lhz         r0, 0xc(r5)
/* 807C0378 E0DA0004 */ psq_l       f6, 4(r26), 0, 0
/* 807C037C 1C00000C */ mulli       r0, r0, 0xc
/* 807C0380 C0450000 */ lfs         f2, 0(r5)
/* 807C0384 7CF80214 */ add         r7, r24, r0
/* 807C0388 E0A70004 */ psq_l       f5, 4(r7), 0, 0
/* 807C038C E0878000 */ psq_l       f4, 0(r7), 1, 0
/* 807C0390 10C60172 */ ps_mul      f6, f6, f5
/* 807C0394 10A3313A */ ps_madd     f5, f3, f4, f6
/* 807C0398 10853194 */ ps_sum0     f4, f5, f6, f6
/* 807C039C EC441028 */ fsubs       f2, f4, f2
/* 807C03A0 FC02E840 */ fcmpo       cr0, f2, f29
/* 807C03A4 4C411382 */ cror        cr0eq, cr0gt, cr0eq
/* 807C03A8 41820478 */ beq-        lbl_807c0820
/* 807C03AC A0050006 */ lhz         r0, 6(r5)
/* 807C03B0 E0DA0004 */ psq_l       f6, 4(r26), 0, 0
/* 807C03B4 1C00000C */ mulli       r0, r0, 0xc
/* 807C03B8 7EF80214 */ add         r23, r24, r0
/* 807C03BC E0B70004 */ psq_l       f5, 4(r23), 0, 0
/* 807C03C0 E0978000 */ psq_l       f4, 0(r23), 1, 0
/* 807C03C4 10C60172 */ ps_mul      f6, f6, f5
/* 807C03C8 10A3313A */ ps_madd     f5, f3, f4, f6
/* 807C03CC 13C53194 */ ps_sum0     f30, f5, f6, f6
/* 807C03D0 EC9DF028 */ fsubs       f4, f29, f30
/* 807C03D4 FC04E040 */ fcmpo       cr0, f4, f28
/* 807C03D8 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C03DC 41820444 */ beq-        lbl_807c0820
/* 807C03E0 C0760010 */ lfs         f3, 0x10(r22)
/* 807C03E4 FC032040 */ fcmpo       cr0, f3, f4
/* 807C03E8 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C03EC 40820014 */ bne-        lbl_807c0400
/* 807C03F0 EC63E82A */ fadds       f3, f3, f29
/* 807C03F4 FC032040 */ fcmpo       cr0, f3, f4
/* 807C03F8 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C03FC 41820424 */ beq-        lbl_807c0820
lbl_807c0400:
/* 807C0400 A065000E */ lhz         r3, 0xe(r5)
/* 807C0404 80160064 */ lwz         r0, 0x64(r22)
/* 807C0408 546306FE */ clrlwi      r3, r3, 0x1b
/* 807C040C 7FE31830 */ slw         r3, r31, r3
/* 807C0410 7C600039 */ and.        r0, r3, r0
/* 807C0414 4182040C */ beq-        lbl_807c0820
/* 807C0418 74600507 */ andis.      r0, r3, 0x507
/* 807C041C 41820028 */ beq-        lbl_807c0444
/* 807C0420 E0B60058 */ psq_l       f5, 0x58(r22), 0, 0
/* 807C0424 E0970004 */ psq_l       f4, 4(r23), 0, 0
/* 807C0428 E0768054 */ psq_l       f3, 0x54(r22), 1, 0
/* 807C042C 10A50132 */ ps_mul      f5, f5, f4
/* 807C0430 E0978000 */ psq_l       f4, 0(r23), 1, 0
/* 807C0434 1083293A */ ps_madd     f4, f3, f4, f5
/* 807C0438 10642954 */ ps_sum0     f3, f4, f5, f5
/* 807C043C FC03E040 */ fcmpo       cr0, f3, f28
/* 807C0440 418103E0 */ bgt-        lbl_807c0820
lbl_807c0444:
/* 807C0444 FC000840 */ fcmpo       cr0, f0, f1
/* 807C0448 38000001 */ li          r0, 1
/* 807C044C EC7D0772 */ fmuls       f3, f29, f29
/* 807C0450 40810010 */ ble-        lbl_807c0460
/* 807C0454 FC001040 */ fcmpo       cr0, f0, f2
/* 807C0458 408100EC */ ble-        lbl_807c0544
/* 807C045C 48000010 */ b           lbl_807c046c
lbl_807c0460:
/* 807C0460 FC011040 */ fcmpo       cr0, f1, f2
/* 807C0464 408100E0 */ ble-        lbl_807c0544
/* 807C0468 48000070 */ b           lbl_807c04d8
lbl_807c046c:
/* 807C046C FC00E040 */ fcmpo       cr0, f0, f28
/* 807C0470 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C0474 41820350 */ beq-        lbl_807c07c4
/* 807C0478 FC011040 */ fcmpo       cr0, f1, f2
/* 807C047C 40810030 */ ble-        lbl_807c04ac
/* 807C0480 E0A40004 */ psq_l       f5, 4(r4), 0, 0
/* 807C0484 E0860004 */ psq_l       f4, 4(r6), 0, 0
/* 807C0488 E0448000 */ psq_l       f2, 0(r4), 1, 0
/* 807C048C 10A50132 */ ps_mul      f5, f5, f4
/* 807C0490 E0868000 */ psq_l       f4, 0(r6), 1, 0
/* 807C0494 1082293A */ ps_madd     f4, f2, f4, f5
/* 807C0498 11442954 */ ps_sum0     f10, f4, f5, f5
/* 807C049C EC4A0032 */ fmuls       f2, f10, f0
/* 807C04A0 FC020840 */ fcmpo       cr0, f2, f1
/* 807C04A4 40810130 */ ble-        lbl_807c05d4
/* 807C04A8 48000108 */ b           lbl_807c05b0
lbl_807c04ac:
/* 807C04AC E0A40004 */ psq_l       f5, 4(r4), 0, 0
/* 807C04B0 E0870004 */ psq_l       f4, 4(r7), 0, 0
/* 807C04B4 E0248000 */ psq_l       f1, 0(r4), 1, 0
/* 807C04B8 10A50132 */ ps_mul      f5, f5, f4
/* 807C04BC E0878000 */ psq_l       f4, 0(r7), 1, 0
/* 807C04C0 1081293A */ ps_madd     f4, f1, f4, f5
/* 807C04C4 11642954 */ ps_sum0     f11, f4, f5, f5
/* 807C04C8 EC2B0032 */ fmuls       f1, f11, f0
/* 807C04CC FC011040 */ fcmpo       cr0, f1, f2
/* 807C04D0 408101F4 */ ble-        lbl_807c06c4
/* 807C04D4 480000DC */ b           lbl_807c05b0
lbl_807c04d8:
/* 807C04D8 FC01E040 */ fcmpo       cr0, f1, f28
/* 807C04DC 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C04E0 418202E4 */ beq-        lbl_807c07c4
/* 807C04E4 FC020040 */ fcmpo       cr0, f2, f0
/* 807C04E8 40810030 */ ble-        lbl_807c0518
/* 807C04EC E0A60004 */ psq_l       f5, 4(r6), 0, 0
/* 807C04F0 E0870004 */ psq_l       f4, 4(r7), 0, 0
/* 807C04F4 E0068000 */ psq_l       f0, 0(r6), 1, 0
/* 807C04F8 10A50132 */ ps_mul      f5, f5, f4
/* 807C04FC E0878000 */ psq_l       f4, 0(r7), 1, 0
/* 807C0500 1080293A */ ps_madd     f4, f0, f4, f5
/* 807C0504 11642954 */ ps_sum0     f11, f4, f5, f5
/* 807C0508 EC0B0072 */ fmuls       f0, f11, f1
/* 807C050C FC001040 */ fcmpo       cr0, f0, f2
/* 807C0510 4081013C */ ble-        lbl_807c064c
/* 807C0514 480000A8 */ b           lbl_807c05bc
lbl_807c0518:
/* 807C0518 E0A60004 */ psq_l       f5, 4(r6), 0, 0
/* 807C051C E0840004 */ psq_l       f4, 4(r4), 0, 0
/* 807C0520 E0468000 */ psq_l       f2, 0(r6), 1, 0
/* 807C0524 10A50132 */ ps_mul      f5, f5, f4
/* 807C0528 E0848000 */ psq_l       f4, 0(r4), 1, 0
/* 807C052C 1082293A */ ps_madd     f4, f2, f4, f5
/* 807C0530 11442954 */ ps_sum0     f10, f4, f5, f5
/* 807C0534 EC4A0072 */ fmuls       f2, f10, f1
/* 807C0538 FC020040 */ fcmpo       cr0, f2, f0
/* 807C053C 40810098 */ ble-        lbl_807c05d4
/* 807C0540 4800007C */ b           lbl_807c05bc
lbl_807c0544:
/* 807C0544 FC02E040 */ fcmpo       cr0, f2, f28
/* 807C0548 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C054C 41820278 */ beq-        lbl_807c07c4
/* 807C0550 FC000840 */ fcmpo       cr0, f0, f1
/* 807C0554 40810030 */ ble-        lbl_807c0584
/* 807C0558 E0A70004 */ psq_l       f5, 4(r7), 0, 0
/* 807C055C E0840004 */ psq_l       f4, 4(r4), 0, 0
/* 807C0560 E0278000 */ psq_l       f1, 0(r7), 1, 0
/* 807C0564 10A50132 */ ps_mul      f5, f5, f4
/* 807C0568 E0848000 */ psq_l       f4, 0(r4), 1, 0
/* 807C056C 1081293A */ ps_madd     f4, f1, f4, f5
/* 807C0570 11642954 */ ps_sum0     f11, f4, f5, f5
/* 807C0574 EC2B00B2 */ fmuls       f1, f11, f2
/* 807C0578 FC010040 */ fcmpo       cr0, f1, f0
/* 807C057C 40810148 */ ble-        lbl_807c06c4
/* 807C0580 48000048 */ b           lbl_807c05c8
lbl_807c0584:
/* 807C0584 E0A70004 */ psq_l       f5, 4(r7), 0, 0
/* 807C0588 E0860004 */ psq_l       f4, 4(r6), 0, 0
/* 807C058C E0078000 */ psq_l       f0, 0(r7), 1, 0
/* 807C0590 10A50132 */ ps_mul      f5, f5, f4
/* 807C0594 E0868000 */ psq_l       f4, 0(r6), 1, 0
/* 807C0598 1080293A */ ps_madd     f4, f0, f4, f5
/* 807C059C 11642954 */ ps_sum0     f11, f4, f5, f5
/* 807C05A0 EC0B00B2 */ fmuls       f0, f11, f2
/* 807C05A4 FC000840 */ fcmpo       cr0, f0, f1
/* 807C05A8 408100A4 */ ble-        lbl_807c064c
/* 807C05AC 4800001C */ b           lbl_807c05c8
lbl_807c05b0:
/* 807C05B0 EC000032 */ fmuls       f0, f0, f0
/* 807C05B4 EF630028 */ fsubs       f27, f3, f0
/* 807C05B8 48000190 */ b           lbl_807c0748
lbl_807c05bc:
/* 807C05BC EC010072 */ fmuls       f0, f1, f1
/* 807C05C0 EF630028 */ fsubs       f27, f3, f0
/* 807C05C4 48000184 */ b           lbl_807c0748
lbl_807c05c8:
/* 807C05C8 EC0200B2 */ fmuls       f0, f2, f2
/* 807C05CC EF630028 */ fsubs       f27, f3, f0
/* 807C05D0 48000178 */ b           lbl_807c0748
lbl_807c05d4:
/* 807C05D4 ECEA0072 */ fmuls       f7, f10, f1
/* 807C05D8 C0A40004 */ lfs         f5, 4(r4)
/* 807C05DC ECCA02B2 */ fmuls       f6, f10, f10
/* 807C05E0 C0860004 */ lfs         f4, 4(r6)
/* 807C05E4 C0440000 */ lfs         f2, 0(r4)
/* 807C05E8 ED270028 */ fsubs       f9, f7, f0
/* 807C05EC ED06F828 */ fsubs       f8, f6, f31
/* 807C05F0 C0060000 */ lfs         f0, 0(r6)
/* 807C05F4 C0E40008 */ lfs         f7, 8(r4)
/* 807C05F8 C0C60008 */ lfs         f6, 8(r6)
/* 807C05FC ED294024 */ fdivs       f9, f9, f8
/* 807C0600 ED0902B2 */ fmuls       f8, f9, f10
/* 807C0604 ECA50272 */ fmuls       f5, f5, f9
/* 807C0608 EC420272 */ fmuls       f2, f2, f9
/* 807C060C ED014028 */ fsubs       f8, f1, f8
/* 807C0610 ECE70272 */ fmuls       f7, f7, f9
/* 807C0614 EC240232 */ fmuls       f1, f4, f8
/* 807C0618 EC000232 */ fmuls       f0, f0, f8
/* 807C061C EC860232 */ fmuls       f4, f6, f8
/* 807C0620 EC25082A */ fadds       f1, f5, f1
/* 807C0624 EC02002A */ fadds       f0, f2, f0
/* 807C0628 D0210024 */ stfs        f1, 0x24(r1)
/* 807C062C EC27202A */ fadds       f1, f7, f4
/* 807C0630 D0010020 */ stfs        f0, 0x20(r1)
/* 807C0634 E01E0000 */ psq_l       f0, 0(r30), 0, 0
/* 807C0638 D0210028 */ stfs        f1, 0x28(r1)
/* 807C063C 10000032 */ ps_mul      f0, f0, f0
/* 807C0640 1021007A */ ps_madd     f1, f1, f1, f0
/* 807C0644 10210014 */ ps_sum0     f1, f1, f0, f0
/* 807C0648 480000F0 */ b           lbl_807c0738
lbl_807c064c:
/* 807C064C ECEB00B2 */ fmuls       f7, f11, f2
/* 807C0650 C0860000 */ lfs         f4, 0(r6)
/* 807C0654 EC0B02F2 */ fmuls       f0, f11, f11
/* 807C0658 C0C60004 */ lfs         f6, 4(r6)
/* 807C065C C0A70004 */ lfs         f5, 4(r7)
/* 807C0660 ED270828 */ fsubs       f9, f7, f1
/* 807C0664 EC20F828 */ fsubs       f1, f0, f31
/* 807C0668 C0070000 */ lfs         f0, 0(r7)
/* 807C066C C1060008 */ lfs         f8, 8(r6)
/* 807C0670 C0E70008 */ lfs         f7, 8(r7)
/* 807C0674 ED490824 */ fdivs       f10, f9, f1
/* 807C0678 ED2A02F2 */ fmuls       f9, f10, f11
/* 807C067C EC2402B2 */ fmuls       f1, f4, f10
/* 807C0680 ECC602B2 */ fmuls       f6, f6, f10
/* 807C0684 EC824828 */ fsubs       f4, f2, f9
/* 807C0688 ED0802B2 */ fmuls       f8, f8, f10
/* 807C068C EC450132 */ fmuls       f2, f5, f4
/* 807C0690 EC000132 */ fmuls       f0, f0, f4
/* 807C0694 EC870132 */ fmuls       f4, f7, f4
/* 807C0698 EC46102A */ fadds       f2, f6, f2
/* 807C069C EC01002A */ fadds       f0, f1, f0
/* 807C06A0 D0410018 */ stfs        f2, 0x18(r1)
/* 807C06A4 EC28202A */ fadds       f1, f8, f4
/* 807C06A8 D0010014 */ stfs        f0, 0x14(r1)
/* 807C06AC E01D0000 */ psq_l       f0, 0(r29), 0, 0
/* 807C06B0 D021001C */ stfs        f1, 0x1c(r1)
/* 807C06B4 10000032 */ ps_mul      f0, f0, f0
/* 807C06B8 1021007A */ ps_madd     f1, f1, f1, f0
/* 807C06BC 10210014 */ ps_sum0     f1, f1, f0, f0
/* 807C06C0 48000078 */ b           lbl_807c0738
lbl_807c06c4:
/* 807C06C4 ECEB0032 */ fmuls       f7, f11, f0
/* 807C06C8 C0C70004 */ lfs         f6, 4(r7)
/* 807C06CC EC2B02F2 */ fmuls       f1, f11, f11
/* 807C06D0 C0A40004 */ lfs         f5, 4(r4)
/* 807C06D4 C0870000 */ lfs         f4, 0(r7)
/* 807C06D8 ED271028 */ fsubs       f9, f7, f2
/* 807C06DC EC41F828 */ fsubs       f2, f1, f31
/* 807C06E0 C0240000 */ lfs         f1, 0(r4)
/* 807C06E4 C1070008 */ lfs         f8, 8(r7)
/* 807C06E8 C0E40008 */ lfs         f7, 8(r4)
/* 807C06EC ED491024 */ fdivs       f10, f9, f2
/* 807C06F0 ED2A02F2 */ fmuls       f9, f10, f11
/* 807C06F4 ECC602B2 */ fmuls       f6, f6, f10
/* 807C06F8 EC4402B2 */ fmuls       f2, f4, f10
/* 807C06FC ED204828 */ fsubs       f9, f0, f9
/* 807C0700 ED0802B2 */ fmuls       f8, f8, f10
/* 807C0704 EC010272 */ fmuls       f0, f1, f9
/* 807C0708 EC850272 */ fmuls       f4, f5, f9
/* 807C070C EC270272 */ fmuls       f1, f7, f9
/* 807C0710 EC02002A */ fadds       f0, f2, f0
/* 807C0714 EC86202A */ fadds       f4, f6, f4
/* 807C0718 D0010008 */ stfs        f0, 8(r1)
/* 807C071C EC28082A */ fadds       f1, f8, f1
/* 807C0720 D081000C */ stfs        f4, 0xc(r1)
/* 807C0724 E01C0000 */ psq_l       f0, 0(r28), 0, 0
/* 807C0728 D0210010 */ stfs        f1, 0x10(r1)
/* 807C072C 10000032 */ ps_mul      f0, f0, f0
/* 807C0730 1021007A */ ps_madd     f1, f1, f1, f0
/* 807C0734 10210014 */ ps_sum0     f1, f1, f0, f0
lbl_807c0738:
/* 807C0738 EF630828 */ fsubs       f27, f3, f1
/* 807C073C FC1BE040 */ fcmpo       cr0, f27, f28
/* 807C0740 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C0744 418200DC */ beq-        lbl_807c0820
lbl_807c0748:
/* 807C0748 EC1E07B2 */ fmuls       f0, f30, f30
/* 807C074C FC1B0040 */ fcmpo       cr0, f27, f0
/* 807C0750 418000D0 */ blt-        lbl_807c0820
/* 807C0754 FC1BE040 */ fcmpo       cr0, f27, f28
/* 807C0758 4C411382 */ cror        cr0eq, cr0gt, cr0eq
/* 807C075C 7C000026 */ mfcr        r0
/* 807C0760 54001FFE */ rlwinm      r0, r0, 3, 0x1f, 0x1f
/* 807C0764 7C000034 */ cntlzw      r0, r0
/* 807C0768 5400D97F */ rlwinm.     r0, r0, 0x1b, 5, 0x1f
/* 807C076C 408200B4 */ bne-        lbl_807c0820
/* 807C0770 FC1BE040 */ fcmpo       cr0, f27, f28
/* 807C0774 4C411382 */ cror        cr0eq, cr0gt, cr0eq
/* 807C0778 41820018 */ beq-        lbl_807c0790
/* 807C077C 387456F4 */ addi        r3, r20, lbl_808b56f4@l
/* 807C0780 38B556D0 */ addi        r5, r21, lbl_808b56d0@l
/* 807C0784 38800273 */ li          r4, 0x273
/* 807C0788 4CC63182 */ crclr       cr1eq
/* 807C078C 4B8658C5 */ bl          VWarning
lbl_807c0790:
/* 807C0790 FC1BE040 */ fcmpo       cr0, f27, f28
/* 807C0794 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C0798 4082000C */ bne-        lbl_807c07a4
/* 807C079C FC00E090 */ fmr         f0, f28
/* 807C07A0 48000010 */ b           lbl_807c07b0
lbl_807c07a4:
/* 807C07A4 FC20D890 */ fmr         f1, f27
/* 807C07A8 4B8C4899 */ bl          FrSqrt
/* 807C07AC EC1B0072 */ fmuls       f0, f27, f1
lbl_807c07b0:
/* 807C07B0 EC00F028 */ fsubs       f0, f0, f30
/* 807C07B4 FC00E040 */ fcmpo       cr0, f0, f28
/* 807C07B8 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C07BC 41820064 */ beq-        lbl_807c0820
/* 807C07C0 38000000 */ li          r0, 0
lbl_807c07c4:
/* 807C07C4 2C000000 */ cmpwi       r0, 0
/* 807C07C8 4182000C */ beq-        lbl_807c07d4
/* 807C07CC FC1EE040 */ fcmpo       cr0, f30, f28
/* 807C07D0 40800048 */ bge-        lbl_807c0818
lbl_807c07d4:
/* 807C07D4 E05A0000 */ psq_l       f2, 0(r26), 0, 0
/* 807C07D8 E0360054 */ psq_l       f1, 0x54(r22), 0, 0
/* 807C07DC E0770004 */ psq_l       f3, 4(r23), 0, 0
/* 807C07E0 10020828 */ ps_sub      f0, f2, f1
/* 807C07E4 E05A8008 */ psq_l       f2, 8(r26), 1, 0
/* 807C07E8 E036805C */ psq_l       f1, 0x5c(r22), 1, 0
/* 807C07EC F01B0000 */ psq_st      f0, 0(r27), 0, 0
/* 807C07F0 10020828 */ ps_sub      f0, f2, f1
/* 807C07F4 E0578000 */ psq_l       f2, 0(r23), 1, 0
/* 807C07F8 E03B8000 */ psq_l       f1, 0(r27), 1, 0
/* 807C07FC F01B8008 */ psq_st      f0, 8(r27), 1, 0
/* 807C0800 E01B0004 */ psq_l       f0, 4(r27), 0, 0
/* 807C0804 100000F2 */ ps_mul      f0, f0, f3
/* 807C0808 106100BA */ ps_madd     f3, f1, f2, f0
/* 807C080C 10030014 */ ps_sum0     f0, f3, f0, f0
/* 807C0810 FC00E040 */ fcmpo       cr0, f0, f28
/* 807C0814 4180000C */ blt-        lbl_807c0820
lbl_807c0818:
/* 807C0818 38600001 */ li          r3, 1
/* 807C081C 48000028 */ b           lbl_807c0844
lbl_807c0820:
/* 807C0820 80760068 */ lwz         r3, 0x68(r22)
/* 807C0824 38630002 */ addi        r3, r3, 2
/* 807C0828 90760068 */ stw         r3, 0x68(r22)
/* 807C082C A0030000 */ lhz         r0, 0(r3)
/* 807C0830 2C000000 */ cmpwi       r0, 0
/* 807C0834 4082FA58 */ bne+        lbl_807c028c
/* 807C0838 38000000 */ li          r0, 0
/* 807C083C 90160068 */ stw         r0, 0x68(r22)
/* 807C0840 38600000 */ li          r3, 0
lbl_807c0844:
/* 807C0844 E3E100C8 */ psq_l       f31, 0xc8(r1), 0, 0
/* 807C0848 CBE100C0 */ lfd         f31, 0xc0(r1)
/* 807C084C E3C100B8 */ psq_l       f30, 0xb8(r1), 0, 0
/* 807C0850 CBC100B0 */ lfd         f30, 0xb0(r1)
/* 807C0854 E3A100A8 */ psq_l       f29, 0xa8(r1), 0, 0
/* 807C0858 CBA100A0 */ lfd         f29, 0xa0(r1)
/* 807C085C E3810098 */ psq_l       f28, 0x98(r1), 0, 0
/* 807C0860 CB810090 */ lfd         f28, 0x90(r1)
/* 807C0864 E3610088 */ psq_l       f27, 0x88(r1), 0, 0
/* 807C0868 39610080 */ addi        r11, r1, 0x80
/* 807C086C CB610080 */ lfd         f27, 0x80(r1)
/* 807C0870 4B860D61 */ bl          _restgpr_20
/* 807C0874 800100D4 */ lwz         r0, 0xd4(r1)
/* 807C0878 7C0803A6 */ mtlr        r0
/* 807C087C 382100D0 */ addi        r1, r1, 0xd0
/* 807C0880 4E800020 */ blr         