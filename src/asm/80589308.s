nofralloc
/* 80589308 9421FFC0 */ stwu        r1, -0x40(r1)
/* 8058930C 7C0802A6 */ mflr        r0
/* 80589310 90010044 */ stw         r0, 0x44(r1)
/* 80589314 38A10008 */ addi        r5, r1, 8
/* 80589318 93E1003C */ stw         r31, 0x3c(r1)
/* 8058931C 3FE08089 */ lis         r31, lbl_80891a00@ha
/* 80589320 3BFF1A00 */ addi        r31, r31, lbl_80891a00@l
/* 80589324 93C10038 */ stw         r30, 0x38(r1)
/* 80589328 3FC0808B */ lis         r30, lbl_808b58f0@ha
/* 8058932C 3BDE58F0 */ addi        r30, r30, lbl_808b58f0@l
/* 80589330 93A10034 */ stw         r29, 0x34(r1)
/* 80589334 7C7D1B78 */ mr          r29, r3
/* 80589338 A0830014 */ lhz         r4, 0x14(r3)
/* 8058933C A81E00F2 */ lha         r0, 0xf2(r30)
/* 80589340 7C040214 */ add         r0, r4, r0
/* 80589344 B0030014 */ sth         r0, 0x14(r3)
/* 80589348 B0010008 */ sth         r0, 8(r1)
/* 8058934C E025B000 */ psq_l       f1, 0(r5), 1, 3
/* 80589350 C01F0050 */ lfs         f0, 0x50(r31)
/* 80589354 EC200072 */ fmuls       f1, f0, f1
/* 80589358 4BAFBDB9 */ bl          SinFIdx__Q24nw4r4mathFf
/* 8058935C 807D0010 */ lwz         r3, 0x10(r29)
/* 80589360 3C004330 */ lis         r0, 0x4330
/* 80589364 C01E00F4 */ lfs         f0, 0xf4(r30)
/* 80589368 90610024 */ stw         r3, 0x24(r1)
/* 8058936C EC600072 */ fmuls       f3, f0, f1
/* 80589370 C85F0090 */ lfd         f2, 0x90(r31)
/* 80589374 90010020 */ stw         r0, 0x20(r1)
/* 80589378 C01E00F8 */ lfs         f0, 0xf8(r30)
/* 8058937C C8210020 */ lfd         f1, 0x20(r1)
/* 80589380 EC211028 */ fsubs       f1, f1, f2
/* 80589384 FC010040 */ fcmpo       cr0, f1, f0
/* 80589388 40810014 */ ble-        lbl_8058939c
/* 8058938C C03D0018 */ lfs         f1, 0x18(r29)
/* 80589390 C01E00FC */ lfs         f0, 0xfc(r30)
/* 80589394 EC010032 */ fmuls       f0, f1, f0
/* 80589398 D01D0018 */ stfs        f0, 0x18(r29)
lbl_8058939c:
/* 8058939C C01F0054 */ lfs         f0, 0x54(r31)
/* 805893A0 38610010 */ addi        r3, r1, 0x10
/* 805893A4 C03F0000 */ lfs         f1, 0(r31)
/* 805893A8 EC4000F2 */ fmuls       f2, f0, f3
/* 805893AC C01D0018 */ lfs         f0, 0x18(r29)
/* 805893B0 FC600890 */ fmr         f3, f1
/* 805893B4 EC420032 */ fmuls       f2, f2, f0
/* 805893B8 D05D001C */ stfs        f2, 0x1c(r29)
/* 805893BC 4BCB0B9D */ bl          setRPY__Q23EGG5QuatfFfff
/* 805893C0 7FA3EB78 */ mr          r3, r29
/* 805893C4 48006FE9 */ bl          kartPhysics__Q24Kart15KartObjectProxyFv
/* 805893C8 38810010 */ addi        r4, r1, 0x10
/* 805893CC 4801687D */ bl          addInstantaneousSpecialRot__Q24Kart11KartPhysicsFRCQ23EGG5Quatf
/* 805893D0 7FA3EB78 */ mr          r3, r29
/* 805893D4 480073A9 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 805893D8 C01F0018 */ lfs         f0, 0x18(r31)
/* 805893DC D0030224 */ stfs        f0, 0x224(r3)
/* 805893E0 83E1003C */ lwz         r31, 0x3c(r1)
/* 805893E4 83C10038 */ lwz         r30, 0x38(r1)
/* 805893E8 83A10034 */ lwz         r29, 0x34(r1)
/* 805893EC 80010044 */ lwz         r0, 0x44(r1)
/* 805893F0 7C0803A6 */ mtlr        r0
/* 805893F4 38210040 */ addi        r1, r1, 0x40
/* 805893F8 4E800020 */ blr         