nofralloc
/* 8057DC44 9421FF90 */ stwu        r1, -0x70(r1)
/* 8057DC48 7C0802A6 */ mflr        r0
/* 8057DC4C 90010074 */ stw         r0, 0x74(r1)
/* 8057DC50 DBE10060 */ stfd        f31, 0x60(r1)
/* 8057DC54 F3E10068 */ psq_st      f31, 0x68(r1), 0, 0
/* 8057DC58 93E1005C */ stw         r31, 0x5c(r1)
/* 8057DC5C 3FE08089 */ lis         r31, lbl_80891a00@ha
/* 8057DC60 3BFF1A00 */ addi        r31, r31, lbl_80891a00@l
/* 8057DC64 93C10058 */ stw         r30, 0x58(r1)
/* 8057DC68 93A10054 */ stw         r29, 0x54(r1)
/* 8057DC6C 7C7D1B78 */ mr          r29, r3
/* 8057DC70 48000B95 */ bl          PlayerSub10_updateHopAndSlipdrift
/* 8057DC74 809D0000 */ lwz         r4, 0(r29)
/* 8057DC78 7C7E1B78 */ mr          r30, r3
/* 8057DC7C 80640004 */ lwz         r3, 4(r4)
/* 8057DC80 80030008 */ lwz         r0, 8(r3)
/* 8057DC84 5400056B */ rlwinm.     r0, r0, 0, 0x15, 0x15
/* 8057DC88 408201D0 */ bne-        lbl_8057de58
/* 8057DC8C 7FA3EB78 */ mr          r3, r29
/* 8057DC90 4801273D */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057DC94 3C80802A */ lis         r4, lbl_802a4148@ha
/* 8057DC98 38A10044 */ addi        r5, r1, 0x44
/* 8057DC9C 38844148 */ addi        r4, r4, lbl_802a4148@l
/* 8057DCA0 386300F0 */ addi        r3, r3, 0xf0
/* 8057DCA4 4BCBC62D */ bl          rotateVector__Q23EGG5QuatfFRCQ23EGG8Vector3fRQ23EGG8Vector3f
/* 8057DCA8 807D0000 */ lwz         r3, 0(r29)
/* 8057DCAC 80630004 */ lwz         r3, 4(r3)
/* 8057DCB0 80030004 */ lwz         r0, 4(r3)
/* 8057DCB4 5400035B */ rlwinm.     r0, r0, 0, 0xd, 0xd
/* 8057DCB8 40820188 */ bne-        lbl_8057de40
/* 8057DCBC 8003000C */ lwz         r0, 0xc(r3)
/* 8057DCC0 54000109 */ rlwinm.     r0, r0, 0, 4, 4
/* 8057DCC4 4082017C */ bne-        lbl_8057de40
/* 8057DCC8 7FA3EB78 */ mr          r3, r29
/* 8057DCCC 48012D45 */ bl          PlayerPointers_getVehicleType
/* 8057DCD0 28030002 */ cmplwi      r3, 2
/* 8057DCD4 4182016C */ beq-        lbl_8057de40
/* 8057DCD8 807D0000 */ lwz         r3, 0(r29)
/* 8057DCDC 80630004 */ lwz         r3, 4(r3)
/* 8057DCE0 80030008 */ lwz         r0, 8(r3)
/* 8057DCE4 54000529 */ rlwinm.     r0, r0, 0, 0x14, 0x14
/* 8057DCE8 40820158 */ bne-        lbl_8057de40
/* 8057DCEC 80630004 */ lwz         r3, 4(r3)
/* 8057DCF0 54600108 */ rlwinm      r0, r3, 0, 4, 4
/* 8057DCF4 50600739 */ rlwimi.     r0, r3, 0, 0x1c, 0x1c
/* 8057DCF8 41820148 */ beq-        lbl_8057de40
/* 8057DCFC A01D0254 */ lhz         r0, 0x254(r29)
/* 8057DD00 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 8057DD04 4182013C */ beq-        lbl_8057de40
/* 8057DD08 7FA3EB78 */ mr          r3, r29
/* 8057DD0C 480126C1 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057DD10 3C80802A */ lis         r4, RKSystem_ey@ha
/* 8057DD14 38A1002C */ addi        r5, r1, 0x2c
/* 8057DD18 38844130 */ addi        r4, r4, RKSystem_ey@l
/* 8057DD1C 386300F0 */ addi        r3, r3, 0xf0
/* 8057DD20 4BCBC5B1 */ bl          rotateVector__Q23EGG5QuatfFRCQ23EGG8Vector3fRQ23EGG8Vector3f
/* 8057DD24 38610038 */ addi        r3, r1, 0x38
/* 8057DD28 389D00A4 */ addi        r4, r29, 0xa4
/* 8057DD2C 38A1002C */ addi        r5, r1, 0x2c
/* 8057DD30 48030EA1 */ bl          rejUnit__6RKGeomFRQ23EGG8Vector3fRCQ23EGG8Vector3fRCQ23EGG8Vector3f
/* 8057DD34 38610038 */ addi        r3, r1, 0x38
/* 8057DD38 4BCC5DA5 */ bl          normalise__Q23EGG8Vector3fFv
/* 8057DD3C C81F00B8 */ lfd         f0, 0xb8(r31)
/* 8057DD40 FC000800 */ fcmpu       cr0, f0, f1
/* 8057DD44 418200FC */ beq-        lbl_8057de40
/* 8057DD48 C3E10044 */ lfs         f31, 0x44(r1)
/* 8057DD4C C0810038 */ lfs         f4, 0x38(r1)
/* 8057DD50 C1A10048 */ lfs         f13, 0x48(r1)
/* 8057DD54 C0A1003C */ lfs         f5, 0x3c(r1)
/* 8057DD58 ECDF2028 */ fsubs       f6, f31, f4
/* 8057DD5C C161004C */ lfs         f11, 0x4c(r1)
/* 8057DD60 EC640372 */ fmuls       f3, f4, f13
/* 8057DD64 C1410040 */ lfs         f10, 0x40(r1)
/* 8057DD68 EC2507F2 */ fmuls       f1, f5, f31
/* 8057DD6C EC0402F2 */ fmuls       f0, f4, f11
/* 8057DD70 EC4A07F2 */ fmuls       f2, f10, f31
/* 8057DD74 D0C10020 */ stfs        f6, 0x20(r1)
/* 8057DD78 ECE30828 */ fsubs       f7, f3, f1
/* 8057DD7C EC2502F2 */ fmuls       f1, f5, f11
/* 8057DD80 EC420028 */ fsubs       f2, f2, f0
/* 8057DD84 D0E10010 */ stfs        f7, 0x10(r1)
/* 8057DD88 ED8D2828 */ fsubs       f12, f13, f5
/* 8057DD8C EC0A0372 */ fmuls       f0, f10, f13
/* 8057DD90 D041000C */ stfs        f2, 0xc(r1)
/* 8057DD94 ED2B5028 */ fsubs       f9, f11, f10
/* 8057DD98 ED1F0332 */ fmuls       f8, f31, f12
/* 8057DD9C D1810024 */ stfs        f12, 0x24(r1)
/* 8057DDA0 EC210028 */ fsubs       f1, f1, f0
/* 8057DDA4 EC0200B2 */ fmuls       f0, f2, f2
/* 8057DDA8 D1210028 */ stfs        f9, 0x28(r1)
/* 8057DDAC EC4701F2 */ fmuls       f2, f7, f7
/* 8057DDB0 D0210008 */ stfs        f1, 8(r1)
/* 8057DDB4 EC210072 */ fmuls       f1, f1, f1
/* 8057DDB8 ECED01B2 */ fmuls       f7, f13, f6
/* 8057DDBC EC650372 */ fmuls       f3, f5, f13
/* 8057DDC0 EC01002A */ fadds       f0, f1, f0
/* 8057DDC4 ECCB01B2 */ fmuls       f6, f11, f6
/* 8057DDC8 ECBF0272 */ fmuls       f5, f31, f9
/* 8057DDCC EC22002A */ fadds       f1, f2, f0
/* 8057DDD0 EC083828 */ fsubs       f0, f8, f7
/* 8057DDD4 ECE62828 */ fsubs       f7, f6, f5
/* 8057DDD8 EC8407F2 */ fmuls       f4, f4, f31
/* 8057DDDC D001001C */ stfs        f0, 0x1c(r1)
/* 8057DDE0 ECCD0272 */ fmuls       f6, f13, f9
/* 8057DDE4 ECAB0332 */ fmuls       f5, f11, f12
/* 8057DDE8 D0E10018 */ stfs        f7, 0x18(r1)
/* 8057DDEC EC04182A */ fadds       f0, f4, f3
/* 8057DDF0 EC4A02F2 */ fmuls       f2, f10, f11
/* 8057DDF4 EC662828 */ fsubs       f3, f6, f5
/* 8057DDF8 EFE2002A */ fadds       f31, f2, f0
/* 8057DDFC D0610014 */ stfs        f3, 0x14(r1)
/* 8057DE00 4BCB1A0D */ bl          sqrt__Q23EGG5MathfFf
/* 8057DE04 FC40F890 */ fmr         f2, f31
/* 8057DE08 4BCB1ADD */ bl          atan2_Q23EGG5MathfFff
/* 8057DE0C C07F0058 */ lfs         f3, 0x58(r31)
/* 8057DE10 C0410018 */ lfs         f2, 0x18(r1)
/* 8057DE14 C01F0000 */ lfs         f0, 0(r31)
/* 8057DE18 EC230072 */ fmuls       f1, f3, f1
/* 8057DE1C FC020040 */ fcmpo       cr0, f2, f0
/* 8057DE20 4081000C */ ble-        lbl_8057de2c
/* 8057DE24 C01F000C */ lfs         f0, 0xc(r31)
/* 8057DE28 48000008 */ b           lbl_8057de30
lbl_8057de2c:
/* 8057DE2C C01F0004 */ lfs         f0, 4(r31)
lbl_8057de30:
/* 8057DE30 EC210032 */ fmuls       f1, f1, f0
/* 8057DE34 C01D009C */ lfs         f0, 0x9c(r29)
/* 8057DE38 EC00082A */ fadds       f0, f0, f1
/* 8057DE3C D01D009C */ stfs        f0, 0x9c(r29)
lbl_8057de40:
/* 8057DE40 C0010044 */ lfs         f0, 0x44(r1)
/* 8057DE44 D01D00A4 */ stfs        f0, 0xa4(r29)
/* 8057DE48 C0010048 */ lfs         f0, 0x48(r1)
/* 8057DE4C D01D00A8 */ stfs        f0, 0xa8(r29)
/* 8057DE50 C001004C */ lfs         f0, 0x4c(r1)
/* 8057DE54 D01D00AC */ stfs        f0, 0xac(r29)
lbl_8057de58:
/* 8057DE58 807D0000 */ lwz         r3, 0(r29)
/* 8057DE5C 80A30004 */ lwz         r5, 4(r3)
/* 8057DE60 8005000C */ lwz         r0, 0xc(r5)
/* 8057DE64 54000109 */ rlwinm.     r0, r0, 0, 4, 4
/* 8057DE68 40820250 */ bne-        lbl_8057e0b8
/* 8057DE6C 80C50004 */ lwz         r6, 4(r5)
/* 8057DE70 54C00319 */ rlwinm.     r0, r6, 0, 0xc, 0xc
/* 8057DE74 41820018 */ beq-        lbl_8057de8c
/* 8057DE78 3C60808B */ lis         r3, lbl_808b5994@ha
/* 8057DE7C 809D00D0 */ lwz         r4, 0xd0(r29)
/* 8057DE80 A8035994 */ lha         r0, lbl_808b5994@l(r3)
/* 8057DE84 7C040000 */ cmpw        r4, r0
/* 8057DE88 4080000C */ bge-        lbl_8057de94
lbl_8057de8c:
/* 8057DE8C 54C00109 */ rlwinm.     r0, r6, 0, 4, 4
/* 8057DE90 41820028 */ beq-        lbl_8057deb8
lbl_8057de94:
/* 8057DE94 80050008 */ lwz         r0, 8(r5)
/* 8057DE98 540007FF */ clrlwi.     r0, r0, 0x1f
/* 8057DE9C 4082001C */ bne-        lbl_8057deb8
/* 8057DEA0 54C0035B */ rlwinm.     r0, r6, 0, 0xd, 0xd
/* 8057DEA4 41820014 */ beq-        lbl_8057deb8
/* 8057DEA8 7FA3EB78 */ mr          r3, r29
/* 8057DEAC 48000549 */ bl          PlayerSub10_startManualDrift
/* 8057DEB0 3BC00000 */ li          r30, 0
/* 8057DEB4 48000038 */ b           lbl_8057deec
lbl_8057deb8:
/* 8057DEB8 819D000C */ lwz         r12, 0xc(r29)
/* 8057DEBC 7FA3EB78 */ mr          r3, r29
/* 8057DEC0 818C005C */ lwz         r12, 0x5c(r12)
/* 8057DEC4 7D8903A6 */ mtctr       r12
/* 8057DEC8 4E800421 */ bctrl       
/* 8057DECC 2C030000 */ cmpwi       r3, 0
/* 8057DED0 4182001C */ beq-        lbl_8057deec
/* 8057DED4 819D000C */ lwz         r12, 0xc(r29)
/* 8057DED8 7FA3EB78 */ mr          r3, r29
/* 8057DEDC 818C0060 */ lwz         r12, 0x60(r12)
/* 8057DEE0 7D8903A6 */ mtctr       r12
/* 8057DEE4 4E800421 */ bctrl       
/* 8057DEE8 3BC00001 */ li          r30, 1
lbl_8057deec:
/* 8057DEEC A01D0254 */ lhz         r0, 0x254(r29)
/* 8057DEF0 807D0000 */ lwz         r3, 0(r29)
/* 8057DEF4 540007FA */ rlwinm      r0, r0, 0, 0x1f, 0x1d
/* 8057DEF8 B01D0254 */ sth         r0, 0x254(r29)
/* 8057DEFC 80A30004 */ lwz         r5, 4(r3)
/* 8057DF00 80C50004 */ lwz         r6, 4(r5)
/* 8057DF04 54C00739 */ rlwinm.     r0, r6, 0, 0x1c, 0x1c
/* 8057DF08 418200E8 */ beq-        lbl_8057dff0
/* 8057DF0C 3C60808B */ lis         r3, lbl_808b5b1c@ha
/* 8057DF10 C03D0014 */ lfs         f1, 0x14(r29)
/* 8057DF14 C0035B1C */ lfs         f0, lbl_808b5b1c@l(r3)
/* 8057DF18 C05D0020 */ lfs         f2, 0x20(r29)
/* 8057DF1C EC000072 */ fmuls       f0, f0, f1
/* 8057DF20 FC020040 */ fcmpo       cr0, f2, f0
/* 8057DF24 7C000026 */ mfcr        r0
/* 8057DF28 80650008 */ lwz         r3, 8(r5)
/* 8057DF2C 540017FE */ rlwinm      r0, r0, 2, 0x1f, 0x1f
/* 8057DF30 7C040034 */ cntlzw      r4, r0
/* 8057DF34 5460056B */ rlwinm.     r0, r3, 0, 0x15, 0x15
/* 8057DF38 5484D97E */ srwi        r4, r4, 5
/* 8057DF3C 408200A8 */ bne-        lbl_8057dfe4
/* 8057DF40 54C0077B */ rlwinm.     r0, r6, 0, 0x1d, 0x1d
/* 8057DF44 41820038 */ beq-        lbl_8057df7c
/* 8057DF48 54C007FF */ clrlwi.     r0, r6, 0x1f
/* 8057DF4C 41820030 */ beq-        lbl_8057df7c
/* 8057DF50 546007FF */ clrlwi.     r0, r3, 0x1f
/* 8057DF54 40820028 */ bne-        lbl_8057df7c
/* 8057DF58 546000C7 */ rlwinm.     r0, r3, 0, 3, 3
/* 8057DF5C 40820020 */ bne-        lbl_8057df7c
/* 8057DF60 8005000C */ lwz         r0, 0xc(r5)
/* 8057DF64 54000109 */ rlwinm.     r0, r0, 0, 4, 4
/* 8057DF68 40820014 */ bne-        lbl_8057df7c
/* 8057DF6C 54C00675 */ rlwinm.     r0, r6, 0, 0x19, 0x1a
/* 8057DF70 4082000C */ bne-        lbl_8057df7c
/* 8057DF74 2C040000 */ cmpwi       r4, 0
/* 8057DF78 4182006C */ beq-        lbl_8057dfe4
lbl_8057df7c:
/* 8057DF7C 2C040000 */ cmpwi       r4, 0
/* 8057DF80 40820014 */ bne-        lbl_8057df94
/* 8057DF84 7FA3EB78 */ mr          r3, r29
/* 8057DF88 38800000 */ li          r4, 0
/* 8057DF8C 38A00000 */ li          r5, 0
/* 8057DF90 4800500D */ bl          PlayerSub10_releaseMt
lbl_8057df94:
/* 8057DF94 38800000 */ li          r4, 0
/* 8057DF98 909D00CC */ stw         r4, 0xcc(r29)
/* 8057DF9C 807D0000 */ lwz         r3, 0(r29)
/* 8057DFA0 909D00D0 */ stw         r4, 0xd0(r29)
/* 8057DFA4 80630004 */ lwz         r3, 4(r3)
/* 8057DFA8 80030004 */ lwz         r0, 4(r3)
/* 8057DFAC 54000356 */ rlwinm      r0, r0, 0, 0xd, 0xb
/* 8057DFB0 90030004 */ stw         r0, 4(r3)
/* 8057DFB4 807D0000 */ lwz         r3, 0(r29)
/* 8057DFB8 80630004 */ lwz         r3, 4(r3)
/* 8057DFBC 80030004 */ lwz         r0, 4(r3)
/* 8057DFC0 54000776 */ rlwinm      r0, r0, 0, 0x1d, 0x1b
/* 8057DFC4 90030004 */ stw         r0, 4(r3)
/* 8057DFC8 A01D0254 */ lhz         r0, 0x254(r29)
/* 8057DFCC B09D00FC */ sth         r4, 0xfc(r29)
/* 8057DFD0 60000002 */ ori         r0, r0, 2
/* 8057DFD4 B09D0100 */ sth         r4, 0x100(r29)
/* 8057DFD8 B09D00FE */ sth         r4, 0xfe(r29)
/* 8057DFDC B01D0254 */ sth         r0, 0x254(r29)
/* 8057DFE0 480000D8 */ b           lbl_8057e0b8
lbl_8057dfe4:
/* 8057DFE4 7FA3EB78 */ mr          r3, r29
/* 8057DFE8 48000AD1 */ bl          unk_8057eab8
/* 8057DFEC 480000CC */ b           lbl_8057e0b8
lbl_8057dff0:
/* 8057DFF0 2C1E0000 */ cmpwi       r30, 0
/* 8057DFF4 408200C4 */ bne-        lbl_8057e0b8
/* 8057DFF8 54C0035B */ rlwinm.     r0, r6, 0, 0xd, 0xd
/* 8057DFFC 418200BC */ beq-        lbl_8057e0b8
/* 8057E000 38A00000 */ li          r5, 0
/* 8057E004 90BD00CC */ stw         r5, 0xcc(r29)
/* 8057E008 809D0000 */ lwz         r4, 0(r29)
/* 8057E00C 7FA3EB78 */ mr          r3, r29
/* 8057E010 90BD00D0 */ stw         r5, 0xd0(r29)
/* 8057E014 80840004 */ lwz         r4, 4(r4)
/* 8057E018 80040004 */ lwz         r0, 4(r4)
/* 8057E01C 54000356 */ rlwinm      r0, r0, 0, 0xd, 0xb
/* 8057E020 90040004 */ stw         r0, 4(r4)
/* 8057E024 809D0000 */ lwz         r4, 0(r29)
/* 8057E028 80840004 */ lwz         r4, 4(r4)
/* 8057E02C 80040004 */ lwz         r0, 4(r4)
/* 8057E030 54000776 */ rlwinm      r0, r0, 0, 0x1d, 0x1b
/* 8057E034 90040004 */ stw         r0, 4(r4)
/* 8057E038 B0BD00FC */ sth         r5, 0xfc(r29)
/* 8057E03C B0BD0100 */ sth         r5, 0x100(r29)
/* 8057E040 B0BD00FE */ sth         r5, 0xfe(r29)
/* 8057E044 48012831 */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 8057E048 C3E30068 */ lfs         f31, 0x68(r3)
/* 8057E04C 7FA3EB78 */ mr          r3, r29
/* 8057E050 48012CD1 */ bl          kartAction__Q24Kart15KartObjectProxyFv
/* 8057E054 A00300CC */ lhz         r0, 0xcc(r3)
/* 8057E058 54000739 */ rlwinm.     r0, r0, 0, 0x1c, 0x1c
/* 8057E05C 41820014 */ beq-        lbl_8057e070
/* 8057E060 C03D0020 */ lfs         f1, 0x20(r29)
/* 8057E064 C01F00C0 */ lfs         f0, 0xc0(r31)
/* 8057E068 FC010040 */ fcmpo       cr0, f1, f0
/* 8057E06C 4181004C */ bgt-        lbl_8057e0b8
lbl_8057e070:
/* 8057E070 C01D009C */ lfs         f0, 0x9c(r29)
/* 8057E074 C03F0000 */ lfs         f1, 0(r31)
/* 8057E078 FC000840 */ fcmpo       cr0, f0, f1
/* 8057E07C 40810018 */ ble-        lbl_8057e094
/* 8057E080 EC00F828 */ fsubs       f0, f0, f31
/* 8057E084 D01D009C */ stfs        f0, 0x9c(r29)
/* 8057E088 FC000840 */ fcmpo       cr0, f0, f1
/* 8057E08C 40800008 */ bge-        lbl_8057e094
/* 8057E090 D03D009C */ stfs        f1, 0x9c(r29)
lbl_8057e094:
/* 8057E094 C01D009C */ lfs         f0, 0x9c(r29)
/* 8057E098 C03F0000 */ lfs         f1, 0(r31)
/* 8057E09C FC000840 */ fcmpo       cr0, f0, f1
/* 8057E0A0 40800018 */ bge-        lbl_8057e0b8
/* 8057E0A4 EC00F82A */ fadds       f0, f0, f31
/* 8057E0A8 D01D009C */ stfs        f0, 0x9c(r29)
/* 8057E0AC FC000840 */ fcmpo       cr0, f0, f1
/* 8057E0B0 40810008 */ ble-        lbl_8057e0b8
/* 8057E0B4 D03D009C */ stfs        f1, 0x9c(r29)
lbl_8057e0b8:
/* 8057E0B8 E3E10068 */ psq_l       f31, 0x68(r1), 0, 0
/* 8057E0BC 80010074 */ lwz         r0, 0x74(r1)
/* 8057E0C0 CBE10060 */ lfd         f31, 0x60(r1)
/* 8057E0C4 83E1005C */ lwz         r31, 0x5c(r1)
/* 8057E0C8 83C10058 */ lwz         r30, 0x58(r1)
/* 8057E0CC 83A10054 */ lwz         r29, 0x54(r1)
/* 8057E0D0 7C0803A6 */ mtlr        r0
/* 8057E0D4 38210070 */ addi        r1, r1, 0x70
/* 8057E0D8 4E800020 */ blr         