nofralloc
/* 8058539C 9421FF80 */ stwu        r1, -0x80(r1)
/* 805853A0 7C0802A6 */ mflr        r0
/* 805853A4 90010084 */ stw         r0, 0x84(r1)
/* 805853A8 93E1007C */ stw         r31, 0x7c(r1)
/* 805853AC 7CBF2B78 */ mr          r31, r5
/* 805853B0 93C10078 */ stw         r30, 0x78(r1)
/* 805853B4 7C9E2378 */ mr          r30, r4
/* 805853B8 93A10074 */ stw         r29, 0x74(r1)
/* 805853BC 7C7D1B78 */ mr          r29, r3
/* 805853C0 3C60809C */ lis         r3, spInstance__Q26System9CourseMap@ha
/* 805853C4 80DD0000 */ lwz         r6, 0(r29)
/* 805853C8 8063D6E8 */ lwz         r3, spInstance__Q26System9CourseMap@l(r3)
/* 805853CC 80860004 */ lwz         r4, 4(r6)
/* 805853D0 80040080 */ lwz         r0, 0x80(r4)
/* 805853D4 5404043E */ clrlwi      r4, r0, 0x10
/* 805853D8 4BF93709 */ bl          getCannonPoint__Q26System9CourseMapCFUs
/* 805853DC 80A30000 */ lwz         r5, 0(r3)
/* 805853E0 3C808089 */ lis         r4, lbl_80891a54@ha
/* 805853E4 C0441A54 */ lfs         f2, lbl_80891a54@l(r4)
/* 805853E8 3881002C */ addi        r4, r1, 0x2c
/* 805853EC C0050008 */ lfs         f0, 8(r5)
/* 805853F0 C0250004 */ lfs         f1, 4(r5)
/* 805853F4 C0650000 */ lfs         f3, 0(r5)
/* 805853F8 D07E0000 */ stfs        f3, 0(r30)
/* 805853FC D03E0004 */ stfs        f1, 4(r30)
/* 80585400 D01E0008 */ stfs        f0, 8(r30)
/* 80585404 80A30000 */ lwz         r5, 0(r3)
/* 80585408 38610038 */ addi        r3, r1, 0x38
/* 8058540C C0650014 */ lfs         f3, 0x14(r5)
/* 80585410 C0850010 */ lfs         f4, 0x10(r5)
/* 80585414 C0A5000C */ lfs         f5, 0xc(r5)
/* 80585418 EC0200F2 */ fmuls       f0, f2, f3
/* 8058541C EC220132 */ fmuls       f1, f2, f4
/* 80585420 D0BF0000 */ stfs        f5, 0(r31)
/* 80585424 EC420172 */ fmuls       f2, f2, f5
/* 80585428 D09F0004 */ stfs        f4, 4(r31)
/* 8058542C D07F0008 */ stfs        f3, 8(r31)
/* 80585430 D041002C */ stfs        f2, 0x2c(r1)
/* 80585434 D0210030 */ stfs        f1, 0x30(r1)
/* 80585438 D0010034 */ stfs        f0, 0x34(r1)
/* 8058543C 4BCAAB5D */ bl          makeR__Q23EGG9Matrix34fFRCQ23EGG8Vector3f
/* 80585440 3C60802A */ lis         r3, lbl_802a4148@ha
/* 80585444 3CA0802A */ lis         r5, RKSystem_ey@ha
/* 80585448 C1634148 */ lfs         f11, lbl_802a4148@l(r3)
/* 8058544C 38C34148 */ addi        r6, r3, lbl_802a4148@l
/* 80585450 D17F0000 */ stfs        f11, 0(r31)
/* 80585454 38854130 */ addi        r4, r5, RKSystem_ey@l
/* 80585458 7FA3EB78 */ mr          r3, r29
/* 8058545C C1460004 */ lfs         f10, 4(r6)
/* 80585460 D15F0004 */ stfs        f10, 4(r31)
/* 80585464 C1260008 */ lfs         f9, 8(r6)
/* 80585468 D13F0008 */ stfs        f9, 8(r31)
/* 8058546C C0410058 */ lfs         f2, 0x58(r1)
/* 80585470 C021005C */ lfs         f1, 0x5c(r1)
/* 80585474 C0010048 */ lfs         f0, 0x48(r1)
/* 80585478 ECE202F2 */ fmuls       f7, f2, f11
/* 8058547C ECC102B2 */ fmuls       f6, f1, f10
/* 80585480 C041004C */ lfs         f2, 0x4c(r1)
/* 80585484 C0210038 */ lfs         f1, 0x38(r1)
/* 80585488 EC8002F2 */ fmuls       f4, f0, f11
/* 8058548C EC6202B2 */ fmuls       f3, f2, f10
/* 80585490 C001003C */ lfs         f0, 0x3c(r1)
/* 80585494 C1010060 */ lfs         f8, 0x60(r1)
/* 80585498 EC2102F2 */ fmuls       f1, f1, f11
/* 8058549C EC0002B2 */ fmuls       f0, f0, f10
/* 805854A0 C0A10050 */ lfs         f5, 0x50(r1)
/* 805854A4 C0410040 */ lfs         f2, 0x40(r1)
/* 805854A8 ED080272 */ fmuls       f8, f8, f9
/* 805854AC ECC7302A */ fadds       f6, f7, f6
/* 805854B0 ECA50272 */ fmuls       f5, f5, f9
/* 805854B4 EC64182A */ fadds       f3, f4, f3
/* 805854B8 ECC8302A */ fadds       f6, f8, f6
/* 805854BC EC420272 */ fmuls       f2, f2, f9
/* 805854C0 ECE5182A */ fadds       f7, f5, f3
/* 805854C4 D0DF0008 */ stfs        f6, 8(r31)
/* 805854C8 EC01002A */ fadds       f0, f1, f0
/* 805854CC D0FF0004 */ stfs        f7, 4(r31)
/* 805854D0 EC62002A */ fadds       f3, f2, f0
/* 805854D4 D07F0000 */ stfs        f3, 0(r31)
/* 805854D8 C0454130 */ lfs         f2, RKSystem_ey@l(r5)
/* 805854DC C0840004 */ lfs         f4, 4(r4)
/* 805854E0 ECA201F2 */ fmuls       f5, f2, f7
/* 805854E4 C0040008 */ lfs         f0, 8(r4)
/* 805854E8 EC2400F2 */ fmuls       f1, f4, f3
/* 805854EC EC6000F2 */ fmuls       f3, f0, f3
/* 805854F0 EC4201B2 */ fmuls       f2, f2, f6
/* 805854F4 ECA50828 */ fsubs       f5, f5, f1
/* 805854F8 EC2401B2 */ fmuls       f1, f4, f6
/* 805854FC EC0001F2 */ fmuls       f0, f0, f7
/* 80585500 D0A10028 */ stfs        f5, 0x28(r1)
/* 80585504 EC431028 */ fsubs       f2, f3, f2
/* 80585508 EC010028 */ fsubs       f0, f1, f0
/* 8058550C D0410024 */ stfs        f2, 0x24(r1)
/* 80585510 D0010020 */ stfs        f0, 0x20(r1)
/* 80585514 4800ACF9 */ bl          getPos__Q24Kart15KartObjectProxyCFv
/* 80585518 C0230000 */ lfs         f1, 0(r3)
/* 8058551C 3CA08089 */ lis         r5, lbl_80891a00@ha
/* 80585520 C01E0000 */ lfs         f0, 0(r30)
/* 80585524 38810020 */ addi        r4, r1, 0x20
/* 80585528 C0430008 */ lfs         f2, 8(r3)
/* 8058552C 38610008 */ addi        r3, r1, 8
/* 80585530 ECA10028 */ fsubs       f5, f1, f0
/* 80585534 C01E0008 */ lfs         f0, 8(r30)
/* 80585538 C0210020 */ lfs         f1, 0x20(r1)
/* 8058553C EC820028 */ fsubs       f4, f2, f0
/* 80585540 C0651A00 */ lfs         f3, lbl_80891a00@l(r5)
/* 80585544 C0010024 */ lfs         f0, 0x24(r1)
/* 80585548 C0410028 */ lfs         f2, 0x28(r1)
/* 8058554C EC210172 */ fmuls       f1, f1, f5
/* 80585550 EC0000F2 */ fmuls       f0, f0, f3
/* 80585554 EC420132 */ fmuls       f2, f2, f4
/* 80585558 D0A10014 */ stfs        f5, 0x14(r1)
/* 8058555C EC01002A */ fadds       f0, f1, f0
/* 80585560 D081001C */ stfs        f4, 0x1c(r1)
/* 80585564 D0610018 */ stfs        f3, 0x18(r1)
/* 80585568 EC22002A */ fadds       f1, f2, f0
/* 8058556C 4BF9354D */ bl          Vec3_fromScale
/* 80585570 C03E0000 */ lfs         f1, 0(r30)
/* 80585574 C0010008 */ lfs         f0, 8(r1)
/* 80585578 C05E0004 */ lfs         f2, 4(r30)
/* 8058557C EC01002A */ fadds       f0, f1, f0
/* 80585580 C03E0008 */ lfs         f1, 8(r30)
/* 80585584 D01E0000 */ stfs        f0, 0(r30)
/* 80585588 C001000C */ lfs         f0, 0xc(r1)
/* 8058558C EC02002A */ fadds       f0, f2, f0
/* 80585590 D01E0004 */ stfs        f0, 4(r30)
/* 80585594 C0010010 */ lfs         f0, 0x10(r1)
/* 80585598 EC01002A */ fadds       f0, f1, f0
/* 8058559C D01E0008 */ stfs        f0, 8(r30)
/* 805855A0 83E1007C */ lwz         r31, 0x7c(r1)
/* 805855A4 83C10078 */ lwz         r30, 0x78(r1)
/* 805855A8 83A10074 */ lwz         r29, 0x74(r1)
/* 805855AC 80010084 */ lwz         r0, 0x84(r1)
/* 805855B0 7C0803A6 */ mtlr        r0
/* 805855B4 38210080 */ addi        r1, r1, 0x80
/* 805855B8 4E800020 */ blr         