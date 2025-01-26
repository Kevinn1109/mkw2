nofralloc
/* 8056F26C 9421FF70 */ stwu        r1, -0x90(r1)
/* 8056F270 7C0802A6 */ mflr        r0
/* 8056F274 90010094 */ stw         r0, 0x94(r1)
/* 8056F278 DBE10080 */ stfd        f31, 0x80(r1)
/* 8056F27C F3E10088 */ psq_st      f31, 0x88(r1), 0, 0
/* 8056F280 39610080 */ addi        r11, r1, 0x80
/* 8056F284 4BAB2309 */ bl          _savegpr_22
/* 8056F288 3F408089 */ lis         r26, lbl_80891730@ha
/* 8056F28C C0260054 */ lfs         f1, 0x54(r6)
/* 8056F290 3B5A1730 */ addi        r26, r26, lbl_80891730@l
/* 8056F294 7C9E2378 */ mr          r30, r4
/* 8056F298 C01A0000 */ lfs         f0, 0(r26)
/* 8056F29C 7CB62B78 */ mr          r22, r5
/* 8056F2A0 7CDF3378 */ mr          r31, r6
/* 8056F2A4 FC010040 */ fcmpo       cr0, f1, f0
/* 8056F2A8 408101C8 */ ble-        lbl_8056f470
/* 8056F2AC C0030068 */ lfs         f0, 0x68(r3)
/* 8056F2B0 FC010040 */ fcmpo       cr0, f1, f0
/* 8056F2B4 40810008 */ ble-        lbl_8056f2bc
/* 8056F2B8 D0230068 */ stfs        f1, 0x68(r3)
lbl_8056f2bc:
/* 8056F2BC 80040000 */ lwz         r0, 0(r4)
/* 8056F2C0 54000465 */ rlwinm.     r0, r0, 0, 0x11, 0x12
/* 8056F2C4 408201AC */ bne-        lbl_8056f470
/* 8056F2C8 80A50000 */ lwz         r5, 0(r5)
/* 8056F2CC C01A0010 */ lfs         f0, 0x10(r26)
/* 8056F2D0 C0250004 */ lfs         f1, 4(r5)
/* 8056F2D4 FC400A10 */ fabs        f2, f1
/* 8056F2D8 FC020040 */ fcmpo       cr0, f2, f0
/* 8056F2DC 40810038 */ ble-        lbl_8056f314
/* 8056F2E0 C01A0000 */ lfs         f0, 0(r26)
/* 8056F2E4 FC010040 */ fcmpo       cr0, f1, f0
/* 8056F2E8 40810014 */ ble-        lbl_8056f2fc
/* 8056F2EC 80040000 */ lwz         r0, 0(r4)
/* 8056F2F0 60002000 */ ori         r0, r0, 0x2000
/* 8056F2F4 90040000 */ stw         r0, 0(r4)
/* 8056F2F8 48000010 */ b           lbl_8056f308
lbl_8056f2fc:
/* 8056F2FC 80040000 */ lwz         r0, 0(r4)
/* 8056F300 60004000 */ ori         r0, r0, 0x4000
/* 8056F304 90040000 */ stw         r0, 0(r4)
lbl_8056f308:
/* 8056F308 C0060054 */ lfs         f0, 0x54(r6)
/* 8056F30C D0040080 */ stfs        f0, 0x80(r4)
/* 8056F310 48000160 */ b           lbl_8056f470
lbl_8056f314:
/* 8056F314 38630004 */ addi        r3, r3, 4
/* 8056F318 480210B5 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8056F31C 3C80802A */ lis         r4, RKSystem_ex@ha
/* 8056F320 38A1001C */ addi        r5, r1, 0x1c
/* 8056F324 38844118 */ addi        r4, r4, RKSystem_ex@l
/* 8056F328 386300F0 */ addi        r3, r3, 0xf0
/* 8056F32C 4BCCAFA5 */ bl          rotateVector__Q23EGG5QuatfFRCQ23EGG8Vector3fRQ23EGG8Vector3f
/* 8056F330 3C60808A */ lis         r3, lbl_808a66cc@ha
/* 8056F334 38000000 */ li          r0, 0
/* 8056F338 90010008 */ stw         r0, 8(r1)
/* 8056F33C 3B360018 */ addi        r25, r22, 0x18
/* 8056F340 830366CC */ lwz         r24, lbl_808a66cc@l(r3)
/* 8056F344 3BA10008 */ addi        r29, r1, 8
/* 8056F348 9001000C */ stw         r0, 0xc(r1)
/* 8056F34C 3AE00000 */ li          r23, 0
/* 8056F350 C3FA0000 */ lfs         f31, 0(r26)
/* 8056F354 3F60809C */ lis         r27, spInstance__Q25Field11CourseModel@ha
/* 8056F358 3F80C011 */ lis         r28, 0xc011
lbl_8056f35c:
/* 8056F35C 56E0063E */ clrlwi      r0, r23, 0x18
/* 8056F360 28000001 */ cmplwi      r0, 1
/* 8056F364 4082000C */ bne-        lbl_8056f370
/* 8056F368 C01A0014 */ lfs         f0, 0x14(r26)
/* 8056F36C 48000008 */ b           lbl_8056f374
lbl_8056f370:
/* 8056F370 C01A0004 */ lfs         f0, 4(r26)
lbl_8056f374:
/* 8056F374 C0360004 */ lfs         f1, 4(r22)
/* 8056F378 7F25CB78 */ mr          r5, r25
/* 8056F37C C061001C */ lfs         f3, 0x1c(r1)
/* 8056F380 7F08C378 */ mr          r8, r24
/* 8056F384 ECC00072 */ fmuls       f6, f0, f1
/* 8056F388 C0410020 */ lfs         f2, 0x20(r1)
/* 8056F38C C0010024 */ lfs         f0, 0x24(r1)
/* 8056F390 38810010 */ addi        r4, r1, 0x10
/* 8056F394 C096000C */ lfs         f4, 0xc(r22)
/* 8056F398 38DCB000 */ addi        r6, r28, -0x5000
/* 8056F39C ECA600F2 */ fmuls       f5, f6, f3
/* 8056F3A0 807B2F44 */ lwz         r3, spInstance__Q25Field11CourseModel@l(r27)
/* 8056F3A4 EC6600B2 */ fmuls       f3, f6, f2
/* 8056F3A8 38E10028 */ addi        r7, r1, 0x28
/* 8056F3AC EC460032 */ fmuls       f2, f6, f0
/* 8056F3B0 39200000 */ li          r9, 0
/* 8056F3B4 EC04282A */ fadds       f0, f4, f5
/* 8056F3B8 D0010010 */ stfs        f0, 0x10(r1)
/* 8056F3BC C0160010 */ lfs         f0, 0x10(r22)
/* 8056F3C0 EC00182A */ fadds       f0, f0, f3
/* 8056F3C4 D0010014 */ stfs        f0, 0x14(r1)
/* 8056F3C8 C0160014 */ lfs         f0, 0x14(r22)
/* 8056F3CC EC00102A */ fadds       f0, f0, f2
/* 8056F3D0 D3E10028 */ stfs        f31, 0x28(r1)
/* 8056F3D4 D0010018 */ stfs        f0, 0x18(r1)
/* 8056F3D8 D3E1002C */ stfs        f31, 0x2c(r1)
/* 8056F3DC D3E10030 */ stfs        f31, 0x30(r1)
/* 8056F3E0 D3E10034 */ stfs        f31, 0x34(r1)
/* 8056F3E4 D3E10038 */ stfs        f31, 0x38(r1)
/* 8056F3E8 D3E1003C */ stfs        f31, 0x3c(r1)
/* 8056F3EC 48220E05 */ bl          checkSphereCachedPartial__Q25Field11CourseModelFRCQ23EGG8Vector3fRCQ23EGG8Vector3fUlPQ25Field14ColInfoPartialPUlfUl
/* 8056F3F0 2C030000 */ cmpwi       r3, 0
/* 8056F3F4 4182002C */ beq-        lbl_8056f420
/* 8056F3F8 C03F0018 */ lfs         f1, 0x18(r31)
/* 8056F3FC 56E015BA */ rlwinm      r0, r23, 2, 0x16, 0x1d
/* 8056F400 C01F001C */ lfs         f0, 0x1c(r31)
/* 8056F404 EC210072 */ fmuls       f1, f1, f1
/* 8056F408 C05F0020 */ lfs         f2, 0x20(r31)
/* 8056F40C EC000032 */ fmuls       f0, f0, f0
/* 8056F410 EC4200B2 */ fmuls       f2, f2, f2
/* 8056F414 EC01002A */ fadds       f0, f1, f0
/* 8056F418 EC02002A */ fadds       f0, f2, f0
/* 8056F41C 7C1D052E */ stfsx       f0, r29, r0
lbl_8056f420:
/* 8056F420 3AF70001 */ addi        r23, r23, 1
/* 8056F424 28170002 */ cmplwi      r23, 2
/* 8056F428 4180FF34 */ blt+        lbl_8056f35c
/* 8056F42C C0210008 */ lfs         f1, 8(r1)
/* 8056F430 C001000C */ lfs         f0, 0xc(r1)
/* 8056F434 FC010040 */ fcmpo       cr0, f1, f0
/* 8056F438 4081001C */ ble-        lbl_8056f454
/* 8056F43C 801E0000 */ lwz         r0, 0(r30)
/* 8056F440 C01F0054 */ lfs         f0, 0x54(r31)
/* 8056F444 60002000 */ ori         r0, r0, 0x2000
/* 8056F448 901E0000 */ stw         r0, 0(r30)
/* 8056F44C D01E0080 */ stfs        f0, 0x80(r30)
/* 8056F450 48000020 */ b           lbl_8056f470
lbl_8056f454:
/* 8056F454 FC000840 */ fcmpo       cr0, f0, f1
/* 8056F458 40810018 */ ble-        lbl_8056f470
/* 8056F45C 801E0000 */ lwz         r0, 0(r30)
/* 8056F460 C01F0054 */ lfs         f0, 0x54(r31)
/* 8056F464 60004000 */ ori         r0, r0, 0x4000
/* 8056F468 901E0000 */ stw         r0, 0(r30)
/* 8056F46C D01E0080 */ stfs        f0, 0x80(r30)
lbl_8056f470:
/* 8056F470 E3E10088 */ psq_l       f31, 0x88(r1), 0, 0
/* 8056F474 39610080 */ addi        r11, r1, 0x80
/* 8056F478 CBE10080 */ lfd         f31, 0x80(r1)
/* 8056F47C 4BAB215D */ bl          _restgpr_22
/* 8056F480 80010094 */ lwz         r0, 0x94(r1)
/* 8056F484 7C0803A6 */ mtlr        r0
/* 8056F488 38210090 */ addi        r1, r1, 0x90
/* 8056F48C 4E800020 */ blr         