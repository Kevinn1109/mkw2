nofralloc
/* 8057D398 9421FF90 */ stwu        r1, -0x70(r1)
/* 8057D39C 7C0802A6 */ mflr        r0
/* 8057D3A0 90010074 */ stw         r0, 0x74(r1)
/* 8057D3A4 DBE10060 */ stfd        f31, 0x60(r1)
/* 8057D3A8 F3E10068 */ psq_st      f31, 0x68(r1), 0, 0
/* 8057D3AC DBC10050 */ stfd        f30, 0x50(r1)
/* 8057D3B0 F3C10058 */ psq_st      f30, 0x58(r1), 0, 0
/* 8057D3B4 93E1004C */ stw         r31, 0x4c(r1)
/* 8057D3B8 3FE08089 */ lis         r31, lbl_80891a00@ha
/* 8057D3BC 3BFF1A00 */ addi        r31, r31, lbl_80891a00@l
/* 8057D3C0 93C10048 */ stw         r30, 0x48(r1)
/* 8057D3C4 3FC0808B */ lis         r30, lbl_808b58f0@ha
/* 8057D3C8 3BDE58F0 */ addi        r30, r30, lbl_808b58f0@l
/* 8057D3CC 93A10044 */ stw         r29, 0x44(r1)
/* 8057D3D0 7C7D1B78 */ mr          r29, r3
/* 8057D3D4 93810040 */ stw         r28, 0x40(r1)
/* 8057D3D8 80830000 */ lwz         r4, 0(r3)
/* 8057D3DC 80A40004 */ lwz         r5, 4(r4)
/* 8057D3E0 80850028 */ lwz         r4, 0x28(r5)
/* 8057D3E4 8005002C */ lwz         r0, 0x2c(r5)
/* 8057D3E8 90010030 */ stw         r0, 0x30(r1)
/* 8057D3EC 9081002C */ stw         r4, 0x2c(r1)
/* 8057D3F0 80050030 */ lwz         r0, 0x30(r5)
/* 8057D3F4 90010034 */ stw         r0, 0x34(r1)
/* 8057D3F8 48012EF5 */ bl          PlayerPointers_getWheelCount1
/* 8057D3FC 80BD0000 */ lwz         r5, 0(r29)
/* 8057D400 38000000 */ li          r0, 0
/* 8057D404 C3FE0034 */ lfs         f31, 0x34(r30)
/* 8057D408 38600000 */ li          r3, 0
/* 8057D40C 80850004 */ lwz         r4, 4(r5)
/* 8057D410 80840004 */ lwz         r4, 4(r4)
/* 8057D414 981D0098 */ stb         r0, 0x98(r29)
/* 8057D418 549C77FE */ rlwinm      r28, r4, 0xe, 0x1f, 0x1f
/* 8057D41C 80850004 */ lwz         r4, 4(r5)
/* 8057D420 8004000C */ lwz         r0, 0xc(r4)
/* 8057D424 54000109 */ rlwinm.     r0, r0, 0, 4, 4
/* 8057D428 41820010 */ beq-        lbl_8057d438
/* 8057D42C 7FA3EB78 */ mr          r3, r29
/* 8057D430 480141E9 */ bl          kartAccessor_60__Q24Kart15KartObjectProxyFv
/* 8057D434 4801FC8D */ bl          unk_8059d0c0
lbl_8057d438:
/* 8057D438 2C030000 */ cmpwi       r3, 0
/* 8057D43C 41820078 */ beq-        lbl_8057d4b4
/* 8057D440 C01D01A0 */ lfs         f0, 0x1a0(r29)
/* 8057D444 387D0038 */ addi        r3, r29, 0x38
/* 8057D448 C0BD003C */ lfs         f5, 0x3c(r29)
/* 8057D44C C03D019C */ lfs         f1, 0x19c(r29)
/* 8057D450 C0DD0038 */ lfs         f6, 0x38(r29)
/* 8057D454 EC402828 */ fsubs       f2, f0, f5
/* 8057D458 C01D01A4 */ lfs         f0, 0x1a4(r29)
/* 8057D45C C09D0040 */ lfs         f4, 0x40(r29)
/* 8057D460 EC213028 */ fsubs       f1, f1, f6
/* 8057D464 C0FD0198 */ lfs         f7, 0x198(r29)
/* 8057D468 EC602028 */ fsubs       f3, f0, f4
/* 8057D46C EC2101F2 */ fmuls       f1, f1, f7
/* 8057D470 EC0201F2 */ fmuls       f0, f2, f7
/* 8057D474 EC6301F2 */ fmuls       f3, f3, f7
/* 8057D478 D0210014 */ stfs        f1, 0x14(r1)
/* 8057D47C EC46082A */ fadds       f2, f6, f1
/* 8057D480 EC25002A */ fadds       f1, f5, f0
/* 8057D484 D0010018 */ stfs        f0, 0x18(r1)
/* 8057D488 EC04182A */ fadds       f0, f4, f3
/* 8057D48C D061001C */ stfs        f3, 0x1c(r1)
/* 8057D490 D05D0038 */ stfs        f2, 0x38(r29)
/* 8057D494 D03D003C */ stfs        f1, 0x3c(r29)
/* 8057D498 D01D0040 */ stfs        f0, 0x40(r29)
/* 8057D49C 4BCC6641 */ bl          normalise__Q23EGG8Vector3fFv
/* 8057D4A0 C3DD0198 */ lfs         f30, 0x198(r29)
/* 8057D4A4 7FA3EB78 */ mr          r3, r29
/* 8057D4A8 48012F25 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057D4AC D3C30178 */ stfs        f30, 0x178(r3)
/* 8057D4B0 48000350 */ b           lbl_8057d800
lbl_8057d4b4:
/* 8057D4B4 809D0000 */ lwz         r4, 0(r29)
/* 8057D4B8 80640004 */ lwz         r3, 4(r4)
/* 8057D4BC 80A30004 */ lwz         r5, 4(r3)
/* 8057D4C0 54A005AD */ rlwinm.     r0, r5, 0, 0x16, 0x16
/* 8057D4C4 41820068 */ beq-        lbl_8057d52c
/* 8057D4C8 807D0218 */ lwz         r3, 0x218(r29)
/* 8057D4CC A81E003C */ lha         r0, 0x3c(r30)
/* 8057D4D0 7C030040 */ cmplw       r3, r0
/* 8057D4D4 41800058 */ blt-        lbl_8057d52c
/* 8057D4D8 C041002C */ lfs         f2, 0x2c(r1)
/* 8057D4DC 38BD0038 */ addi        r5, r29, 0x38
/* 8057D4E0 D05D0038 */ stfs        f2, 0x38(r29)
/* 8057D4E4 387D0050 */ addi        r3, r29, 0x50
/* 8057D4E8 389D005C */ addi        r4, r29, 0x5c
/* 8057D4EC 38C00001 */ li          r6, 1
/* 8057D4F0 C0210030 */ lfs         f1, 0x30(r1)
/* 8057D4F4 D03D003C */ stfs        f1, 0x3c(r29)
/* 8057D4F8 C0010034 */ lfs         f0, 0x34(r1)
/* 8057D4FC D01D0040 */ stfs        f0, 0x40(r29)
/* 8057D500 D05D0044 */ stfs        f2, 0x44(r29)
/* 8057D504 D03D0048 */ stfs        f1, 0x48(r29)
/* 8057D508 D01D004C */ stfs        f0, 0x4c(r29)
/* 8057D50C 480314E1 */ bl          VEC3_perpInPlane
/* 8057D510 389D0050 */ addi        r4, r29, 0x50
/* 8057D514 387D008C */ addi        r3, r29, 0x8c
/* 8057D518 7C852378 */ mr          r5, r4
/* 8057D51C 4803166D */ bl          projUnit__6RKGeomFRQ23EGG8Vector3fRCQ23EGG8Vector3fRCQ23EGG8Vector3f
/* 8057D520 38000001 */ li          r0, 1
/* 8057D524 981D0098 */ stb         r0, 0x98(r29)
/* 8057D528 480002CC */ b           lbl_8057d7f4
lbl_8057d52c:
/* 8057D52C 54A00319 */ rlwinm.     r0, r5, 0, 0xc, 0xc
/* 8057D530 38000000 */ li          r0, 0
/* 8057D534 41820018 */ beq-        lbl_8057d54c
/* 8057D538 C03D022C */ lfs         f1, 0x22c(r29)
/* 8057D53C C01F0000 */ lfs         f0, 0(r31)
/* 8057D540 FC010040 */ fcmpo       cr0, f1, f0
/* 8057D544 40810008 */ ble-        lbl_8057d54c
/* 8057D548 38000001 */ li          r0, 1
lbl_8057d54c:
/* 8057D54C 2C000000 */ cmpwi       r0, 0
/* 8057D550 41820010 */ beq-        lbl_8057d560
/* 8057D554 807D0284 */ lwz         r3, 0x284(r29)
/* 8057D558 C3E30004 */ lfs         f31, 4(r3)
/* 8057D55C 48000298 */ b           lbl_8057d7f4
lbl_8057d560:
/* 8057D560 2C1C0000 */ cmpwi       r28, 0
/* 8057D564 41820278 */ beq-        lbl_8057d7dc
/* 8057D568 A01D0254 */ lhz         r0, 0x254(r29)
/* 8057D56C 3B800000 */ li          r28, 0
/* 8057D570 54000673 */ rlwinm.     r0, r0, 0, 0x19, 0x19
/* 8057D574 40820014 */ bne-        lbl_8057d588
/* 8057D578 80640004 */ lwz         r3, 4(r4)
/* 8057D57C A80300A6 */ lha         r0, 0xa6(r3)
/* 8057D580 2C000000 */ cmpwi       r0, 0
/* 8057D584 40810064 */ ble-        lbl_8057d5e8
lbl_8057d588:
/* 8057D588 C061002C */ lfs         f3, 0x2c(r1)
/* 8057D58C C05D005C */ lfs         f2, 0x5c(r29)
/* 8057D590 C0210030 */ lfs         f1, 0x30(r1)
/* 8057D594 C01D0060 */ lfs         f0, 0x60(r29)
/* 8057D598 EC4300B2 */ fmuls       f2, f3, f2
/* 8057D59C C0810034 */ lfs         f4, 0x34(r1)
/* 8057D5A0 EC210032 */ fmuls       f1, f1, f0
/* 8057D5A4 C07D0064 */ lfs         f3, 0x64(r29)
/* 8057D5A8 C01F0000 */ lfs         f0, 0(r31)
/* 8057D5AC EC6400F2 */ fmuls       f3, f4, f3
/* 8057D5B0 EC22082A */ fadds       f1, f2, f1
/* 8057D5B4 EC23082A */ fadds       f1, f3, f1
/* 8057D5B8 FC010040 */ fcmpo       cr0, f1, f0
/* 8057D5BC 4081002C */ ble-        lbl_8057d5e8
/* 8057D5C0 C03D0020 */ lfs         f1, 0x20(r29)
/* 8057D5C4 C01F00A8 */ lfs         f0, 0xa8(r31)
/* 8057D5C8 FC010040 */ fcmpo       cr0, f1, f0
/* 8057D5CC 4081001C */ ble-        lbl_8057d5e8
/* 8057D5D0 7FA3EB78 */ mr          r3, r29
/* 8057D5D4 48013279 */ bl          kartCollide__Q24Kart15KartObjectProxyFv
/* 8057D5D8 8003002C */ lwz         r0, 0x2c(r3)
/* 8057D5DC 540004E7 */ rlwinm.     r0, r0, 0, 0x13, 0x13
/* 8057D5E0 41820008 */ beq-        lbl_8057d5e8
/* 8057D5E4 3B800001 */ li          r28, 1
lbl_8057d5e8:
/* 8057D5E8 2C1C0000 */ cmpwi       r28, 0
/* 8057D5EC 40820020 */ bne-        lbl_8057d60c
/* 8057D5F0 C001002C */ lfs         f0, 0x2c(r1)
/* 8057D5F4 D01D0044 */ stfs        f0, 0x44(r29)
/* 8057D5F8 C0010030 */ lfs         f0, 0x30(r1)
/* 8057D5FC D01D0048 */ stfs        f0, 0x48(r29)
/* 8057D600 C0010034 */ lfs         f0, 0x34(r1)
/* 8057D604 D01D004C */ stfs        f0, 0x4c(r29)
/* 8057D608 4800001C */ b           lbl_8057d624
lbl_8057d60c:
/* 8057D60C C01D0044 */ lfs         f0, 0x44(r29)
/* 8057D610 D001002C */ stfs        f0, 0x2c(r1)
/* 8057D614 C01D0048 */ lfs         f0, 0x48(r29)
/* 8057D618 D0010030 */ stfs        f0, 0x30(r1)
/* 8057D61C C01D004C */ lfs         f0, 0x4c(r29)
/* 8057D620 D0010034 */ stfs        f0, 0x34(r1)
lbl_8057d624:
/* 8057D624 807D0000 */ lwz         r3, 0(r29)
/* 8057D628 C3DE0004 */ lfs         f30, 4(r30)
/* 8057D62C 80630004 */ lwz         r3, 4(r3)
/* 8057D630 80830008 */ lwz         r4, 8(r3)
/* 8057D634 548005AD */ rlwinm.     r0, r4, 0, 0x16, 0x16
/* 8057D638 40820040 */ bne-        lbl_8057d678
/* 8057D63C 80630004 */ lwz         r3, 4(r3)
/* 8057D640 546002D7 */ rlwinm.     r0, r3, 0, 0xb, 0xb
/* 8057D644 408200A0 */ bne-        lbl_8057d6e4
/* 8057D648 54600001 */ rlwinm.     r0, r3, 0, 0, 0
/* 8057D64C 40820098 */ bne-        lbl_8057d6e4
/* 8057D650 54600085 */ rlwinm.     r0, r3, 0, 2, 2
/* 8057D654 40820090 */ bne-        lbl_8057d6e4
/* 8057D658 5480056B */ rlwinm.     r0, r4, 0, 0x15, 0x15
/* 8057D65C 40820088 */ bne-        lbl_8057d6e4
/* 8057D660 548004A5 */ rlwinm.     r0, r4, 0, 0x12, 0x12
/* 8057D664 41820014 */ beq-        lbl_8057d678
/* 8057D668 A87D012C */ lha         r3, 0x12c(r29)
/* 8057D66C A81E000C */ lha         r0, 0xc(r30)
/* 8057D670 7C030000 */ cmpw        r3, r0
/* 8057D674 40810070 */ ble-        lbl_8057d6e4
lbl_8057d678:
/* 8057D678 7FA3EB78 */ mr          r3, r29
/* 8057D67C 48013669 */ bl          PlayerPointers_getMalCol2
/* 8057D680 C061002C */ lfs         f3, 0x2c(r1)
/* 8057D684 C0430000 */ lfs         f2, 0(r3)
/* 8057D688 C0210030 */ lfs         f1, 0x30(r1)
/* 8057D68C C0030004 */ lfs         f0, 4(r3)
/* 8057D690 EC4300B2 */ fmuls       f2, f3, f2
/* 8057D694 C0810034 */ lfs         f4, 0x34(r1)
/* 8057D698 EC210032 */ fmuls       f1, f1, f0
/* 8057D69C C0630008 */ lfs         f3, 8(r3)
/* 8057D6A0 C01E0008 */ lfs         f0, 8(r30)
/* 8057D6A4 EC6400F2 */ fmuls       f3, f4, f3
/* 8057D6A8 C09E0000 */ lfs         f4, 0(r30)
/* 8057D6AC EC22082A */ fadds       f1, f2, f1
/* 8057D6B0 C05E0004 */ lfs         f2, 4(r30)
/* 8057D6B4 EC23082A */ fadds       f1, f3, f1
/* 8057D6B8 FC200A10 */ fabs        f1, f1
/* 8057D6BC FC200A10 */ fabs        f1, f1
/* 8057D6C0 EC000072 */ fmuls       f0, f0, f1
/* 8057D6C4 EFDE0028 */ fsubs       f30, f30, f0
/* 8057D6C8 FC04F040 */ fcmpo       cr0, f4, f30
/* 8057D6CC 4081000C */ ble-        lbl_8057d6d8
/* 8057D6D0 FFC02090 */ fmr         f30, f4
/* 8057D6D4 48000010 */ b           lbl_8057d6e4
lbl_8057d6d8:
/* 8057D6D8 FC02F040 */ fcmpo       cr0, f2, f30
/* 8057D6DC 40800008 */ bge-        lbl_8057d6e4
/* 8057D6E0 FFC01090 */ fmr         f30, f2
lbl_8057d6e4:
/* 8057D6E4 C021002C */ lfs         f1, 0x2c(r1)
/* 8057D6E8 387D0038 */ addi        r3, r29, 0x38
/* 8057D6EC C0FD0038 */ lfs         f7, 0x38(r29)
/* 8057D6F0 C0010030 */ lfs         f0, 0x30(r1)
/* 8057D6F4 EC613828 */ fsubs       f3, f1, f7
/* 8057D6F8 C0DD003C */ lfs         f6, 0x3c(r29)
/* 8057D6FC C0210034 */ lfs         f1, 0x34(r1)
/* 8057D700 EC403028 */ fsubs       f2, f0, f6
/* 8057D704 C0BD0040 */ lfs         f5, 0x40(r29)
/* 8057D708 EC0307B2 */ fmuls       f0, f3, f30
/* 8057D70C EC212828 */ fsubs       f1, f1, f5
/* 8057D710 EC8207B2 */ fmuls       f4, f2, f30
/* 8057D714 D0010008 */ stfs        f0, 8(r1)
/* 8057D718 EC47002A */ fadds       f2, f7, f0
/* 8057D71C EC6107B2 */ fmuls       f3, f1, f30
/* 8057D720 D081000C */ stfs        f4, 0xc(r1)
/* 8057D724 EC26202A */ fadds       f1, f6, f4
/* 8057D728 D0610010 */ stfs        f3, 0x10(r1)
/* 8057D72C EC05182A */ fadds       f0, f5, f3
/* 8057D730 D05D0038 */ stfs        f2, 0x38(r29)
/* 8057D734 D03D003C */ stfs        f1, 0x3c(r29)
/* 8057D738 D01D0040 */ stfs        f0, 0x40(r29)
/* 8057D73C 4BCC63A1 */ bl          normalise__Q23EGG8Vector3fFv
/* 8057D740 7FA3EB78 */ mr          r3, r29
/* 8057D744 38810020 */ addi        r4, r1, 0x20
/* 8057D748 4801354D */ bl          PlayerPointers_getBodyFront
/* 8057D74C C0610020 */ lfs         f3, 0x20(r1)
/* 8057D750 C05D0038 */ lfs         f2, 0x38(r29)
/* 8057D754 C0210024 */ lfs         f1, 0x24(r1)
/* 8057D758 C01D003C */ lfs         f0, 0x3c(r29)
/* 8057D75C EC4300B2 */ fmuls       f2, f3, f2
/* 8057D760 C0810028 */ lfs         f4, 0x28(r1)
/* 8057D764 EC210032 */ fmuls       f1, f1, f0
/* 8057D768 C07D0040 */ lfs         f3, 0x40(r29)
/* 8057D76C C01F00AC */ lfs         f0, 0xac(r31)
/* 8057D770 EC6400F2 */ fmuls       f3, f4, f3
/* 8057D774 C0BF0000 */ lfs         f5, 0(r31)
/* 8057D778 EC22082A */ fadds       f1, f2, f1
/* 8057D77C EC83082A */ fadds       f4, f3, f1
/* 8057D780 FC040040 */ fcmpo       cr0, f4, f0
/* 8057D784 40800038 */ bge-        lbl_8057d7bc
/* 8057D788 FC602210 */ fabs        f3, f4
/* 8057D78C C05F0040 */ lfs         f2, 0x40(r31)
/* 8057D790 FC002890 */ fmr         f0, f5
/* 8057D794 C03F001C */ lfs         f1, 0x1c(r31)
/* 8057D798 EC431028 */ fsubs       f2, f3, f2
/* 8057D79C FC040040 */ fcmpo       cr0, f4, f0
/* 8057D7A0 ECA100B2 */ fmuls       f5, f1, f2
/* 8057D7A4 40800018 */ bge-        lbl_8057d7bc
/* 8057D7A8 ECA100F2 */ fmuls       f5, f1, f3
/* 8057D7AC C01F00B0 */ lfs         f0, 0xb0(r31)
/* 8057D7B0 FC002840 */ fcmpo       cr0, f0, f5
/* 8057D7B4 40800008 */ bge-        lbl_8057d7bc
/* 8057D7B8 FCA00090 */ fmr         f5, f0
lbl_8057d7bc:
/* 8057D7BC EFFF282A */ fadds       f31, f31, f5
/* 8057D7C0 7FA3EB78 */ mr          r3, r29
/* 8057D7C4 48013089 */ bl          kartCollide__Q24Kart15KartObjectProxyFv
/* 8057D7C8 8003002C */ lwz         r0, 0x2c(r3)
/* 8057D7CC 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 8057D7D0 41820024 */ beq-        lbl_8057d7f4
/* 8057D7D4 C3FE0038 */ lfs         f31, 0x38(r30)
/* 8057D7D8 4800001C */ b           lbl_8057d7f4
lbl_8057d7dc:
/* 8057D7DC 819D000C */ lwz         r12, 0xc(r29)
/* 8057D7E0 7FA3EB78 */ mr          r3, r29
/* 8057D7E4 3881002C */ addi        r4, r1, 0x2c
/* 8057D7E8 818C0048 */ lwz         r12, 0x48(r12)
/* 8057D7EC 7D8903A6 */ mtctr       r12
/* 8057D7F0 4E800421 */ bctrl       
lbl_8057d7f4:
/* 8057D7F4 7FA3EB78 */ mr          r3, r29
/* 8057D7F8 48012BD5 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057D7FC D3E30178 */ stfs        f31, 0x178(r3)
lbl_8057d800:
/* 8057D800 809D0000 */ lwz         r4, 0(r29)
/* 8057D804 80640004 */ lwz         r3, 4(r4)
/* 8057D808 80030008 */ lwz         r0, 8(r3)
/* 8057D80C 5400056B */ rlwinm.     r0, r0, 0, 0x15, 0x15
/* 8057D810 4182000C */ beq-        lbl_8057d81c
/* 8057D814 38000000 */ li          r0, 0
/* 8057D818 4800000C */ b           lbl_8057d824
lbl_8057d81c:
/* 8057D81C 80640004 */ lwz         r3, 4(r4)
/* 8057D820 8003001C */ lwz         r0, 0x1c(r3)
lbl_8057d824:
/* 8057D824 901D0218 */ stw         r0, 0x218(r29)
/* 8057D828 7FA3EB78 */ mr          r3, r29
/* 8057D82C 48013021 */ bl          kartCollide__Q24Kart15KartObjectProxyFv
/* 8057D830 8003002C */ lwz         r0, 0x2c(r3)
/* 8057D834 54000529 */ rlwinm.     r0, r0, 0, 0x14, 0x14
/* 8057D838 41820014 */ beq-        lbl_8057d84c
/* 8057D83C A01D0254 */ lhz         r0, 0x254(r29)
/* 8057D840 60000040 */ ori         r0, r0, 0x40
/* 8057D844 B01D0254 */ sth         r0, 0x254(r29)
/* 8057D848 48000010 */ b           lbl_8057d858
lbl_8057d84c:
/* 8057D84C A01D0254 */ lhz         r0, 0x254(r29)
/* 8057D850 540006B0 */ rlwinm      r0, r0, 0, 0x1a, 0x18
/* 8057D854 B01D0254 */ sth         r0, 0x254(r29)
lbl_8057d858:
/* 8057D858 E3E10068 */ psq_l       f31, 0x68(r1), 0, 0
/* 8057D85C CBE10060 */ lfd         f31, 0x60(r1)
/* 8057D860 E3C10058 */ psq_l       f30, 0x58(r1), 0, 0
/* 8057D864 CBC10050 */ lfd         f30, 0x50(r1)
/* 8057D868 83E1004C */ lwz         r31, 0x4c(r1)
/* 8057D86C 83C10048 */ lwz         r30, 0x48(r1)
/* 8057D870 83A10044 */ lwz         r29, 0x44(r1)
/* 8057D874 80010074 */ lwz         r0, 0x74(r1)
/* 8057D878 83810040 */ lwz         r28, 0x40(r1)
/* 8057D87C 7C0803A6 */ mtlr        r0
/* 8057D880 38210070 */ addi        r1, r1, 0x70
/* 8057D884 4E800020 */ blr         