nofralloc
/* 805858AC 9421FFE0 */ stwu        r1, -0x20(r1)
/* 805858B0 7C0802A6 */ mflr        r0
/* 805858B4 90010024 */ stw         r0, 0x24(r1)
/* 805858B8 39610020 */ addi        r11, r1, 0x20
/* 805858BC 4BA9BCE5 */ bl          _savegpr_27
/* 805858C0 3CA0808B */ lis         r5, lbl_808b59f8@ha
/* 805858C4 3FA08089 */ lis         r29, lbl_80891a00@ha
/* 805858C8 C00559F8 */ lfs         f0, lbl_808b59f8@l(r5)
/* 805858CC 7C7B1B78 */ mr          r27, r3
/* 805858D0 D003002C */ stfs        f0, 0x2c(r3)
/* 805858D4 7C9C2378 */ mr          r28, r4
/* 805858D8 3BBD1A00 */ addi        r29, r29, lbl_80891a00@l
/* 805858DC 4800AF99 */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 805858E0 C0030184 */ lfs         f0, 0x184(r3)
/* 805858E4 7F63DB78 */ mr          r3, r27
/* 805858E8 D01B0174 */ stfs        f0, 0x174(r27)
/* 805858EC 819B000C */ lwz         r12, 0xc(r27)
/* 805858F0 818C002C */ lwz         r12, 0x2c(r12)
/* 805858F4 7D8903A6 */ mtctr       r12
/* 805858F8 4E800421 */ bctrl       
/* 805858FC 7F63DB78 */ mr          r3, r27
/* 80585900 4800AACD */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80585904 7C7E1B78 */ mr          r30, r3
/* 80585908 7F63DB78 */ mr          r3, r27
/* 8058590C 4800AE71 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80585910 7C651B78 */ mr          r5, r3
/* 80585914 3C80802A */ lis         r4, lbl_802a4148@ha
/* 80585918 387E00F0 */ addi        r3, r30, 0xf0
/* 8058591C 38844148 */ addi        r4, r4, lbl_802a4148@l
/* 80585920 38A5005C */ addi        r5, r5, 0x5c
/* 80585924 4BCB49AD */ bl          rotateVector__Q23EGG5QuatfFRCQ23EGG8Vector3fRQ23EGG8Vector3f
/* 80585928 7F63DB78 */ mr          r3, r27
/* 8058592C 4800AAA1 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80585930 3FC0802A */ lis         r30, lbl_802a4100@ha
/* 80585934 C01E4100 */ lfs         f0, lbl_802a4100@l(r30)
/* 80585938 3BFE4100 */ addi        r31, r30, lbl_802a4100@l
/* 8058593C D0030074 */ stfs        f0, 0x74(r3)
/* 80585940 C01F0004 */ lfs         f0, 4(r31)
/* 80585944 D0030078 */ stfs        f0, 0x78(r3)
/* 80585948 C01F0008 */ lfs         f0, 8(r31)
/* 8058594C D003007C */ stfs        f0, 0x7c(r3)
/* 80585950 7F63DB78 */ mr          r3, r27
/* 80585954 4800AA79 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80585958 C01E4100 */ lfs         f0, lbl_802a4100@l(r30)
/* 8058595C D00300B0 */ stfs        f0, 0xb0(r3)
/* 80585960 C01F0004 */ lfs         f0, 4(r31)
/* 80585964 D00300B4 */ stfs        f0, 0xb4(r3)
/* 80585968 C01F0008 */ lfs         f0, 8(r31)
/* 8058596C D00300B8 */ stfs        f0, 0xb8(r3)
/* 80585970 7F63DB78 */ mr          r3, r27
/* 80585974 4800AA59 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80585978 C01E4100 */ lfs         f0, lbl_802a4100@l(r30)
/* 8058597C D00300C8 */ stfs        f0, 0xc8(r3)
/* 80585980 C01F0004 */ lfs         f0, 4(r31)
/* 80585984 D00300CC */ stfs        f0, 0xcc(r3)
/* 80585988 C01F0008 */ lfs         f0, 8(r31)
/* 8058598C D00300D0 */ stfs        f0, 0xd0(r3)
/* 80585990 7F63DB78 */ mr          r3, r27
/* 80585994 4800AA19 */ bl          kartPhysics__Q24Kart15KartObjectProxyFv
/* 80585998 4801AA79 */ bl          resetPendingOrientations__Q24Kart11KartPhysicsFv
/* 8058599C C09D0000 */ lfs         f4, 0(r29)
/* 805859A0 7F63DB78 */ mr          r3, r27
/* 805859A4 C07D0038 */ lfs         f3, 0x38(r29)
/* 805859A8 C05B0038 */ lfs         f2, 0x38(r27)
/* 805859AC C03B003C */ lfs         f1, 0x3c(r27)
/* 805859B0 C01B0040 */ lfs         f0, 0x40(r27)
/* 805859B4 D09B0104 */ stfs        f4, 0x104(r27)
/* 805859B8 D09B015C */ stfs        f4, 0x15c(r27)
/* 805859BC D09B0158 */ stfs        f4, 0x158(r27)
/* 805859C0 D09B0288 */ stfs        f4, 0x288(r27)
/* 805859C4 D09B00F4 */ stfs        f4, 0xf4(r27)
/* 805859C8 D07B0198 */ stfs        f3, 0x198(r27)
/* 805859CC D05B019C */ stfs        f2, 0x19c(r27)
/* 805859D0 D03B01A0 */ stfs        f1, 0x1a0(r27)
/* 805859D4 D01B01A4 */ stfs        f0, 0x1a4(r27)
/* 805859D8 4800BC41 */ bl          kartAccessor_60__Q24Kart15KartObjectProxyFv
/* 805859DC 7F84E378 */ mr          r4, r28
/* 805859E0 48015DD9 */ bl          unk_8059b7b8
/* 805859E4 C01D00D8 */ lfs         f0, 0xd8(r29)
/* 805859E8 39610020 */ addi        r11, r1, 0x20
/* 805859EC D01B0180 */ stfs        f0, 0x180(r27)
/* 805859F0 4BA9BBFD */ bl          _restgpr_27
/* 805859F4 80010024 */ lwz         r0, 0x24(r1)
/* 805859F8 7C0803A6 */ mtlr        r0
/* 805859FC 38210020 */ addi        r1, r1, 0x20
/* 80585A00 4E800020 */ blr         