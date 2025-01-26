nofralloc
/* 8057E0DC 9421FFF0 */ stwu        r1, -0x10(r1)
/* 8057E0E0 7C0802A6 */ mflr        r0
/* 8057E0E4 90010014 */ stw         r0, 0x14(r1)
/* 8057E0E8 93E1000C */ stw         r31, 0xc(r1)
/* 8057E0EC 3FE0808B */ lis         r31, lbl_808b58f0@ha
/* 8057E0F0 3BFF58F0 */ addi        r31, r31, lbl_808b58f0@l
/* 8057E0F4 93C10008 */ stw         r30, 8(r1)
/* 8057E0F8 7C7E1B78 */ mr          r30, r3
/* 8057E0FC 80A30000 */ lwz         r5, 0(r3)
/* 8057E100 80C50004 */ lwz         r6, 4(r5)
/* 8057E104 80060014 */ lwz         r0, 0x14(r6)
/* 8057E108 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 8057E10C 41820224 */ beq-        lbl_8057e330
/* 8057E110 8006000C */ lwz         r0, 0xc(r6)
/* 8057E114 54000109 */ rlwinm.     r0, r0, 0, 4, 4
/* 8057E118 40820218 */ bne-        lbl_8057e330
/* 8057E11C C0230014 */ lfs         f1, 0x14(r3)
/* 8057E120 C01F022C */ lfs         f0, 0x22c(r31)
/* 8057E124 C0430020 */ lfs         f2, 0x20(r3)
/* 8057E128 EC000072 */ fmuls       f0, f0, f1
/* 8057E12C FC020040 */ fcmpo       cr0, f2, f0
/* 8057E130 4180005C */ blt-        lbl_8057e18c
/* 8057E134 80860008 */ lwz         r4, 8(r6)
/* 8057E138 548000C6 */ rlwinm      r0, r4, 0, 3, 3
/* 8057E13C 5080056B */ rlwimi.     r0, r4, 0, 0x15, 0x15
/* 8057E140 4082004C */ bne-        lbl_8057e18c
/* 8057E144 80060004 */ lwz         r0, 4(r6)
/* 8057E148 54000085 */ rlwinm.     r0, r0, 0, 2, 2
/* 8057E14C 40820040 */ bne-        lbl_8057e18c
/* 8057E150 80850004 */ lwz         r4, 4(r5)
/* 8057E154 C01F00B8 */ lfs         f0, 0xb8(r31)
/* 8057E158 C0240088 */ lfs         f1, 0x88(r4)
/* 8057E15C FC200A10 */ fabs        f1, f1
/* 8057E160 FC010040 */ fcmpo       cr0, f1, f0
/* 8057E164 40810028 */ ble-        lbl_8057e18c
/* 8057E168 A88301CC */ lha         r4, 0x1cc(r3)
/* 8057E16C A8BF00CC */ lha         r5, 0xcc(r31)
/* 8057E170 38840001 */ addi        r4, r4, 1
/* 8057E174 7C800734 */ extsh       r0, r4
/* 8057E178 B08301CC */ sth         r4, 0x1cc(r3)
/* 8057E17C 7C050000 */ cmpw        r5, r0
/* 8057E180 40800014 */ bge-        lbl_8057e194
/* 8057E184 B0A301CC */ sth         r5, 0x1cc(r3)
/* 8057E188 4800000C */ b           lbl_8057e194
lbl_8057e18c:
/* 8057E18C 38000000 */ li          r0, 0
/* 8057E190 B00301CC */ sth         r0, 0x1cc(r3)
lbl_8057e194:
/* 8057E194 A88301CC */ lha         r4, 0x1cc(r3)
/* 8057E198 A81F00CC */ lha         r0, 0xcc(r31)
/* 8057E19C 7C040000 */ cmpw        r4, r0
/* 8057E1A0 418000E8 */ blt-        lbl_8057e288
/* 8057E1A4 819E000C */ lwz         r12, 0xc(r30)
/* 8057E1A8 7FC3F378 */ mr          r3, r30
/* 8057E1AC 818C0034 */ lwz         r12, 0x34(r12)
/* 8057E1B0 7D8903A6 */ mtctr       r12
/* 8057E1B4 4E800421 */ bctrl       
/* 8057E1B8 807E0000 */ lwz         r3, 0(r30)
/* 8057E1BC 80630004 */ lwz         r3, 4(r3)
/* 8057E1C0 80030004 */ lwz         r0, 4(r3)
/* 8057E1C4 64001000 */ oris        r0, r0, 0x1000
/* 8057E1C8 90030004 */ stw         r0, 4(r3)
/* 8057E1CC 809E0000 */ lwz         r4, 0(r30)
/* 8057E1D0 80640004 */ lwz         r3, 4(r4)
/* 8057E1D4 80840004 */ lwz         r4, 4(r4)
/* 8057E1D8 80030004 */ lwz         r0, 4(r3)
/* 8057E1DC C0240088 */ lfs         f1, 0x88(r4)
/* 8057E1E0 5400035B */ rlwinm.     r0, r0, 0, 0xd, 0xd
/* 8057E1E4 41820068 */ beq-        lbl_8057e24c
/* 8057E1E8 3C608089 */ lis         r3, lbl_80891a00@ha
/* 8057E1EC C0031A00 */ lfs         f0, lbl_80891a00@l(r3)
/* 8057E1F0 FC010040 */ fcmpo       cr0, f1, f0
/* 8057E1F4 40800030 */ bge-        lbl_8057e224
/* 8057E1F8 38000001 */ li          r0, 1
/* 8057E1FC 901E00CC */ stw         r0, 0xcc(r30)
/* 8057E200 7FC3F378 */ mr          r3, r30
/* 8057E204 48012671 */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 8057E208 C043005C */ lfs         f2, 0x5c(r3)
/* 8057E20C C03F00C8 */ lfs         f1, 0xc8(r31)
/* 8057E210 C01E01C8 */ lfs         f0, 0x1c8(r30)
/* 8057E214 EC2100B2 */ fmuls       f1, f1, f2
/* 8057E218 EC000828 */ fsubs       f0, f0, f1
/* 8057E21C D01E01C8 */ stfs        f0, 0x1c8(r30)
/* 8057E220 4800002C */ b           lbl_8057e24c
lbl_8057e224:
/* 8057E224 3800FFFF */ li          r0, -1
/* 8057E228 901E00CC */ stw         r0, 0xcc(r30)
/* 8057E22C 7FC3F378 */ mr          r3, r30
/* 8057E230 48012645 */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 8057E234 C043005C */ lfs         f2, 0x5c(r3)
/* 8057E238 C03F00C8 */ lfs         f1, 0xc8(r31)
/* 8057E23C C01E01C8 */ lfs         f0, 0x1c8(r30)
/* 8057E240 EC2100B2 */ fmuls       f1, f1, f2
/* 8057E244 EC00082A */ fadds       f0, f0, f1
/* 8057E248 D01E01C8 */ stfs        f0, 0x1c8(r30)
lbl_8057e24c:
/* 8057E24C 7FC3F378 */ mr          r3, r30
/* 8057E250 48012625 */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 8057E254 C0430064 */ lfs         f2, 0x64(r3)
/* 8057E258 C03F00C4 */ lfs         f1, 0xc4(r31)
/* 8057E25C C01E01C8 */ lfs         f0, 0x1c8(r30)
/* 8057E260 EC4100B2 */ fmuls       f2, f1, f2
/* 8057E264 FC201050 */ fneg        f1, f2
/* 8057E268 FC010040 */ fcmpo       cr0, f1, f0
/* 8057E26C 4081000C */ ble-        lbl_8057e278
/* 8057E270 D03E01C8 */ stfs        f1, 0x1c8(r30)
/* 8057E274 4800008C */ b           lbl_8057e300
lbl_8057e278:
/* 8057E278 FC020040 */ fcmpo       cr0, f2, f0
/* 8057E27C 40800084 */ bge-        lbl_8057e300
/* 8057E280 D05E01C8 */ stfs        f2, 0x1c8(r30)
/* 8057E284 4800007C */ b           lbl_8057e300
lbl_8057e288:
/* 8057E288 80830000 */ lwz         r4, 0(r3)
/* 8057E28C 38000000 */ li          r0, 0
/* 8057E290 80A40004 */ lwz         r5, 4(r4)
/* 8057E294 80850004 */ lwz         r4, 4(r5)
/* 8057E298 54840104 */ rlwinm      r4, r4, 0, 4, 2
/* 8057E29C 90850004 */ stw         r4, 4(r5)
/* 8057E2A0 900300CC */ stw         r0, 0xcc(r3)
/* 8057E2A4 7FC3F378 */ mr          r3, r30
/* 8057E2A8 480125CD */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 8057E2AC 3C808089 */ lis         r4, lbl_80891a00@ha
/* 8057E2B0 C01E01C8 */ lfs         f0, 0x1c8(r30)
/* 8057E2B4 C0241A00 */ lfs         f1, lbl_80891a00@l(r4)
/* 8057E2B8 C0430068 */ lfs         f2, 0x68(r3)
/* 8057E2BC FC000840 */ fcmpo       cr0, f0, f1
/* 8057E2C0 40810018 */ ble-        lbl_8057e2d8
/* 8057E2C4 EC001028 */ fsubs       f0, f0, f2
/* 8057E2C8 D01E01C8 */ stfs        f0, 0x1c8(r30)
/* 8057E2CC FC000840 */ fcmpo       cr0, f0, f1
/* 8057E2D0 40800008 */ bge-        lbl_8057e2d8
/* 8057E2D4 D03E01C8 */ stfs        f1, 0x1c8(r30)
lbl_8057e2d8:
/* 8057E2D8 3C608089 */ lis         r3, lbl_80891a00@ha
/* 8057E2DC C01E01C8 */ lfs         f0, 0x1c8(r30)
/* 8057E2E0 C0231A00 */ lfs         f1, lbl_80891a00@l(r3)
/* 8057E2E4 FC000840 */ fcmpo       cr0, f0, f1
/* 8057E2E8 40800018 */ bge-        lbl_8057e300
/* 8057E2EC EC00102A */ fadds       f0, f0, f2
/* 8057E2F0 D01E01C8 */ stfs        f0, 0x1c8(r30)
/* 8057E2F4 FC000840 */ fcmpo       cr0, f0, f1
/* 8057E2F8 40810008 */ ble-        lbl_8057e300
/* 8057E2FC D03E01C8 */ stfs        f1, 0x1c8(r30)
lbl_8057e300:
/* 8057E300 C03E01C8 */ lfs         f1, 0x1c8(r30)
/* 8057E304 3C608089 */ lis         r3, lbl_80891a54@ha
/* 8057E308 C0031A54 */ lfs         f0, lbl_80891a54@l(r3)
/* 8057E30C 387E01D0 */ addi        r3, r30, 0x1d0
/* 8057E310 FC200850 */ fneg        f1, f1
/* 8057E314 389E0044 */ addi        r4, r30, 0x44
/* 8057E318 EC200072 */ fmuls       f1, f0, f1
/* 8057E31C 4BCBBD85 */ bl          setAxisRotation__Q23EGG5QuatfFRCQ23EGG8Vector3ff
/* 8057E320 7FC3F378 */ mr          r3, r30
/* 8057E324 48012089 */ bl          kartPhysics__Q24Kart15KartObjectProxyFv
/* 8057E328 389E01D0 */ addi        r4, r30, 0x1d0
/* 8057E32C 480219E1 */ bl          addInstantaneousExtraRot__Q24Kart11KartPhysicsFRCQ23EGG5Quatf
lbl_8057e330:
/* 8057E330 80010014 */ lwz         r0, 0x14(r1)
/* 8057E334 83E1000C */ lwz         r31, 0xc(r1)
/* 8057E338 83C10008 */ lwz         r30, 8(r1)
/* 8057E33C 7C0803A6 */ mtlr        r0
/* 8057E340 38210010 */ addi        r1, r1, 0x10
/* 8057E344 4E800020 */ blr         