nofralloc
/* 805860BC 9421FEA0 */ stwu        r1, -0x160(r1)
/* 805860C0 7C0802A6 */ mflr        r0
/* 805860C4 90010164 */ stw         r0, 0x164(r1)
/* 805860C8 DBE10150 */ stfd        f31, 0x150(r1)
/* 805860CC F3E10158 */ psq_st      f31, 0x158(r1), 0, 0
/* 805860D0 DBC10140 */ stfd        f30, 0x140(r1)
/* 805860D4 F3C10148 */ psq_st      f30, 0x148(r1), 0, 0
/* 805860D8 39610140 */ addi        r11, r1, 0x140
/* 805860DC 4BA9B4A9 */ bl          _savegpr_20
/* 805860E0 3F208089 */ lis         r25, lbl_80891a00@ha
/* 805860E4 38000000 */ li          r0, 0
/* 805860E8 3B391A00 */ addi        r25, r25, lbl_80891a00@l
/* 805860EC 3CA0808B */ lis         r5, lbl_808b5af4@ha
/* 805860F0 C0190000 */ lfs         f0, 0(r25)
/* 805860F4 7C751B78 */ mr          r21, r3
/* 805860F8 D00100A8 */ stfs        f0, 0xa8(r1)
/* 805860FC 38810084 */ addi        r4, r1, 0x84
/* 80586100 C3E55AF4 */ lfs         f31, lbl_808b5af4@l(r5)
/* 80586104 3B000000 */ li          r24, 0
/* 80586108 D00100AC */ stfs        f0, 0xac(r1)
/* 8058610C FFC0F890 */ fmr         f30, f31
/* 80586110 D00100B0 */ stfs        f0, 0xb0(r1)
/* 80586114 D00100B4 */ stfs        f0, 0xb4(r1)
/* 80586118 D00100B8 */ stfs        f0, 0xb8(r1)
/* 8058611C D00100BC */ stfs        f0, 0xbc(r1)
/* 80586120 90010100 */ stw         r0, 0x100(r1)
/* 80586124 90010008 */ stw         r0, 8(r1)
/* 80586128 80A30000 */ lwz         r5, 0(r3)
/* 8058612C 80A50004 */ lwz         r5, 4(r5)
/* 80586130 8005000C */ lwz         r0, 0xc(r5)
/* 80586134 54000566 */ rlwinm      r0, r0, 0, 0x15, 0x13
/* 80586138 9005000C */ stw         r0, 0xc(r5)
/* 8058613C 80A30000 */ lwz         r5, 0(r3)
/* 80586140 80A50004 */ lwz         r5, 4(r5)
/* 80586144 8005000C */ lwz         r0, 0xc(r5)
/* 80586148 54000188 */ rlwinm      r0, r0, 0, 6, 4
/* 8058614C 9005000C */ stw         r0, 0xc(r5)
/* 80586150 4800AB1D */ bl          unk_80590c6c
/* 80586154 7EA3AB78 */ mr          r3, r21
/* 80586158 4800A0B5 */ bl          getPos__Q24Kart15KartObjectProxyCFv
/* 8058615C C0B900CC */ lfs         f5, 0xcc(r25)
/* 80586160 3FA0802A */ lis         r29, lbl_802a4100@ha
/* 80586164 C0010084 */ lfs         f0, 0x84(r1)
/* 80586168 3BBD4100 */ addi        r29, r29, lbl_802a4100@l
/* 8058616C C0210088 */ lfs         f1, 0x88(r1)
/* 80586170 3AE00000 */ li          r23, 0
/* 80586174 EC850032 */ fmuls       f4, f5, f0
/* 80586178 C0630000 */ lfs         f3, 0(r3)
/* 8058617C C001008C */ lfs         f0, 0x8c(r1)
/* 80586180 EC450072 */ fmuls       f2, f5, f1
/* 80586184 3E8020E8 */ lis         r20, 0x20e8
/* 80586188 3FC08000 */ lis         r30, 0x8000
/* 8058618C EC63202A */ fadds       f3, f3, f4
/* 80586190 3FE0809C */ lis         r31, closestCollisionEntry__5Field@ha
/* 80586194 EC250032 */ fmuls       f1, f5, f0
/* 80586198 3F40802A */ lis         r26, RKSystem_ey@ha
/* 8058619C D0610078 */ stfs        f3, 0x78(r1)
/* 805861A0 3F60809C */ lis         r27, spInstance__Q25Field11CourseModel@ha
/* 805861A4 C0030004 */ lfs         f0, 4(r3)
/* 805861A8 3F80B0E8 */ lis         r28, 0xb0e8
/* 805861AC EC00102A */ fadds       f0, f0, f2
/* 805861B0 D001007C */ stfs        f0, 0x7c(r1)
/* 805861B4 C0030008 */ lfs         f0, 8(r3)
/* 805861B8 EC00082A */ fadds       f0, f0, f1
/* 805861BC D0010080 */ stfs        f0, 0x80(r1)
lbl_805861c0:
/* 805861C0 7EA3AB78 */ mr          r3, r21
/* 805861C4 4800A5B9 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 805861C8 7C761B78 */ mr          r22, r3
/* 805861CC 4800A201 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 805861D0 C0030068 */ lfs         f0, 0x68(r3)
/* 805861D4 D001009C */ stfs        f0, 0x9c(r1)
/* 805861D8 C003006C */ lfs         f0, 0x6c(r3)
/* 805861DC D00100A0 */ stfs        f0, 0xa0(r1)
/* 805861E0 C0030070 */ lfs         f0, 0x70(r3)
/* 805861E4 7EC3B378 */ mr          r3, r22
/* 805861E8 D00100A4 */ stfs        f0, 0xa4(r1)
/* 805861EC 4800A1E1 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 805861F0 386300F0 */ addi        r3, r3, 0xf0
/* 805861F4 389A4130 */ addi        r4, r26, RKSystem_ey@l
/* 805861F8 38A10090 */ addi        r5, r1, 0x90
/* 805861FC 4BCB40D5 */ bl          rotateVector__Q23EGG5QuatfFRCQ23EGG8Vector3fRQ23EGG8Vector3f
/* 80586200 FC60F050 */ fneg        f3, f30
/* 80586204 C0560168 */ lfs         f2, 0x168(r22)
/* 80586208 C0010090 */ lfs         f0, 0x90(r1)
/* 8058620C FC20F890 */ fmr         f1, f31
/* 80586210 C0810094 */ lfs         f4, 0x94(r1)
/* 80586214 3881009C */ addi        r4, r1, 0x9c
/* 80586218 ECE300B2 */ fmuls       f7, f3, f2
/* 8058621C C0410098 */ lfs         f2, 0x98(r1)
/* 80586220 C0A1009C */ lfs         f5, 0x9c(r1)
/* 80586224 38A10078 */ addi        r5, r1, 0x78
/* 80586228 C06100A0 */ lfs         f3, 0xa0(r1)
/* 8058622C 38DC2DFF */ addi        r6, r28, 0x2dff
/* 80586230 ECC70032 */ fmuls       f6, f7, f0
/* 80586234 C00100A4 */ lfs         f0, 0xa4(r1)
/* 80586238 EC870132 */ fmuls       f4, f7, f4
/* 8058623C 807B2F44 */ lwz         r3, spInstance__Q25Field11CourseModel@l(r27)
/* 80586240 EC4700B2 */ fmuls       f2, f7, f2
/* 80586244 38E100A8 */ addi        r7, r1, 0xa8
/* 80586248 ECA5302A */ fadds       f5, f5, f6
/* 8058624C 39010008 */ addi        r8, r1, 8
/* 80586250 EC63202A */ fadds       f3, f3, f4
/* 80586254 39200000 */ li          r9, 0
/* 80586258 EC00102A */ fadds       f0, f0, f2
/* 8058625C D0A1009C */ stfs        f5, 0x9c(r1)
/* 80586260 D06100A0 */ stfs        f3, 0xa0(r1)
/* 80586264 D00100A4 */ stfs        f0, 0xa4(r1)
/* 80586268 4820951D */ bl          checkSphereFullPush__Q25Field11CourseModelFRCQ23EGG8Vector3fRCQ23EGG8Vector3fUlPQ25Field7ColInfoPUlfUl
/* 8058626C 2C030000 */ cmpwi       r3, 0
/* 80586270 418204C8 */ beq-        lbl_80586738
/* 80586274 80610008 */ lwz         r3, 8(r1)
/* 80586278 3AC00000 */ li          r22, 0
/* 8058627C 80BD0000 */ lwz         r5, 0(r29)
/* 80586280 54600000 */ rlwinm      r0, r3, 0, 0, 0
/* 80586284 809D0004 */ lwz         r4, 4(r29)
/* 80586288 506004A5 */ rlwimi.     r0, r3, 0, 0x12, 0x12
/* 8058628C 801D0008 */ lwz         r0, 8(r29)
/* 80586290 90A1006C */ stw         r5, 0x6c(r1)
/* 80586294 90810070 */ stw         r4, 0x70(r1)
/* 80586298 90010074 */ stw         r0, 0x74(r1)
/* 8058629C 41820014 */ beq-        lbl_805862b0
/* 805862A0 38610008 */ addi        r3, r1, 8
/* 805862A4 389E2000 */ addi        r4, r30, 0x2000
/* 805862A8 482376C5 */ bl          findClosestCollisionEntry__5FieldFPUlUl
/* 805862AC 48000008 */ b           lbl_805862b4
lbl_805862b0:
/* 805862B0 38600000 */ li          r3, 0
lbl_805862b4:
/* 805862B4 2C030000 */ cmpwi       r3, 0
/* 805862B8 41820018 */ beq-        lbl_805862d0
/* 805862BC 807F3BDC */ lwz         r3, closestCollisionEntry__5Field@l(r31)
/* 805862C0 A0030004 */ lhz         r0, 4(r3)
/* 805862C4 5400DF7E */ rlwinm      r0, r0, 0x1b, 0x1d, 0x1f
/* 805862C8 2C000001 */ cmpwi       r0, 1
/* 805862CC 4081002C */ ble-        lbl_805862f8
lbl_805862d0:
/* 805862D0 80010008 */ lwz         r0, 8(r1)
/* 805862D4 540000C7 */ rlwinm.     r0, r0, 0, 3, 3
/* 805862D8 41820014 */ beq-        lbl_805862ec
/* 805862DC 38610008 */ addi        r3, r1, 8
/* 805862E0 3C801000 */ lis         r4, 0x1000
/* 805862E4 48237689 */ bl          findClosestCollisionEntry__5FieldFPUlUl
/* 805862E8 48000008 */ b           lbl_805862f0
lbl_805862ec:
/* 805862EC 38600000 */ li          r3, 0
lbl_805862f0:
/* 805862F0 2C030000 */ cmpwi       r3, 0
/* 805862F4 41820038 */ beq-        lbl_8058632c
lbl_805862f8:
/* 805862F8 80750000 */ lwz         r3, 0(r21)
/* 805862FC 3AC00001 */ li          r22, 1
/* 80586300 C04100D8 */ lfs         f2, 0xd8(r1)
/* 80586304 80630004 */ lwz         r3, 4(r3)
/* 80586308 C02100DC */ lfs         f1, 0xdc(r1)
/* 8058630C C00100E0 */ lfs         f0, 0xe0(r1)
/* 80586310 8003000C */ lwz         r0, 0xc(r3)
/* 80586314 D041006C */ stfs        f2, 0x6c(r1)
/* 80586318 60000800 */ ori         r0, r0, 0x800
/* 8058631C D0210070 */ stfs        f1, 0x70(r1)
/* 80586320 D0010074 */ stfs        f0, 0x74(r1)
/* 80586324 9003000C */ stw         r0, 0xc(r3)
/* 80586328 48000058 */ b           lbl_80586380
lbl_8058632c:
/* 8058632C 80010008 */ lwz         r0, 8(r1)
/* 80586330 38940DFF */ addi        r4, r20, 0xdff
/* 80586334 7C002039 */ and.        r0, r0, r4
/* 80586338 41820010 */ beq-        lbl_80586348
/* 8058633C 38610008 */ addi        r3, r1, 8
/* 80586340 4823762D */ bl          findClosestCollisionEntry__5FieldFPUlUl
/* 80586344 48000008 */ b           lbl_8058634c
lbl_80586348:
/* 80586348 38600000 */ li          r3, 0
lbl_8058634c:
/* 8058634C 2C030000 */ cmpwi       r3, 0
/* 80586350 41820030 */ beq-        lbl_80586380
/* 80586354 807F3BDC */ lwz         r3, closestCollisionEntry__5Field@l(r31)
/* 80586358 A0030004 */ lhz         r0, 4(r3)
/* 8058635C 54000463 */ rlwinm.     r0, r0, 0, 0x11, 0x11
/* 80586360 41820020 */ beq-        lbl_80586380
/* 80586364 C04100CC */ lfs         f2, 0xcc(r1)
/* 80586368 3AC00001 */ li          r22, 1
/* 8058636C C02100D0 */ lfs         f1, 0xd0(r1)
/* 80586370 C00100D4 */ lfs         f0, 0xd4(r1)
/* 80586374 D041006C */ stfs        f2, 0x6c(r1)
/* 80586378 D0210070 */ stfs        f1, 0x70(r1)
/* 8058637C D0010074 */ stfs        f0, 0x74(r1)
lbl_80586380:
/* 80586380 2C160000 */ cmpwi       r22, 0
/* 80586384 418203C0 */ beq-        lbl_80586744
/* 80586388 7EA3AB78 */ mr          r3, r21
/* 8058638C 4800A3F1 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80586390 C001006C */ lfs         f0, 0x6c(r1)
/* 80586394 C0E30044 */ lfs         f7, 0x44(r3)
/* 80586398 C0390004 */ lfs         f1, 4(r25)
/* 8058639C ECC03828 */ fsubs       f6, f0, f7
/* 805863A0 C0A10070 */ lfs         f5, 0x70(r1)
/* 805863A4 C0830048 */ lfs         f4, 0x48(r3)
/* 805863A8 C003004C */ lfs         f0, 0x4c(r3)
/* 805863AC EC660072 */ fmuls       f3, f6, f1
/* 805863B0 C0410074 */ lfs         f2, 0x74(r1)
/* 805863B4 ECA52028 */ fsubs       f5, f5, f4
/* 805863B8 D0C10018 */ stfs        f6, 0x18(r1)
/* 805863BC EC820028 */ fsubs       f4, f2, f0
/* 805863C0 EC07182A */ fadds       f0, f7, f3
/* 805863C4 EC450072 */ fmuls       f2, f5, f1
/* 805863C8 D0A1001C */ stfs        f5, 0x1c(r1)
/* 805863CC EC240072 */ fmuls       f1, f4, f1
/* 805863D0 D0030044 */ stfs        f0, 0x44(r3)
/* 805863D4 C0030048 */ lfs         f0, 0x48(r3)
/* 805863D8 D0610018 */ stfs        f3, 0x18(r1)
/* 805863DC EC00102A */ fadds       f0, f0, f2
/* 805863E0 D041001C */ stfs        f2, 0x1c(r1)
/* 805863E4 D0030048 */ stfs        f0, 0x48(r3)
/* 805863E8 C003004C */ lfs         f0, 0x4c(r3)
/* 805863EC D0210020 */ stfs        f1, 0x20(r1)
/* 805863F0 EC00082A */ fadds       f0, f0, f1
/* 805863F4 D003004C */ stfs        f0, 0x4c(r3)
/* 805863F8 7EA3AB78 */ mr          r3, r21
/* 805863FC 4800A381 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80586400 7C761B78 */ mr          r22, r3
/* 80586404 7EA3AB78 */ mr          r3, r21
/* 80586408 4800A375 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 8058640C C0160044 */ lfs         f0, 0x44(r22)
/* 80586410 D0030038 */ stfs        f0, 0x38(r3)
/* 80586414 C0160048 */ lfs         f0, 0x48(r22)
/* 80586418 D003003C */ stfs        f0, 0x3c(r3)
/* 8058641C C016004C */ lfs         f0, 0x4c(r22)
/* 80586420 D0030040 */ stfs        f0, 0x40(r3)
/* 80586424 7EA3AB78 */ mr          r3, r21
/* 80586428 48009FA5 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8058642C 3CA0802A */ lis         r5, RKSystem_ey@ha
/* 80586430 80E30074 */ lwz         r7, 0x74(r3)
/* 80586434 38854130 */ addi        r4, r5, RKSystem_ey@l
/* 80586438 80C30078 */ lwz         r6, 0x78(r3)
/* 8058643C C061006C */ lfs         f3, 0x6c(r1)
/* 80586440 C0454130 */ lfs         f2, RKSystem_ey@l(r5)
/* 80586444 C0210070 */ lfs         f1, 0x70(r1)
/* 80586448 C0040004 */ lfs         f0, 4(r4)
/* 8058644C EC4300B2 */ fmuls       f2, f3, f2
/* 80586450 C0610074 */ lfs         f3, 0x74(r1)
/* 80586454 EC210032 */ fmuls       f1, f1, f0
/* 80586458 C0040008 */ lfs         f0, 8(r4)
/* 8058645C 8003007C */ lwz         r0, 0x7c(r3)
/* 80586460 EC630032 */ fmuls       f3, f3, f0
/* 80586464 C01900E8 */ lfs         f0, 0xe8(r25)
/* 80586468 EC22082A */ fadds       f1, f2, f1
/* 8058646C 90E10060 */ stw         r7, 0x60(r1)
/* 80586470 EC23082A */ fadds       f1, f3, f1
/* 80586474 90C10064 */ stw         r6, 0x64(r1)
/* 80586478 90010068 */ stw         r0, 0x68(r1)
/* 8058647C FC010040 */ fcmpo       cr0, f1, f0
/* 80586480 7E800026 */ mfcr        r20
/* 80586484 56940FFF */ rlwinm.     r20, r20, 1, 0x1f, 0x1f
/* 80586488 40820028 */ bne-        lbl_805864b0
/* 8058648C C0210064 */ lfs         f1, 0x64(r1)
/* 80586490 C0190000 */ lfs         f0, 0(r25)
/* 80586494 FC010040 */ fcmpo       cr0, f1, f0
/* 80586498 41800018 */ blt-        lbl_805864b0
/* 8058649C 80750000 */ lwz         r3, 0(r21)
/* 805864A0 80630004 */ lwz         r3, 4(r3)
/* 805864A4 8003000C */ lwz         r0, 0xc(r3)
/* 805864A8 54000529 */ rlwinm.     r0, r0, 0, 0x14, 0x14
/* 805864AC 41820200 */ beq-        lbl_805866ac
lbl_805864b0:
/* 805864B0 80A100C0 */ lwz         r5, 0xc0(r1)
/* 805864B4 FC60F850 */ fneg        f3, f31
/* 805864B8 90A10054 */ stw         r5, 0x54(r1)
/* 805864BC 7EA3AB78 */ mr          r3, r21
/* 805864C0 C001006C */ lfs         f0, 0x6c(r1)
/* 805864C4 808100C4 */ lwz         r4, 0xc4(r1)
/* 805864C8 800100C8 */ lwz         r0, 0xc8(r1)
/* 805864CC EC430032 */ fmuls       f2, f3, f0
/* 805864D0 90810058 */ stw         r4, 0x58(r1)
/* 805864D4 C0210070 */ lfs         f1, 0x70(r1)
/* 805864D8 C0010074 */ lfs         f0, 0x74(r1)
/* 805864DC 9001005C */ stw         r0, 0x5c(r1)
/* 805864E0 EC230072 */ fmuls       f1, f3, f1
/* 805864E4 EC030032 */ fmuls       f0, f3, f0
/* 805864E8 C0E1009C */ lfs         f7, 0x9c(r1)
/* 805864EC C0810054 */ lfs         f4, 0x54(r1)
/* 805864F0 C0C100A0 */ lfs         f6, 0xa0(r1)
/* 805864F4 ECE7202A */ fadds       f7, f7, f4
/* 805864F8 C0A10058 */ lfs         f5, 0x58(r1)
/* 805864FC C08100A4 */ lfs         f4, 0xa4(r1)
/* 80586500 C061005C */ lfs         f3, 0x5c(r1)
/* 80586504 ECA6282A */ fadds       f5, f6, f5
/* 80586508 EC47102A */ fadds       f2, f7, f2
/* 8058650C EC64182A */ fadds       f3, f4, f3
/* 80586510 EC25082A */ fadds       f1, f5, f1
/* 80586514 D0410048 */ stfs        f2, 0x48(r1)
/* 80586518 EC03002A */ fadds       f0, f3, f0
/* 8058651C D021004C */ stfs        f1, 0x4c(r1)
/* 80586520 D0010050 */ stfs        f0, 0x50(r1)
/* 80586524 48009EA9 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80586528 80A30068 */ lwz         r5, 0x68(r3)
/* 8058652C 8083006C */ lwz         r4, 0x6c(r3)
/* 80586530 80030070 */ lwz         r0, 0x70(r3)
/* 80586534 7EA3AB78 */ mr          r3, r21
/* 80586538 90A1003C */ stw         r5, 0x3c(r1)
/* 8058653C C0410048 */ lfs         f2, 0x48(r1)
/* 80586540 90810040 */ stw         r4, 0x40(r1)
/* 80586544 C021004C */ lfs         f1, 0x4c(r1)
/* 80586548 90010044 */ stw         r0, 0x44(r1)
/* 8058654C C0010050 */ lfs         f0, 0x50(r1)
/* 80586550 D041003C */ stfs        f2, 0x3c(r1)
/* 80586554 D0210040 */ stfs        f1, 0x40(r1)
/* 80586558 D0010044 */ stfs        f0, 0x44(r1)
/* 8058655C 4800AF61 */ bl          getScale__Q24Kart15KartObjectProxyFv
/* 80586560 C3C30004 */ lfs         f30, 4(r3)
/* 80586564 7EA3AB78 */ mr          r3, r21
/* 80586568 4800A321 */ bl          bsp__Q24Kart15KartObjectProxyCFv
/* 8058656C C0030000 */ lfs         f0, 0(r3)
/* 80586570 7EA3AB78 */ mr          r3, r21
/* 80586574 C041006C */ lfs         f2, 0x6c(r1)
/* 80586578 ECC007B2 */ fmuls       f6, f0, f30
/* 8058657C C0010070 */ lfs         f0, 0x70(r1)
/* 80586580 C0210074 */ lfs         f1, 0x74(r1)
/* 80586584 C081003C */ lfs         f4, 0x3c(r1)
/* 80586588 ECA600B2 */ fmuls       f5, f6, f2
/* 8058658C C0410040 */ lfs         f2, 0x40(r1)
/* 80586590 EC660032 */ fmuls       f3, f6, f0
/* 80586594 C0010044 */ lfs         f0, 0x44(r1)
/* 80586598 EC260072 */ fmuls       f1, f6, f1
/* 8058659C EC84282A */ fadds       f4, f4, f5
/* 805865A0 EC42182A */ fadds       f2, f2, f3
/* 805865A4 EC00082A */ fadds       f0, f0, f1
/* 805865A8 D081003C */ stfs        f4, 0x3c(r1)
/* 805865AC D0410040 */ stfs        f2, 0x40(r1)
/* 805865B0 D0010044 */ stfs        f0, 0x44(r1)
/* 805865B4 4800A1C9 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 805865B8 C023022C */ lfs         f1, 0x22c(r3)
/* 805865BC 7EA3AB78 */ mr          r3, r21
/* 805865C0 C0010040 */ lfs         f0, 0x40(r1)
/* 805865C4 EC00082A */ fadds       f0, f0, f1
/* 805865C8 D0010040 */ stfs        f0, 0x40(r1)
/* 805865CC 48009E01 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 805865D0 80A30068 */ lwz         r5, 0x68(r3)
/* 805865D4 8083006C */ lwz         r4, 0x6c(r3)
/* 805865D8 80030070 */ lwz         r0, 0x70(r3)
/* 805865DC 7EA3AB78 */ mr          r3, r21
/* 805865E0 90A10030 */ stw         r5, 0x30(r1)
/* 805865E4 90810034 */ stw         r4, 0x34(r1)
/* 805865E8 90010038 */ stw         r0, 0x38(r1)
/* 805865EC 4800A70D */ bl          getVehicleSpeed__Q24Kart15KartObjectProxyFv
/* 805865F0 FC400A10 */ fabs        f2, f1
/* 805865F4 C039005C */ lfs         f1, 0x5c(r25)
/* 805865F8 C81900F0 */ lfd         f0, 0xf0(r25)
/* 805865FC 2C140000 */ cmpwi       r20, 0
/* 80586600 EC2100B2 */ fmuls       f1, f1, f2
/* 80586604 FCE10028 */ fsub        f7, f1, f0
/* 80586608 FCE03818 */ frsp        f7, f7
/* 8058660C 41820008 */ beq-        lbl_80586614
/* 80586610 C0F90004 */ lfs         f7, 4(r25)
lbl_80586614:
/* 80586614 C0190000 */ lfs         f0, 0(r25)
/* 80586618 FC003840 */ fcmpo       cr0, f0, f7
/* 8058661C 4081000C */ ble-        lbl_80586628
/* 80586620 FCE00090 */ fmr         f7, f0
/* 80586624 48000014 */ b           lbl_80586638
lbl_80586628:
/* 80586628 C0190004 */ lfs         f0, 4(r25)
/* 8058662C FC003840 */ fcmpo       cr0, f0, f7
/* 80586630 40800008 */ bge-        lbl_80586638
/* 80586634 FCE00090 */ fmr         f7, f0
lbl_80586638:
/* 80586638 C021003C */ lfs         f1, 0x3c(r1)
/* 8058663C 7EA3AB78 */ mr          r3, r21
/* 80586640 C0C10030 */ lfs         f6, 0x30(r1)
/* 80586644 C0010040 */ lfs         f0, 0x40(r1)
/* 80586648 EC613028 */ fsubs       f3, f1, f6
/* 8058664C C0A10034 */ lfs         f5, 0x34(r1)
/* 80586650 C0210044 */ lfs         f1, 0x44(r1)
/* 80586654 EC402828 */ fsubs       f2, f0, f5
/* 80586658 C0810038 */ lfs         f4, 0x38(r1)
/* 8058665C EC0301F2 */ fmuls       f0, f3, f7
/* 80586660 EC612028 */ fsubs       f3, f1, f4
/* 80586664 EC2201F2 */ fmuls       f1, f2, f7
/* 80586668 D001000C */ stfs        f0, 0xc(r1)
/* 8058666C EC46002A */ fadds       f2, f6, f0
/* 80586670 EC0301F2 */ fmuls       f0, f3, f7
/* 80586674 D0210010 */ stfs        f1, 0x10(r1)
/* 80586678 EC25082A */ fadds       f1, f5, f1
/* 8058667C D0010014 */ stfs        f0, 0x14(r1)
/* 80586680 EC04002A */ fadds       f0, f4, f0
/* 80586684 D0410030 */ stfs        f2, 0x30(r1)
/* 80586688 D0210034 */ stfs        f1, 0x34(r1)
/* 8058668C D0010038 */ stfs        f0, 0x38(r1)
/* 80586690 48009D3D */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80586694 C0010030 */ lfs         f0, 0x30(r1)
/* 80586698 D0030068 */ stfs        f0, 0x68(r3)
/* 8058669C C0010034 */ lfs         f0, 0x34(r1)
/* 805866A0 D003006C */ stfs        f0, 0x6c(r3)
/* 805866A4 C0010038 */ lfs         f0, 0x38(r1)
/* 805866A8 D0030070 */ stfs        f0, 0x70(r3)
lbl_805866ac:
/* 805866AC 7EA3AB78 */ mr          r3, r21
/* 805866B0 4800A0CD */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 805866B4 7C761B78 */ mr          r22, r3
/* 805866B8 7EA3AB78 */ mr          r3, r21
/* 805866BC 4800A0C1 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 805866C0 7C651B78 */ mr          r5, r3
/* 805866C4 38610024 */ addi        r3, r1, 0x24
/* 805866C8 38960068 */ addi        r4, r22, 0x68
/* 805866CC 38C00001 */ li          r6, 1
/* 805866D0 38A50038 */ addi        r5, r5, 0x38
/* 805866D4 48028319 */ bl          VEC3_perpInPlane
/* 805866D8 7EA3AB78 */ mr          r3, r21
/* 805866DC 4800A0A1 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 805866E0 C0010024 */ lfs         f0, 0x24(r1)
/* 805866E4 7C761B78 */ mr          r22, r3
/* 805866E8 D003005C */ stfs        f0, 0x5c(r3)
/* 805866EC C0010028 */ lfs         f0, 0x28(r1)
/* 805866F0 D0030060 */ stfs        f0, 0x60(r3)
/* 805866F4 C001002C */ lfs         f0, 0x2c(r1)
/* 805866F8 D0030064 */ stfs        f0, 0x64(r3)
/* 805866FC 7EA3AB78 */ mr          r3, r21
/* 80586700 4800A07D */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80586704 C016005C */ lfs         f0, 0x5c(r22)
/* 80586708 3B000001 */ li          r24, 1
/* 8058670C D0030074 */ stfs        f0, 0x74(r3)
/* 80586710 C0160060 */ lfs         f0, 0x60(r22)
/* 80586714 D0030078 */ stfs        f0, 0x78(r3)
/* 80586718 C0160064 */ lfs         f0, 0x64(r22)
/* 8058671C D003007C */ stfs        f0, 0x7c(r3)
/* 80586720 80750000 */ lwz         r3, 0(r21)
/* 80586724 80630004 */ lwz         r3, 4(r3)
/* 80586728 8003000C */ lwz         r0, 0xc(r3)
/* 8058672C 64000400 */ oris        r0, r0, 0x400
/* 80586730 9003000C */ stw         r0, 0xc(r3)
/* 80586734 4800001C */ b           lbl_80586750
lbl_80586738:
/* 80586738 56E0063F */ clrlwi.     r0, r23, 0x18
/* 8058673C 40820008 */ bne-        lbl_80586744
/* 80586740 C3D90000 */ lfs         f30, 0(r25)
lbl_80586744:
/* 80586744 3AF70001 */ addi        r23, r23, 1
/* 80586748 28170002 */ cmplwi      r23, 2
/* 8058674C 4180FA74 */ blt+        lbl_805861c0
lbl_80586750:
/* 80586750 7F03C378 */ mr          r3, r24
/* 80586754 E3E10158 */ psq_l       f31, 0x158(r1), 0, 0
/* 80586758 CBE10150 */ lfd         f31, 0x150(r1)
/* 8058675C E3C10148 */ psq_l       f30, 0x148(r1), 0, 0
/* 80586760 CBC10140 */ lfd         f30, 0x140(r1)
/* 80586764 39610140 */ addi        r11, r1, 0x140
/* 80586768 4BA9AE69 */ bl          _restgpr_20
/* 8058676C 80010164 */ lwz         r0, 0x164(r1)
/* 80586770 7C0803A6 */ mtlr        r0
/* 80586774 38210160 */ addi        r1, r1, 0x160
/* 80586778 4E800020 */ blr         