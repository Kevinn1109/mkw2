nofralloc
/* 8057B9BC 9421FF30 */ stwu        r1, -0xd0(r1)
/* 8057B9C0 7C0802A6 */ mflr        r0
/* 8057B9C4 900100D4 */ stw         r0, 0xd4(r1)
/* 8057B9C8 DBE100C0 */ stfd        f31, 0xc0(r1)
/* 8057B9CC F3E100C8 */ psq_st      f31, 0xc8(r1), 0, 0
/* 8057B9D0 DBC100B0 */ stfd        f30, 0xb0(r1)
/* 8057B9D4 F3C100B8 */ psq_st      f30, 0xb8(r1), 0, 0
/* 8057B9D8 DBA100A0 */ stfd        f29, 0xa0(r1)
/* 8057B9DC F3A100A8 */ psq_st      f29, 0xa8(r1), 0, 0
/* 8057B9E0 DB810090 */ stfd        f28, 0x90(r1)
/* 8057B9E4 F3810098 */ psq_st      f28, 0x98(r1), 0, 0
/* 8057B9E8 DB610080 */ stfd        f27, 0x80(r1)
/* 8057B9EC F3610088 */ psq_st      f27, 0x88(r1), 0, 0
/* 8057B9F0 93E1007C */ stw         r31, 0x7c(r1)
/* 8057B9F4 3FE08089 */ lis         r31, lbl_80891a00@ha
/* 8057B9F8 3BFF1A00 */ addi        r31, r31, lbl_80891a00@l
/* 8057B9FC 93C10078 */ stw         r30, 0x78(r1)
/* 8057BA00 3FC0808B */ lis         r30, lbl_808b58f0@ha
/* 8057BA04 3BDE58F0 */ addi        r30, r30, lbl_808b58f0@l
/* 8057BA08 93A10074 */ stw         r29, 0x74(r1)
/* 8057BA0C 7C7D1B78 */ mr          r29, r3
/* 8057BA10 93810070 */ stw         r28, 0x70(r1)
/* 8057BA14 C0030020 */ lfs         f0, 0x20(r3)
/* 8057BA18 D0030024 */ stfs        f0, 0x24(r3)
/* 8057BA1C 80830000 */ lwz         r4, 0(r3)
/* 8057BA20 80840004 */ lwz         r4, 4(r4)
/* 8057BA24 80040004 */ lwz         r0, 4(r4)
/* 8057BA28 540005AD */ rlwinm.     r0, r0, 0, 0x16, 0x16
/* 8057BA2C 41820154 */ beq-        lbl_8057bb80
/* 8057BA30 480152D9 */ bl          playerPointers_getSpeed
/* 8057BA34 C01E0018 */ lfs         f0, 0x18(r30)
/* 8057BA38 C0230004 */ lfs         f1, 4(r3)
/* 8057BA3C FC000050 */ fneg        f0, f0
/* 8057BA40 FC010040 */ fcmpo       cr0, f1, f0
/* 8057BA44 4080013C */ bge-        lbl_8057bb80
/* 8057BA48 801D0218 */ lwz         r0, 0x218(r29)
/* 8057BA4C 2800000A */ cmplwi      r0, 0xa
/* 8057BA50 40810130 */ ble-        lbl_8057bb80
/* 8057BA54 7FA3EB78 */ mr          r3, r29
/* 8057BA58 480152B1 */ bl          playerPointers_getSpeed
/* 8057BA5C C07D0044 */ lfs         f3, 0x44(r29)
/* 8057BA60 C0430000 */ lfs         f2, 0(r3)
/* 8057BA64 C03D0048 */ lfs         f1, 0x48(r29)
/* 8057BA68 C0030004 */ lfs         f0, 4(r3)
/* 8057BA6C EC4300B2 */ fmuls       f2, f3, f2
/* 8057BA70 C09D004C */ lfs         f4, 0x4c(r29)
/* 8057BA74 EC210032 */ fmuls       f1, f1, f0
/* 8057BA78 C0630008 */ lfs         f3, 8(r3)
/* 8057BA7C C01E0018 */ lfs         f0, 0x18(r30)
/* 8057BA80 EC6400F2 */ fmuls       f3, f4, f3
/* 8057BA84 EC22082A */ fadds       f1, f2, f1
/* 8057BA88 FC000050 */ fneg        f0, f0
/* 8057BA8C EC23082A */ fadds       f1, f3, f1
/* 8057BA90 FC010040 */ fcmpo       cr0, f1, f0
/* 8057BA94 408000EC */ bge-        lbl_8057bb80
/* 8057BA98 7FA3EB78 */ mr          r3, r29
/* 8057BA9C 48014931 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057BAA0 3C80802A */ lis         r4, RKSystem_ey@ha
/* 8057BAA4 38A10030 */ addi        r5, r1, 0x30
/* 8057BAA8 38844130 */ addi        r4, r4, RKSystem_ey@l
/* 8057BAAC 386300F0 */ addi        r3, r3, 0xf0
/* 8057BAB0 4BCBE821 */ bl          rotateVector__Q23EGG5QuatfFRCQ23EGG8Vector3fRQ23EGG8Vector3f
/* 8057BAB4 C0410030 */ lfs         f2, 0x30(r1)
/* 8057BAB8 389D0044 */ addi        r4, r29, 0x44
/* 8057BABC C07D0044 */ lfs         f3, 0x44(r29)
/* 8057BAC0 3861000C */ addi        r3, r1, 0xc
/* 8057BAC4 C03D0048 */ lfs         f1, 0x48(r29)
/* 8057BAC8 38A10030 */ addi        r5, r1, 0x30
/* 8057BACC C0010034 */ lfs         f0, 0x34(r1)
/* 8057BAD0 EC4300B2 */ fmuls       f2, f3, f2
/* 8057BAD4 C07D004C */ lfs         f3, 0x4c(r29)
/* 8057BAD8 EC010032 */ fmuls       f0, f1, f0
/* 8057BADC C0210038 */ lfs         f1, 0x38(r1)
/* 8057BAE0 EC230072 */ fmuls       f1, f3, f1
/* 8057BAE4 EC02002A */ fadds       f0, f2, f0
/* 8057BAE8 EFE1002A */ fadds       f31, f1, f0
/* 8057BAEC 4BFBBD45 */ bl          VEC3_fromCross
/* 8057BAF0 C021000C */ lfs         f1, 0xc(r1)
/* 8057BAF4 C0010010 */ lfs         f0, 0x10(r1)
/* 8057BAF8 EC210072 */ fmuls       f1, f1, f1
/* 8057BAFC C0410014 */ lfs         f2, 0x14(r1)
/* 8057BB00 EC000032 */ fmuls       f0, f0, f0
/* 8057BB04 EC4200B2 */ fmuls       f2, f2, f2
/* 8057BB08 EC01002A */ fadds       f0, f1, f0
/* 8057BB0C EC22002A */ fadds       f1, f2, f0
/* 8057BB10 4BCB3CFD */ bl          sqrt__Q23EGG5MathfFf
/* 8057BB14 FC40F890 */ fmr         f2, f31
/* 8057BB18 4BCB3DCD */ bl          atan2_Q23EGG5MathfFff
/* 8057BB1C C01F0000 */ lfs         f0, 0(r31)
/* 8057BB20 FC010040 */ fcmpo       cr0, f1, f0
/* 8057BB24 40810008 */ ble-        lbl_8057bb2c
/* 8057BB28 48000008 */ b           lbl_8057bb30
lbl_8057bb2c:
/* 8057BB2C FC200850 */ fneg        f1, f1
lbl_8057bb30:
/* 8057BB30 C01F0058 */ lfs         f0, 0x58(r31)
/* 8057BB34 C07E001C */ lfs         f3, 0x1c(r30)
/* 8057BB38 EC000072 */ fmuls       f0, f0, f1
/* 8057BB3C FC000210 */ fabs        f0, f0
/* 8057BB40 FC001840 */ fcmpo       cr0, f0, f3
/* 8057BB44 4081003C */ ble-        lbl_8057bb80
/* 8057BB48 C03F0080 */ lfs         f1, 0x80(r31)
/* 8057BB4C EC401828 */ fsubs       f2, f0, f3
/* 8057BB50 C01E0020 */ lfs         f0, 0x20(r30)
/* 8057BB54 EC211828 */ fsubs       f1, f1, f3
/* 8057BB58 EC220824 */ fdivs       f1, f2, f1
/* 8057BB5C EC400072 */ fmuls       f2, f0, f1
/* 8057BB60 FC001040 */ fcmpo       cr0, f0, f2
/* 8057BB64 40800008 */ bge-        lbl_8057bb6c
/* 8057BB68 FC400090 */ fmr         f2, f0
lbl_8057bb6c:
/* 8057BB6C C03F0004 */ lfs         f1, 4(r31)
/* 8057BB70 C01D0020 */ lfs         f0, 0x20(r29)
/* 8057BB74 EC211028 */ fsubs       f1, f1, f2
/* 8057BB78 EC000072 */ fmuls       f0, f0, f1
/* 8057BB7C D01D0020 */ stfs        f0, 0x20(r29)
lbl_8057bb80:
/* 8057BB80 807D0000 */ lwz         r3, 0(r29)
/* 8057BB84 80630004 */ lwz         r3, 4(r3)
/* 8057BB88 80830008 */ lwz         r4, 8(r3)
/* 8057BB8C 548007FF */ clrlwi.     r0, r4, 0x1f
/* 8057BB90 40820014 */ bne-        lbl_8057bba4
/* 8057BB94 7FA3EB78 */ mr          r3, r29
/* 8057BB98 549C7FFE */ rlwinm      r28, r4, 0xf, 0x1f, 0x1f
/* 8057BB9C 48014831 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057BBA0 9B830172 */ stb         r28, 0x172(r3)
lbl_8057bba4:
/* 8057BBA4 807D0000 */ lwz         r3, 0(r29)
/* 8057BBA8 80630004 */ lwz         r3, 4(r3)
/* 8057BBAC 8003000C */ lwz         r0, 0xc(r3)
/* 8057BBB0 54000109 */ rlwinm.     r0, r0, 0, 4, 4
/* 8057BBB4 4182002C */ beq-        lbl_8057bbe0
/* 8057BBB8 7FA3EB78 */ mr          r3, r29
/* 8057BBBC 48015A5D */ bl          kartAccessor_60__Q24Kart15KartObjectProxyFv
/* 8057BBC0 C05D0010 */ lfs         f2, 0x10(r29)
/* 8057BBC4 C01E0108 */ lfs         f0, 0x108(r30)
/* 8057BBC8 C023002C */ lfs         f1, 0x2c(r3)
/* 8057BBCC EC0000B2 */ fmuls       f0, f0, f2
/* 8057BBD0 EFE00072 */ fmuls       f31, f0, f1
/* 8057BBD4 D3FD0018 */ stfs        f31, 0x18(r29)
/* 8057BBD8 D3FD0020 */ stfs        f31, 0x20(r29)
/* 8057BBDC 480002CC */ b           lbl_8057bea8
lbl_8057bbe0:
/* 8057BBE0 80030008 */ lwz         r0, 8(r3)
/* 8057BBE4 5400035B */ rlwinm.     r0, r0, 0, 0xd, 0xd
/* 8057BBE8 41820010 */ beq-        lbl_8057bbf8
/* 8057BBEC C01F0000 */ lfs         f0, 0(r31)
/* 8057BBF0 D01D0020 */ stfs        f0, 0x20(r29)
/* 8057BBF4 48000054 */ b           lbl_8057bc48
lbl_8057bbf8:
/* 8057BBF8 C07D0030 */ lfs         f3, 0x30(r29)
/* 8057BBFC C01F0000 */ lfs         f0, 0(r31)
/* 8057BC00 FC030040 */ fcmpo       cr0, f3, f0
/* 8057BC04 40800034 */ bge-        lbl_8057bc38
/* 8057BC08 C05D0020 */ lfs         f2, 0x20(r29)
/* 8057BC0C C03F0068 */ lfs         f1, 0x68(r31)
/* 8057BC10 FC020840 */ fcmpo       cr0, f2, f1
/* 8057BC14 4080000C */ bge-        lbl_8057bc20
/* 8057BC18 D01D0030 */ stfs        f0, 0x30(r29)
/* 8057BC1C 4800001C */ b           lbl_8057bc38
lbl_8057bc20:
/* 8057BC20 EC02182A */ fadds       f0, f2, f3
/* 8057BC24 FC000840 */ fcmpo       cr0, f0, f1
/* 8057BC28 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 8057BC2C 4082000C */ bne-        lbl_8057bc38
/* 8057BC30 EC011028 */ fsubs       f0, f1, f2
/* 8057BC34 D01D0030 */ stfs        f0, 0x30(r29)
lbl_8057bc38:
/* 8057BC38 C03D0020 */ lfs         f1, 0x20(r29)
/* 8057BC3C C01D0030 */ lfs         f0, 0x30(r29)
/* 8057BC40 EC01002A */ fadds       f0, f1, f0
/* 8057BC44 D01D0020 */ stfs        f0, 0x20(r29)
lbl_8057bc48:
/* 8057BC48 807D0000 */ lwz         r3, 0(r29)
/* 8057BC4C 80630004 */ lwz         r3, 4(r3)
/* 8057BC50 80030004 */ lwz         r0, 4(r3)
/* 8057BC54 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 8057BC58 41820018 */ beq-        lbl_8057bc70
/* 8057BC5C C03D0020 */ lfs         f1, 0x20(r29)
/* 8057BC60 C01E0010 */ lfs         f0, 0x10(r30)
/* 8057BC64 EC010032 */ fmuls       f0, f1, f0
/* 8057BC68 D01D0020 */ stfs        f0, 0x20(r29)
/* 8057BC6C 4800007C */ b           lbl_8057bce8
lbl_8057bc70:
/* 8057BC70 80030008 */ lwz         r0, 8(r3)
/* 8057BC74 5400018D */ rlwinm.     r0, r0, 0, 6, 6
/* 8057BC78 41820018 */ beq-        lbl_8057bc90
/* 8057BC7C C03D0020 */ lfs         f1, 0x20(r29)
/* 8057BC80 C01F0084 */ lfs         f0, 0x84(r31)
/* 8057BC84 EC010032 */ fmuls       f0, f1, f0
/* 8057BC88 D01D0020 */ stfs        f0, 0x20(r29)
/* 8057BC8C 4800005C */ b           lbl_8057bce8
lbl_8057bc90:
/* 8057BC90 801D0248 */ lwz         r0, 0x248(r29)
/* 8057BC94 2C000001 */ cmpwi       r0, 1
/* 8057BC98 40820050 */ bne-        lbl_8057bce8
/* 8057BC9C C03F0000 */ lfs         f1, 0(r31)
/* 8057BCA0 C01D0020 */ lfs         f0, 0x20(r29)
/* 8057BCA4 FC010040 */ fcmpo       cr0, f1, f0
/* 8057BCA8 40810010 */ ble-        lbl_8057bcb8
/* 8057BCAC D03D0020 */ stfs        f1, 0x20(r29)
/* 8057BCB0 38000001 */ li          r0, 1
/* 8057BCB4 48000008 */ b           lbl_8057bcbc
lbl_8057bcb8:
/* 8057BCB8 38000000 */ li          r0, 0
lbl_8057bcbc:
/* 8057BCBC 2C000000 */ cmpwi       r0, 0
/* 8057BCC0 41820028 */ beq-        lbl_8057bce8
/* 8057BCC4 38600002 */ li          r3, 2
/* 8057BCC8 38000000 */ li          r0, 0
/* 8057BCCC 907D0248 */ stw         r3, 0x248(r29)
/* 8057BCD0 7FA3EB78 */ mr          r3, r29
/* 8057BCD4 38800008 */ li          r4, 8
/* 8057BCD8 38A00000 */ li          r5, 0
/* 8057BCDC B01D024C */ sth         r0, 0x24c(r29)
/* 8057BCE0 38C00001 */ li          r6, 1
/* 8057BCE4 4801536D */ bl          unk_80591050
lbl_8057bce8:
/* 8057BCE8 807D0000 */ lwz         r3, 0(r29)
/* 8057BCEC 80630004 */ lwz         r3, 4(r3)
/* 8057BCF0 80030004 */ lwz         r0, 4(r3)
/* 8057BCF4 54000043 */ rlwinm.     r0, r0, 0, 1, 1
/* 8057BCF8 4182000C */ beq-        lbl_8057bd04
/* 8057BCFC C3FD01B4 */ lfs         f31, 0x1b4(r29)
/* 8057BD00 48000034 */ b           lbl_8057bd34
lbl_8057bd04:
/* 8057BD04 7FA3EB78 */ mr          r3, r29
/* 8057BD08 4801495D */ bl          PlayerPointers_isCpu
/* 8057BD0C 2C030000 */ cmpwi       r3, 0
/* 8057BD10 41820018 */ beq-        lbl_8057bd28
/* 8057BD14 807D0000 */ lwz         r3, 0(r29)
/* 8057BD18 80630004 */ lwz         r3, 4(r3)
/* 8057BD1C 80030004 */ lwz         r0, 4(r3)
/* 8057BD20 5400035B */ rlwinm.     r0, r0, 0, 0xd, 0xd
/* 8057BD24 4082000C */ bne-        lbl_8057bd30
lbl_8057bd28:
/* 8057BD28 C3FD0014 */ lfs         f31, 0x14(r29)
/* 8057BD2C 48000008 */ b           lbl_8057bd34
lbl_8057bd30:
/* 8057BD30 C3FD001C */ lfs         f31, 0x1c(r29)
lbl_8057bd34:
/* 8057BD34 807D0000 */ lwz         r3, 0(r29)
/* 8057BD38 C39D0128 */ lfs         f28, 0x128(r29)
/* 8057BD3C 80830004 */ lwz         r4, 4(r3)
/* 8057BD40 C3DD011C */ lfs         f30, 0x11c(r29)
/* 8057BD44 80A4000C */ lwz         r5, 0xc(r4)
/* 8057BD48 C01F0000 */ lfs         f0, 0(r31)
/* 8057BD4C 54A00084 */ rlwinm      r0, r5, 0, 2, 2
/* 8057BD50 50A00421 */ rlwimi.     r0, r5, 0, 0x10, 0x10
/* 8057BD54 4182001C */ beq-        lbl_8057bd70
/* 8057BD58 387E03B8 */ addi        r3, r30, 0x3b8
/* 8057BD5C C0030014 */ lfs         f0, 0x14(r3)
/* 8057BD60 FC00E040 */ fcmpo       cr0, f0, f28
/* 8057BD64 40810008 */ ble-        lbl_8057bd6c
/* 8057BD68 48000008 */ b           lbl_8057bd70
lbl_8057bd6c:
/* 8057BD6C FC00E090 */ fmr         f0, f28
lbl_8057bd70:
/* 8057BD70 80040008 */ lwz         r0, 8(r4)
/* 8057BD74 54000001 */ rlwinm.     r0, r0, 0, 0, 0
/* 8057BD78 4182001C */ beq-        lbl_8057bd94
/* 8057BD7C 387E03B8 */ addi        r3, r30, 0x3b8
/* 8057BD80 C0030004 */ lfs         f0, 4(r3)
/* 8057BD84 FC00E040 */ fcmpo       cr0, f0, f28
/* 8057BD88 40810008 */ ble-        lbl_8057bd90
/* 8057BD8C 48000008 */ b           lbl_8057bd94
lbl_8057bd90:
/* 8057BD90 FC00E090 */ fmr         f0, f28
lbl_8057bd94:
/* 8057BD94 54A007BD */ rlwinm.     r0, r5, 0, 0x1e, 0x1e
/* 8057BD98 4182001C */ beq-        lbl_8057bdb4
/* 8057BD9C 387E03B8 */ addi        r3, r30, 0x3b8
/* 8057BDA0 C0030008 */ lfs         f0, 8(r3)
/* 8057BDA4 FC00E040 */ fcmpo       cr0, f0, f28
/* 8057BDA8 40810008 */ ble-        lbl_8057bdb0
/* 8057BDAC 48000008 */ b           lbl_8057bdb4
lbl_8057bdb0:
/* 8057BDB0 FC00E090 */ fmr         f0, f28
lbl_8057bdb4:
/* 8057BDB4 FC00E040 */ fcmpo       cr0, f0, f28
/* 8057BDB8 40810008 */ ble-        lbl_8057bdc0
/* 8057BDBC FF800090 */ fmr         f28, f0
lbl_8057bdc0:
/* 8057BDC0 54A003DF */ rlwinm.     r0, r5, 0, 0xf, 0xf
/* 8057BDC4 C37D0178 */ lfs         f27, 0x178(r29)
/* 8057BDC8 4182000C */ beq-        lbl_8057bdd4
/* 8057BDCC C01E00E8 */ lfs         f0, 0xe8(r30)
/* 8057BDD0 EF7B0032 */ fmuls       f27, f27, f0
lbl_8057bdd4:
/* 8057BDD4 819D000C */ lwz         r12, 0xc(r29)
/* 8057BDD8 7FA3EB78 */ mr          r3, r29
/* 8057BDDC C3BD00B8 */ lfs         f29, 0xb8(r29)
/* 8057BDE0 818C0050 */ lwz         r12, 0x50(r12)
/* 8057BDE4 7D8903A6 */ mtctr       r12
/* 8057BDE8 4E800421 */ bctrl       
/* 8057BDEC EC1E082A */ fadds       f0, f30, f1
/* 8057BDF0 D3DD01B8 */ stfs        f30, 0x1b8(r29)
/* 8057BDF4 807D0000 */ lwz         r3, 0(r29)
/* 8057BDF8 80630004 */ lwz         r3, 4(r3)
/* 8057BDFC EC000772 */ fmuls       f0, f0, f29
/* 8057BE00 8003000C */ lwz         r0, 0xc(r3)
/* 8057BE04 EC1B0032 */ fmuls       f0, f27, f0
/* 8057BE08 540002D7 */ rlwinm.     r0, r0, 0, 0xb, 0xb
/* 8057BE0C 41820008 */ beq-        lbl_8057be14
/* 8057BE10 C01F0004 */ lfs         f0, 4(r31)
lbl_8057be14:
/* 8057BE14 80830004 */ lwz         r4, 4(r3)
/* 8057BE18 EFFF0032 */ fmuls       f31, f31, f0
/* 8057BE1C 54800001 */ rlwinm.     r0, r4, 0, 0, 0
/* 8057BE20 40820010 */ bne-        lbl_8057be30
/* 8057BE24 80030008 */ lwz         r0, 8(r3)
/* 8057BE28 70001600 */ andi.       r0, r0, 0x1600
/* 8057BE2C 41820008 */ beq-        lbl_8057be34
lbl_8057be30:
/* 8057BE30 C37F0004 */ lfs         f27, 4(r31)
lbl_8057be34:
/* 8057BE34 C01D00B8 */ lfs         f0, 0xb8(r29)
/* 8057BE38 54800043 */ rlwinm.     r0, r4, 0, 1, 1
/* 8057BE3C C03D0010 */ lfs         f1, 0x10(r29)
/* 8057BE40 EC010032 */ fmuls       f0, f1, f0
/* 8057BE44 EC1B0032 */ fmuls       f0, f27, f0
/* 8057BE48 EF9C0032 */ fmuls       f28, f28, f0
/* 8057BE4C 4082001C */ bne-        lbl_8057be68
/* 8057BE50 C01F0000 */ lfs         f0, 0(r31)
/* 8057BE54 FC1C0040 */ fcmpo       cr0, f28, f0
/* 8057BE58 40810010 */ ble-        lbl_8057be68
/* 8057BE5C FC1CF840 */ fcmpo       cr0, f28, f31
/* 8057BE60 40810008 */ ble-        lbl_8057be68
/* 8057BE64 FFE0E090 */ fmr         f31, f28
lbl_8057be68:
/* 8057BE68 D39D01BC */ stfs        f28, 0x1bc(r29)
/* 8057BE6C 807D0000 */ lwz         r3, 0(r29)
/* 8057BE70 80630004 */ lwz         r3, 4(r3)
/* 8057BE74 80030004 */ lwz         r0, 4(r3)
/* 8057BE78 54000001 */ rlwinm.     r0, r0, 0, 0, 0
/* 8057BE7C 41820014 */ beq-        lbl_8057be90
/* 8057BE80 C01E025C */ lfs         f0, 0x25c(r30)
/* 8057BE84 FC00F840 */ fcmpo       cr0, f0, f31
/* 8057BE88 40810008 */ ble-        lbl_8057be90
/* 8057BE8C FFE00090 */ fmr         f31, f0
lbl_8057be90:
/* 8057BE90 3C60809C */ lis         r3, lbl_809c18f8@ha
/* 8057BE94 806318F8 */ lwz         r3, lbl_809c18f8@l(r3)
/* 8057BE98 80030028 */ lwz         r0, 0x28(r3)
/* 8057BE9C 540007BD */ rlwinm.     r0, r0, 0, 0x1e, 0x1e
/* 8057BEA0 41820008 */ beq-        lbl_8057bea8
/* 8057BEA4 C3FD001C */ lfs         f31, 0x1c(r29)
lbl_8057bea8:
/* 8057BEA8 C03D0020 */ lfs         f1, 0x20(r29)
/* 8057BEAC C01F0000 */ lfs         f0, 0(r31)
/* 8057BEB0 FC010040 */ fcmpo       cr0, f1, f0
/* 8057BEB4 4081000C */ ble-        lbl_8057bec0
/* 8057BEB8 C09F0004 */ lfs         f4, 4(r31)
/* 8057BEBC 48000008 */ b           lbl_8057bec4
lbl_8057bec0:
/* 8057BEC0 C09F000C */ lfs         f4, 0xc(r31)
lbl_8057bec4:
/* 8057BEC4 C05D005C */ lfs         f2, 0x5c(r29)
/* 8057BEC8 7FA3EB78 */ mr          r3, r29
/* 8057BECC C03D0064 */ lfs         f1, 0x64(r29)
/* 8057BED0 38810008 */ addi        r4, r1, 8
/* 8057BED4 EC6400B2 */ fmuls       f3, f4, f2
/* 8057BED8 C01D0060 */ lfs         f0, 0x60(r29)
/* 8057BEDC EC240072 */ fmuls       f1, f4, f1
/* 8057BEE0 EC440032 */ fmuls       f2, f4, f0
/* 8057BEE4 D07D0068 */ stfs        f3, 0x68(r29)
/* 8057BEE8 C01F0004 */ lfs         f0, 4(r31)
/* 8057BEEC D05D006C */ stfs        f2, 0x6c(r29)
/* 8057BEF0 D03D0070 */ stfs        f1, 0x70(r29)
/* 8057BEF4 D0010008 */ stfs        f0, 8(r1)
/* 8057BEF8 4BFFF211 */ bl          PlayerSub10_computeWallCollisionSpeedFactor
/* 8057BEFC 807D0000 */ lwz         r3, 0(r29)
/* 8057BF00 EFFF0072 */ fmuls       f31, f31, f1
/* 8057BF04 80630004 */ lwz         r3, 4(r3)
/* 8057BF08 8003000C */ lwz         r0, 0xc(r3)
/* 8057BF0C 5400077B */ rlwinm.     r0, r0, 0, 0x1d, 0x1d
/* 8057BF10 4182000C */ beq-        lbl_8057bf1c
/* 8057BF14 C01E02A8 */ lfs         f0, 0x2a8(r30)
/* 8057BF18 EFFF0032 */ fmuls       f31, f31, f0
lbl_8057bf1c:
/* 8057BF1C 80030014 */ lwz         r0, 0x14(r3)
/* 8057BF20 54000739 */ rlwinm.     r0, r0, 0, 0x1c, 0x1c
/* 8057BF24 41820024 */ beq-        lbl_8057bf48
/* 8057BF28 7FA3EB78 */ mr          r3, r29
/* 8057BF2C 48015521 */ bl          kartNetReceiver__Q24Kart15KartObjectProxyFv
/* 8057BF30 C0030084 */ lfs         f0, 0x84(r3)
/* 8057BF34 FC00F840 */ fcmpo       cr0, f0, f31
/* 8057BF38 40810010 */ ble-        lbl_8057bf48
/* 8057BF3C 7FA3EB78 */ mr          r3, r29
/* 8057BF40 4801550D */ bl          kartNetReceiver__Q24Kart15KartObjectProxyFv
/* 8057BF44 C3E30084 */ lfs         f31, 0x84(r3)
lbl_8057bf48:
/* 8057BF48 C03D0018 */ lfs         f1, 0x18(r29)
/* 8057BF4C FC01F840 */ fcmpo       cr0, f1, f31
/* 8057BF50 4081003C */ ble-        lbl_8057bf8c
/* 8057BF54 807D0000 */ lwz         r3, 0(r29)
/* 8057BF58 80630004 */ lwz         r3, 4(r3)
/* 8057BF5C 80030004 */ lwz         r0, 4(r3)
/* 8057BF60 54000675 */ rlwinm.     r0, r0, 0, 0x19, 0x1a
/* 8057BF64 4182000C */ beq-        lbl_8057bf70
/* 8057BF68 D3FD0018 */ stfs        f31, 0x18(r29)
/* 8057BF6C 48000024 */ b           lbl_8057bf90
lbl_8057bf70:
/* 8057BF70 C01E0208 */ lfs         f0, 0x208(r30)
/* 8057BF74 EC010028 */ fsubs       f0, f1, f0
/* 8057BF78 D01D0018 */ stfs        f0, 0x18(r29)
/* 8057BF7C FC1F0040 */ fcmpo       cr0, f31, f0
/* 8057BF80 40810010 */ ble-        lbl_8057bf90
/* 8057BF84 D3FD0018 */ stfs        f31, 0x18(r29)
/* 8057BF88 48000008 */ b           lbl_8057bf90
lbl_8057bf8c:
/* 8057BF8C D3FD0018 */ stfs        f31, 0x18(r29)
lbl_8057bf90:
/* 8057BF90 807D0000 */ lwz         r3, 0(r29)
/* 8057BF94 80630004 */ lwz         r3, 4(r3)
/* 8057BF98 8003000C */ lwz         r0, 0xc(r3)
/* 8057BF9C 5400035B */ rlwinm.     r0, r0, 0, 0xd, 0xd
/* 8057BFA0 41820014 */ beq-        lbl_8057bfb4
/* 8057BFA4 C03D0020 */ lfs         f1, 0x20(r29)
/* 8057BFA8 C01F0088 */ lfs         f0, 0x88(r31)
/* 8057BFAC EC010032 */ fmuls       f0, f1, f0
/* 8057BFB0 D01D0020 */ stfs        f0, 0x20(r29)
lbl_8057bfb4:
/* 8057BFB4 807D0000 */ lwz         r3, 0(r29)
/* 8057BFB8 80630004 */ lwz         r3, 4(r3)
/* 8057BFBC 80030014 */ lwz         r0, 0x14(r3)
/* 8057BFC0 540005AD */ rlwinm.     r0, r0, 0, 0x16, 0x16
/* 8057BFC4 41820010 */ beq-        lbl_8057bfd4
/* 8057BFC8 C01F0000 */ lfs         f0, 0(r31)
/* 8057BFCC D01D0020 */ stfs        f0, 0x20(r29)
/* 8057BFD0 D01D0018 */ stfs        f0, 0x18(r29)
lbl_8057bfd4:
/* 8057BFD4 C03D002C */ lfs         f1, 0x2c(r29)
/* 8057BFD8 C01D0018 */ lfs         f0, 0x18(r29)
/* 8057BFDC FC010040 */ fcmpo       cr0, f1, f0
/* 8057BFE0 40800008 */ bge-        lbl_8057bfe8
/* 8057BFE4 D03D0018 */ stfs        f1, 0x18(r29)
lbl_8057bfe8:
/* 8057BFE8 C05D0018 */ lfs         f2, 0x18(r29)
/* 8057BFEC C01D0020 */ lfs         f0, 0x20(r29)
/* 8057BFF0 FC201050 */ fneg        f1, f2
/* 8057BFF4 FC010040 */ fcmpo       cr0, f1, f0
/* 8057BFF8 4081000C */ ble-        lbl_8057c004
/* 8057BFFC D03D0020 */ stfs        f1, 0x20(r29)
/* 8057C000 48000010 */ b           lbl_8057c010
lbl_8057c004:
/* 8057C004 FC020040 */ fcmpo       cr0, f2, f0
/* 8057C008 40800008 */ bge-        lbl_8057c010
/* 8057C00C D05D0020 */ stfs        f2, 0x20(r29)
lbl_8057c010:
/* 8057C010 807D0000 */ lwz         r3, 0(r29)
/* 8057C014 80630004 */ lwz         r3, 4(r3)
/* 8057C018 80030004 */ lwz         r0, 4(r3)
/* 8057C01C 54000043 */ rlwinm.     r0, r0, 0, 1, 1
/* 8057C020 41820018 */ beq-        lbl_8057c038
/* 8057C024 C03D01B0 */ lfs         f1, 0x1b0(r29)
/* 8057C028 C01D0020 */ lfs         f0, 0x20(r29)
/* 8057C02C FC010040 */ fcmpo       cr0, f1, f0
/* 8057C030 40810008 */ ble-        lbl_8057c038
/* 8057C034 D03D0020 */ stfs        f1, 0x20(r29)
lbl_8057c038:
/* 8057C038 C03D0024 */ lfs         f1, 0x24(r29)
/* 8057C03C 7FA3EB78 */ mr          r3, r29
/* 8057C040 C0410008 */ lfs         f2, 8(r1)
/* 8057C044 4BFFF25D */ bl          unk_8057b2a0
/* 8057C048 C05D0014 */ lfs         f2, 0x14(r29)
/* 8057C04C C03D0020 */ lfs         f1, 0x20(r29)
/* 8057C050 C01F0004 */ lfs         f0, 4(r31)
/* 8057C054 EC211024 */ fdivs       f1, f1, f2
/* 8057C058 FC200A10 */ fabs        f1, f1
/* 8057C05C D03D00B4 */ stfs        f1, 0xb4(r29)
/* 8057C060 FC200818 */ frsp        f1, f1
/* 8057C064 D03D00B0 */ stfs        f1, 0xb0(r29)
/* 8057C068 FC000840 */ fcmpo       cr0, f0, f1
/* 8057C06C 40800008 */ bge-        lbl_8057c074
/* 8057C070 D01D00B0 */ stfs        f0, 0xb0(r29)
lbl_8057c074:
/* 8057C074 C11D0038 */ lfs         f8, 0x38(r29)
/* 8057C078 C03D0060 */ lfs         f1, 0x60(r29)
/* 8057C07C C01D0040 */ lfs         f0, 0x40(r29)
/* 8057C080 C07D005C */ lfs         f3, 0x5c(r29)
/* 8057C084 ECE80072 */ fmuls       f7, f8, f1
/* 8057C088 C0DD003C */ lfs         f6, 0x3c(r29)
/* 8057C08C EC200072 */ fmuls       f1, f0, f1
/* 8057C090 EC8000F2 */ fmuls       f4, f0, f3
/* 8057C094 C05D0064 */ lfs         f2, 0x64(r29)
/* 8057C098 ECA600F2 */ fmuls       f5, f6, f3
/* 8057C09C EC6800B2 */ fmuls       f3, f8, f2
/* 8057C0A0 C01F0000 */ lfs         f0, 0(r31)
/* 8057C0A4 EC4600B2 */ fmuls       f2, f6, f2
/* 8057C0A8 ECA72828 */ fsubs       f5, f7, f5
/* 8057C0AC EC641828 */ fsubs       f3, f4, f3
/* 8057C0B0 EC420828 */ fsubs       f2, f2, f1
/* 8057C0B4 D0A1002C */ stfs        f5, 0x2c(r1)
/* 8057C0B8 D0410024 */ stfs        f2, 0x24(r1)
/* 8057C0BC D0610028 */ stfs        f3, 0x28(r1)
/* 8057C0C0 C03D0020 */ lfs         f1, 0x20(r29)
/* 8057C0C4 FC010040 */ fcmpo       cr0, f1, f0
/* 8057C0C8 4080001C */ bge-        lbl_8057c0e4
/* 8057C0CC FC401050 */ fneg        f2, f2
/* 8057C0D0 FC201850 */ fneg        f1, f3
/* 8057C0D4 FC002850 */ fneg        f0, f5
/* 8057C0D8 D0410024 */ stfs        f2, 0x24(r1)
/* 8057C0DC D0210028 */ stfs        f1, 0x28(r1)
/* 8057C0E0 D001002C */ stfs        f0, 0x2c(r1)
lbl_8057c0e4:
/* 8057C0E4 C37E00A8 */ lfs         f27, 0xa8(r30)
/* 8057C0E8 7FA3EB78 */ mr          r3, r29
/* 8057C0EC 48014761 */ bl          kartCollide__Q24Kart15KartObjectProxyFv
/* 8057C0F0 8003002C */ lwz         r0, 0x2c(r3)
/* 8057C0F4 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 8057C0F8 4182000C */ beq-        lbl_8057c104
/* 8057C0FC C37E00B0 */ lfs         f27, 0xb0(r30)
/* 8057C100 4800001C */ b           lbl_8057c11c
lbl_8057c104:
/* 8057C104 807D0000 */ lwz         r3, 0(r29)
/* 8057C108 80630004 */ lwz         r3, 4(r3)
/* 8057C10C 80030004 */ lwz         r0, 4(r3)
/* 8057C110 5400035B */ rlwinm.     r0, r0, 0, 0xd, 0xd
/* 8057C114 40820008 */ bne-        lbl_8057c11c
/* 8057C118 C37E00AC */ lfs         f27, 0xac(r30)
lbl_8057c11c:
/* 8057C11C C01F0054 */ lfs         f0, 0x54(r31)
/* 8057C120 38610040 */ addi        r3, r1, 0x40
/* 8057C124 38810024 */ addi        r4, r1, 0x24
/* 8057C128 EC2006F2 */ fmuls       f1, f0, f27
/* 8057C12C 4BCB4291 */ bl          setAxisRotation__Q23EGG9Matrix34fFRCQ23EGG8Vector3ff
/* 8057C130 C0610060 */ lfs         f3, 0x60(r1)
/* 8057C134 C05D0074 */ lfs         f2, 0x74(r29)
/* 8057C138 C0210050 */ lfs         f1, 0x50(r1)
/* 8057C13C ECE300B2 */ fmuls       f7, f3, f2
/* 8057C140 C0010040 */ lfs         f0, 0x40(r1)
/* 8057C144 EC8100B2 */ fmuls       f4, f1, f2
/* 8057C148 C0610064 */ lfs         f3, 0x64(r1)
/* 8057C14C EC2000B2 */ fmuls       f1, f0, f2
/* 8057C150 C0BD0078 */ lfs         f5, 0x78(r29)
/* 8057C154 C0010044 */ lfs         f0, 0x44(r1)
/* 8057C158 ECC30172 */ fmuls       f6, f3, f5
/* 8057C15C C0410054 */ lfs         f2, 0x54(r1)
/* 8057C160 EC000172 */ fmuls       f0, f0, f5
/* 8057C164 C1010068 */ lfs         f8, 0x68(r1)
/* 8057C168 EC620172 */ fmuls       f3, f2, f5
/* 8057C16C C13D007C */ lfs         f9, 0x7c(r29)
/* 8057C170 C0A10058 */ lfs         f5, 0x58(r1)
/* 8057C174 ECC7302A */ fadds       f6, f7, f6
/* 8057C178 C0410048 */ lfs         f2, 0x48(r1)
/* 8057C17C ED080272 */ fmuls       f8, f8, f9
/* 8057C180 EC64182A */ fadds       f3, f4, f3
/* 8057C184 807D0000 */ lwz         r3, 0(r29)
/* 8057C188 ECA50272 */ fmuls       f5, f5, f9
/* 8057C18C EC01002A */ fadds       f0, f1, f0
/* 8057C190 EC420272 */ fmuls       f2, f2, f9
/* 8057C194 EC88302A */ fadds       f4, f8, f6
/* 8057C198 EC25182A */ fadds       f1, f5, f3
/* 8057C19C EC02002A */ fadds       f0, f2, f0
/* 8057C1A0 D09D007C */ stfs        f4, 0x7c(r29)
/* 8057C1A4 D03D0078 */ stfs        f1, 0x78(r29)
/* 8057C1A8 D01D0074 */ stfs        f0, 0x74(r29)
/* 8057C1AC 80830004 */ lwz         r4, 4(r3)
/* 8057C1B0 80640008 */ lwz         r3, 8(r4)
/* 8057C1B4 546003DE */ rlwinm      r0, r3, 0, 0xf, 0xf
/* 8057C1B8 506007FF */ rlwimi.     r0, r3, 0, 0x1f, 0x1f
/* 8057C1BC 40820038 */ bne-        lbl_8057c1f4
/* 8057C1C0 80640004 */ lwz         r3, 4(r4)
/* 8057C1C4 5460035B */ rlwinm.     r0, r3, 0, 0xd, 0xd
/* 8057C1C8 4182002C */ beq-        lbl_8057c1f4
/* 8057C1CC 546007FF */ clrlwi.     r0, r3, 0x1f
/* 8057C1D0 40820024 */ bne-        lbl_8057c1f4
/* 8057C1D4 3C60809C */ lis         r3, spInstance__Q26System11RaceManager@ha
/* 8057C1D8 38800002 */ li          r4, 2
/* 8057C1DC 8063D730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r3)
/* 8057C1E0 4BFBA051 */ bl          Raceinfo_isAtLeastStage
/* 8057C1E4 2C030000 */ cmpwi       r3, 0
/* 8057C1E8 4182000C */ beq-        lbl_8057c1f4
/* 8057C1EC 7FA3EB78 */ mr          r3, r29
/* 8057C1F0 4BFFEE39 */ bl          unk_8057b028
lbl_8057c1f4:
/* 8057C1F4 C05D0020 */ lfs         f2, 0x20(r29)
/* 8057C1F8 D05D0028 */ stfs        f2, 0x28(r29)
/* 8057C1FC 807D0000 */ lwz         r3, 0(r29)
/* 8057C200 C01D0078 */ lfs         f0, 0x78(r29)
/* 8057C204 80630004 */ lwz         r3, 4(r3)
/* 8057C208 EF620032 */ fmuls       f27, f2, f0
/* 8057C20C C03D0074 */ lfs         f1, 0x74(r29)
/* 8057C210 C01D007C */ lfs         f0, 0x7c(r29)
/* 8057C214 80030008 */ lwz         r0, 8(r3)
/* 8057C218 EC220072 */ fmuls       f1, f2, f1
/* 8057C21C EC020032 */ fmuls       f0, f2, f0
/* 8057C220 5400056B */ rlwinm.     r0, r0, 0, 0x15, 0x15
/* 8057C224 D0210018 */ stfs        f1, 0x18(r1)
/* 8057C228 D361001C */ stfs        f27, 0x1c(r1)
/* 8057C22C D0010020 */ stfs        f0, 0x20(r1)
/* 8057C230 4182000C */ beq-        lbl_8057c23c
/* 8057C234 4BFF7ED5 */ bl          get_65
/* 8057C238 48000008 */ b           lbl_8057c240
lbl_8057c23c:
/* 8057C23C C03E024C */ lfs         f1, 0x24c(r30)
lbl_8057c240:
/* 8057C240 FC01D840 */ fcmpo       cr0, f1, f27
/* 8057C244 40800008 */ bge-        lbl_8057c24c
/* 8057C248 FF600890 */ fmr         f27, f1
lbl_8057c24c:
/* 8057C24C D361001C */ stfs        f27, 0x1c(r1)
/* 8057C250 7FA3EB78 */ mr          r3, r29
/* 8057C254 48014179 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057C258 C043014C */ lfs         f2, 0x14c(r3)
/* 8057C25C FC20D818 */ frsp        f1, f27
/* 8057C260 C0010018 */ lfs         f0, 0x18(r1)
/* 8057C264 EC42002A */ fadds       f2, f2, f0
/* 8057C268 C0010020 */ lfs         f0, 0x20(r1)
/* 8057C26C D043014C */ stfs        f2, 0x14c(r3)
/* 8057C270 C0430150 */ lfs         f2, 0x150(r3)
/* 8057C274 EC22082A */ fadds       f1, f2, f1
/* 8057C278 D0230150 */ stfs        f1, 0x150(r3)
/* 8057C27C C0230154 */ lfs         f1, 0x154(r3)
/* 8057C280 EC01002A */ fadds       f0, f1, f0
/* 8057C284 D0030154 */ stfs        f0, 0x154(r3)
/* 8057C288 807D0000 */ lwz         r3, 0(r29)
/* 8057C28C 809D0248 */ lwz         r4, 0x248(r29)
/* 8057C290 80630004 */ lwz         r3, 4(r3)
/* 8057C294 80630004 */ lwz         r3, 4(r3)
/* 8057C298 5460035B */ rlwinm.     r0, r3, 0, 0xd, 0xd
/* 8057C29C 41820070 */ beq-        lbl_8057c30c
/* 8057C2A0 54600739 */ rlwinm.     r0, r3, 0, 0x1c, 0x1c
/* 8057C2A4 40820068 */ bne-        lbl_8057c30c
/* 8057C2A8 54600319 */ rlwinm.     r0, r3, 0, 0xc, 0xc
/* 8057C2AC 40820060 */ bne-        lbl_8057c30c
/* 8057C2B0 546007BD */ rlwinm.     r0, r3, 0, 0x1e, 0x1e
/* 8057C2B4 41820038 */ beq-        lbl_8057c2ec
/* 8057C2B8 2C040000 */ cmpwi       r4, 0
/* 8057C2BC 40820058 */ bne-        lbl_8057c314
/* 8057C2C0 C03D0028 */ lfs         f1, 0x28(r29)
/* 8057C2C4 C01F006C */ lfs         f0, 0x6c(r31)
/* 8057C2C8 FC010040 */ fcmpo       cr0, f1, f0
/* 8057C2CC 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 8057C2D0 40820010 */ bne-        lbl_8057c2e0
/* 8057C2D4 38000003 */ li          r0, 3
/* 8057C2D8 901D0248 */ stw         r0, 0x248(r29)
/* 8057C2DC 48000038 */ b           lbl_8057c314
lbl_8057c2e0:
/* 8057C2E0 38000001 */ li          r0, 1
/* 8057C2E4 901D0248 */ stw         r0, 0x248(r29)
/* 8057C2E8 4800002C */ b           lbl_8057c314
lbl_8057c2ec:
/* 8057C2EC C03D0028 */ lfs         f1, 0x28(r29)
/* 8057C2F0 C01F0000 */ lfs         f0, 0(r31)
/* 8057C2F4 FC010040 */ fcmpo       cr0, f1, f0
/* 8057C2F8 4C411382 */ cror        cr0eq, cr0gt, cr0eq
/* 8057C2FC 40820018 */ bne-        lbl_8057c314
/* 8057C300 38000000 */ li          r0, 0
/* 8057C304 901D0248 */ stw         r0, 0x248(r29)
/* 8057C308 4800000C */ b           lbl_8057c314
lbl_8057c30c:
/* 8057C30C 38000000 */ li          r0, 0
/* 8057C310 901D0248 */ stw         r0, 0x248(r29)
lbl_8057c314:
/* 8057C314 807D0000 */ lwz         r3, 0(r29)
/* 8057C318 80630004 */ lwz         r3, 4(r3)
/* 8057C31C 80030004 */ lwz         r0, 4(r3)
/* 8057C320 540007FF */ clrlwi.     r0, r0, 0x1f
/* 8057C324 40820048 */ bne-        lbl_8057c36c
/* 8057C328 801D0248 */ lwz         r0, 0x248(r29)
/* 8057C32C 2C000001 */ cmpwi       r0, 1
/* 8057C330 4082001C */ bne-        lbl_8057c34c
/* 8057C334 7FA3EB78 */ mr          r3, r29
/* 8057C338 38800008 */ li          r4, 8
/* 8057C33C 38A00000 */ li          r5, 0
/* 8057C340 38C00001 */ li          r6, 1
/* 8057C344 48014D01 */ bl          unk_80591044
/* 8057C348 48000038 */ b           lbl_8057c380
lbl_8057c34c:
/* 8057C34C 2C040001 */ cmpwi       r4, 1
/* 8057C350 40820030 */ bne-        lbl_8057c380
/* 8057C354 7FA3EB78 */ mr          r3, r29
/* 8057C358 38800008 */ li          r4, 8
/* 8057C35C 38A00000 */ li          r5, 0
/* 8057C360 38C00001 */ li          r6, 1
/* 8057C364 48014CED */ bl          unk_80591050
/* 8057C368 48000018 */ b           lbl_8057c380
lbl_8057c36c:
/* 8057C36C 7FA3EB78 */ mr          r3, r29
/* 8057C370 38800008 */ li          r4, 8
/* 8057C374 38A00000 */ li          r5, 0
/* 8057C378 38C00001 */ li          r6, 1
/* 8057C37C 48014CD5 */ bl          unk_80591050
lbl_8057c380:
/* 8057C380 E3E100C8 */ psq_l       f31, 0xc8(r1), 0, 0
/* 8057C384 CBE100C0 */ lfd         f31, 0xc0(r1)
/* 8057C388 E3C100B8 */ psq_l       f30, 0xb8(r1), 0, 0
/* 8057C38C CBC100B0 */ lfd         f30, 0xb0(r1)
/* 8057C390 E3A100A8 */ psq_l       f29, 0xa8(r1), 0, 0
/* 8057C394 CBA100A0 */ lfd         f29, 0xa0(r1)
/* 8057C398 E3810098 */ psq_l       f28, 0x98(r1), 0, 0
/* 8057C39C CB810090 */ lfd         f28, 0x90(r1)
/* 8057C3A0 E3610088 */ psq_l       f27, 0x88(r1), 0, 0
/* 8057C3A4 CB610080 */ lfd         f27, 0x80(r1)
/* 8057C3A8 83E1007C */ lwz         r31, 0x7c(r1)
/* 8057C3AC 83C10078 */ lwz         r30, 0x78(r1)
/* 8057C3B0 83A10074 */ lwz         r29, 0x74(r1)
/* 8057C3B4 800100D4 */ lwz         r0, 0xd4(r1)
/* 8057C3B8 83810070 */ lwz         r28, 0x70(r1)
/* 8057C3BC 7C0803A6 */ mtlr        r0
/* 8057C3C0 382100D0 */ addi        r1, r1, 0xd0
/* 8057C3C4 4E800020 */ blr         