nofralloc
/* 805B5170 9421FEA0 */ stwu        r1, -0x160(r1)
/* 805B5174 7C0802A6 */ mflr        r0
/* 805B5178 90010164 */ stw         r0, 0x164(r1)
/* 805B517C DBE10150 */ stfd        f31, 0x150(r1)
/* 805B5180 F3E10158 */ psq_st      f31, 0x158(r1), 0, 0
/* 805B5184 DBC10140 */ stfd        f30, 0x140(r1)
/* 805B5188 F3C10148 */ psq_st      f30, 0x148(r1), 0, 0
/* 805B518C DBA10130 */ stfd        f29, 0x130(r1)
/* 805B5190 F3A10138 */ psq_st      f29, 0x138(r1), 0, 0
/* 805B5194 DB810120 */ stfd        f28, 0x120(r1)
/* 805B5198 F3810128 */ psq_st      f28, 0x128(r1), 0, 0
/* 805B519C DB610110 */ stfd        f27, 0x110(r1)
/* 805B51A0 F3610118 */ psq_st      f27, 0x118(r1), 0, 0
/* 805B51A4 DB410100 */ stfd        f26, 0x100(r1)
/* 805B51A8 F3410108 */ psq_st      f26, 0x108(r1), 0, 0
/* 805B51AC DB2100F0 */ stfd        f25, 0xf0(r1)
/* 805B51B0 F32100F8 */ psq_st      f25, 0xf8(r1), 0, 0
/* 805B51B4 DB0100E0 */ stfd        f24, 0xe0(r1)
/* 805B51B8 F30100E8 */ psq_st      f24, 0xe8(r1), 0, 0
/* 805B51BC DAE100D0 */ stfd        f23, 0xd0(r1)
/* 805B51C0 F2E100D8 */ psq_st      f23, 0xd8(r1), 0, 0
/* 805B51C4 DAC100C0 */ stfd        f22, 0xc0(r1)
/* 805B51C8 F2C100C8 */ psq_st      f22, 0xc8(r1), 0, 0
/* 805B51CC DAA100B0 */ stfd        f21, 0xb0(r1)
/* 805B51D0 F2A100B8 */ psq_st      f21, 0xb8(r1), 0, 0
/* 805B51D4 FFC00890 */ fmr         f30, f1
/* 805B51D8 FFE01090 */ fmr         f31, f2
/* 805B51DC 93E100AC */ stw         r31, 0xac(r1)
/* 805B51E0 3FE08089 */ lis         r31, lbl_80892750@ha
/* 805B51E4 3BFF2750 */ addi        r31, r31, lbl_80892750@l
/* 805B51E8 93C100A8 */ stw         r30, 0xa8(r1)
/* 805B51EC 7C7E1B78 */ mr          r30, r3
/* 805B51F0 93A100A4 */ stw         r29, 0xa4(r1)
/* 805B51F4 7C9D2378 */ mr          r29, r4
/* 805B51F8 88030171 */ lbz         r0, 0x171(r3)
/* 805B51FC 2C000000 */ cmpwi       r0, 0
/* 805B5200 40820014 */ bne-        lbl_805b5214
/* 805B5204 C0430114 */ lfs         f2, 0x114(r3)
/* 805B5208 C0030148 */ lfs         f0, 0x148(r3)
/* 805B520C EC02002A */ fadds       f0, f2, f0
/* 805B5210 D0030114 */ stfs        f0, 0x114(r3)
lbl_805b5214:
/* 805B5214 C0630110 */ lfs         f3, 0x110(r3)
/* 805B5218 D0630080 */ stfs        f3, 0x80(r3)
/* 805B521C C0430114 */ lfs         f2, 0x114(r3)
/* 805B5220 C0030118 */ lfs         f0, 0x118(r3)
/* 805B5224 88030172 */ lbz         r0, 0x172(r3)
/* 805B5228 D0430084 */ stfs        f2, 0x84(r3)
/* 805B522C 80A30080 */ lwz         r5, 0x80(r3)
/* 805B5230 2C000000 */ cmpwi       r0, 0
/* 805B5234 D0030088 */ stfs        f0, 0x88(r3)
/* 805B5238 80830084 */ lwz         r4, 0x84(r3)
/* 805B523C 90A10088 */ stw         r5, 0x88(r1)
/* 805B5240 80030088 */ lwz         r0, 0x88(r3)
/* 805B5244 9081008C */ stw         r4, 0x8c(r1)
/* 805B5248 C0010088 */ lfs         f0, 0x88(r1)
/* 805B524C C041008C */ lfs         f2, 0x8c(r1)
/* 805B5250 ECC00072 */ fmuls       f6, f0, f1
/* 805B5254 90010090 */ stw         r0, 0x90(r1)
/* 805B5258 ECA20072 */ fmuls       f5, f2, f1
/* 805B525C C0630074 */ lfs         f3, 0x74(r3)
/* 805B5260 C0010090 */ lfs         f0, 0x90(r1)
/* 805B5264 EC63302A */ fadds       f3, f3, f6
/* 805B5268 EC800072 */ fmuls       f4, f0, f1
/* 805B526C C0430078 */ lfs         f2, 0x78(r3)
/* 805B5270 C003007C */ lfs         f0, 0x7c(r3)
/* 805B5274 EC22282A */ fadds       f1, f2, f5
/* 805B5278 D0C10088 */ stfs        f6, 0x88(r1)
/* 805B527C EC00202A */ fadds       f0, f0, f4
/* 805B5280 D0A1008C */ stfs        f5, 0x8c(r1)
/* 805B5284 D0810090 */ stfs        f4, 0x90(r1)
/* 805B5288 D0630074 */ stfs        f3, 0x74(r3)
/* 805B528C D0230078 */ stfs        f1, 0x78(r3)
/* 805B5290 D003007C */ stfs        f0, 0x7c(r3)
/* 805B5294 41820014 */ beq-        lbl_805b52a8
/* 805B5298 C01F0000 */ lfs         f0, 0(r31)
/* 805B529C FC010040 */ fcmpo       cr0, f1, f0
/* 805B52A0 40810008 */ ble-        lbl_805b52a8
/* 805B52A4 D0030078 */ stfs        f0, 0x78(r3)
lbl_805b52a8:
/* 805B52A8 88030173 */ lbz         r0, 0x173(r3)
/* 805B52AC 2C000000 */ cmpwi       r0, 0
/* 805B52B0 4182000C */ beq-        lbl_805b52bc
/* 805B52B4 C01F0000 */ lfs         f0, 0(r31)
/* 805B52B8 D0030078 */ stfs        f0, 0x78(r3)
lbl_805b52bc:
/* 805B52BC C0430074 */ lfs         f2, 0x74(r3)
/* 805B52C0 3D00802A */ lis         r8, lbl_802a4148@ha
/* 805B52C4 C09F0014 */ lfs         f4, 0x14(r31)
/* 805B52C8 389E00F0 */ addi        r4, r30, 0xf0
/* 805B52CC C0230078 */ lfs         f1, 0x78(r3)
/* 805B52D0 38A1007C */ addi        r5, r1, 0x7c
/* 805B52D4 ECC20132 */ fmuls       f6, f2, f4
/* 805B52D8 C003007C */ lfs         f0, 0x7c(r3)
/* 805B52DC ECA10132 */ fmuls       f5, f1, f4
/* 805B52E0 C04300A4 */ lfs         f2, 0xa4(r3)
/* 805B52E4 EC800132 */ fmuls       f4, f0, f4
/* 805B52E8 C07F0018 */ lfs         f3, 0x18(r31)
/* 805B52EC C02300A8 */ lfs         f1, 0xa8(r3)
/* 805B52F0 EC4200F2 */ fmuls       f2, f2, f3
/* 805B52F4 C00300AC */ lfs         f0, 0xac(r3)
/* 805B52F8 EC2100F2 */ fmuls       f1, f1, f3
/* 805B52FC D0C30074 */ stfs        f6, 0x74(r3)
/* 805B5300 EC0000F2 */ fmuls       f0, f0, f3
/* 805B5304 D0A30078 */ stfs        f5, 0x78(r3)
/* 805B5308 D083007C */ stfs        f4, 0x7c(r3)
/* 805B530C D04300A4 */ stfs        f2, 0xa4(r3)
/* 805B5310 D02300A8 */ stfs        f1, 0xa8(r3)
/* 805B5314 D00300AC */ stfs        f0, 0xac(r3)
/* 805B5318 38610008 */ addi        r3, r1, 8
/* 805B531C 84E84148 */ lwzu        r7, lbl_802a4148@l(r8)
/* 805B5320 90E1007C */ stw         r7, 0x7c(r1)
/* 805B5324 80C80004 */ lwz         r6, 4(r8)
/* 805B5328 80080008 */ lwz         r0, 8(r8)
/* 805B532C 90C10080 */ stw         r6, 0x80(r1)
/* 805B5330 90010084 */ stw         r0, 0x84(r1)
/* 805B5334 4BF5F4C9 */ bl          VEC3_fromQuaternionRotated__FRQ23EGG8Vector3fRCQ23EGG5QuatfRCQ23EGG8Vector3f
/* 805B5338 C0E10008 */ lfs         f7, 8(r1)
/* 805B533C C09F0000 */ lfs         f4, 0(r31)
/* 805B5340 EC4701F2 */ fmuls       f2, f7, f7
/* 805B5344 C0A10010 */ lfs         f5, 0x10(r1)
/* 805B5348 EC240132 */ fmuls       f1, f4, f4
/* 805B534C C0C1000C */ lfs         f6, 0xc(r1)
/* 805B5350 EC650172 */ fmuls       f3, f5, f5
/* 805B5354 C01F001C */ lfs         f0, 0x1c(r31)
/* 805B5358 EC22082A */ fadds       f1, f2, f1
/* 805B535C D0E1007C */ stfs        f7, 0x7c(r1)
/* 805B5360 D0C10080 */ stfs        f6, 0x80(r1)
/* 805B5364 EC23082A */ fadds       f1, f3, f1
/* 805B5368 D0A10084 */ stfs        f5, 0x84(r1)
/* 805B536C FC010040 */ fcmpo       cr0, f1, f0
/* 805B5370 D0E10070 */ stfs        f7, 0x70(r1)
/* 805B5374 D0A10078 */ stfs        f5, 0x78(r1)
/* 805B5378 D0810074 */ stfs        f4, 0x74(r1)
/* 805B537C 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 805B5380 7C000026 */ mfcr        r0
/* 805B5384 54001FFF */ rlwinm.     r0, r0, 3, 0x1f, 0x1f
/* 805B5388 408200D8 */ bne-        lbl_805b5460
/* 805B538C 38610070 */ addi        r3, r1, 0x70
/* 805B5390 4BC8E74D */ bl          normalise__Q23EGG8Vector3fFv
/* 805B5394 389E0074 */ addi        r4, r30, 0x74
/* 805B5398 38610064 */ addi        r3, r1, 0x64
/* 805B539C 7C852378 */ mr          r5, r4
/* 805B53A0 38C10070 */ addi        r6, r1, 0x70
/* 805B53A4 4BFF9881 */ bl          projAndRej__6RKGeomFRQ23EGG8Vector3fRQ23EGG8Vector3fRCQ23EGG8Vector3fRCQ23EGG8Vector3f
/* 805B53A8 C0210064 */ lfs         f1, 0x64(r1)
/* 805B53AC C0010068 */ lfs         f0, 0x68(r1)
/* 805B53B0 EC410072 */ fmuls       f2, f1, f1
/* 805B53B4 C061006C */ lfs         f3, 0x6c(r1)
/* 805B53B8 EC200032 */ fmuls       f1, f0, f0
/* 805B53BC C01F001C */ lfs         f0, 0x1c(r31)
/* 805B53C0 EC6300F2 */ fmuls       f3, f3, f3
/* 805B53C4 EC22082A */ fadds       f1, f2, f1
/* 805B53C8 EC23082A */ fadds       f1, f3, f1
/* 805B53CC FC010040 */ fcmpo       cr0, f1, f0
/* 805B53D0 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 805B53D4 7C000026 */ mfcr        r0
/* 805B53D8 54001FFF */ rlwinm.     r0, r0, 3, 0x1f, 0x1f
/* 805B53DC 4182000C */ beq-        lbl_805b53e8
/* 805B53E0 C03F0000 */ lfs         f1, 0(r31)
/* 805B53E4 48000008 */ b           lbl_805b53ec
lbl_805b53e8:
/* 805B53E8 4BC7A425 */ bl          sqrt__Q23EGG5MathfFf
lbl_805b53ec:
/* 805B53EC C081007C */ lfs         f4, 0x7c(r1)
/* 805B53F0 C0610070 */ lfs         f3, 0x70(r1)
/* 805B53F4 C0410080 */ lfs         f2, 0x80(r1)
/* 805B53F8 C0010074 */ lfs         f0, 0x74(r1)
/* 805B53FC EC6400F2 */ fmuls       f3, f4, f3
/* 805B5400 C0A10084 */ lfs         f5, 0x84(r1)
/* 805B5404 EC420032 */ fmuls       f2, f2, f0
/* 805B5408 C0810078 */ lfs         f4, 0x78(r1)
/* 805B540C C01F0000 */ lfs         f0, 0(r31)
/* 805B5410 EC850132 */ fmuls       f4, f5, f4
/* 805B5414 EC43102A */ fadds       f2, f3, f2
/* 805B5418 EC44102A */ fadds       f2, f4, f2
/* 805B541C ECA100B2 */ fmuls       f5, f1, f2
/* 805B5420 D0BE017C */ stfs        f5, 0x17c(r30)
/* 805B5424 C0810064 */ lfs         f4, 0x64(r1)
/* 805B5428 C0610070 */ lfs         f3, 0x70(r1)
/* 805B542C C0410068 */ lfs         f2, 0x68(r1)
/* 805B5430 C0210074 */ lfs         f1, 0x74(r1)
/* 805B5434 EC6400F2 */ fmuls       f3, f4, f3
/* 805B5438 C081006C */ lfs         f4, 0x6c(r1)
/* 805B543C EC220072 */ fmuls       f1, f2, f1
/* 805B5440 C0410078 */ lfs         f2, 0x78(r1)
/* 805B5444 EC4400B2 */ fmuls       f2, f4, f2
/* 805B5448 EC23082A */ fadds       f1, f3, f1
/* 805B544C EC22082A */ fadds       f1, f2, f1
/* 805B5450 FC010040 */ fcmpo       cr0, f1, f0
/* 805B5454 4080000C */ bge-        lbl_805b5460
/* 805B5458 FC002850 */ fneg        f0, f5
/* 805B545C D01E017C */ stfs        f0, 0x17c(r30)
lbl_805b5460:
/* 805B5460 809E0074 */ lwz         r4, 0x74(r30)
/* 805B5464 2C1D0000 */ cmpwi       r29, 0
/* 805B5468 90810058 */ stw         r4, 0x58(r1)
/* 805B546C 807E0078 */ lwz         r3, 0x78(r30)
/* 805B5470 801E007C */ lwz         r0, 0x7c(r30)
/* 805B5474 9061005C */ stw         r3, 0x5c(r1)
/* 805B5478 C0010058 */ lfs         f0, 0x58(r1)
/* 805B547C C021005C */ lfs         f1, 0x5c(r1)
/* 805B5480 EC4007B2 */ fmuls       f2, f0, f30
/* 805B5484 90010060 */ stw         r0, 0x60(r1)
/* 805B5488 EC2107B2 */ fmuls       f1, f1, f30
/* 805B548C C0010060 */ lfs         f0, 0x60(r1)
/* 805B5490 D0410058 */ stfs        f2, 0x58(r1)
/* 805B5494 EC0007B2 */ fmuls       f0, f0, f30
/* 805B5498 D021005C */ stfs        f1, 0x5c(r1)
/* 805B549C D0010060 */ stfs        f0, 0x60(r1)
/* 805B54A0 4182001C */ beq-        lbl_805b54bc
/* 805B54A4 3C60808B */ lis         r3, lbl_808b6588@ha
/* 805B54A8 C01E0150 */ lfs         f0, 0x150(r30)
/* 805B54AC C0236588 */ lfs         f1, lbl_808b6588@l(r3)
/* 805B54B0 FC010040 */ fcmpo       cr0, f1, f0
/* 805B54B4 40800008 */ bge-        lbl_805b54bc
/* 805B54B8 D03E0150 */ stfs        f1, 0x150(r30)
lbl_805b54bc:
/* 805B54BC C0610058 */ lfs         f3, 0x58(r1)
/* 805B54C0 387E00D4 */ addi        r3, r30, 0xd4
/* 805B54C4 C03E014C */ lfs         f1, 0x14c(r30)
/* 805B54C8 C041005C */ lfs         f2, 0x5c(r1)
/* 805B54CC ECA3082A */ fadds       f5, f3, f1
/* 805B54D0 C03E00B0 */ lfs         f1, 0xb0(r30)
/* 805B54D4 C01E0150 */ lfs         f0, 0x150(r30)
/* 805B54D8 C0610060 */ lfs         f3, 0x60(r1)
/* 805B54DC ECA5082A */ fadds       f5, f5, f1
/* 805B54E0 C03E0154 */ lfs         f1, 0x154(r30)
/* 805B54E4 EC82002A */ fadds       f4, f2, f0
/* 805B54E8 C01E00B4 */ lfs         f0, 0xb4(r30)
/* 805B54EC ECC3082A */ fadds       f6, f3, f1
/* 805B54F0 C07E00B8 */ lfs         f3, 0xb8(r30)
/* 805B54F4 EC84002A */ fadds       f4, f4, f0
/* 805B54F8 C05E00C8 */ lfs         f2, 0xc8(r30)
/* 805B54FC C03E00CC */ lfs         f1, 0xcc(r30)
/* 805B5500 EC66182A */ fadds       f3, f6, f3
/* 805B5504 C01E00D0 */ lfs         f0, 0xd0(r30)
/* 805B5508 EC45102A */ fadds       f2, f5, f2
/* 805B550C EC24082A */ fadds       f1, f4, f1
/* 805B5510 D05E00D4 */ stfs        f2, 0xd4(r30)
/* 805B5514 EC03002A */ fadds       f0, f3, f0
/* 805B5518 D03E00D8 */ stfs        f1, 0xd8(r30)
/* 805B551C D01E00DC */ stfs        f0, 0xdc(r30)
/* 805B5520 4BC8E5BD */ bl          normalise__Q23EGG8Vector3fFv
/* 805B5524 C05E01B0 */ lfs         f2, 0x1b0(r30)
/* 805B5528 C01F0004 */ lfs         f0, 4(r31)
/* 805B552C D03E00E0 */ stfs        f1, 0xe0(r30)
/* 805B5530 FC020040 */ fcmpo       cr0, f2, f0
/* 805B5534 40810008 */ ble-        lbl_805b553c
/* 805B5538 EFFF00B2 */ fmuls       f31, f31, f2
lbl_805b553c:
/* 805B553C C01E00E0 */ lfs         f0, 0xe0(r30)
/* 805B5540 FC1F0040 */ fcmpo       cr0, f31, f0
/* 805B5544 40800008 */ bge-        lbl_805b554c
/* 805B5548 D3FE00E0 */ stfs        f31, 0xe0(r30)
lbl_805b554c:
/* 805B554C C33E011C */ lfs         f25, 0x11c(r30)
/* 805B5550 C39E0044 */ lfs         f28, 0x44(r30)
/* 805B5554 C11E0120 */ lfs         f8, 0x120(r30)
/* 805B5558 C3BE0048 */ lfs         f29, 0x48(r30)
/* 805B555C EC3C0672 */ fmuls       f1, f28, f25
/* 805B5560 C1BE0034 */ lfs         f13, 0x34(r30)
/* 805B5564 EC1D0232 */ fmuls       f0, f29, f8
/* 805B5568 C31E0054 */ lfs         f24, 0x54(r30)
/* 805B556C C19E0038 */ lfs         f12, 0x38(r30)
/* 805B5570 EC6D0672 */ fmuls       f3, f13, f25
/* 805B5574 C35E0058 */ lfs         f26, 0x58(r30)
/* 805B5578 ED380672 */ fmuls       f9, f24, f25
/* 805B557C ECA1002A */ fadds       f5, f1, f0
/* 805B5580 C2FE0124 */ lfs         f23, 0x124(r30)
/* 805B5584 C37E004C */ lfs         f27, 0x4c(r30)
/* 805B5588 EC4C0232 */ fmuls       f2, f12, f8
/* 805B558C C3FE003C */ lfs         f31, 0x3c(r30)
/* 805B5590 ECFA0232 */ fmuls       f7, f26, f8
/* 805B5594 ECDB05F2 */ fmuls       f6, f27, f23
/* 805B5598 C01E005C */ lfs         f0, 0x5c(r30)
/* 805B559C EC43102A */ fadds       f2, f3, f2
/* 805B55A0 C03E00E0 */ lfs         f1, 0xe0(r30)
/* 805B55A4 EC9F05F2 */ fmuls       f4, f31, f23
/* 805B55A8 C2DE00D8 */ lfs         f22, 0xd8(r30)
/* 805B55AC ED46282A */ fadds       f10, f6, f5
/* 805B55B0 C0DE00D4 */ lfs         f6, 0xd4(r30)
/* 805B55B4 EC44102A */ fadds       f2, f4, f2
/* 805B55B8 C09E0068 */ lfs         f4, 0x68(r30)
/* 805B55BC EEA60072 */ fmuls       f21, f6, f1
/* 805B55C0 ED4A07B2 */ fmuls       f10, f10, f30
/* 805B55C4 ED6207B2 */ fmuls       f11, f2, f30
/* 805B55C8 C05E0070 */ lfs         f2, 0x70(r30)
/* 805B55CC EC69382A */ fadds       f3, f9, f7
/* 805B55D0 D2BE00D4 */ stfs        f21, 0xd4(r30)
/* 805B55D4 ECE8502A */ fadds       f7, f8, f10
/* 805B55D8 ECA005F2 */ fmuls       f5, f0, f23
/* 805B55DC ED19582A */ fadds       f8, f25, f11
/* 805B55E0 D161004C */ stfs        f11, 0x4c(r1)
/* 805B55E4 EC65182A */ fadds       f3, f5, f3
/* 805B55E8 C0BE00DC */ lfs         f5, 0xdc(r30)
/* 805B55EC D1410050 */ stfs        f10, 0x50(r1)
/* 805B55F0 ECA50072 */ fmuls       f5, f5, f1
/* 805B55F4 ED2307B2 */ fmuls       f9, f3, f30
/* 805B55F8 C07E006C */ lfs         f3, 0x6c(r30)
/* 805B55FC D0BE00DC */ stfs        f5, 0xdc(r30)
/* 805B5600 ECD7482A */ fadds       f6, f23, f9
/* 805B5604 D1210054 */ stfs        f9, 0x54(r1)
/* 805B5608 EEF60072 */ fmuls       f23, f22, f1
/* 805B560C EC24A82A */ fadds       f1, f4, f21
/* 805B5610 D1010034 */ stfs        f8, 0x34(r1)
/* 805B5614 EC980232 */ fmuls       f4, f24, f8
/* 805B5618 EF23B82A */ fadds       f25, f3, f23
/* 805B561C D2FE00D8 */ stfs        f23, 0xd8(r30)
/* 805B5620 EEE2282A */ fadds       f23, f2, f5
/* 805B5624 EC7A01F2 */ fmuls       f3, f26, f7
/* 805B5628 D03E0068 */ stfs        f1, 0x68(r30)
/* 805B562C EC5C0232 */ fmuls       f2, f28, f8
/* 805B5630 EC3D01F2 */ fmuls       f1, f29, f7
/* 805B5634 D33E006C */ stfs        f25, 0x6c(r30)
/* 805B5638 ECA001B2 */ fmuls       f5, f0, f6
/* 805B563C EC84182A */ fadds       f4, f4, f3
/* 805B5640 D2FE0070 */ stfs        f23, 0x70(r30)
/* 805B5644 EC7B01B2 */ fmuls       f3, f27, f6
/* 805B5648 EC02082A */ fadds       f0, f2, f1
/* 805B564C D0E10038 */ stfs        f7, 0x38(r1)
/* 805B5650 EEA5202A */ fadds       f21, f5, f4
/* 805B5654 D0C1003C */ stfs        f6, 0x3c(r1)
/* 805B5658 EC23002A */ fadds       f1, f3, f0
/* 805B565C EC0C01F2 */ fmuls       f0, f12, f7
/* 805B5660 881E0170 */ lbz         r0, 0x170(r30)
/* 805B5664 EC8D0232 */ fmuls       f4, f13, f8
/* 805B5668 C0BF0020 */ lfs         f5, 0x20(r31)
/* 805B566C EC6107B2 */ fmuls       f3, f1, f30
/* 805B5670 C03E00A8 */ lfs         f1, 0xa8(r30)
/* 805B5674 ECFF01B2 */ fmuls       f7, f31, f6
/* 805B5678 D0610044 */ stfs        f3, 0x44(r1)
/* 805B567C EC84002A */ fadds       f4, f4, f0
/* 805B5680 C05E00A4 */ lfs         f2, 0xa4(r30)
/* 805B5684 ECD507B2 */ fmuls       f6, f21, f30
/* 805B5688 C01E00AC */ lfs         f0, 0xac(r30)
/* 805B568C ECE7202A */ fadds       f7, f7, f4
/* 805B5690 D0C10048 */ stfs        f6, 0x48(r1)
/* 805B5694 EC8A182A */ fadds       f4, f10, f3
/* 805B5698 2C000000 */ cmpwi       r0, 0
/* 805B569C EC69302A */ fadds       f3, f9, f6
/* 805B56A0 ECC707B2 */ fmuls       f6, f7, f30
/* 805B56A4 EC840172 */ fmuls       f4, f4, f5
/* 805B56A8 D0C10040 */ stfs        f6, 0x40(r1)
/* 805B56AC EC630172 */ fmuls       f3, f3, f5
/* 805B56B0 ECCB302A */ fadds       f6, f11, f6
/* 805B56B4 EC21202A */ fadds       f1, f1, f4
/* 805B56B8 D0810038 */ stfs        f4, 0x38(r1)
/* 805B56BC EC00182A */ fadds       f0, f0, f3
/* 805B56C0 EC860172 */ fmuls       f4, f6, f5
/* 805B56C4 D061003C */ stfs        f3, 0x3c(r1)
/* 805B56C8 D0810034 */ stfs        f4, 0x34(r1)
/* 805B56CC EC42202A */ fadds       f2, f2, f4
/* 805B56D0 D03E00A8 */ stfs        f1, 0xa8(r30)
/* 805B56D4 D05E00A4 */ stfs        f2, 0xa4(r30)
/* 805B56D8 D01E00AC */ stfs        f0, 0xac(r30)
/* 805B56DC 41820018 */ beq-        lbl_805b56f4
/* 805B56E0 819E0000 */ lwz         r12, 0(r30)
/* 805B56E4 7FC3F378 */ mr          r3, r30
/* 805B56E8 818C0010 */ lwz         r12, 0x10(r12)
/* 805B56EC 7D8903A6 */ mtctr       r12
/* 805B56F0 4E800421 */ bctrl       
lbl_805b56f4:
/* 805B56F4 C01F0024 */ lfs         f0, 0x24(r31)
/* 805B56F8 C03E00A4 */ lfs         f1, 0xa4(r30)
/* 805B56FC FC000840 */ fcmpo       cr0, f0, f1
/* 805B5700 4081000C */ ble-        lbl_805b570c
/* 805B5704 D01E00A4 */ stfs        f0, 0xa4(r30)
/* 805B5708 48000014 */ b           lbl_805b571c
lbl_805b570c:
/* 805B570C C01F0028 */ lfs         f0, 0x28(r31)
/* 805B5710 FC000840 */ fcmpo       cr0, f0, f1
/* 805B5714 40800008 */ bge-        lbl_805b571c
/* 805B5718 D01E00A4 */ stfs        f0, 0xa4(r30)
lbl_805b571c:
/* 805B571C C01F0024 */ lfs         f0, 0x24(r31)
/* 805B5720 C03E00A8 */ lfs         f1, 0xa8(r30)
/* 805B5724 FC000840 */ fcmpo       cr0, f0, f1
/* 805B5728 4081000C */ ble-        lbl_805b5734
/* 805B572C D01E00A8 */ stfs        f0, 0xa8(r30)
/* 805B5730 48000014 */ b           lbl_805b5744
lbl_805b5734:
/* 805B5734 C01F0028 */ lfs         f0, 0x28(r31)
/* 805B5738 FC000840 */ fcmpo       cr0, f0, f1
/* 805B573C 40800008 */ bge-        lbl_805b5744
/* 805B5740 D01E00A8 */ stfs        f0, 0xa8(r30)
lbl_805b5744:
/* 805B5744 C01F002C */ lfs         f0, 0x2c(r31)
/* 805B5748 C03E00AC */ lfs         f1, 0xac(r30)
/* 805B574C FC000840 */ fcmpo       cr0, f0, f1
/* 805B5750 4081000C */ ble-        lbl_805b575c
/* 805B5754 D01E00AC */ stfs        f0, 0xac(r30)
/* 805B5758 48000014 */ b           lbl_805b576c
lbl_805b575c:
/* 805B575C C01F0030 */ lfs         f0, 0x30(r31)
/* 805B5760 FC000840 */ fcmpo       cr0, f0, f1
/* 805B5764 40800008 */ bge-        lbl_805b576c
/* 805B5768 D01E00AC */ stfs        f0, 0xac(r30)
lbl_805b576c:
/* 805B576C C03E00A8 */ lfs         f1, 0xa8(r30)
/* 805B5770 C01E01A4 */ lfs         f0, 0x1a4(r30)
/* 805B5774 C05E00E4 */ lfs         f2, 0xe4(r30)
/* 805B5778 ED010032 */ fmuls       f8, f1, f0
/* 805B577C C01E00BC */ lfs         f0, 0xbc(r30)
/* 805B5780 C13E0064 */ lfs         f9, 0x64(r30)
/* 805B5784 ECE2002A */ fadds       f7, f2, f0
/* 805B5788 C03E00A4 */ lfs         f1, 0xa4(r30)
/* 805B578C C0DE00E8 */ lfs         f6, 0xe8(r30)
/* 805B5790 C0BE00C0 */ lfs         f5, 0xc0(r30)
/* 805B5794 EC690072 */ fmuls       f3, f9, f1
/* 805B5798 C01E00AC */ lfs         f0, 0xac(r30)
/* 805B579C ECA6282A */ fadds       f5, f6, f5
/* 805B57A0 C09E00EC */ lfs         f4, 0xec(r30)
/* 805B57A4 EC490232 */ fmuls       f2, f9, f8
/* 805B57A8 D0E10028 */ stfs        f7, 0x28(r1)
/* 805B57AC EC290032 */ fmuls       f1, f9, f0
/* 805B57B0 C01E00C4 */ lfs         f0, 0xc4(r30)
/* 805B57B4 EFE7182A */ fadds       f31, f7, f3
/* 805B57B8 D0A1002C */ stfs        f5, 0x2c(r1)
/* 805B57BC EC64002A */ fadds       f3, f4, f0
/* 805B57C0 C01F001C */ lfs         f0, 0x1c(r31)
/* 805B57C4 EDA5102A */ fadds       f13, f5, f2
/* 805B57C8 D11E00A8 */ stfs        f8, 0xa8(r30)
/* 805B57CC ED83082A */ fadds       f12, f3, f1
/* 805B57D0 D0610030 */ stfs        f3, 0x30(r1)
/* 805B57D4 EC5F07F2 */ fmuls       f2, f31, f31
/* 805B57D8 EC2D0372 */ fmuls       f1, f13, f13
/* 805B57DC D3E10028 */ stfs        f31, 0x28(r1)
/* 805B57E0 EC6C0332 */ fmuls       f3, f12, f12
/* 805B57E4 D1A1002C */ stfs        f13, 0x2c(r1)
/* 805B57E8 EC22082A */ fadds       f1, f2, f1
/* 805B57EC D1810030 */ stfs        f12, 0x30(r1)
/* 805B57F0 EC23082A */ fadds       f1, f3, f1
/* 805B57F4 FC010040 */ fcmpo       cr0, f1, f0
/* 805B57F8 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 805B57FC 7C000026 */ mfcr        r0
/* 805B5800 54001FFF */ rlwinm.     r0, r0, 3, 0x1f, 0x1f
/* 805B5804 40820120 */ bne-        lbl_805b5924
/* 805B5808 C13E00F4 */ lfs         f9, 0xf4(r30)
/* 805B580C 38610018 */ addi        r3, r1, 0x18
/* 805B5810 C15E00F0 */ lfs         f10, 0xf0(r30)
/* 805B5814 EC290372 */ fmuls       f1, f9, f13
/* 805B5818 C01E00FC */ lfs         f0, 0xfc(r30)
/* 805B581C EC4A07F2 */ fmuls       f2, f10, f31
/* 805B5820 C17E00F8 */ lfs         f11, 0xf8(r30)
/* 805B5824 ECA007F2 */ fmuls       f5, f0, f31
/* 805B5828 ECCB0332 */ fmuls       f6, f11, f12
/* 805B582C EC22082A */ fadds       f1, f2, f1
/* 805B5830 EC890332 */ fmuls       f4, f9, f12
/* 805B5834 EC600372 */ fmuls       f3, f0, f13
/* 805B5838 ED06082A */ fadds       f8, f6, f1
/* 805B583C EC200332 */ fmuls       f1, f0, f12
/* 805B5840 EC4B07F2 */ fmuls       f2, f11, f31
/* 805B5844 ECE5202A */ fadds       f7, f5, f4
/* 805B5848 EC0A0372 */ fmuls       f0, f10, f13
/* 805B584C ECA3102A */ fadds       f5, f3, f2
/* 805B5850 ECCB0372 */ fmuls       f6, f11, f13
/* 805B5854 EC81002A */ fadds       f4, f1, f0
/* 805B5858 EC6A0332 */ fmuls       f3, f10, f12
/* 805B585C EC0907F2 */ fmuls       f0, f9, f31
/* 805B5860 FC204050 */ fneg        f1, f8
/* 805B5864 EC473028 */ fsubs       f2, f7, f6
/* 805B5868 EC651828 */ fsubs       f3, f5, f3
/* 805B586C EC840028 */ fsubs       f4, f4, f0
/* 805B5870 4BC8458D */ bl          set__Q23EGG5QuatfFffff
/* 805B5874 C01F0020 */ lfs         f0, 0x20(r31)
/* 805B5878 387E00F0 */ addi        r3, r30, 0xf0
/* 805B587C C0610024 */ lfs         f3, 0x24(r1)
/* 805B5880 EC8007B2 */ fmuls       f4, f0, f30
/* 805B5884 C0410018 */ lfs         f2, 0x18(r1)
/* 805B5888 C021001C */ lfs         f1, 0x1c(r1)
/* 805B588C C0010020 */ lfs         f0, 0x20(r1)
/* 805B5890 EC630132 */ fmuls       f3, f3, f4
/* 805B5894 EC420132 */ fmuls       f2, f2, f4
/* 805B5898 EC210132 */ fmuls       f1, f1, f4
/* 805B589C D0610024 */ stfs        f3, 0x24(r1)
/* 805B58A0 EC000132 */ fmuls       f0, f0, f4
/* 805B58A4 D0410018 */ stfs        f2, 0x18(r1)
/* 805B58A8 D021001C */ stfs        f1, 0x1c(r1)
/* 805B58AC D0010020 */ stfs        f0, 0x20(r1)
/* 805B58B0 C01E00F0 */ lfs         f0, 0xf0(r30)
/* 805B58B4 C07E00F4 */ lfs         f3, 0xf4(r30)
/* 805B58B8 EC00102A */ fadds       f0, f0, f2
/* 805B58BC C05E00F8 */ lfs         f2, 0xf8(r30)
/* 805B58C0 C03E00FC */ lfs         f1, 0xfc(r30)
/* 805B58C4 D01E00F0 */ stfs        f0, 0xf0(r30)
/* 805B58C8 C001001C */ lfs         f0, 0x1c(r1)
/* 805B58CC EC03002A */ fadds       f0, f3, f0
/* 805B58D0 D01E00F4 */ stfs        f0, 0xf4(r30)
/* 805B58D4 C0010020 */ lfs         f0, 0x20(r1)
/* 805B58D8 EC02002A */ fadds       f0, f2, f0
/* 805B58DC D01E00F8 */ stfs        f0, 0xf8(r30)
/* 805B58E0 C0010024 */ lfs         f0, 0x24(r1)
/* 805B58E4 EC01002A */ fadds       f0, f1, f0
/* 805B58E8 D01E00FC */ stfs        f0, 0xfc(r30)
/* 805B58EC 4BC8484D */ bl          squareNorm__Q23EGG5QuatfFv
/* 805B58F0 FC200A10 */ fabs        f1, f1
/* 805B58F4 C01F001C */ lfs         f0, 0x1c(r31)
/* 805B58F8 FC010040 */ fcmpo       cr0, f1, f0
/* 805B58FC 40810010 */ ble-        lbl_805b590c
/* 805B5900 387E00F0 */ addi        r3, r30, 0xf0
/* 805B5904 4BC84865 */ bl          normalise__Q23EGG5QuatfFv
/* 805B5908 4800001C */ b           lbl_805b5924
lbl_805b590c:
/* 805B590C C05F0000 */ lfs         f2, 0(r31)
/* 805B5910 387E00F0 */ addi        r3, r30, 0xf0
/* 805B5914 C03F0004 */ lfs         f1, 4(r31)
/* 805B5918 FC601090 */ fmr         f3, f2
/* 805B591C FC801090 */ fmr         f4, f2
/* 805B5920 4BC844DD */ bl          set__Q23EGG5QuatfFffff
lbl_805b5924:
/* 805B5924 881E0170 */ lbz         r0, 0x170(r30)
/* 805B5928 2C000000 */ cmpwi       r0, 0
/* 805B592C 41820018 */ beq-        lbl_805b5944
/* 805B5930 819E0000 */ lwz         r12, 0(r30)
/* 805B5934 7FC3F378 */ mr          r3, r30
/* 805B5938 818C000C */ lwz         r12, 0xc(r12)
/* 805B593C 7D8903A6 */ mtctr       r12
/* 805B5940 4E800421 */ bctrl       
lbl_805b5944:
/* 805B5944 387E00F0 */ addi        r3, r30, 0xf0
/* 805B5948 4BC847F1 */ bl          squareNorm__Q23EGG5QuatfFv
/* 805B594C FC200A10 */ fabs        f1, f1
/* 805B5950 C01F001C */ lfs         f0, 0x1c(r31)
/* 805B5954 FC010040 */ fcmpo       cr0, f1, f0
/* 805B5958 40810010 */ ble-        lbl_805b5968
/* 805B595C 387E00F0 */ addi        r3, r30, 0xf0
/* 805B5960 4BC84809 */ bl          normalise__Q23EGG5QuatfFv
/* 805B5964 4800001C */ b           lbl_805b5980
lbl_805b5968:
/* 805B5968 C05F0000 */ lfs         f2, 0(r31)
/* 805B596C 387E00F0 */ addi        r3, r30, 0xf0
/* 805B5970 C03F0004 */ lfs         f1, 4(r31)
/* 805B5974 FC601090 */ fmr         f3, f2
/* 805B5978 FC801090 */ fmr         f4, f2
/* 805B597C 4BC84481 */ bl          set__Q23EGG5QuatfFffff
lbl_805b5980:
/* 805B5980 C15E0144 */ lfs         f10, 0x144(r30)
/* 805B5984 387E0100 */ addi        r3, r30, 0x100
/* 805B5988 C01E00FC */ lfs         f0, 0xfc(r30)
/* 805B598C C3DE0138 */ lfs         f30, 0x138(r30)
/* 805B5990 C1BE00F0 */ lfs         f13, 0xf0(r30)
/* 805B5994 ECEA0032 */ fmuls       f7, f10, f0
/* 805B5998 C19E013C */ lfs         f12, 0x13c(r30)
/* 805B599C ECBE0032 */ fmuls       f5, f30, f0
/* 805B59A0 C17E00F4 */ lfs         f11, 0xf4(r30)
/* 805B59A4 EC8A0372 */ fmuls       f4, f10, f13
/* 805B59A8 C13E0140 */ lfs         f9, 0x140(r30)
/* 805B59AC C11E00F8 */ lfs         f8, 0xf8(r30)
/* 805B59B0 ECDE0372 */ fmuls       f6, f30, f13
/* 805B59B4 ECA5202A */ fadds       f5, f5, f4
/* 805B59B8 EC6C0032 */ fmuls       f3, f12, f0
/* 805B59BC EC4A02F2 */ fmuls       f2, f10, f11
/* 805B59C0 EC290032 */ fmuls       f1, f9, f0
/* 805B59C4 EC0A0232 */ fmuls       f0, f10, f8
/* 805B59C8 ED473028 */ fsubs       f10, f7, f6
/* 805B59CC ECEC02F2 */ fmuls       f7, f12, f11
/* 805B59D0 EC63102A */ fadds       f3, f3, f2
/* 805B59D4 EC01002A */ fadds       f0, f1, f0
/* 805B59D8 ECCC0232 */ fmuls       f6, f12, f8
/* 805B59DC ED4A3828 */ fsubs       f10, f10, f7
/* 805B59E0 EC290232 */ fmuls       f1, f9, f8
/* 805B59E4 ECE6282A */ fadds       f7, f6, f5
/* 805B59E8 EC890372 */ fmuls       f4, f9, f13
/* 805B59EC EC5E02F2 */ fmuls       f2, f30, f11
/* 805B59F0 ECC902F2 */ fmuls       f6, f9, f11
/* 805B59F4 ECA4182A */ fadds       f5, f4, f3
/* 805B59F8 EC82002A */ fadds       f4, f2, f0
/* 805B59FC EC7E0232 */ fmuls       f3, f30, f8
/* 805B5A00 EC0C0372 */ fmuls       f0, f12, f13
/* 805B5A04 EC2A0828 */ fsubs       f1, f10, f1
/* 805B5A08 EC473028 */ fsubs       f2, f7, f6
/* 805B5A0C EC651828 */ fsubs       f3, f5, f3
/* 805B5A10 EC840028 */ fsubs       f4, f4, f0
/* 805B5A14 4BC843E9 */ bl          set__Q23EGG5QuatfFffff
/* 805B5A18 C15E010C */ lfs         f10, 0x10c(r30)
/* 805B5A1C 387E0100 */ addi        r3, r30, 0x100
/* 805B5A20 C01E0134 */ lfs         f0, 0x134(r30)
/* 805B5A24 C3DE0100 */ lfs         f30, 0x100(r30)
/* 805B5A28 C1BE0128 */ lfs         f13, 0x128(r30)
/* 805B5A2C ECEA0032 */ fmuls       f7, f10, f0
/* 805B5A30 C19E0104 */ lfs         f12, 0x104(r30)
/* 805B5A34 ECBE0032 */ fmuls       f5, f30, f0
/* 805B5A38 C17E012C */ lfs         f11, 0x12c(r30)
/* 805B5A3C EC8A0372 */ fmuls       f4, f10, f13
/* 805B5A40 C13E0108 */ lfs         f9, 0x108(r30)
/* 805B5A44 C11E0130 */ lfs         f8, 0x130(r30)
/* 805B5A48 ECDE0372 */ fmuls       f6, f30, f13
/* 805B5A4C ECA5202A */ fadds       f5, f5, f4
/* 805B5A50 EC6C0032 */ fmuls       f3, f12, f0
/* 805B5A54 EC4A02F2 */ fmuls       f2, f10, f11
/* 805B5A58 EC290032 */ fmuls       f1, f9, f0
/* 805B5A5C EC0A0232 */ fmuls       f0, f10, f8
/* 805B5A60 ED473028 */ fsubs       f10, f7, f6
/* 805B5A64 ECEC02F2 */ fmuls       f7, f12, f11
/* 805B5A68 EC63102A */ fadds       f3, f3, f2
/* 805B5A6C EC01002A */ fadds       f0, f1, f0
/* 805B5A70 ECCC0232 */ fmuls       f6, f12, f8
/* 805B5A74 ED4A3828 */ fsubs       f10, f10, f7
/* 805B5A78 EC290232 */ fmuls       f1, f9, f8
/* 805B5A7C ECE6282A */ fadds       f7, f6, f5
/* 805B5A80 EC890372 */ fmuls       f4, f9, f13
/* 805B5A84 EC5E02F2 */ fmuls       f2, f30, f11
/* 805B5A88 ECC902F2 */ fmuls       f6, f9, f11
/* 805B5A8C ECA4182A */ fadds       f5, f4, f3
/* 805B5A90 EC82002A */ fadds       f4, f2, f0
/* 805B5A94 EC7E0232 */ fmuls       f3, f30, f8
/* 805B5A98 EC0C0372 */ fmuls       f0, f12, f13
/* 805B5A9C EC2A0828 */ fsubs       f1, f10, f1
/* 805B5AA0 EC473028 */ fsubs       f2, f7, f6
/* 805B5AA4 EC651828 */ fsubs       f3, f5, f3
/* 805B5AA8 EC840028 */ fsubs       f4, f4, f0
/* 805B5AAC 4BC84351 */ bl          set__Q23EGG5QuatfFffff
/* 805B5AB0 387E0100 */ addi        r3, r30, 0x100
/* 805B5AB4 4BC846B5 */ bl          normalise__Q23EGG5QuatfFv
/* 805B5AB8 387E00F0 */ addi        r3, r30, 0xf0
/* 805B5ABC 389E0074 */ addi        r4, r30, 0x74
/* 805B5AC0 38BE008C */ addi        r5, r30, 0x8c
/* 805B5AC4 4BC84941 */ bl          rotateVectorInv__Q23EGG5QuatfFRCQ23EGG8Vector3fRQ23EGG8Vector3f
/* 805B5AC8 C01F0000 */ lfs         f0, 0(r31)
/* 805B5ACC D01E0118 */ stfs        f0, 0x118(r30)
/* 805B5AD0 D01E0114 */ stfs        f0, 0x114(r30)
/* 805B5AD4 D01E0110 */ stfs        f0, 0x110(r30)
/* 805B5AD8 D01E0124 */ stfs        f0, 0x124(r30)
/* 805B5ADC D01E0120 */ stfs        f0, 0x120(r30)
/* 805B5AE0 D01E011C */ stfs        f0, 0x11c(r30)
/* 805B5AE4 D01E00EC */ stfs        f0, 0xec(r30)
/* 805B5AE8 D01E00E8 */ stfs        f0, 0xe8(r30)
/* 805B5AEC D01E00E4 */ stfs        f0, 0xe4(r30)
/* 805B5AF0 E3E10158 */ psq_l       f31, 0x158(r1), 0, 0
/* 805B5AF4 CBE10150 */ lfd         f31, 0x150(r1)
/* 805B5AF8 E3C10148 */ psq_l       f30, 0x148(r1), 0, 0
/* 805B5AFC CBC10140 */ lfd         f30, 0x140(r1)
/* 805B5B00 E3A10138 */ psq_l       f29, 0x138(r1), 0, 0
/* 805B5B04 CBA10130 */ lfd         f29, 0x130(r1)
/* 805B5B08 E3810128 */ psq_l       f28, 0x128(r1), 0, 0
/* 805B5B0C CB810120 */ lfd         f28, 0x120(r1)
/* 805B5B10 E3610118 */ psq_l       f27, 0x118(r1), 0, 0
/* 805B5B14 CB610110 */ lfd         f27, 0x110(r1)
/* 805B5B18 E3410108 */ psq_l       f26, 0x108(r1), 0, 0
/* 805B5B1C CB410100 */ lfd         f26, 0x100(r1)
/* 805B5B20 E32100F8 */ psq_l       f25, 0xf8(r1), 0, 0
/* 805B5B24 CB2100F0 */ lfd         f25, 0xf0(r1)
/* 805B5B28 E30100E8 */ psq_l       f24, 0xe8(r1), 0, 0
/* 805B5B2C CB0100E0 */ lfd         f24, 0xe0(r1)
/* 805B5B30 E2E100D8 */ psq_l       f23, 0xd8(r1), 0, 0
/* 805B5B34 CAE100D0 */ lfd         f23, 0xd0(r1)
/* 805B5B38 E2C100C8 */ psq_l       f22, 0xc8(r1), 0, 0
/* 805B5B3C CAC100C0 */ lfd         f22, 0xc0(r1)
/* 805B5B40 E2A100B8 */ psq_l       f21, 0xb8(r1), 0, 0
/* 805B5B44 CAA100B0 */ lfd         f21, 0xb0(r1)
/* 805B5B48 83E100AC */ lwz         r31, 0xac(r1)
/* 805B5B4C 83C100A8 */ lwz         r30, 0xa8(r1)
/* 805B5B50 83A100A4 */ lwz         r29, 0xa4(r1)
/* 805B5B54 80010164 */ lwz         r0, 0x164(r1)
/* 805B5B58 7C0803A6 */ mtlr        r0
/* 805B5B5C 38210160 */ addi        r1, r1, 0x160
/* 805B5B60 4E800020 */ blr         