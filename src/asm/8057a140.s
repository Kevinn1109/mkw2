nofralloc
/* 8057A140 9421FEE0 */ stwu        r1, -0x120(r1)
/* 8057A144 7C0802A6 */ mflr        r0
/* 8057A148 90010124 */ stw         r0, 0x124(r1)
/* 8057A14C DBE10110 */ stfd        f31, 0x110(r1)
/* 8057A150 F3E10118 */ psq_st      f31, 0x118(r1), 0, 0
/* 8057A154 DBC10100 */ stfd        f30, 0x100(r1)
/* 8057A158 F3C10108 */ psq_st      f30, 0x108(r1), 0, 0
/* 8057A15C 3CC0802A */ lis         r6, RKSystem_ex@ha
/* 8057A160 93E100FC */ stw         r31, 0xfc(r1)
/* 8057A164 3FE08089 */ lis         r31, lbl_80891a00@ha
/* 8057A168 3BFF1A00 */ addi        r31, r31, lbl_80891a00@l
/* 8057A16C 93C100F8 */ stw         r30, 0xf8(r1)
/* 8057A170 3FC0808B */ lis         r30, lbl_808b58f0@ha
/* 8057A174 3BDE58F0 */ addi        r30, r30, lbl_808b58f0@l
/* 8057A178 93A100F4 */ stw         r29, 0xf4(r1)
/* 8057A17C 7C7D1B78 */ mr          r29, r3
/* 8057A180 84A64118 */ lwzu        r5, RKSystem_ex@l(r6)
/* 8057A184 90A100B0 */ stw         r5, 0xb0(r1)
/* 8057A188 80860004 */ lwz         r4, 4(r6)
/* 8057A18C 80060008 */ lwz         r0, 8(r6)
/* 8057A190 908100B4 */ stw         r4, 0xb4(r1)
/* 8057A194 900100B8 */ stw         r0, 0xb8(r1)
/* 8057A198 48016235 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057A19C 388100B0 */ addi        r4, r1, 0xb0
/* 8057A1A0 386300F0 */ addi        r3, r3, 0xf0
/* 8057A1A4 7C852378 */ mr          r5, r4
/* 8057A1A8 4BCC0129 */ bl          rotateVector__Q23EGG5QuatfFRCQ23EGG8Vector3fRQ23EGG8Vector3f
/* 8057A1AC 809D0038 */ lwz         r4, 0x38(r29)
/* 8057A1B0 38610098 */ addi        r3, r1, 0x98
/* 8057A1B4 801D003C */ lwz         r0, 0x3c(r29)
/* 8057A1B8 900100A8 */ stw         r0, 0xa8(r1)
/* 8057A1BC C0E100B0 */ lfs         f7, 0xb0(r1)
/* 8057A1C0 908100A4 */ stw         r4, 0xa4(r1)
/* 8057A1C4 C00100A8 */ lfs         f0, 0xa8(r1)
/* 8057A1C8 801D0040 */ lwz         r0, 0x40(r29)
/* 8057A1CC 900100AC */ stw         r0, 0xac(r1)
/* 8057A1D0 ECC70032 */ fmuls       f6, f7, f0
/* 8057A1D4 C04100B8 */ lfs         f2, 0xb8(r1)
/* 8057A1D8 C08100A4 */ lfs         f4, 0xa4(r1)
/* 8057A1DC C0A100B4 */ lfs         f5, 0xb4(r1)
/* 8057A1E0 EC020032 */ fmuls       f0, f2, f0
/* 8057A1E4 EC620132 */ fmuls       f3, f2, f4
/* 8057A1E8 C02100AC */ lfs         f1, 0xac(r1)
/* 8057A1EC EC850132 */ fmuls       f4, f5, f4
/* 8057A1F0 EC470072 */ fmuls       f2, f7, f1
/* 8057A1F4 EC250072 */ fmuls       f1, f5, f1
/* 8057A1F8 EC862028 */ fsubs       f4, f6, f4
/* 8057A1FC EC431028 */ fsubs       f2, f3, f2
/* 8057A200 EC010028 */ fsubs       f0, f1, f0
/* 8057A204 D08100A0 */ stfs        f4, 0xa0(r1)
/* 8057A208 D0010098 */ stfs        f0, 0x98(r1)
/* 8057A20C D041009C */ stfs        f2, 0x9c(r1)
/* 8057A210 4BCC98CD */ bl          normalise__Q23EGG8Vector3fFv
/* 8057A214 807D0000 */ lwz         r3, 0(r29)
/* 8057A218 80630004 */ lwz         r3, 4(r3)
/* 8057A21C 80030008 */ lwz         r0, 8(r3)
/* 8057A220 540000C2 */ rlwinm      r0, r0, 0, 3, 1
/* 8057A224 90030008 */ stw         r0, 8(r3)
/* 8057A228 A01D0254 */ lhz         r0, 0x254(r29)
/* 8057A22C 809D0000 */ lwz         r4, 0(r29)
/* 8057A230 60000010 */ ori         r0, r0, 0x10
/* 8057A234 B01D0254 */ sth         r0, 0x254(r29)
/* 8057A238 80A40004 */ lwz         r5, 4(r4)
/* 8057A23C 80E50008 */ lwz         r7, 8(r5)
/* 8057A240 70E00440 */ andi.       r0, r7, 0x440
/* 8057A244 408203C8 */ bne-        lbl_8057a60c
/* 8057A248 80C50004 */ lwz         r6, 4(r5)
/* 8057A24C 54C0035B */ rlwinm.     r0, r6, 0, 0xd, 0xd
/* 8057A250 4082001C */ bne-        lbl_8057a26c
/* 8057A254 54C00001 */ rlwinm.     r0, r6, 0, 0, 0
/* 8057A258 41820014 */ beq-        lbl_8057a26c
/* 8057A25C 807D0258 */ lwz         r3, 0x258(r29)
/* 8057A260 8803003A */ lbz         r0, 0x3a(r3)
/* 8057A264 2C000000 */ cmpwi       r0, 0
/* 8057A268 40820020 */ bne-        lbl_8057a288
lbl_8057a26c:
/* 8057A26C 54C00043 */ rlwinm.     r0, r6, 0, 1, 1
/* 8057A270 40820018 */ bne-        lbl_8057a288
/* 8057A274 80640004 */ lwz         r3, 4(r4)
/* 8057A278 A81E0078 */ lha         r0, 0x78(r30)
/* 8057A27C 8063001C */ lwz         r3, 0x1c(r3)
/* 8057A280 7C030040 */ cmplw       r3, r0
/* 8057A284 40810020 */ ble-        lbl_8057a2a4
lbl_8057a288:
/* 8057A288 8065000C */ lwz         r3, 0xc(r5)
/* 8057A28C 54600109 */ rlwinm.     r0, r3, 0, 4, 4
/* 8057A290 40820014 */ bne-        lbl_8057a2a4
/* 8057A294 54E00529 */ rlwinm.     r0, r7, 0, 0x14, 0x14
/* 8057A298 4082000C */ bne-        lbl_8057a2a4
/* 8057A29C 54600529 */ rlwinm.     r0, r3, 0, 0x14, 0x14
/* 8057A2A0 4182036C */ beq-        lbl_8057a60c
lbl_8057a2a4:
/* 8057A2A4 807D0000 */ lwz         r3, 0(r29)
/* 8057A2A8 80A10098 */ lwz         r5, 0x98(r1)
/* 8057A2AC 80630004 */ lwz         r3, 4(r3)
/* 8057A2B0 8081009C */ lwz         r4, 0x9c(r1)
/* 8057A2B4 80030004 */ lwz         r0, 4(r3)
/* 8057A2B8 806100A0 */ lwz         r3, 0xa0(r1)
/* 8057A2BC 54000319 */ rlwinm.     r0, r0, 0, 0xc, 0xc
/* 8057A2C0 90A1008C */ stw         r5, 0x8c(r1)
/* 8057A2C4 90810090 */ stw         r4, 0x90(r1)
/* 8057A2C8 90610094 */ stw         r3, 0x94(r1)
/* 8057A2CC 4182001C */ beq-        lbl_8057a2e8
/* 8057A2D0 C05D00E0 */ lfs         f2, 0xe0(r29)
/* 8057A2D4 C03D00E4 */ lfs         f1, 0xe4(r29)
/* 8057A2D8 C01D00E8 */ lfs         f0, 0xe8(r29)
/* 8057A2DC D041008C */ stfs        f2, 0x8c(r1)
/* 8057A2E0 D0210090 */ stfs        f1, 0x90(r1)
/* 8057A2E4 D0010094 */ stfs        f0, 0x94(r1)
lbl_8057a2e8:
/* 8057A2E8 808100A4 */ lwz         r4, 0xa4(r1)
/* 8057A2EC 3CE0802A */ lis         r7, RKSystem_ex@ha
/* 8057A2F0 80A100A8 */ lwz         r5, 0xa8(r1)
/* 8057A2F4 386100C0 */ addi        r3, r1, 0xc0
/* 8057A2F8 800100AC */ lwz         r0, 0xac(r1)
/* 8057A2FC 90810080 */ stw         r4, 0x80(r1)
/* 8057A300 38810080 */ addi        r4, r1, 0x80
/* 8057A304 84C74118 */ lwzu        r6, RKSystem_ex@l(r7)
/* 8057A308 90A10084 */ stw         r5, 0x84(r1)
/* 8057A30C 80A70004 */ lwz         r5, 4(r7)
/* 8057A310 90010088 */ stw         r0, 0x88(r1)
/* 8057A314 80070008 */ lwz         r0, 8(r7)
/* 8057A318 C05D009C */ lfs         f2, 0x9c(r29)
/* 8057A31C C01D00A0 */ lfs         f0, 0xa0(r29)
/* 8057A320 C03D01C8 */ lfs         f1, 0x1c8(r29)
/* 8057A324 EC42002A */ fadds       f2, f2, f0
/* 8057A328 C01F0054 */ lfs         f0, 0x54(r31)
/* 8057A32C 90C10074 */ stw         r6, 0x74(r1)
/* 8057A330 EC21102A */ fadds       f1, f1, f2
/* 8057A334 90A10078 */ stw         r5, 0x78(r1)
/* 8057A338 9001007C */ stw         r0, 0x7c(r1)
/* 8057A33C EC200072 */ fmuls       f1, f0, f1
/* 8057A340 4BCB607D */ bl          setAxisRotation__Q23EGG9Matrix34fFRCQ23EGG8Vector3ff
/* 8057A344 C06100E0 */ lfs         f3, 0xe0(r1)
/* 8057A348 38610068 */ addi        r3, r1, 0x68
/* 8057A34C C041008C */ lfs         f2, 0x8c(r1)
/* 8057A350 7C641B78 */ mr          r4, r3
/* 8057A354 C02100D0 */ lfs         f1, 0xd0(r1)
/* 8057A358 38A100A4 */ addi        r5, r1, 0xa4
/* 8057A35C ECE300B2 */ fmuls       f7, f3, f2
/* 8057A360 C00100C0 */ lfs         f0, 0xc0(r1)
/* 8057A364 EC8100B2 */ fmuls       f4, f1, f2
/* 8057A368 C06100E4 */ lfs         f3, 0xe4(r1)
/* 8057A36C EC2000B2 */ fmuls       f1, f0, f2
/* 8057A370 C0A10090 */ lfs         f5, 0x90(r1)
/* 8057A374 C00100C4 */ lfs         f0, 0xc4(r1)
/* 8057A378 ECC30172 */ fmuls       f6, f3, f5
/* 8057A37C C04100D4 */ lfs         f2, 0xd4(r1)
/* 8057A380 38C00001 */ li          r6, 1
/* 8057A384 EC000172 */ fmuls       f0, f0, f5
/* 8057A388 C10100E8 */ lfs         f8, 0xe8(r1)
/* 8057A38C EC620172 */ fmuls       f3, f2, f5
/* 8057A390 C1210094 */ lfs         f9, 0x94(r1)
/* 8057A394 ECC7302A */ fadds       f6, f7, f6
/* 8057A398 C0A100D8 */ lfs         f5, 0xd8(r1)
/* 8057A39C C04100C8 */ lfs         f2, 0xc8(r1)
/* 8057A3A0 ED080272 */ fmuls       f8, f8, f9
/* 8057A3A4 EC64182A */ fadds       f3, f4, f3
/* 8057A3A8 ECA50272 */ fmuls       f5, f5, f9
/* 8057A3AC EC01002A */ fadds       f0, f1, f0
/* 8057A3B0 EC420272 */ fmuls       f2, f2, f9
/* 8057A3B4 EC88302A */ fadds       f4, f8, f6
/* 8057A3B8 EC25182A */ fadds       f1, f5, f3
/* 8057A3BC EC02002A */ fadds       f0, f2, f0
/* 8057A3C0 D0810070 */ stfs        f4, 0x70(r1)
/* 8057A3C4 D021006C */ stfs        f1, 0x6c(r1)
/* 8057A3C8 D0010068 */ stfs        f0, 0x68(r1)
/* 8057A3CC 48034621 */ bl          VEC3_perpInPlane
/* 8057A3D0 C3C10068 */ lfs         f30, 0x68(r1)
/* 8057A3D4 C3FD005C */ lfs         f31, 0x5c(r29)
/* 8057A3D8 C1A1006C */ lfs         f13, 0x6c(r1)
/* 8057A3DC ECBEF828 */ fsubs       f5, f30, f31
/* 8057A3E0 C19D0060 */ lfs         f12, 0x60(r29)
/* 8057A3E4 C1410070 */ lfs         f10, 0x70(r1)
/* 8057A3E8 ED6D6028 */ fsubs       f11, f13, f12
/* 8057A3EC C13D0064 */ lfs         f9, 0x64(r29)
/* 8057A3F0 EC450172 */ fmuls       f2, f5, f5
/* 8057A3F4 ED0A4828 */ fsubs       f8, f10, f9
/* 8057A3F8 C01F0008 */ lfs         f0, 8(r31)
/* 8057A3FC EC2B02F2 */ fmuls       f1, f11, f11
/* 8057A400 D0A1005C */ stfs        f5, 0x5c(r1)
/* 8057A404 EC680232 */ fmuls       f3, f8, f8
/* 8057A408 EC22082A */ fadds       f1, f2, f1
/* 8057A40C D1610060 */ stfs        f11, 0x60(r1)
/* 8057A410 D1010064 */ stfs        f8, 0x64(r1)
/* 8057A414 EC23082A */ fadds       f1, f3, f1
/* 8057A418 FC010040 */ fcmpo       cr0, f1, f0
/* 8057A41C 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 8057A420 7C000026 */ mfcr        r0
/* 8057A424 54001FFF */ rlwinm.     r0, r0, 3, 0x1f, 0x1f
/* 8057A428 40820168 */ bne-        lbl_8057a590
/* 8057A42C 807D0000 */ lwz         r3, 0(r29)
/* 8057A430 80630004 */ lwz         r3, 4(r3)
/* 8057A434 8003000C */ lwz         r0, 0xc(r3)
/* 8057A438 54000109 */ rlwinm.     r0, r0, 0, 4, 4
/* 8057A43C 40820154 */ bne-        lbl_8057a590
/* 8057A440 C01D00BC */ lfs         f0, 0xbc(r29)
/* 8057A444 ECFF0372 */ fmuls       f7, f31, f13
/* 8057A448 ECCC07B2 */ fmuls       f6, f12, f30
/* 8057A44C C09D008C */ lfs         f4, 0x8c(r29)
/* 8057A450 ECA00172 */ fmuls       f5, f0, f5
/* 8057A454 C05D0090 */ lfs         f2, 0x90(r29)
/* 8057A458 EC6002F2 */ fmuls       f3, f0, f11
/* 8057A45C EC200232 */ fmuls       f1, f0, f8
/* 8057A460 ECA4282A */ fadds       f5, f4, f5
/* 8057A464 C01D0094 */ lfs         f0, 0x94(r29)
/* 8057A468 EC82182A */ fadds       f4, f2, f3
/* 8057A46C C05D005C */ lfs         f2, 0x5c(r29)
/* 8057A470 EC60082A */ fadds       f3, f0, f1
/* 8057A474 C03D0060 */ lfs         f1, 0x60(r29)
/* 8057A478 ECC73028 */ fsubs       f6, f7, f6
/* 8057A47C C01D0064 */ lfs         f0, 0x64(r29)
/* 8057A480 EC42282A */ fadds       f2, f2, f5
/* 8057A484 D0BD008C */ stfs        f5, 0x8c(r29)
/* 8057A488 EC21202A */ fadds       f1, f1, f4
/* 8057A48C 387D005C */ addi        r3, r29, 0x5c
/* 8057A490 D0C10058 */ stfs        f6, 0x58(r1)
/* 8057A494 EC00182A */ fadds       f0, f0, f3
/* 8057A498 ECC907B2 */ fmuls       f6, f9, f30
/* 8057A49C D09D0090 */ stfs        f4, 0x90(r29)
/* 8057A4A0 ECBF02B2 */ fmuls       f5, f31, f10
/* 8057A4A4 EC8C02B2 */ fmuls       f4, f12, f10
/* 8057A4A8 D07D0094 */ stfs        f3, 0x94(r29)
/* 8057A4AC EC690372 */ fmuls       f3, f9, f13
/* 8057A4B0 ECA62828 */ fsubs       f5, f6, f5
/* 8057A4B4 D05D005C */ stfs        f2, 0x5c(r29)
/* 8057A4B8 EC441828 */ fsubs       f2, f4, f3
/* 8057A4BC D0A10054 */ stfs        f5, 0x54(r1)
/* 8057A4C0 D0410050 */ stfs        f2, 0x50(r1)
/* 8057A4C4 D03D0060 */ stfs        f1, 0x60(r29)
/* 8057A4C8 D01D0064 */ stfs        f0, 0x64(r29)
/* 8057A4CC 4BCC9611 */ bl          normalise__Q23EGG8Vector3fFv
/* 8057A4D0 C09E0228 */ lfs         f4, 0x228(r30)
/* 8057A4D4 C05D008C */ lfs         f2, 0x8c(r29)
/* 8057A4D8 C03D0090 */ lfs         f1, 0x90(r29)
/* 8057A4DC EC620132 */ fmuls       f3, f2, f4
/* 8057A4E0 C01D0094 */ lfs         f0, 0x94(r29)
/* 8057A4E4 EC410132 */ fmuls       f2, f1, f4
/* 8057A4E8 C15D005C */ lfs         f10, 0x5c(r29)
/* 8057A4EC EC200132 */ fmuls       f1, f0, f4
/* 8057A4F0 D07D008C */ stfs        f3, 0x8c(r29)
/* 8057A4F4 D05D0090 */ stfs        f2, 0x90(r29)
/* 8057A4F8 C11D0060 */ lfs         f8, 0x60(r29)
/* 8057A4FC D03D0094 */ stfs        f1, 0x94(r29)
/* 8057A500 C01D0064 */ lfs         f0, 0x64(r29)
/* 8057A504 C121006C */ lfs         f9, 0x6c(r1)
/* 8057A508 C0E10068 */ lfs         f7, 0x68(r1)
/* 8057A50C C0A10070 */ lfs         f5, 0x70(r1)
/* 8057A510 EC800272 */ fmuls       f4, f0, f9
/* 8057A514 ECC001F2 */ fmuls       f6, f0, f7
/* 8057A518 C0410050 */ lfs         f2, 0x50(r1)
/* 8057A51C EC2A0172 */ fmuls       f1, f10, f5
/* 8057A520 C0010054 */ lfs         f0, 0x54(r1)
/* 8057A524 ECA80172 */ fmuls       f5, f8, f5
/* 8057A528 ED2A0272 */ fmuls       f9, f10, f9
/* 8057A52C ECC60828 */ fsubs       f6, f6, f1
/* 8057A530 C0610058 */ lfs         f3, 0x58(r1)
/* 8057A534 ECA52028 */ fsubs       f5, f5, f4
/* 8057A538 C03F0000 */ lfs         f1, 0(r31)
/* 8057A53C EC8801F2 */ fmuls       f4, f8, f7
/* 8057A540 EC0001B2 */ fmuls       f0, f0, f6
/* 8057A544 EC420172 */ fmuls       f2, f2, f5
/* 8057A548 D0C10048 */ stfs        f6, 0x48(r1)
/* 8057A54C EC892028 */ fsubs       f4, f9, f4
/* 8057A550 D0A10044 */ stfs        f5, 0x44(r1)
/* 8057A554 EC02002A */ fadds       f0, f2, f0
/* 8057A558 EC430132 */ fmuls       f2, f3, f4
/* 8057A55C D081004C */ stfs        f4, 0x4c(r1)
/* 8057A560 EC02002A */ fadds       f0, f2, f0
/* 8057A564 FC000840 */ fcmpo       cr0, f0, f1
/* 8057A568 40800050 */ bge-        lbl_8057a5b8
/* 8057A56C D0FD005C */ stfs        f7, 0x5c(r29)
/* 8057A570 C001006C */ lfs         f0, 0x6c(r1)
/* 8057A574 D01D0060 */ stfs        f0, 0x60(r29)
/* 8057A578 C0010070 */ lfs         f0, 0x70(r1)
/* 8057A57C D01D0064 */ stfs        f0, 0x64(r29)
/* 8057A580 D03D0094 */ stfs        f1, 0x94(r29)
/* 8057A584 D03D0090 */ stfs        f1, 0x90(r29)
/* 8057A588 D03D008C */ stfs        f1, 0x8c(r29)
/* 8057A58C 4800002C */ b           lbl_8057a5b8
lbl_8057a590:
/* 8057A590 C0010068 */ lfs         f0, 0x68(r1)
/* 8057A594 D01D005C */ stfs        f0, 0x5c(r29)
/* 8057A598 C01F0000 */ lfs         f0, 0(r31)
/* 8057A59C C021006C */ lfs         f1, 0x6c(r1)
/* 8057A5A0 D03D0060 */ stfs        f1, 0x60(r29)
/* 8057A5A4 C0210070 */ lfs         f1, 0x70(r1)
/* 8057A5A8 D03D0064 */ stfs        f1, 0x64(r29)
/* 8057A5AC D01D0094 */ stfs        f0, 0x94(r29)
/* 8057A5B0 D01D0090 */ stfs        f0, 0x90(r29)
/* 8057A5B4 D01D008C */ stfs        f0, 0x8c(r29)
lbl_8057a5b8:
/* 8057A5B8 807D0000 */ lwz         r3, 0(r29)
/* 8057A5BC 80830004 */ lwz         r4, 4(r3)
/* 8057A5C0 80040008 */ lwz         r0, 8(r4)
/* 8057A5C4 5400035B */ rlwinm.     r0, r0, 0, 0xd, 0xd
/* 8057A5C8 40820020 */ bne-        lbl_8057a5e8
/* 8057A5CC 8004000C */ lwz         r0, 0xc(r4)
/* 8057A5D0 540005EF */ rlwinm.     r0, r0, 0, 0x17, 0x17
/* 8057A5D4 40820014 */ bne-        lbl_8057a5e8
/* 8057A5D8 80630004 */ lwz         r3, 4(r3)
/* 8057A5DC 80030008 */ lwz         r0, 8(r3)
/* 8057A5E0 64002000 */ oris        r0, r0, 0x2000
/* 8057A5E4 90030008 */ stw         r0, 8(r3)
lbl_8057a5e8:
/* 8057A5E8 387D0074 */ addi        r3, r29, 0x74
/* 8057A5EC 389D005C */ addi        r4, r29, 0x5c
/* 8057A5F0 38A100A4 */ addi        r5, r1, 0xa4
/* 8057A5F4 38C00001 */ li          r6, 1
/* 8057A5F8 480343F5 */ bl          VEC3_perpInPlane
/* 8057A5FC A01D0254 */ lhz         r0, 0x254(r29)
/* 8057A600 54000734 */ rlwinm      r0, r0, 0, 0x1c, 0x1a
/* 8057A604 B01D0254 */ sth         r0, 0x254(r29)
/* 8057A608 4800001C */ b           lbl_8057a624
lbl_8057a60c:
/* 8057A60C C05D005C */ lfs         f2, 0x5c(r29)
/* 8057A610 C03D0060 */ lfs         f1, 0x60(r29)
/* 8057A614 C01D0064 */ lfs         f0, 0x64(r29)
/* 8057A618 D05D0074 */ stfs        f2, 0x74(r29)
/* 8057A61C D03D0078 */ stfs        f1, 0x78(r29)
/* 8057A620 D01D007C */ stfs        f0, 0x7c(r29)
lbl_8057a624:
/* 8057A624 807D0000 */ lwz         r3, 0(r29)
/* 8057A628 80630004 */ lwz         r3, 4(r3)
/* 8057A62C 80030008 */ lwz         r0, 8(r3)
/* 8057A630 5400056B */ rlwinm.     r0, r0, 0, 0x15, 0x15
/* 8057A634 40820058 */ bne-        lbl_8057a68c
/* 8057A638 C0E100A4 */ lfs         f7, 0xa4(r1)
/* 8057A63C 38810038 */ addi        r4, r1, 0x38
/* 8057A640 C01D0060 */ lfs         f0, 0x60(r29)
/* 8057A644 C04100AC */ lfs         f2, 0xac(r1)
/* 8057A648 C09D005C */ lfs         f4, 0x5c(r29)
/* 8057A64C ECC70032 */ fmuls       f6, f7, f0
/* 8057A650 C0A100A8 */ lfs         f5, 0xa8(r1)
/* 8057A654 EC020032 */ fmuls       f0, f2, f0
/* 8057A658 EC620132 */ fmuls       f3, f2, f4
/* 8057A65C C03D0064 */ lfs         f1, 0x64(r29)
/* 8057A660 EC850132 */ fmuls       f4, f5, f4
/* 8057A664 EC470072 */ fmuls       f2, f7, f1
/* 8057A668 EC250072 */ fmuls       f1, f5, f1
/* 8057A66C EC862028 */ fsubs       f4, f6, f4
/* 8057A670 EC431028 */ fsubs       f2, f3, f2
/* 8057A674 EC010028 */ fsubs       f0, f1, f0
/* 8057A678 D0810040 */ stfs        f4, 0x40(r1)
/* 8057A67C D0010038 */ stfs        f0, 0x38(r1)
/* 8057A680 D041003C */ stfs        f2, 0x3c(r1)
/* 8057A684 807D0258 */ lwz         r3, 0x258(r29)
/* 8057A688 4BFFB6F5 */ bl          PlayerTrick_tryStart
lbl_8057a68c:
/* 8057A68C 80A10098 */ lwz         r5, 0x98(r1)
/* 8057A690 387D0080 */ addi        r3, r29, 0x80
/* 8057A694 800100A0 */ lwz         r0, 0xa0(r1)
/* 8057A698 90A1002C */ stw         r5, 0x2c(r1)
/* 8057A69C 8081009C */ lwz         r4, 0x9c(r1)
/* 8057A6A0 90010034 */ stw         r0, 0x34(r1)
/* 8057A6A4 C11D0044 */ lfs         f8, 0x44(r29)
/* 8057A6A8 C0210034 */ lfs         f1, 0x34(r1)
/* 8057A6AC 90810030 */ stw         r4, 0x30(r1)
/* 8057A6B0 C0BD0048 */ lfs         f5, 0x48(r29)
/* 8057A6B4 EC080072 */ fmuls       f0, f8, f1
/* 8057A6B8 C041002C */ lfs         f2, 0x2c(r1)
/* 8057A6BC C0E10030 */ lfs         f7, 0x30(r1)
/* 8057A6C0 EC250072 */ fmuls       f1, f5, f1
/* 8057A6C4 C0DD004C */ lfs         f6, 0x4c(r29)
/* 8057A6C8 EC6500B2 */ fmuls       f3, f5, f2
/* 8057A6CC EC8801F2 */ fmuls       f4, f8, f7
/* 8057A6D0 EC4600B2 */ fmuls       f2, f6, f2
/* 8057A6D4 ED241828 */ fsubs       f9, f4, f3
/* 8057A6D8 EC420028 */ fsubs       f2, f2, f0
/* 8057A6DC EC0601F2 */ fmuls       f0, f6, f7
/* 8057A6E0 D1210028 */ stfs        f9, 0x28(r1)
/* 8057A6E4 EC690232 */ fmuls       f3, f9, f8
/* 8057A6E8 EC820232 */ fmuls       f4, f2, f8
/* 8057A6EC D0410024 */ stfs        f2, 0x24(r1)
/* 8057A6F0 ECE10028 */ fsubs       f7, f1, f0
/* 8057A6F4 EC2201B2 */ fmuls       f1, f2, f6
/* 8057A6F8 EC090172 */ fmuls       f0, f9, f5
/* 8057A6FC D0E10020 */ stfs        f7, 0x20(r1)
/* 8057A700 EC4701B2 */ fmuls       f2, f7, f6
/* 8057A704 ECA70172 */ fmuls       f5, f7, f5
/* 8057A708 ECC10028 */ fsubs       f6, f1, f0
/* 8057A70C EC231028 */ fsubs       f1, f3, f2
/* 8057A710 EC052028 */ fsubs       f0, f5, f4
/* 8057A714 D0DD0080 */ stfs        f6, 0x80(r29)
/* 8057A718 D03D0084 */ stfs        f1, 0x84(r29)
/* 8057A71C D01D0088 */ stfs        f0, 0x88(r29)
/* 8057A720 4BCC93BD */ bl          normalise__Q23EGG8Vector3fFv
/* 8057A724 881D0098 */ lbz         r0, 0x98(r29)
/* 8057A728 2C000000 */ cmpwi       r0, 0
/* 8057A72C 41820114 */ beq-        lbl_8057a840
/* 8057A730 C07D005C */ lfs         f3, 0x5c(r29)
/* 8057A734 38610008 */ addi        r3, r1, 8
/* 8057A738 C05D0050 */ lfs         f2, 0x50(r29)
/* 8057A73C 389D005C */ addi        r4, r29, 0x5c
/* 8057A740 C03D0060 */ lfs         f1, 0x60(r29)
/* 8057A744 38BD0050 */ addi        r5, r29, 0x50
/* 8057A748 C01D0054 */ lfs         f0, 0x54(r29)
/* 8057A74C EC4300B2 */ fmuls       f2, f3, f2
/* 8057A750 C07D0064 */ lfs         f3, 0x64(r29)
/* 8057A754 EC010032 */ fmuls       f0, f1, f0
/* 8057A758 C03D0058 */ lfs         f1, 0x58(r29)
/* 8057A75C EC230072 */ fmuls       f1, f3, f1
/* 8057A760 EC02002A */ fadds       f0, f2, f0
/* 8057A764 EFC1002A */ fadds       f30, f1, f0
/* 8057A768 4BFBD0C9 */ bl          VEC3_fromCross
/* 8057A76C C0210008 */ lfs         f1, 8(r1)
/* 8057A770 C001000C */ lfs         f0, 0xc(r1)
/* 8057A774 EC210072 */ fmuls       f1, f1, f1
/* 8057A778 C0410010 */ lfs         f2, 0x10(r1)
/* 8057A77C EC000032 */ fmuls       f0, f0, f0
/* 8057A780 EC4200B2 */ fmuls       f2, f2, f2
/* 8057A784 EC01002A */ fadds       f0, f1, f0
/* 8057A788 EC22002A */ fadds       f1, f2, f0
/* 8057A78C 4BCB5081 */ bl          sqrt__Q23EGG5MathfFf
/* 8057A790 FC40F090 */ fmr         f2, f30
/* 8057A794 4BCB5151 */ bl          atan2_Q23EGG5MathfFff
/* 8057A798 C01F0000 */ lfs         f0, 0(r31)
/* 8057A79C FC010040 */ fcmpo       cr0, f1, f0
/* 8057A7A0 40810008 */ ble-        lbl_8057a7a8
/* 8057A7A4 48000008 */ b           lbl_8057a7ac
lbl_8057a7a8:
/* 8057A7A8 FC200850 */ fneg        f1, f1
lbl_8057a7ac:
/* 8057A7AC C0BD005C */ lfs         f5, 0x5c(r29)
/* 8057A7B0 C01D0054 */ lfs         f0, 0x54(r29)
/* 8057A7B4 C07D0064 */ lfs         f3, 0x64(r29)
/* 8057A7B8 C09D0050 */ lfs         f4, 0x50(r29)
/* 8057A7BC ED250032 */ fmuls       f9, f5, f0
/* 8057A7C0 C11D0060 */ lfs         f8, 0x60(r29)
/* 8057A7C4 EC430032 */ fmuls       f2, f3, f0
/* 8057A7C8 C01D0058 */ lfs         f0, 0x58(r29)
/* 8057A7CC ECC30132 */ fmuls       f6, f3, f4
/* 8057A7D0 ECE80132 */ fmuls       f7, f8, f4
/* 8057A7D4 ECA50032 */ fmuls       f5, f5, f0
/* 8057A7D8 C07D0038 */ lfs         f3, 0x38(r29)
/* 8057A7DC EC880032 */ fmuls       f4, f8, f0
/* 8057A7E0 C01D003C */ lfs         f0, 0x3c(r29)
/* 8057A7E4 ECE93828 */ fsubs       f7, f9, f7
/* 8057A7E8 ECC62828 */ fsubs       f6, f6, f5
/* 8057A7EC ED041028 */ fsubs       f8, f4, f2
/* 8057A7F0 C09D0040 */ lfs         f4, 0x40(r29)
/* 8057A7F4 C0BF0058 */ lfs         f5, 0x58(r31)
/* 8057A7F8 EC460032 */ fmuls       f2, f6, f0
/* 8057A7FC C01F0000 */ lfs         f0, 0(r31)
/* 8057A800 EC6800F2 */ fmuls       f3, f8, f3
/* 8057A804 ECA50072 */ fmuls       f5, f5, f1
/* 8057A808 D1010014 */ stfs        f8, 0x14(r1)
/* 8057A80C EC870132 */ fmuls       f4, f7, f4
/* 8057A810 EC23102A */ fadds       f1, f3, f2
/* 8057A814 D0C10018 */ stfs        f6, 0x18(r1)
/* 8057A818 C05F0004 */ lfs         f2, 4(r31)
/* 8057A81C D0E1001C */ stfs        f7, 0x1c(r1)
/* 8057A820 EC24082A */ fadds       f1, f4, f1
/* 8057A824 FC010040 */ fcmpo       cr0, f1, f0
/* 8057A828 40800008 */ bge-        lbl_8057a830
/* 8057A82C C05F000C */ lfs         f2, 0xc(r31)
lbl_8057a830:
/* 8057A830 ECA500B2 */ fmuls       f5, f5, f2
/* 8057A834 C01D00A0 */ lfs         f0, 0xa0(r29)
/* 8057A838 EC00282A */ fadds       f0, f0, f5
/* 8057A83C D01D00A0 */ stfs        f0, 0xa0(r29)
lbl_8057a840:
/* 8057A840 C05D00A0 */ lfs         f2, 0xa0(r29)
/* 8057A844 C03F0000 */ lfs         f1, 0(r31)
/* 8057A848 FC020840 */ fcmpo       cr0, f2, f1
/* 8057A84C 40810020 */ ble-        lbl_8057a86c
/* 8057A850 C01E0098 */ lfs         f0, 0x98(r30)
/* 8057A854 EC020028 */ fsubs       f0, f2, f0
/* 8057A858 D01D00A0 */ stfs        f0, 0xa0(r29)
/* 8057A85C FC010040 */ fcmpo       cr0, f1, f0
/* 8057A860 40810028 */ ble-        lbl_8057a888
/* 8057A864 D03D00A0 */ stfs        f1, 0xa0(r29)
/* 8057A868 48000020 */ b           lbl_8057a888
lbl_8057a86c:
/* 8057A86C 4080001C */ bge-        lbl_8057a888
/* 8057A870 C01E0098 */ lfs         f0, 0x98(r30)
/* 8057A874 EC02002A */ fadds       f0, f2, f0
/* 8057A878 D01D00A0 */ stfs        f0, 0xa0(r29)
/* 8057A87C FC010040 */ fcmpo       cr0, f1, f0
/* 8057A880 40800008 */ bge-        lbl_8057a888
/* 8057A884 D03D00A0 */ stfs        f1, 0xa0(r29)
lbl_8057a888:
/* 8057A888 E3E10118 */ psq_l       f31, 0x118(r1), 0, 0
/* 8057A88C CBE10110 */ lfd         f31, 0x110(r1)
/* 8057A890 E3C10108 */ psq_l       f30, 0x108(r1), 0, 0
/* 8057A894 CBC10100 */ lfd         f30, 0x100(r1)
/* 8057A898 83E100FC */ lwz         r31, 0xfc(r1)
/* 8057A89C 83C100F8 */ lwz         r30, 0xf8(r1)
/* 8057A8A0 80010124 */ lwz         r0, 0x124(r1)
/* 8057A8A4 83A100F4 */ lwz         r29, 0xf4(r1)
/* 8057A8A8 7C0803A6 */ mtlr        r0
/* 8057A8AC 38210120 */ addi        r1, r1, 0x120
/* 8057A8B0 4E800020 */ blr         