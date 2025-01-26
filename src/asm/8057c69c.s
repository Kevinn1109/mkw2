nofralloc
/* 8057C69C 9421FF40 */ stwu        r1, -0xc0(r1)
/* 8057C6A0 7C0802A6 */ mflr        r0
/* 8057C6A4 900100C4 */ stw         r0, 0xc4(r1)
/* 8057C6A8 DBE100B0 */ stfd        f31, 0xb0(r1)
/* 8057C6AC F3E100B8 */ psq_st      f31, 0xb8(r1), 0, 0
/* 8057C6B0 DBC100A0 */ stfd        f30, 0xa0(r1)
/* 8057C6B4 F3C100A8 */ psq_st      f30, 0xa8(r1), 0, 0
/* 8057C6B8 93E1009C */ stw         r31, 0x9c(r1)
/* 8057C6BC 3FE08089 */ lis         r31, lbl_80891a00@ha
/* 8057C6C0 3BFF1A00 */ addi        r31, r31, lbl_80891a00@l
/* 8057C6C4 93C10098 */ stw         r30, 0x98(r1)
/* 8057C6C8 3FC0808B */ lis         r30, lbl_808b58f0@ha
/* 8057C6CC 3BDE58F0 */ addi        r30, r30, lbl_808b58f0@l
/* 8057C6D0 93A10094 */ stw         r29, 0x94(r1)
/* 8057C6D4 3BA00000 */ li          r29, 0
/* 8057C6D8 93810090 */ stw         r28, 0x90(r1)
/* 8057C6DC 7C7C1B78 */ mr          r28, r3
/* 8057C6E0 80830000 */ lwz         r4, 0(r3)
/* 8057C6E4 80840004 */ lwz         r4, 4(r4)
/* 8057C6E8 80640004 */ lwz         r3, 4(r4)
/* 8057C6EC 546000C6 */ rlwinm      r0, r3, 0, 3, 3
/* 8057C6F0 50600739 */ rlwimi.     r0, r3, 0, 0x1c, 0x1c
/* 8057C6F4 41820014 */ beq-        lbl_8057c708
/* 8057C6F8 80040008 */ lwz         r0, 8(r4)
/* 8057C6FC 54000529 */ rlwinm.     r0, r0, 0, 0x14, 0x14
/* 8057C700 40820008 */ bne-        lbl_8057c708
/* 8057C704 3BA00001 */ li          r29, 1
lbl_8057c708:
/* 8057C708 80040014 */ lwz         r0, 0x14(r4)
/* 8057C70C 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 8057C710 4182002C */ beq-        lbl_8057c73c
/* 8057C714 2C1D0000 */ cmpwi       r29, 0
/* 8057C718 41820014 */ beq-        lbl_8057c72c
/* 8057C71C 7F83E378 */ mr          r3, r28
/* 8057C720 48014155 */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 8057C724 C3C3005C */ lfs         f30, 0x5c(r3)
/* 8057C728 48000038 */ b           lbl_8057c760
lbl_8057c72c:
/* 8057C72C 7F83E378 */ mr          r3, r28
/* 8057C730 48014145 */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 8057C734 C3C30050 */ lfs         f30, 0x50(r3)
/* 8057C738 48000028 */ b           lbl_8057c760
lbl_8057c73c:
/* 8057C73C 2C1D0000 */ cmpwi       r29, 0
/* 8057C740 41820014 */ beq-        lbl_8057c754
/* 8057C744 7F83E378 */ mr          r3, r28
/* 8057C748 4801412D */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 8057C74C C3C30058 */ lfs         f30, 0x58(r3)
/* 8057C750 48000010 */ b           lbl_8057c760
lbl_8057c754:
/* 8057C754 7F83E378 */ mr          r3, r28
/* 8057C758 4801411D */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 8057C75C C3C3004C */ lfs         f30, 0x4c(r3)
lbl_8057c760:
/* 8057C760 2C1D0000 */ cmpwi       r29, 0
/* 8057C764 41820028 */ beq-        lbl_8057c78c
/* 8057C768 7F83E378 */ mr          r3, r28
/* 8057C76C 480142A5 */ bl          PlayerPointers_getVehicleType
/* 8057C770 28030002 */ cmplwi      r3, 2
/* 8057C774 41820018 */ beq-        lbl_8057c78c
/* 8057C778 C03C0104 */ lfs         f1, 0x104(r28)
/* 8057C77C C01E0068 */ lfs         f0, 0x68(r30)
/* 8057C780 EC010032 */ fmuls       f0, f1, f0
/* 8057C784 D01C0104 */ stfs        f0, 0x104(r28)
/* 8057C788 EFDE002A */ fadds       f30, f30, f0
lbl_8057c78c:
/* 8057C78C 807C0000 */ lwz         r3, 0(r28)
/* 8057C790 C03C0158 */ lfs         f1, 0x158(r28)
/* 8057C794 80830004 */ lwz         r4, 4(r3)
/* 8057C798 EFE107B2 */ fmuls       f31, f1, f30
/* 8057C79C 81040008 */ lwz         r8, 8(r4)
/* 8057C7A0 5500018D */ rlwinm.     r0, r8, 0, 6, 6
/* 8057C7A4 41820010 */ beq-        lbl_8057c7b4
/* 8057C7A8 C01E027C */ lfs         f0, 0x27c(r30)
/* 8057C7AC EFE10032 */ fmuls       f31, f1, f0
/* 8057C7B0 4800020C */ b           lbl_8057c9bc
lbl_8057c7b4:
/* 8057C7B4 80C40004 */ lwz         r6, 4(r4)
/* 8057C7B8 38000000 */ li          r0, 0
/* 8057C7BC 54C70319 */ rlwinm.     r7, r6, 0, 0xc, 0xc
/* 8057C7C0 41820018 */ beq-        lbl_8057c7d8
/* 8057C7C4 C03C022C */ lfs         f1, 0x22c(r28)
/* 8057C7C8 C01F0000 */ lfs         f0, 0(r31)
/* 8057C7CC FC010040 */ fcmpo       cr0, f1, f0
/* 8057C7D0 40810008 */ ble-        lbl_8057c7d8
/* 8057C7D4 38000001 */ li          r0, 1
lbl_8057c7d8:
/* 8057C7D8 2C000000 */ cmpwi       r0, 0
/* 8057C7DC 4182000C */ beq-        lbl_8057c7e8
/* 8057C7E0 C01E009C */ lfs         f0, 0x9c(r30)
/* 8057C7E4 EFFF0032 */ fmuls       f31, f31, f0
lbl_8057c7e8:
/* 8057C7E8 54C007BD */ rlwinm.     r0, r6, 0, 0x1e, 0x1e
/* 8057C7EC 38A00001 */ li          r5, 1
/* 8057C7F0 41820020 */ beq-        lbl_8057c810
/* 8057C7F4 C03C0020 */ lfs         f1, 0x20(r28)
/* 8057C7F8 C01F0000 */ lfs         f0, 0(r31)
/* 8057C7FC FC010040 */ fcmpo       cr0, f1, f0
/* 8057C800 7C000026 */ mfcr        r0
/* 8057C804 540017FF */ rlwinm.     r0, r0, 2, 0x1f, 0x1f
/* 8057C808 40820008 */ bne-        lbl_8057c810
/* 8057C80C 38A00000 */ li          r5, 0
lbl_8057c810:
/* 8057C810 2C1D0000 */ cmpwi       r29, 0
/* 8057C814 408200F0 */ bne-        lbl_8057c904
/* 8057C818 54C00675 */ rlwinm.     r0, r6, 0, 0x19, 0x1a
/* 8057C81C 40820048 */ bne-        lbl_8057c864
/* 8057C820 C03C0020 */ lfs         f1, 0x20(r28)
/* 8057C824 C01F0004 */ lfs         f0, 4(r31)
/* 8057C828 FC200A10 */ fabs        f1, f1
/* 8057C82C FC010040 */ fcmpo       cr0, f1, f0
/* 8057C830 40800034 */ bge-        lbl_8057c864
/* 8057C834 2C070000 */ cmpwi       r7, 0
/* 8057C838 38000000 */ li          r0, 0
/* 8057C83C 41820018 */ beq-        lbl_8057c854
/* 8057C840 C03C022C */ lfs         f1, 0x22c(r28)
/* 8057C844 C01F0000 */ lfs         f0, 0(r31)
/* 8057C848 FC010040 */ fcmpo       cr0, f1, f0
/* 8057C84C 40810008 */ ble-        lbl_8057c854
/* 8057C850 38000001 */ li          r0, 1
lbl_8057c854:
/* 8057C854 2C000000 */ cmpwi       r0, 0
/* 8057C858 4082000C */ bne-        lbl_8057c864
/* 8057C85C C3FF0000 */ lfs         f31, 0(r31)
/* 8057C860 480000A4 */ b           lbl_8057c904
lbl_8057c864:
/* 8057C864 2C050000 */ cmpwi       r5, 0
/* 8057C868 4182009C */ beq-        lbl_8057c904
/* 8057C86C 8004000C */ lwz         r0, 0xc(r4)
/* 8057C870 54000421 */ rlwinm.     r0, r0, 0, 0x10, 0x10
/* 8057C874 4182000C */ beq-        lbl_8057c880
/* 8057C878 C05E00DC */ lfs         f2, 0xdc(r30)
/* 8057C87C 48000008 */ b           lbl_8057c884
lbl_8057c880:
/* 8057C880 C05F0004 */ lfs         f2, 4(r31)
lbl_8057c884:
/* 8057C884 C03E0084 */ lfs         f1, 0x84(r30)
/* 8057C888 C01E0088 */ lfs         f0, 0x88(r30)
/* 8057C88C EC6100B2 */ fmuls       f3, f1, f2
/* 8057C890 C03C0020 */ lfs         f1, 0x20(r28)
/* 8057C894 EC4000B2 */ fmuls       f2, f0, f2
/* 8057C898 FC011840 */ fcmpo       cr0, f1, f3
/* 8057C89C 40800028 */ bge-        lbl_8057c8c4
/* 8057C8A0 EC411824 */ fdivs       f2, f1, f3
/* 8057C8A4 C03E0080 */ lfs         f1, 0x80(r30)
/* 8057C8A8 C01F0004 */ lfs         f0, 4(r31)
/* 8057C8AC EC000828 */ fsubs       f0, f0, f1
/* 8057C8B0 EC3F0072 */ fmuls       f1, f31, f1
/* 8057C8B4 EC1F0032 */ fmuls       f0, f31, f0
/* 8057C8B8 EC020032 */ fmuls       f0, f2, f0
/* 8057C8BC EFE1002A */ fadds       f31, f1, f0
/* 8057C8C0 48000044 */ b           lbl_8057c904
lbl_8057c8c4:
/* 8057C8C4 FC010040 */ fcmpo       cr0, f1, f0
/* 8057C8C8 40800034 */ bge-        lbl_8057c8fc
/* 8057C8CC EC811828 */ fsubs       f4, f1, f3
/* 8057C8D0 C01E008C */ lfs         f0, 0x8c(r30)
/* 8057C8D4 EC621828 */ fsubs       f3, f2, f3
/* 8057C8D8 C05F0004 */ lfs         f2, 4(r31)
/* 8057C8DC EC3F0032 */ fmuls       f1, f31, f0
/* 8057C8E0 EC020028 */ fsubs       f0, f2, f0
/* 8057C8E4 EC641824 */ fdivs       f3, f4, f3
/* 8057C8E8 EC421828 */ fsubs       f2, f2, f3
/* 8057C8EC EC1F0032 */ fmuls       f0, f31, f0
/* 8057C8F0 EC020032 */ fmuls       f0, f2, f0
/* 8057C8F4 EFE1002A */ fadds       f31, f1, f0
/* 8057C8F8 4800000C */ b           lbl_8057c904
lbl_8057c8fc:
/* 8057C8FC C01E008C */ lfs         f0, 0x8c(r30)
/* 8057C900 EFFF0032 */ fmuls       f31, f31, f0
lbl_8057c904:
/* 8057C904 2C050000 */ cmpwi       r5, 0
/* 8057C908 41820008 */ beq-        lbl_8057c910
/* 8057C90C 48000008 */ b           lbl_8057c914
lbl_8057c910:
/* 8057C910 FFE0F850 */ fneg        f31, f31
lbl_8057c914:
/* 8057C914 55000001 */ rlwinm.     r0, r8, 0, 0, 0
/* 8057C918 40820014 */ bne-        lbl_8057c92c
/* 8057C91C 80A4000C */ lwz         r5, 0xc(r4)
/* 8057C920 54A00084 */ rlwinm      r0, r5, 0, 2, 2
/* 8057C924 50A00421 */ rlwimi.     r0, r5, 0, 0x10, 0x10
/* 8057C928 41820014 */ beq-        lbl_8057c93c
lbl_8057c92c:
/* 8057C92C 54C00739 */ rlwinm.     r0, r6, 0, 0x1c, 0x1c
/* 8057C930 4082000C */ bne-        lbl_8057c93c
/* 8057C934 C01E00D8 */ lfs         f0, 0xd8(r30)
/* 8057C938 EFFF0032 */ fmuls       f31, f31, f0
lbl_8057c93c:
/* 8057C93C 550004A5 */ rlwinm.     r0, r8, 0, 0x12, 0x12
/* 8057C940 41820014 */ beq-        lbl_8057c954
/* 8057C944 54C00739 */ rlwinm.     r0, r6, 0, 0x1c, 0x1c
/* 8057C948 4082000C */ bne-        lbl_8057c954
/* 8057C94C C01E0254 */ lfs         f0, 0x254(r30)
/* 8057C950 EFFF0032 */ fmuls       f31, f31, f0
lbl_8057c954:
/* 8057C954 80040014 */ lwz         r0, 0x14(r4)
/* 8057C958 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 8057C95C 41820060 */ beq-        lbl_8057c9bc
/* 8057C960 80A30004 */ lwz         r5, 4(r3)
/* 8057C964 C05E00B4 */ lfs         f2, 0xb4(r30)
/* 8057C968 C0050088 */ lfs         f0, 0x88(r5)
/* 8057C96C FC200210 */ fabs        f1, f0
/* 8057C970 FC011040 */ fcmpo       cr0, f1, f2
/* 8057C974 40810048 */ ble-        lbl_8057c9bc
/* 8057C978 C01F0000 */ lfs         f0, 0(r31)
/* 8057C97C C07F0004 */ lfs         f3, 4(r31)
/* 8057C980 FC020040 */ fcmpo       cr0, f2, f0
/* 8057C984 40810010 */ ble-        lbl_8057c994
/* 8057C988 EC211028 */ fsubs       f1, f1, f2
/* 8057C98C EC031028 */ fsubs       f0, f3, f2
/* 8057C990 EC610024 */ fdivs       f3, f1, f0
lbl_8057c994:
/* 8057C994 2C1D0000 */ cmpwi       r29, 0
/* 8057C998 4182000C */ beq-        lbl_8057c9a4
/* 8057C99C C01E00C0 */ lfs         f0, 0xc0(r30)
/* 8057C9A0 48000008 */ b           lbl_8057c9a8
lbl_8057c9a4:
/* 8057C9A4 C01E00BC */ lfs         f0, 0xbc(r30)
lbl_8057c9a8:
/* 8057C9A8 EC1F0032 */ fmuls       f0, f31, f0
/* 8057C9AC C03C00B0 */ lfs         f1, 0xb0(r28)
/* 8057C9B0 EC000072 */ fmuls       f0, f0, f1
/* 8057C9B4 EC030032 */ fmuls       f0, f3, f0
/* 8057C9B8 EFFF002A */ fadds       f31, f31, f0
lbl_8057c9bc:
/* 8057C9BC 550007FF */ clrlwi.     r0, r8, 0x1f
/* 8057C9C0 40820184 */ bne-        lbl_8057cb44
/* 8057C9C4 55000421 */ rlwinm.     r0, r8, 0, 0x10, 0x10
/* 8057C9C8 4082017C */ bne-        lbl_8057cb44
/* 8057C9CC 80A40004 */ lwz         r5, 4(r4)
/* 8057C9D0 54A0035B */ rlwinm.     r0, r5, 0, 0xd, 0xd
/* 8057C9D4 40820098 */ bne-        lbl_8057ca6c
/* 8057C9D8 54A00001 */ rlwinm.     r0, r5, 0, 0, 0
/* 8057C9DC 4182001C */ beq-        lbl_8057c9f8
/* 8057C9E0 80BC0258 */ lwz         r5, 0x258(r28)
/* 8057C9E4 8805003A */ lbz         r0, 0x3a(r5)
/* 8057C9E8 2C000000 */ cmpwi       r0, 0
/* 8057C9EC 4182000C */ beq-        lbl_8057c9f8
/* 8057C9F0 C3FF0000 */ lfs         f31, 0(r31)
/* 8057C9F4 48000078 */ b           lbl_8057ca6c
lbl_8057c9f8:
/* 8057C9F8 80040008 */ lwz         r0, 8(r4)
/* 8057C9FC 54000529 */ rlwinm.     r0, r0, 0, 0x14, 0x14
/* 8057CA00 4082006C */ bne-        lbl_8057ca6c
/* 8057CA04 80630004 */ lwz         r3, 4(r3)
/* 8057CA08 8063001C */ lwz         r3, 0x1c(r3)
/* 8057CA0C 2803001E */ cmplwi      r3, 0x1e
/* 8057CA10 41800050 */ blt-        lbl_8057ca60
/* 8057CA14 28030046 */ cmplwi      r3, 0x46
/* 8057CA18 41810048 */ bgt-        lbl_8057ca60
/* 8057CA1C 3863FFE2 */ addi        r3, r3, -0x1e
/* 8057CA20 3C004330 */ lis         r0, 0x4330
/* 8057CA24 90610084 */ stw         r3, 0x84(r1)
/* 8057CA28 C87F0090 */ lfd         f3, 0x90(r31)
/* 8057CA2C 90010080 */ stw         r0, 0x80(r1)
/* 8057CA30 C05F0098 */ lfs         f2, 0x98(r31)
/* 8057CA34 C8010080 */ lfd         f0, 0x80(r1)
/* 8057CA38 C03F0004 */ lfs         f1, 4(r31)
/* 8057CA3C EC601828 */ fsubs       f3, f0, f3
/* 8057CA40 C01F0000 */ lfs         f0, 0(r31)
/* 8057CA44 EC4200F2 */ fmuls       f2, f2, f3
/* 8057CA48 EC211028 */ fsubs       f1, f1, f2
/* 8057CA4C EFFF0072 */ fmuls       f31, f31, f1
/* 8057CA50 FC00F840 */ fcmpo       cr0, f0, f31
/* 8057CA54 40810018 */ ble-        lbl_8057ca6c
/* 8057CA58 FFE00090 */ fmr         f31, f0
/* 8057CA5C 48000010 */ b           lbl_8057ca6c
lbl_8057ca60:
/* 8057CA60 28030046 */ cmplwi      r3, 0x46
/* 8057CA64 40810008 */ ble-        lbl_8057ca6c
/* 8057CA68 C3FF0000 */ lfs         f31, 0(r31)
lbl_8057ca6c:
/* 8057CA6C 7F83E378 */ mr          r3, r28
/* 8057CA70 4801395D */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057CA74 3C80802A */ lis         r4, lbl_802a4148@ha
/* 8057CA78 38A10008 */ addi        r5, r1, 8
/* 8057CA7C 38844148 */ addi        r4, r4, lbl_802a4148@l
/* 8057CA80 386300F0 */ addi        r3, r3, 0xf0
/* 8057CA84 4BCBD84D */ bl          rotateVector__Q23EGG5QuatfFRCQ23EGG8Vector3fRQ23EGG8Vector3f
/* 8057CA88 C0610008 */ lfs         f3, 8(r1)
/* 8057CA8C 38610014 */ addi        r3, r1, 0x14
/* 8057CA90 C05C005C */ lfs         f2, 0x5c(r28)
/* 8057CA94 38810008 */ addi        r4, r1, 8
/* 8057CA98 C021000C */ lfs         f1, 0xc(r1)
/* 8057CA9C 38BC005C */ addi        r5, r28, 0x5c
/* 8057CAA0 C01C0060 */ lfs         f0, 0x60(r28)
/* 8057CAA4 EC4300B2 */ fmuls       f2, f3, f2
/* 8057CAA8 C0610010 */ lfs         f3, 0x10(r1)
/* 8057CAAC EC010032 */ fmuls       f0, f1, f0
/* 8057CAB0 C03C0064 */ lfs         f1, 0x64(r28)
/* 8057CAB4 EC230072 */ fmuls       f1, f3, f1
/* 8057CAB8 EC02002A */ fadds       f0, f2, f0
/* 8057CABC EFC1002A */ fadds       f30, f1, f0
/* 8057CAC0 4BFBAD71 */ bl          VEC3_fromCross
/* 8057CAC4 C0210014 */ lfs         f1, 0x14(r1)
/* 8057CAC8 C0010018 */ lfs         f0, 0x18(r1)
/* 8057CACC EC210072 */ fmuls       f1, f1, f1
/* 8057CAD0 C041001C */ lfs         f2, 0x1c(r1)
/* 8057CAD4 EC000032 */ fmuls       f0, f0, f0
/* 8057CAD8 EC4200B2 */ fmuls       f2, f2, f2
/* 8057CADC EC01002A */ fadds       f0, f1, f0
/* 8057CAE0 EC22002A */ fadds       f1, f2, f0
/* 8057CAE4 4BCB2D29 */ bl          sqrt__Q23EGG5MathfFf
/* 8057CAE8 FC40F090 */ fmr         f2, f30
/* 8057CAEC 4BCB2DF9 */ bl          atan2_Q23EGG5MathfFff
/* 8057CAF0 C01F0000 */ lfs         f0, 0(r31)
/* 8057CAF4 FC010040 */ fcmpo       cr0, f1, f0
/* 8057CAF8 40810008 */ ble-        lbl_8057cb00
/* 8057CAFC 48000008 */ b           lbl_8057cb04
lbl_8057cb00:
/* 8057CB00 FC200850 */ fneg        f1, f1
lbl_8057cb04:
/* 8057CB04 C01F0058 */ lfs         f0, 0x58(r31)
/* 8057CB08 C05E0274 */ lfs         f2, 0x274(r30)
/* 8057CB0C EC200072 */ fmuls       f1, f0, f1
/* 8057CB10 FC011040 */ fcmpo       cr0, f1, f2
/* 8057CB14 40810030 */ ble-        lbl_8057cb44
/* 8057CB18 C01E0278 */ lfs         f0, 0x278(r30)
/* 8057CB1C EC611028 */ fsubs       f3, f1, f2
/* 8057CB20 C03F0004 */ lfs         f1, 4(r31)
/* 8057CB24 EC401028 */ fsubs       f2, f0, f2
/* 8057CB28 C01F0000 */ lfs         f0, 0(r31)
/* 8057CB2C EC431024 */ fdivs       f2, f3, f2
/* 8057CB30 EC211028 */ fsubs       f1, f1, f2
/* 8057CB34 FC000840 */ fcmpo       cr0, f0, f1
/* 8057CB38 40810008 */ ble-        lbl_8057cb40
/* 8057CB3C FC200090 */ fmr         f1, f0
lbl_8057cb40:
/* 8057CB40 EFFF0072 */ fmuls       f31, f31, f1
lbl_8057cb44:
/* 8057CB44 819C000C */ lwz         r12, 0xc(r28)
/* 8057CB48 FC20F890 */ fmr         f1, f31
/* 8057CB4C 7F83E378 */ mr          r3, r28
/* 8057CB50 818C004C */ lwz         r12, 0x4c(r12)
/* 8057CB54 7D8903A6 */ mtctr       r12
/* 8057CB58 4E800421 */ bctrl       
/* 8057CB5C 3C60809C */ lis         r3, spInstance__Q26System10RaceConfig@ha
/* 8057CB60 8063D728 */ lwz         r3, spInstance__Q26System10RaceConfig@l(r3)
/* 8057CB64 80030B68 */ lwz         r0, 0xb68(r3)
/* 8057CB68 2C000022 */ cmpwi       r0, 0x22
/* 8057CB6C 40820238 */ bne-        lbl_8057cda4
/* 8057CB70 7F83E378 */ mr          r3, r28
/* 8057CB74 48013859 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057CB78 C02300B0 */ lfs         f1, 0xb0(r3)
/* 8057CB7C C00300B4 */ lfs         f0, 0xb4(r3)
/* 8057CB80 EC410072 */ fmuls       f2, f1, f1
/* 8057CB84 C06300B8 */ lfs         f3, 0xb8(r3)
/* 8057CB88 EC200032 */ fmuls       f1, f0, f0
/* 8057CB8C C01F0008 */ lfs         f0, 8(r31)
/* 8057CB90 EC6300F2 */ fmuls       f3, f3, f3
/* 8057CB94 EC22082A */ fadds       f1, f2, f1
/* 8057CB98 EC23082A */ fadds       f1, f3, f1
/* 8057CB9C FC010040 */ fcmpo       cr0, f1, f0
/* 8057CBA0 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 8057CBA4 7C000026 */ mfcr        r0
/* 8057CBA8 54001FFF */ rlwinm.     r0, r0, 3, 0x1f, 0x1f
/* 8057CBAC 408201F8 */ bne-        lbl_8057cda4
/* 8057CBB0 7F83E378 */ mr          r3, r28
/* 8057CBB4 48013819 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057CBB8 808300B0 */ lwz         r4, 0xb0(r3)
/* 8057CBBC 90810070 */ stw         r4, 0x70(r1)
/* 8057CBC0 800300B8 */ lwz         r0, 0xb8(r3)
/* 8057CBC4 90010078 */ stw         r0, 0x78(r1)
/* 8057CBC8 808300B4 */ lwz         r4, 0xb4(r3)
/* 8057CBCC 7F83E378 */ mr          r3, r28
/* 8057CBD0 C09F0000 */ lfs         f4, 0(r31)
/* 8057CBD4 C07F001C */ lfs         f3, 0x1c(r31)
/* 8057CBD8 C0410070 */ lfs         f2, 0x70(r1)
/* 8057CBDC C0010078 */ lfs         f0, 0x78(r1)
/* 8057CBE0 EC230132 */ fmuls       f1, f3, f4
/* 8057CBE4 90810074 */ stw         r4, 0x74(r1)
/* 8057CBE8 EC4300B2 */ fmuls       f2, f3, f2
/* 8057CBEC EC030032 */ fmuls       f0, f3, f0
/* 8057CBF0 D0810074 */ stfs        f4, 0x74(r1)
/* 8057CBF4 D0410064 */ stfs        f2, 0x64(r1)
/* 8057CBF8 D0210068 */ stfs        f1, 0x68(r1)
/* 8057CBFC D001006C */ stfs        f0, 0x6c(r1)
/* 8057CC00 4801360D */ bl          getPos__Q24Kart15KartObjectProxyCFv
/* 8057CC04 80030000 */ lwz         r0, 0(r3)
/* 8057CC08 90010058 */ stw         r0, 0x58(r1)
/* 8057CC0C C0DF0000 */ lfs         f6, 0(r31)
/* 8057CC10 C0010068 */ lfs         f0, 0x68(r1)
/* 8057CC14 80030008 */ lwz         r0, 8(r3)
/* 8057CC18 EC86002A */ fadds       f4, f6, f0
/* 8057CC1C 90010060 */ stw         r0, 0x60(r1)
/* 8057CC20 C0210058 */ lfs         f1, 0x58(r1)
/* 8057CC24 C0010064 */ lfs         f0, 0x64(r1)
/* 8057CC28 C0410060 */ lfs         f2, 0x60(r1)
/* 8057CC2C ECA1002A */ fadds       f5, f1, f0
/* 8057CC30 C021006C */ lfs         f1, 0x6c(r1)
/* 8057CC34 EC040132 */ fmuls       f0, f4, f4
/* 8057CC38 80030004 */ lwz         r0, 4(r3)
/* 8057CC3C EC62082A */ fadds       f3, f2, f1
/* 8057CC40 9001005C */ stw         r0, 0x5c(r1)
/* 8057CC44 EC250172 */ fmuls       f1, f5, f5
/* 8057CC48 80810064 */ lwz         r4, 0x64(r1)
/* 8057CC4C 80610068 */ lwz         r3, 0x68(r1)
/* 8057CC50 EC4300F2 */ fmuls       f2, f3, f3
/* 8057CC54 8001006C */ lwz         r0, 0x6c(r1)
/* 8057CC58 EC01002A */ fadds       f0, f1, f0
/* 8057CC5C D0C1005C */ stfs        f6, 0x5c(r1)
/* 8057CC60 EC22002A */ fadds       f1, f2, f0
/* 8057CC64 D0A1004C */ stfs        f5, 0x4c(r1)
/* 8057CC68 D0810050 */ stfs        f4, 0x50(r1)
/* 8057CC6C D0610054 */ stfs        f3, 0x54(r1)
/* 8057CC70 90810040 */ stw         r4, 0x40(r1)
/* 8057CC74 90610044 */ stw         r3, 0x44(r1)
/* 8057CC78 90010048 */ stw         r0, 0x48(r1)
/* 8057CC7C 4BCB2B91 */ bl          sqrt__Q23EGG5MathfFf
/* 8057CC80 C0010044 */ lfs         f0, 0x44(r1)
/* 8057CC84 FFC00890 */ fmr         f30, f1
/* 8057CC88 C0410040 */ lfs         f2, 0x40(r1)
/* 8057CC8C EC000032 */ fmuls       f0, f0, f0
/* 8057CC90 EC2200B2 */ fmuls       f1, f2, f2
/* 8057CC94 C0410048 */ lfs         f2, 0x48(r1)
/* 8057CC98 EC4200B2 */ fmuls       f2, f2, f2
/* 8057CC9C EC01002A */ fadds       f0, f1, f0
/* 8057CCA0 EC22002A */ fadds       f1, f2, f0
/* 8057CCA4 4BCB2B69 */ bl          sqrt__Q23EGG5MathfFf
/* 8057CCA8 C01F0000 */ lfs         f0, 0(r31)
/* 8057CCAC FC1E0040 */ fcmpo       cr0, f30, f0
/* 8057CCB0 408100F4 */ ble-        lbl_8057cda4
/* 8057CCB4 FC40F090 */ fmr         f2, f30
/* 8057CCB8 4BB08709 */ bl          Atan2FIdx__Q24nw4r4mathFff
/* 8057CCBC C05F009C */ lfs         f2, 0x9c(r31)
/* 8057CCC0 38610030 */ addi        r3, r1, 0x30
/* 8057CCC4 C01F0074 */ lfs         f0, 0x74(r31)
/* 8057CCC8 389C0044 */ addi        r4, r28, 0x44
/* 8057CCCC EC220072 */ fmuls       f1, f2, f1
/* 8057CCD0 EC200072 */ fmuls       f1, f0, f1
/* 8057CCD4 4BCBD3CD */ bl          setAxisRotation__Q23EGG5QuatfFRCQ23EGG8Vector3ff
/* 8057CCD8 7F83E378 */ mr          r3, r28
/* 8057CCDC 480136F1 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057CCE0 7C641B78 */ mr          r4, r3
/* 8057CCE4 C00300FC */ lfs         f0, 0xfc(r3)
/* 8057CCE8 C141003C */ lfs         f10, 0x3c(r1)
/* 8057CCEC 38610020 */ addi        r3, r1, 0x20
/* 8057CCF0 C3E10030 */ lfs         f31, 0x30(r1)
/* 8057CCF4 C1A400F0 */ lfs         f13, 0xf0(r4)
/* 8057CCF8 ECEA0032 */ fmuls       f7, f10, f0
/* 8057CCFC C1810034 */ lfs         f12, 0x34(r1)
/* 8057CD00 ECBF0032 */ fmuls       f5, f31, f0
/* 8057CD04 C16400F4 */ lfs         f11, 0xf4(r4)
/* 8057CD08 EC8A0372 */ fmuls       f4, f10, f13
/* 8057CD0C C1210038 */ lfs         f9, 0x38(r1)
/* 8057CD10 C10400F8 */ lfs         f8, 0xf8(r4)
/* 8057CD14 ECDF0372 */ fmuls       f6, f31, f13
/* 8057CD18 ECA5202A */ fadds       f5, f5, f4
/* 8057CD1C EC6C0032 */ fmuls       f3, f12, f0
/* 8057CD20 EC4A02F2 */ fmuls       f2, f10, f11
/* 8057CD24 EC290032 */ fmuls       f1, f9, f0
/* 8057CD28 EC0A0232 */ fmuls       f0, f10, f8
/* 8057CD2C ED473028 */ fsubs       f10, f7, f6
/* 8057CD30 ECEC02F2 */ fmuls       f7, f12, f11
/* 8057CD34 EC63102A */ fadds       f3, f3, f2
/* 8057CD38 EC01002A */ fadds       f0, f1, f0
/* 8057CD3C ECCC0232 */ fmuls       f6, f12, f8
/* 8057CD40 ED4A3828 */ fsubs       f10, f10, f7
/* 8057CD44 EC290232 */ fmuls       f1, f9, f8
/* 8057CD48 ECE6282A */ fadds       f7, f6, f5
/* 8057CD4C EC890372 */ fmuls       f4, f9, f13
/* 8057CD50 EC5F02F2 */ fmuls       f2, f31, f11
/* 8057CD54 ECC902F2 */ fmuls       f6, f9, f11
/* 8057CD58 ECA4182A */ fadds       f5, f4, f3
/* 8057CD5C EC82002A */ fadds       f4, f2, f0
/* 8057CD60 EC7F0232 */ fmuls       f3, f31, f8
/* 8057CD64 EC0C0372 */ fmuls       f0, f12, f13
/* 8057CD68 EC2A0828 */ fsubs       f1, f10, f1
/* 8057CD6C EC473028 */ fsubs       f2, f7, f6
/* 8057CD70 EC651828 */ fsubs       f3, f5, f3
/* 8057CD74 EC840028 */ fsubs       f4, f4, f0
/* 8057CD78 4BCBD085 */ bl          set__Q23EGG5QuatfFffff
/* 8057CD7C 7F83E378 */ mr          r3, r28
/* 8057CD80 4801364D */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057CD84 C0010020 */ lfs         f0, 0x20(r1)
/* 8057CD88 D00300F0 */ stfs        f0, 0xf0(r3)
/* 8057CD8C C0010024 */ lfs         f0, 0x24(r1)
/* 8057CD90 D00300F4 */ stfs        f0, 0xf4(r3)
/* 8057CD94 C0010028 */ lfs         f0, 0x28(r1)
/* 8057CD98 D00300F8 */ stfs        f0, 0xf8(r3)
/* 8057CD9C C001002C */ lfs         f0, 0x2c(r1)
/* 8057CDA0 D00300FC */ stfs        f0, 0xfc(r3)
lbl_8057cda4:
/* 8057CDA4 E3E100B8 */ psq_l       f31, 0xb8(r1), 0, 0
/* 8057CDA8 CBE100B0 */ lfd         f31, 0xb0(r1)
/* 8057CDAC E3C100A8 */ psq_l       f30, 0xa8(r1), 0, 0
/* 8057CDB0 CBC100A0 */ lfd         f30, 0xa0(r1)
/* 8057CDB4 83E1009C */ lwz         r31, 0x9c(r1)
/* 8057CDB8 83C10098 */ lwz         r30, 0x98(r1)
/* 8057CDBC 83A10094 */ lwz         r29, 0x94(r1)
/* 8057CDC0 800100C4 */ lwz         r0, 0xc4(r1)
/* 8057CDC4 83810090 */ lwz         r28, 0x90(r1)
/* 8057CDC8 7C0803A6 */ mtlr        r0
/* 8057CDCC 382100C0 */ addi        r1, r1, 0xc0
/* 8057CDD0 4E800020 */ blr         