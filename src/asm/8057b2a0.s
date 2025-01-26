nofralloc
/* 8057B2A0 9421FF30 */ stwu        r1, -0xd0(r1)
/* 8057B2A4 7C0802A6 */ mflr        r0
/* 8057B2A8 900100D4 */ stw         r0, 0xd4(r1)
/* 8057B2AC DBE100C0 */ stfd        f31, 0xc0(r1)
/* 8057B2B0 F3E100C8 */ psq_st      f31, 0xc8(r1), 0, 0
/* 8057B2B4 DBC100B0 */ stfd        f30, 0xb0(r1)
/* 8057B2B8 F3C100B8 */ psq_st      f30, 0xb8(r1), 0, 0
/* 8057B2BC 396100B0 */ addi        r11, r1, 0xb0
/* 8057B2C0 4BAA62E1 */ bl          _savegpr_27
/* 8057B2C4 A0030254 */ lhz         r0, 0x254(r3)
/* 8057B2C8 3FC0808B */ lis         r30, lbl_808b58f0@ha
/* 8057B2CC 3FE08089 */ lis         r31, lbl_80891a00@ha
/* 8057B2D0 80830000 */ lwz         r4, 0(r3)
/* 8057B2D4 5400062C */ rlwinm      r0, r0, 0, 0x18, 0x16
/* 8057B2D8 B0030254 */ sth         r0, 0x254(r3)
/* 8057B2DC FFC00890 */ fmr         f30, f1
/* 8057B2E0 7C7C1B78 */ mr          r28, r3
/* 8057B2E4 80840004 */ lwz         r4, 4(r4)
/* 8057B2E8 FFE01090 */ fmr         f31, f2
/* 8057B2EC 3BDE58F0 */ addi        r30, r30, lbl_808b58f0@l
/* 8057B2F0 3BFF1A00 */ addi        r31, r31, lbl_80891a00@l
/* 8057B2F4 80040004 */ lwz         r0, 4(r4)
/* 8057B2F8 54000463 */ rlwinm.     r0, r0, 0, 0x11, 0x11
/* 8057B2FC 4182044C */ beq-        lbl_8057b748
/* 8057B300 8004000C */ lwz         r0, 0xc(r4)
/* 8057B304 54000109 */ rlwinm.     r0, r0, 0, 4, 4
/* 8057B308 40820440 */ bne-        lbl_8057b748
/* 8057B30C 80840008 */ lwz         r4, 8(r4)
/* 8057B310 3B600001 */ li          r27, 1
/* 8057B314 548004E7 */ rlwinm.     r0, r4, 0, 0x13, 0x13
/* 8057B318 4082000C */ bne-        lbl_8057b324
/* 8057B31C 5480056B */ rlwinm.     r0, r4, 0, 0x15, 0x15
/* 8057B320 41820008 */ beq-        lbl_8057b328
lbl_8057b324:
/* 8057B324 3B600000 */ li          r27, 0
lbl_8057b328:
/* 8057B328 C01F0000 */ lfs         f0, 0(r31)
/* 8057B32C D003009C */ stfs        f0, 0x9c(r3)
/* 8057B330 80630000 */ lwz         r3, 0(r3)
/* 8057B334 80630004 */ lwz         r3, 4(r3)
/* 8057B338 80030008 */ lwz         r0, 8(r3)
/* 8057B33C 540007FF */ clrlwi.     r0, r0, 0x1f
/* 8057B340 40820040 */ bne-        lbl_8057b380
/* 8057B344 7F83E378 */ mr          r3, r28
/* 8057B348 389C005C */ addi        r4, r28, 0x5c
/* 8057B34C 48015949 */ bl          PlayerPointers_getBodyFront
/* 8057B350 C05C005C */ lfs         f2, 0x5c(r28)
/* 8057B354 C03C0060 */ lfs         f1, 0x60(r28)
/* 8057B358 C01C0064 */ lfs         f0, 0x64(r28)
/* 8057B35C D05C0074 */ stfs        f2, 0x74(r28)
/* 8057B360 D03C0078 */ stfs        f1, 0x78(r28)
/* 8057B364 D01C007C */ stfs        f0, 0x7c(r28)
/* 8057B368 D05C0050 */ stfs        f2, 0x50(r28)
/* 8057B36C D03C0054 */ stfs        f1, 0x54(r28)
/* 8057B370 D01C0058 */ stfs        f0, 0x58(r28)
/* 8057B374 D05C0080 */ stfs        f2, 0x80(r28)
/* 8057B378 D03C0084 */ stfs        f1, 0x84(r28)
/* 8057B37C D01C0088 */ stfs        f0, 0x88(r28)
lbl_8057b380:
/* 8057B380 2C1B0000 */ cmpwi       r27, 0
/* 8057B384 418203C4 */ beq-        lbl_8057b748
/* 8057B388 C01E020C */ lfs         f0, 0x20c(r30)
/* 8057B38C FC1F0040 */ fcmpo       cr0, f31, f0
/* 8057B390 408003B8 */ bge-        lbl_8057b748
/* 8057B394 C01C0020 */ lfs         f0, 0x20(r28)
/* 8057B398 7F83E378 */ mr          r3, r28
/* 8057B39C EFFE0028 */ fsubs       f31, f30, f0
/* 8057B3A0 4801547D */ bl          bodyColInfo__Q24Kart15KartObjectProxyCFv
/* 8057B3A4 C01F007C */ lfs         f0, 0x7c(r31)
/* 8057B3A8 3BA3001C */ addi        r29, r3, 0x1c
/* 8057B3AC FC1F0040 */ fcmpo       cr0, f31, f0
/* 8057B3B0 40810040 */ ble-        lbl_8057b3f0
/* 8057B3B4 7F83E378 */ mr          r3, r28
/* 8057B3B8 48015465 */ bl          bodyColInfo__Q24Kart15KartObjectProxyCFv
/* 8057B3BC 7C7B1B78 */ mr          r27, r3
/* 8057B3C0 7F83E378 */ mr          r3, r28
/* 8057B3C4 48014E49 */ bl          getPos__Q24Kart15KartObjectProxyCFv
/* 8057B3C8 7C641B78 */ mr          r4, r3
/* 8057B3CC 38610020 */ addi        r3, r1, 0x20
/* 8057B3D0 38BB001C */ addi        r5, r27, 0x1c
/* 8057B3D4 4BF99499 */ bl          VEC3_sub
/* 8057B3D8 7F83E378 */ mr          r3, r28
/* 8057B3DC 48015665 */ bl          kartModel__Q24Kart15KartObjectProxyFv
/* 8057B3E0 38810020 */ addi        r4, r1, 0x20
/* 8057B3E4 38A00000 */ li          r5, 0
/* 8057B3E8 38C00001 */ li          r6, 1
/* 8057B3EC 48258581 */ bl          unk_807d396c
lbl_8057b3f0:
/* 8057B3F0 C01F0070 */ lfs         f0, 0x70(r31)
/* 8057B3F4 FC1F0040 */ fcmpo       cr0, f31, f0
/* 8057B3F8 408102AC */ ble-        lbl_8057b6a4
/* 8057B3FC A01C0254 */ lhz         r0, 0x254(r28)
/* 8057B400 7F83E378 */ mr          r3, r28
/* 8057B404 60000100 */ ori         r0, r0, 0x100
/* 8057B408 B01C0254 */ sth         r0, 0x254(r28)
/* 8057B40C 48015411 */ bl          bodyColInfo__Q24Kart15KartObjectProxyCFv
/* 8057B410 7C7B1B78 */ mr          r27, r3
/* 8057B414 7F83E378 */ mr          r3, r28
/* 8057B418 48014DF5 */ bl          getPos__Q24Kart15KartObjectProxyCFv
/* 8057B41C C03B0040 */ lfs         f1, 0x40(r27)
/* 8057B420 38810074 */ addi        r4, r1, 0x74
/* 8057B424 C0030000 */ lfs         f0, 0(r3)
/* 8057B428 EC01002A */ fadds       f0, f1, f0
/* 8057B42C D0010080 */ stfs        f0, 0x80(r1)
/* 8057B430 C03B0044 */ lfs         f1, 0x44(r27)
/* 8057B434 C0030004 */ lfs         f0, 4(r3)
/* 8057B438 EC01002A */ fadds       f0, f1, f0
/* 8057B43C D0010084 */ stfs        f0, 0x84(r1)
/* 8057B440 C0030008 */ lfs         f0, 8(r3)
/* 8057B444 7F83E378 */ mr          r3, r28
/* 8057B448 C03B0048 */ lfs         f1, 0x48(r27)
/* 8057B44C EC01002A */ fadds       f0, f1, f0
/* 8057B450 D0010088 */ stfs        f0, 0x88(r1)
/* 8057B454 48015841 */ bl          PlayerPointers_getBodyFront
/* 8057B458 7F83E378 */ mr          r3, r28
/* 8057B45C 38810068 */ addi        r4, r1, 0x68
/* 8057B460 4801580D */ bl          unk_80590c6c
/* 8057B464 C0A10068 */ lfs         f5, 0x68(r1)
/* 8057B468 C03B0040 */ lfs         f1, 0x40(r27)
/* 8057B46C C0C1006C */ lfs         f6, 0x6c(r1)
/* 8057B470 C01B0044 */ lfs         f0, 0x44(r27)
/* 8057B474 EC250072 */ fmuls       f1, f5, f1
/* 8057B478 C0E10070 */ lfs         f7, 0x70(r1)
/* 8057B47C EC060032 */ fmuls       f0, f6, f0
/* 8057B480 C05B0048 */ lfs         f2, 0x48(r27)
/* 8057B484 C11E0218 */ lfs         f8, 0x218(r30)
/* 8057B488 EC8700B2 */ fmuls       f4, f7, f2
/* 8057B48C C07F001C */ lfs         f3, 0x1c(r31)
/* 8057B490 EC01002A */ fadds       f0, f1, f0
/* 8057B494 C0410080 */ lfs         f2, 0x80(r1)
/* 8057B498 FC08F840 */ fcmpo       cr0, f8, f31
/* 8057B49C C0210084 */ lfs         f1, 0x84(r1)
/* 8057B4A0 EC84002A */ fadds       f4, f4, f0
/* 8057B4A4 C0010088 */ lfs         f0, 0x88(r1)
/* 8057B4A8 FC802050 */ fneg        f4, f4
/* 8057B4AC EC630132 */ fmuls       f3, f3, f4
/* 8057B4B0 ECA30172 */ fmuls       f5, f3, f5
/* 8057B4B4 EC8301B2 */ fmuls       f4, f3, f6
/* 8057B4B8 EC6301F2 */ fmuls       f3, f3, f7
/* 8057B4BC D0A1005C */ stfs        f5, 0x5c(r1)
/* 8057B4C0 EC422828 */ fsubs       f2, f2, f5
/* 8057B4C4 EC212028 */ fsubs       f1, f1, f4
/* 8057B4C8 D0810060 */ stfs        f4, 0x60(r1)
/* 8057B4CC EC001828 */ fsubs       f0, f0, f3
/* 8057B4D0 D0610064 */ stfs        f3, 0x64(r1)
/* 8057B4D4 D0410080 */ stfs        f2, 0x80(r1)
/* 8057B4D8 D0210084 */ stfs        f1, 0x84(r1)
/* 8057B4DC D0010088 */ stfs        f0, 0x88(r1)
/* 8057B4E0 40800008 */ bge-        lbl_8057b4e8
/* 8057B4E4 FFE04090 */ fmr         f31, f8
lbl_8057b4e8:
/* 8057B4E8 C01D0000 */ lfs         f0, 0(r29)
/* 8057B4EC EC1F0032 */ fmuls       f0, f31, f0
/* 8057B4F0 D0010050 */ stfs        f0, 0x50(r1)
/* 8057B4F4 EC200032 */ fmuls       f1, f0, f0
/* 8057B4F8 C01D0004 */ lfs         f0, 4(r29)
/* 8057B4FC EC1F0032 */ fmuls       f0, f31, f0
/* 8057B500 D0010054 */ stfs        f0, 0x54(r1)
/* 8057B504 EC000032 */ fmuls       f0, f0, f0
/* 8057B508 C05D0008 */ lfs         f2, 8(r29)
/* 8057B50C EC5F00B2 */ fmuls       f2, f31, f2
/* 8057B510 EC01002A */ fadds       f0, f1, f0
/* 8057B514 D0410058 */ stfs        f2, 0x58(r1)
/* 8057B518 EC2200B2 */ fmuls       f1, f2, f2
/* 8057B51C EC21002A */ fadds       f1, f1, f0
/* 8057B520 4BCB42ED */ bl          sqrt__Q23EGG5MathfFf
/* 8057B524 38610044 */ addi        r3, r1, 0x44
/* 8057B528 38810038 */ addi        r4, r1, 0x38
/* 8057B52C 38A10050 */ addi        r5, r1, 0x50
/* 8057B530 38DC0074 */ addi        r6, r28, 0x74
/* 8057B534 480336F1 */ bl          projAndRej__6RKGeomFRQ23EGG8Vector3fRQ23EGG8Vector3fRCQ23EGG8Vector3fRCQ23EGG8Vector3f
/* 8057B538 C07E0210 */ lfs         f3, 0x210(r30)
/* 8057B53C C0410044 */ lfs         f2, 0x44(r1)
/* 8057B540 C0210048 */ lfs         f1, 0x48(r1)
/* 8057B544 ECA200F2 */ fmuls       f5, f2, f3
/* 8057B548 C001004C */ lfs         f0, 0x4c(r1)
/* 8057B54C EC8100F2 */ fmuls       f4, f1, f3
/* 8057B550 C0DE0214 */ lfs         f6, 0x214(r30)
/* 8057B554 EC6000F2 */ fmuls       f3, f0, f3
/* 8057B558 C0410038 */ lfs         f2, 0x38(r1)
/* 8057B55C C021003C */ lfs         f1, 0x3c(r1)
/* 8057B560 EC4201B2 */ fmuls       f2, f2, f6
/* 8057B564 C0010040 */ lfs         f0, 0x40(r1)
/* 8057B568 EC2101B2 */ fmuls       f1, f1, f6
/* 8057B56C D0A10044 */ stfs        f5, 0x44(r1)
/* 8057B570 EC0001B2 */ fmuls       f0, f0, f6
/* 8057B574 D0810048 */ stfs        f4, 0x48(r1)
/* 8057B578 D061004C */ stfs        f3, 0x4c(r1)
/* 8057B57C D0410038 */ stfs        f2, 0x38(r1)
/* 8057B580 D021003C */ stfs        f1, 0x3c(r1)
/* 8057B584 D0010040 */ stfs        f0, 0x40(r1)
/* 8057B588 807C0000 */ lwz         r3, 0(r28)
/* 8057B58C 80630004 */ lwz         r3, 4(r3)
/* 8057B590 80030004 */ lwz         r0, 4(r3)
/* 8057B594 540002D7 */ rlwinm.     r0, r0, 0, 0xb, 0xb
/* 8057B598 41820020 */ beq-        lbl_8057b5b8
/* 8057B59C C01F0000 */ lfs         f0, 0(r31)
/* 8057B5A0 D001004C */ stfs        f0, 0x4c(r1)
/* 8057B5A4 D0010048 */ stfs        f0, 0x48(r1)
/* 8057B5A8 D0010044 */ stfs        f0, 0x44(r1)
/* 8057B5AC D0010040 */ stfs        f0, 0x40(r1)
/* 8057B5B0 D001003C */ stfs        f0, 0x3c(r1)
/* 8057B5B4 D0010038 */ stfs        f0, 0x38(r1)
lbl_8057b5b8:
/* 8057B5B8 C0610074 */ lfs         f3, 0x74(r1)
/* 8057B5BC C05D0000 */ lfs         f2, 0(r29)
/* 8057B5C0 C0210078 */ lfs         f1, 0x78(r1)
/* 8057B5C4 C01D0004 */ lfs         f0, 4(r29)
/* 8057B5C8 EC4300B2 */ fmuls       f2, f3, f2
/* 8057B5CC C081007C */ lfs         f4, 0x7c(r1)
/* 8057B5D0 EC210032 */ fmuls       f1, f1, f0
/* 8057B5D4 C07D0008 */ lfs         f3, 8(r29)
/* 8057B5D8 C01F0000 */ lfs         f0, 0(r31)
/* 8057B5DC EC6400F2 */ fmuls       f3, f4, f3
/* 8057B5E0 EC22082A */ fadds       f1, f2, f1
/* 8057B5E4 EC23082A */ fadds       f1, f3, f1
/* 8057B5E8 FC010040 */ fcmpo       cr0, f1, f0
/* 8057B5EC 40810010 */ ble-        lbl_8057b5fc
/* 8057B5F0 D001004C */ stfs        f0, 0x4c(r1)
/* 8057B5F4 D0010048 */ stfs        f0, 0x48(r1)
/* 8057B5F8 D0010044 */ stfs        f0, 0x44(r1)
lbl_8057b5fc:
/* 8057B5FC C07E0214 */ lfs         f3, 0x214(r30)
/* 8057B600 7F83E378 */ mr          r3, r28
/* 8057B604 C0410038 */ lfs         f2, 0x38(r1)
/* 8057B608 C021003C */ lfs         f1, 0x3c(r1)
/* 8057B60C C0010040 */ lfs         f0, 0x40(r1)
/* 8057B610 EC4200F2 */ fmuls       f2, f2, f3
/* 8057B614 EC2100F2 */ fmuls       f1, f1, f3
/* 8057B618 EC0000F2 */ fmuls       f0, f0, f3
/* 8057B61C D0410038 */ stfs        f2, 0x38(r1)
/* 8057B620 D021003C */ stfs        f1, 0x3c(r1)
/* 8057B624 D0010040 */ stfs        f0, 0x40(r1)
/* 8057B628 4801524D */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 8057B62C A01C0254 */ lhz         r0, 0x254(r28)
/* 8057B630 C3E30014 */ lfs         f31, 0x14(r3)
/* 8057B634 540007BD */ rlwinm.     r0, r0, 0, 0x1e, 0x1e
/* 8057B638 41820008 */ beq-        lbl_8057b640
/* 8057B63C C3FF0000 */ lfs         f31, 0(r31)
lbl_8057b640:
/* 8057B640 C0210044 */ lfs         f1, 0x44(r1)
/* 8057B644 C0010038 */ lfs         f0, 0x38(r1)
/* 8057B648 C0610048 */ lfs         f3, 0x48(r1)
/* 8057B64C EC81002A */ fadds       f4, f1, f0
/* 8057B650 C041003C */ lfs         f2, 0x3c(r1)
/* 8057B654 C021004C */ lfs         f1, 0x4c(r1)
/* 8057B658 C0010040 */ lfs         f0, 0x40(r1)
/* 8057B65C EC43102A */ fadds       f2, f3, f2
/* 8057B660 D081002C */ stfs        f4, 0x2c(r1)
/* 8057B664 EC01002A */ fadds       f0, f1, f0
/* 8057B668 D0410030 */ stfs        f2, 0x30(r1)
/* 8057B66C D0010034 */ stfs        f0, 0x34(r1)
/* 8057B670 807C0000 */ lwz         r3, 0(r28)
/* 8057B674 80630004 */ lwz         r3, 4(r3)
/* 8057B678 80030004 */ lwz         r0, 4(r3)
/* 8057B67C 5400035B */ rlwinm.     r0, r0, 0, 0xd, 0xd
/* 8057B680 40820008 */ bne-        lbl_8057b688
/* 8057B684 C3FF0000 */ lfs         f31, 0(r31)
lbl_8057b688:
/* 8057B688 7F83E378 */ mr          r3, r28
/* 8057B68C 48014D41 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057B690 FC20F890 */ fmr         f1, f31
/* 8057B694 38810080 */ addi        r4, r1, 0x80
/* 8057B698 38A1002C */ addi        r5, r1, 0x2c
/* 8057B69C 4803A64D */ bl          applyWrenchScaled__Q24Kart12KartDynamicsFRCQ23EGG8Vector3fRCQ23EGG8Vector3ff
/* 8057B6A0 48000050 */ b           lbl_8057b6f0
lbl_8057b6a4:
/* 8057B6A4 7F83E378 */ mr          r3, r28
/* 8057B6A8 48015B01 */ bl          unk_805911a8
/* 8057B6AC 2C03001E */ cmpwi       r3, 0x1e
/* 8057B6B0 40820040 */ bne-        lbl_8057b6f0
/* 8057B6B4 7F83E378 */ mr          r3, r28
/* 8057B6B8 48015B09 */ bl          unk_805911c0
/* 8057B6BC 2C030002 */ cmpwi       r3, 2
/* 8057B6C0 40820030 */ bne-        lbl_8057b6f0
/* 8057B6C4 C03E007C */ lfs         f1, 0x7c(r30)
/* 8057B6C8 7FA4EB78 */ mr          r4, r29
/* 8057B6CC 38610014 */ addi        r3, r1, 0x14
/* 8057B6D0 4BF99141 */ bl          Vec3_scale
/* 8057B6D4 7F83E378 */ mr          r3, r28
/* 8057B6D8 48014CF5 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057B6DC 38810014 */ addi        r4, r1, 0x14
/* 8057B6E0 4803ACA9 */ bl          addForce__Q24Kart12KartDynamicsFRCQ23EGG8Vector3f
/* 8057B6E4 7F83E378 */ mr          r3, r28
/* 8057B6E8 48015165 */ bl          kartCollide__Q24Kart15KartObjectProxyFv
/* 8057B6EC 4BFF5CED */ bl          unk_805713d8
lbl_8057b6f0:
/* 8057B6F0 7F83E378 */ mr          r3, r28
/* 8057B6F4 48015AB5 */ bl          unk_805911a8
/* 8057B6F8 2C03001E */ cmpwi       r3, 0x1e
/* 8057B6FC 4082004C */ bne-        lbl_8057b748
/* 8057B700 7F83E378 */ mr          r3, r28
/* 8057B704 48015ABD */ bl          unk_805911c0
/* 8057B708 2C030000 */ cmpwi       r3, 0
/* 8057B70C 4082003C */ bne-        lbl_8057b748
/* 8057B710 C03E007C */ lfs         f1, 0x7c(r30)
/* 8057B714 7FA4EB78 */ mr          r4, r29
/* 8057B718 38610008 */ addi        r3, r1, 8
/* 8057B71C 4BF990F5 */ bl          Vec3_scale
/* 8057B720 7F83E378 */ mr          r3, r28
/* 8057B724 48014CA9 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057B728 38810008 */ addi        r4, r1, 8
/* 8057B72C 4803AC5D */ bl          addForce__Q24Kart12KartDynamicsFRCQ23EGG8Vector3f
/* 8057B730 7F83E378 */ mr          r3, r28
/* 8057B734 48015119 */ bl          kartCollide__Q24Kart15KartObjectProxyFv
/* 8057B738 4BFF5CA1 */ bl          unk_805713d8
/* 8057B73C 7F83E378 */ mr          r3, r28
/* 8057B740 48015055 */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 8057B744 4818F959 */ bl          unk_8070b09c
lbl_8057b748:
/* 8057B748 A01C0254 */ lhz         r0, 0x254(r28)
/* 8057B74C 5400066E */ rlwinm      r0, r0, 0, 0x19, 0x17
/* 8057B750 B01C0254 */ sth         r0, 0x254(r28)
/* 8057B754 E3E100C8 */ psq_l       f31, 0xc8(r1), 0, 0
/* 8057B758 CBE100C0 */ lfd         f31, 0xc0(r1)
/* 8057B75C E3C100B8 */ psq_l       f30, 0xb8(r1), 0, 0
/* 8057B760 CBC100B0 */ lfd         f30, 0xb0(r1)
/* 8057B764 396100B0 */ addi        r11, r1, 0xb0
/* 8057B768 4BAA5E85 */ bl          _restgpr_27
/* 8057B76C 800100D4 */ lwz         r0, 0xd4(r1)
/* 8057B770 7C0803A6 */ mtlr        r0
/* 8057B774 382100D0 */ addi        r1, r1, 0xd0
/* 8057B778 4E800020 */ blr         