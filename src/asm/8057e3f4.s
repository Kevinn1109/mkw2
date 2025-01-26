nofralloc
/* 8057E3F4 9421FFB0 */ stwu        r1, -0x50(r1)
/* 8057E3F8 7C0802A6 */ mflr        r0
/* 8057E3FC 90010054 */ stw         r0, 0x54(r1)
/* 8057E400 DBE10040 */ stfd        f31, 0x40(r1)
/* 8057E404 F3E10048 */ psq_st      f31, 0x48(r1), 0, 0
/* 8057E408 93E1003C */ stw         r31, 0x3c(r1)
/* 8057E40C 7C7F1B78 */ mr          r31, r3
/* 8057E410 93C10038 */ stw         r30, 0x38(r1)
/* 8057E414 3FC08089 */ lis         r30, lbl_80891a00@ha
/* 8057E418 3BDE1A00 */ addi        r30, r30, lbl_80891a00@l
/* 8057E41C 480125F5 */ bl          PlayerPointers_getVehicleType
/* 8057E420 28030002 */ cmplwi      r3, 2
/* 8057E424 41820138 */ beq-        lbl_8057e55c
/* 8057E428 807F0000 */ lwz         r3, 0(r31)
/* 8057E42C C3FE0000 */ lfs         f31, 0(r30)
/* 8057E430 80630004 */ lwz         r3, 4(r3)
/* 8057E434 80030004 */ lwz         r0, 4(r3)
/* 8057E438 54000319 */ rlwinm.     r0, r0, 0, 0xc, 0xc
/* 8057E43C 418200C8 */ beq-        lbl_8057e504
/* 8057E440 7FE3FB78 */ mr          r3, r31
/* 8057E444 48011F89 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057E448 3C80802A */ lis         r4, lbl_802a4148@ha
/* 8057E44C 38A10014 */ addi        r5, r1, 0x14
/* 8057E450 38844148 */ addi        r4, r4, lbl_802a4148@l
/* 8057E454 386300F0 */ addi        r3, r3, 0xf0
/* 8057E458 4BCBBE79 */ bl          rotateVector__Q23EGG5QuatfFRCQ23EGG8Vector3fRQ23EGG8Vector3f
/* 8057E45C 38610020 */ addi        r3, r1, 0x20
/* 8057E460 38810014 */ addi        r4, r1, 0x14
/* 8057E464 38BF00D4 */ addi        r5, r31, 0xd4
/* 8057E468 48030769 */ bl          rejUnit__6RKGeomFRQ23EGG8Vector3fRCQ23EGG8Vector3fRCQ23EGG8Vector3f
/* 8057E46C 38610020 */ addi        r3, r1, 0x20
/* 8057E470 4BCC566D */ bl          normalise__Q23EGG8Vector3fFv
/* 8057E474 FC00F890 */ fmr         f0, f31
/* 8057E478 FC000800 */ fcmpu       cr0, f0, f1
/* 8057E47C 41820088 */ beq-        lbl_8057e504
/* 8057E480 C15F00E0 */ lfs         f10, 0xe0(r31)
/* 8057E484 C1210024 */ lfs         f9, 0x24(r1)
/* 8057E488 C0FF00E4 */ lfs         f7, 0xe4(r31)
/* 8057E48C C0810020 */ lfs         f4, 0x20(r1)
/* 8057E490 ED0A0272 */ fmuls       f8, f10, f9
/* 8057E494 C0DF00E8 */ lfs         f6, 0xe8(r31)
/* 8057E498 EC670272 */ fmuls       f3, f7, f9
/* 8057E49C C0A10028 */ lfs         f5, 0x28(r1)
/* 8057E4A0 EC470132 */ fmuls       f2, f7, f4
/* 8057E4A4 EC260132 */ fmuls       f1, f6, f4
/* 8057E4A8 EC0A0172 */ fmuls       f0, f10, f5
/* 8057E4AC ED081028 */ fsubs       f8, f8, f2
/* 8057E4B0 EC470172 */ fmuls       f2, f7, f5
/* 8057E4B4 EC010028 */ fsubs       f0, f1, f0
/* 8057E4B8 D1010010 */ stfs        f8, 0x10(r1)
/* 8057E4BC EC260272 */ fmuls       f1, f6, f9
/* 8057E4C0 EC8A0132 */ fmuls       f4, f10, f4
/* 8057E4C4 D001000C */ stfs        f0, 0xc(r1)
/* 8057E4C8 EC000032 */ fmuls       f0, f0, f0
/* 8057E4CC EC220828 */ fsubs       f1, f2, f1
/* 8057E4D0 EC480232 */ fmuls       f2, f8, f8
/* 8057E4D4 D0210008 */ stfs        f1, 8(r1)
/* 8057E4D8 ECA60172 */ fmuls       f5, f6, f5
/* 8057E4DC EC210072 */ fmuls       f1, f1, f1
/* 8057E4E0 EC64182A */ fadds       f3, f4, f3
/* 8057E4E4 EC01002A */ fadds       f0, f1, f0
/* 8057E4E8 EFE5182A */ fadds       f31, f5, f3
/* 8057E4EC EC22002A */ fadds       f1, f2, f0
/* 8057E4F0 4BCB131D */ bl          sqrt__Q23EGG5MathfFf
/* 8057E4F4 FC40F890 */ fmr         f2, f31
/* 8057E4F8 4BCB13ED */ bl          atan2_Q23EGG5MathfFff
/* 8057E4FC C01E0058 */ lfs         f0, 0x58(r30)
/* 8057E500 EFE00072 */ fmuls       f31, f0, f1
lbl_8057e504:
/* 8057E504 807F00CC */ lwz         r3, 0xcc(r31)
/* 8057E508 3C004330 */ lis         r0, 0x4330
/* 8057E50C 90010030 */ stw         r0, 0x30(r1)
/* 8057E510 7C0300D0 */ neg         r0, r3
/* 8057E514 C85E0060 */ lfd         f2, 0x60(r30)
/* 8057E518 6C008000 */ xoris       r0, r0, 0x8000
/* 8057E51C 90010034 */ stw         r0, 0x34(r1)
/* 8057E520 C01F009C */ lfs         f0, 0x9c(r31)
/* 8057E524 C8210030 */ lfd         f1, 0x30(r1)
/* 8057E528 C07E00C4 */ lfs         f3, 0xc4(r30)
/* 8057E52C EC211028 */ fsubs       f1, f1, f2
/* 8057E530 EC3F0072 */ fmuls       f1, f31, f1
/* 8057E534 EC20082A */ fadds       f1, f0, f1
/* 8057E538 D03F009C */ stfs        f1, 0x9c(r31)
/* 8057E53C FC011840 */ fcmpo       cr0, f1, f3
/* 8057E540 4081000C */ ble-        lbl_8057e54c
/* 8057E544 D07F009C */ stfs        f3, 0x9c(r31)
/* 8057E548 48000014 */ b           lbl_8057e55c
lbl_8057e54c:
/* 8057E54C FC001850 */ fneg        f0, f3
/* 8057E550 FC010040 */ fcmpo       cr0, f1, f0
/* 8057E554 40800008 */ bge-        lbl_8057e55c
/* 8057E558 D01F009C */ stfs        f0, 0x9c(r31)
lbl_8057e55c:
/* 8057E55C 807F0000 */ lwz         r3, 0(r31)
/* 8057E560 80630004 */ lwz         r3, 4(r3)
/* 8057E564 80030004 */ lwz         r0, 4(r3)
/* 8057E568 54000356 */ rlwinm      r0, r0, 0, 0xd, 0xb
/* 8057E56C 90030004 */ stw         r0, 4(r3)
/* 8057E570 807F0000 */ lwz         r3, 0(r31)
/* 8057E574 80630004 */ lwz         r3, 4(r3)
/* 8057E578 80030004 */ lwz         r0, 4(r3)
/* 8057E57C 54000146 */ rlwinm      r0, r0, 0, 5, 3
/* 8057E580 90030004 */ stw         r0, 4(r3)
/* 8057E584 809F0000 */ lwz         r4, 0(r31)
/* 8057E588 80640004 */ lwz         r3, 4(r4)
/* 8057E58C 80030004 */ lwz         r0, 4(r3)
/* 8057E590 5400077B */ rlwinm.     r0, r0, 0, 0x1d, 0x1d
/* 8057E594 41820084 */ beq-        lbl_8057e618
/* 8057E598 3C60808B */ lis         r3, lbl_808b5b1c@ha
/* 8057E59C C03F0014 */ lfs         f1, 0x14(r31)
/* 8057E5A0 C0035B1C */ lfs         f0, lbl_808b5b1c@l(r3)
/* 8057E5A4 C05F0020 */ lfs         f2, 0x20(r31)
/* 8057E5A8 EC000072 */ fmuls       f0, f0, f1
/* 8057E5AC FC020040 */ fcmpo       cr0, f2, f0
/* 8057E5B0 4080000C */ bge-        lbl_8057e5bc
/* 8057E5B4 38000000 */ li          r0, 0
/* 8057E5B8 48000008 */ b           lbl_8057e5c0
lbl_8057e5bc:
/* 8057E5BC 801F00CC */ lwz         r0, 0xcc(r31)
lbl_8057e5c0:
/* 8057E5C0 2C000000 */ cmpwi       r0, 0
/* 8057E5C4 41820054 */ beq-        lbl_8057e618
/* 8057E5C8 80A40004 */ lwz         r5, 4(r4)
/* 8057E5CC 38000001 */ li          r0, 1
/* 8057E5D0 7FE3FB78 */ mr          r3, r31
/* 8057E5D4 80850004 */ lwz         r4, 4(r5)
/* 8057E5D8 60840008 */ ori         r4, r4, 8
/* 8057E5DC 90850004 */ stw         r4, 4(r5)
/* 8057E5E0 809F0000 */ lwz         r4, 0(r31)
/* 8057E5E4 80A40004 */ lwz         r5, 4(r4)
/* 8057E5E8 80850004 */ lwz         r4, 4(r5)
/* 8057E5EC 54840356 */ rlwinm      r4, r4, 0, 0xd, 0xb
/* 8057E5F0 90850004 */ stw         r4, 4(r5)
/* 8057E5F4 B01F00FC */ sth         r0, 0xfc(r31)
/* 8057E5F8 C3FF00B0 */ lfs         f31, 0xb0(r31)
/* 8057E5FC 48012279 */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 8057E600 C0230058 */ lfs         f1, 0x58(r3)
/* 8057E604 3C60808B */ lis         r3, lbl_808b5954@ha
/* 8057E608 C0035954 */ lfs         f0, lbl_808b5954@l(r3)
/* 8057E60C EC3F0072 */ fmuls       f1, f31, f1
/* 8057E610 EC000072 */ fmuls       f0, f0, f1
/* 8057E614 D01F0104 */ stfs        f0, 0x104(r31)
lbl_8057e618:
/* 8057E618 E3E10048 */ psq_l       f31, 0x48(r1), 0, 0
/* 8057E61C 80010054 */ lwz         r0, 0x54(r1)
/* 8057E620 CBE10040 */ lfd         f31, 0x40(r1)
/* 8057E624 83E1003C */ lwz         r31, 0x3c(r1)
/* 8057E628 83C10038 */ lwz         r30, 0x38(r1)
/* 8057E62C 7C0803A6 */ mtlr        r0
/* 8057E630 38210050 */ addi        r1, r1, 0x50
/* 8057E634 4E800020 */ blr         