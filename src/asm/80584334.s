nofralloc
/* 80584334 9421FFA0 */ stwu        r1, -0x60(r1)
/* 80584338 7C0802A6 */ mflr        r0
/* 8058433C 90010064 */ stw         r0, 0x64(r1)
/* 80584340 39610060 */ addi        r11, r1, 0x60
/* 80584344 4BA9D25D */ bl          _savegpr_27
/* 80584348 3FE08089 */ lis         r31, lbl_80891a00@ha
/* 8058434C 7C7D1B78 */ mr          r29, r3
/* 80584350 3BFF1A00 */ addi        r31, r31, lbl_80891a00@l
/* 80584354 4800C709 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80584358 3C80809C */ lis         r4, spInstance__Q26System11RaceManager@ha
/* 8058435C 7C601B78 */ mr          r0, r3
/* 80584360 8064D730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r4)
/* 80584364 5404063E */ clrlwi      r4, r0, 0x18
/* 80584368 4BFB1EB5 */ bl          unk_8053621c
/* 8058436C 7C7E1B78 */ mr          r30, r3
/* 80584370 7FA3EB78 */ mr          r3, r29
/* 80584374 4800C6E9 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80584378 7C601B78 */ mr          r0, r3
/* 8058437C 7FC3F378 */ mr          r3, r30
/* 80584380 38810030 */ addi        r4, r1, 0x30
/* 80584384 5405063E */ clrlwi      r5, r0, 0x18
/* 80584388 4BF945E5 */ bl          unk_8051896c
/* 8058438C 809E0000 */ lwz         r4, 0(r30)
/* 80584390 7FA3EB78 */ mr          r3, r29
/* 80584394 80A10030 */ lwz         r5, 0x30(r1)
/* 80584398 C0040014 */ lfs         f0, 0x14(r4)
/* 8058439C C0240010 */ lfs         f1, 0x10(r4)
/* 805843A0 C044000C */ lfs         f2, 0xc(r4)
/* 805843A4 80810034 */ lwz         r4, 0x34(r1)
/* 805843A8 80010038 */ lwz         r0, 0x38(r1)
/* 805843AC D0410024 */ stfs        f2, 0x24(r1)
/* 805843B0 D0210028 */ stfs        f1, 0x28(r1)
/* 805843B4 D001002C */ stfs        f0, 0x2c(r1)
/* 805843B8 90A10018 */ stw         r5, 0x18(r1)
/* 805843BC 9081001C */ stw         r4, 0x1c(r1)
/* 805843C0 90010020 */ stw         r0, 0x20(r1)
/* 805843C4 4800C699 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 805843C8 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 805843CC 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 805843D0 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 805843D4 38810030 */ addi        r4, r1, 0x30
/* 805843D8 80630068 */ lwz         r3, 0x68(r3)
/* 805843DC 7C63002E */ lwzx        r3, r3, r0
/* 805843E0 48128021 */ bl          unk_806ac400
/* 805843E4 3C80808B */ lis         r4, lbl_808b5bb8@ha
/* 805843E8 C01F0000 */ lfs         f0, 0(r31)
/* 805843EC C0245BB8 */ lfs         f1, lbl_808b5bb8@l(r4)
/* 805843F0 7FA3EB78 */ mr          r3, r29
/* 805843F4 C0410034 */ lfs         f2, 0x34(r1)
/* 805843F8 38810030 */ addi        r4, r1, 0x30
/* 805843FC D001002C */ stfs        f0, 0x2c(r1)
/* 80584400 38A10024 */ addi        r5, r1, 0x24
/* 80584404 EC22082A */ fadds       f1, f2, f1
/* 80584408 D0010024 */ stfs        f0, 0x24(r1)
/* 8058440C D0210034 */ stfs        f1, 0x34(r1)
/* 80584410 4BFFFC35 */ bl          PlayerSub10_setInitialPhysicsValues
/* 80584414 7FA3EB78 */ mr          r3, r29
/* 80584418 4800CA11 */ bl          unk_80590e28
/* 8058441C 7FA3EB78 */ mr          r3, r29
/* 80584420 4800C63D */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80584424 3C80809C */ lis         r4, lbl_809c3618@ha
/* 80584428 5460063E */ clrlwi      r0, r3, 0x18
/* 8058442C 80643618 */ lwz         r3, lbl_809c3618@l(r4)
/* 80584430 1C000248 */ mulli       r0, r0, 0x248
/* 80584434 38800000 */ li          r4, 0
/* 80584438 80630014 */ lwz         r3, 0x14(r3)
/* 8058443C 7C630214 */ add         r3, r3, r0
/* 80584440 48214409 */ bl          unk_80798848
/* 80584444 8001001C */ lwz         r0, 0x1c(r1)
/* 80584448 3C60809C */ lis         r3, spInstance__Q25Field11CourseModel@ha
/* 8058444C 90010010 */ stw         r0, 0x10(r1)
/* 80584450 3B600000 */ li          r27, 0
/* 80584454 80E10018 */ lwz         r7, 0x18(r1)
/* 80584458 3CC0808A */ lis         r6, gColInfo@ha
/* 8058445C C0410010 */ lfs         f2, 0x10(r1)
/* 80584460 3F8020E8 */ lis         r28, 0x20e8
/* 80584464 C01F00D4 */ lfs         f0, 0xd4(r31)
/* 80584468 38810018 */ addi        r4, r1, 0x18
/* 8058446C 80010020 */ lwz         r0, 0x20(r1)
/* 80584470 38A1000C */ addi        r5, r1, 0xc
/* 80584474 EC02002A */ fadds       f0, f2, f0
/* 80584478 C03F00D0 */ lfs         f1, 0xd0(r31)
/* 8058447C 90E1000C */ stw         r7, 0xc(r1)
/* 80584480 39010008 */ addi        r8, r1, 8
/* 80584484 80E66700 */ lwz         r7, gColInfo@l(r6)
/* 80584488 38DC0DFF */ addi        r6, r28, 0xdff
/* 8058448C 93610008 */ stw         r27, 8(r1)
/* 80584490 3BE00000 */ li          r31, 0
/* 80584494 80632F44 */ lwz         r3, spInstance__Q25Field11CourseModel@l(r3)
/* 80584498 39200000 */ li          r9, 0
/* 8058449C 90010014 */ stw         r0, 0x14(r1)
/* 805844A0 D0010010 */ stfs        f0, 0x10(r1)
/* 805844A4 4820AE7D */ bl          checkSpherePartialPush__Q25Field11CourseModelFRCQ23EGG8Vector3fRCQ23EGG8Vector3fUlPQ25Field14ColInfoPartialPUlfUl
/* 805844A8 2C030000 */ cmpwi       r3, 0
/* 805844AC 4182003C */ beq-        lbl_805844e8
/* 805844B0 80010008 */ lwz         r0, 8(r1)
/* 805844B4 389C0FFF */ addi        r4, r28, 0xfff
/* 805844B8 7C002039 */ and.        r0, r0, r4
/* 805844BC 41820010 */ beq-        lbl_805844cc
/* 805844C0 38610008 */ addi        r3, r1, 8
/* 805844C4 482394A9 */ bl          findClosestCollisionEntry__5FieldFPUlUl
/* 805844C8 48000008 */ b           lbl_805844d0
lbl_805844cc:
/* 805844CC 7F63DB78 */ mr          r3, r27
lbl_805844d0:
/* 805844D0 2C030000 */ cmpwi       r3, 0
/* 805844D4 41820014 */ beq-        lbl_805844e8
/* 805844D8 3C60809C */ lis         r3, closestCollisionEntry__5Field@ha
/* 805844DC 80633BDC */ lwz         r3, closestCollisionEntry__5Field@l(r3)
/* 805844E0 A0030004 */ lhz         r0, 4(r3)
/* 805844E4 541FC77E */ rlwinm      r31, r0, 0x18, 0x1d, 0x1f
lbl_805844e8:
/* 805844E8 7FA3EB78 */ mr          r3, r29
/* 805844EC 57E4063E */ clrlwi      r4, r31, 0x18
/* 805844F0 4800D435 */ bl          unk_80591924
/* 805844F4 3C80809C */ lis         r4, lbl_809c28b8@ha
/* 805844F8 7FA3EB78 */ mr          r3, r29
/* 805844FC 836428B8 */ lwz         r27, lbl_809c28b8@l(r4)
/* 80584500 4800C55D */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80584504 7C601B78 */ mr          r0, r3
/* 80584508 7F63DB78 */ mr          r3, r27
/* 8058450C 7FC5F378 */ mr          r5, r30
/* 80584510 5404063E */ clrlwi      r4, r0, 0x18
/* 80584514 4819A221 */ bl          unk_8071e734
/* 80584518 809D0000 */ lwz         r4, 0(r29)
/* 8058451C 7FA3EB78 */ mr          r3, r29
/* 80584520 80840004 */ lwz         r4, 4(r4)
/* 80584524 80040008 */ lwz         r0, 8(r4)
/* 80584528 540007FA */ rlwinm      r0, r0, 0, 0x1f, 0x1d
/* 8058452C 90040008 */ stw         r0, 8(r4)
/* 80584530 809D0000 */ lwz         r4, 0(r29)
/* 80584534 80840004 */ lwz         r4, 4(r4)
/* 80584538 8004000C */ lwz         r0, 0xc(r4)
/* 8058453C 60002000 */ ori         r0, r0, 0x2000
/* 80584540 9004000C */ stw         r0, 0xc(r4)
/* 80584544 4800C519 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80584548 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 8058454C 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 80584550 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 80584554 3B800001 */ li          r28, 1
/* 80584558 3FE0809C */ lis         r31, lbl_809c4748@ha
/* 8058455C 80630068 */ lwz         r3, 0x68(r3)
/* 80584560 7C63002E */ lwzx        r3, r3, r0
/* 80584564 9B830069 */ stb         r28, 0x69(r3)
/* 80584568 801F4748 */ lwz         r0, lbl_809c4748@l(r31)
/* 8058456C 2C000000 */ cmpwi       r0, 0
/* 80584570 4182001C */ beq-        lbl_8058458c
/* 80584574 7FA3EB78 */ mr          r3, r29
/* 80584578 4800C4E5 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8058457C 809F4748 */ lwz         r4, lbl_809c4748@l(r31)
/* 80584580 5460063E */ clrlwi      r0, r3, 0x18
/* 80584584 7C640214 */ add         r3, r4, r0
/* 80584588 9B8304EC */ stb         r28, 0x4ec(r3)
lbl_8058458c:
/* 8058458C 3FE0809C */ lis         r31, lbl_809c496c@ha
/* 80584590 801F496C */ lwz         r0, lbl_809c496c@l(r31)
/* 80584594 2C000000 */ cmpwi       r0, 0
/* 80584598 41820020 */ beq-        lbl_805845b8
/* 8058459C 7FA3EB78 */ mr          r3, r29
/* 805845A0 4800C4BD */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 805845A4 809F496C */ lwz         r4, lbl_809c496c@l(r31)
/* 805845A8 5460063E */ clrlwi      r0, r3, 0x18
/* 805845AC 38A00001 */ li          r5, 1
/* 805845B0 7C640214 */ add         r3, r4, r0
/* 805845B4 98A31F68 */ stb         r5, 0x1f68(r3)
lbl_805845b8:
/* 805845B8 7FA3EB78 */ mr          r3, r29
/* 805845BC 4800CB05 */ bl          kartEnemy__Q24Kart15KartObjectProxyFv
/* 805845C0 7FC4F378 */ mr          r4, r30
/* 805845C4 481A1DED */ bl          unk_807263b0
/* 805845C8 8B7E0029 */ lbz         r27, 0x29(r30)
/* 805845CC 3C60809C */ lis         r3, spInstance__Q26System9CourseMap@ha
/* 805845D0 8063D6E8 */ lwz         r3, spInstance__Q26System9CourseMap@l(r3)
/* 805845D4 7F64DB78 */ mr          r4, r27
/* 805845D8 4BF90765 */ bl          getItemPoint__Q26System9CourseMapCFUs
/* 805845DC 2C030000 */ cmpwi       r3, 0
/* 805845E0 41820034 */ beq-        lbl_80584614
/* 805845E4 7FA3EB78 */ mr          r3, r29
/* 805845E8 4800C475 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 805845EC 3C80809C */ lis         r4, lbl_809c3618@ha
/* 805845F0 5460063E */ clrlwi      r0, r3, 0x18
/* 805845F4 80643618 */ lwz         r3, lbl_809c3618@l(r4)
/* 805845F8 1C000248 */ mulli       r0, r0, 0x248
/* 805845FC 7F64DB78 */ mr          r4, r27
/* 80584600 80630014 */ lwz         r3, 0x14(r3)
/* 80584604 38A00001 */ li          r5, 1
/* 80584608 7C630214 */ add         r3, r3, r0
/* 8058460C 38630044 */ addi        r3, r3, 0x44
/* 80584610 482353C5 */ bl          unk_807b99d4
lbl_80584614:
/* 80584614 AB7E002C */ lha         r27, 0x2c(r30)
/* 80584618 2C1B0000 */ cmpwi       r27, 0
/* 8058461C 40810014 */ ble-        lbl_80584630
/* 80584620 7FA3EB78 */ mr          r3, r29
/* 80584624 4800C171 */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 80584628 389BFFFF */ addi        r4, r27, -1
/* 8058462C 48184519 */ bl          unk_80708b44
lbl_80584630:
/* 80584630 39610060 */ addi        r11, r1, 0x60
/* 80584634 4BA9CFB9 */ bl          _restgpr_27
/* 80584638 80010064 */ lwz         r0, 0x64(r1)
/* 8058463C 7C0803A6 */ mtlr        r0
/* 80584640 38210060 */ addi        r1, r1, 0x60
/* 80584644 4E800020 */ blr         