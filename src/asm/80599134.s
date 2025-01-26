nofralloc
/* 80599134 9421FF90 */ stwu        r1, -0x70(r1)
/* 80599138 7C0802A6 */ mflr        r0
/* 8059913C 90010074 */ stw         r0, 0x74(r1)
/* 80599140 DBE10060 */ stfd        f31, 0x60(r1)
/* 80599144 F3E10068 */ psq_st      f31, 0x68(r1), 0, 0
/* 80599148 93E1005C */ stw         r31, 0x5c(r1)
/* 8059914C 93C10058 */ stw         r30, 0x58(r1)
/* 80599150 93A10054 */ stw         r29, 0x54(r1)
/* 80599154 7C7D1B78 */ mr          r29, r3
/* 80599158 8803008C */ lbz         r0, 0x8c(r3)
/* 8059915C 2C000000 */ cmpwi       r0, 0
/* 80599160 41820208 */ beq-        lbl_80599368
/* 80599164 4BFF77B9 */ bl          various_stuff_get_bike_parts_disp_params
/* 80599168 3BC3003C */ addi        r30, r3, 0x3c
/* 8059916C 7FA3EB78 */ mr          r3, r29
/* 80599170 4BFF834D */ bl          getScale__Q24Kart15KartObjectProxyFv
/* 80599174 C0230004 */ lfs         f1, 4(r3)
/* 80599178 7FC4F378 */ mr          r4, r30
/* 8059917C 38610008 */ addi        r3, r1, 8
/* 80599180 4BF7B691 */ bl          Vec3_scale
/* 80599184 387D004C */ addi        r3, r29, 0x4c
/* 80599188 38810008 */ addi        r4, r1, 8
/* 8059918C 4BC97139 */ bl          makeT__Q23EGG9Matrix34fFRCQ23EGG8Vector3f
/* 80599190 7FA3EB78 */ mr          r3, r29
/* 80599194 4BFF70E5 */ bl          unk_80590278
/* 80599198 389D004C */ addi        r4, r29, 0x4c
/* 8059919C 38BD001C */ addi        r5, r29, 0x1c
/* 805991A0 4BC97271 */ bl          multiplyTo__Q23EGG9Matrix34fCFRCQ23EGG9Matrix34fRQ23EGG9Matrix34f
/* 805991A4 809D0090 */ lwz         r4, 0x90(r29)
/* 805991A8 38610038 */ addi        r3, r1, 0x38
/* 805991AC C03D0028 */ lfs         f1, 0x28(r29)
/* 805991B0 80840014 */ lwz         r4, 0x14(r4)
/* 805991B4 C05D0038 */ lfs         f2, 0x38(r29)
/* 805991B8 C0040020 */ lfs         f0, 0x20(r4)
/* 805991BC C07D0048 */ lfs         f3, 0x48(r29)
/* 805991C0 EC010028 */ fsubs       f0, f1, f0
/* 805991C4 D0210044 */ stfs        f1, 0x44(r1)
/* 805991C8 D0010038 */ stfs        f0, 0x38(r1)
/* 805991CC C0040024 */ lfs         f0, 0x24(r4)
/* 805991D0 D0410048 */ stfs        f2, 0x48(r1)
/* 805991D4 EC020028 */ fsubs       f0, f2, f0
/* 805991D8 D061004C */ stfs        f3, 0x4c(r1)
/* 805991DC D001003C */ stfs        f0, 0x3c(r1)
/* 805991E0 C0040028 */ lfs         f0, 0x28(r4)
/* 805991E4 EC030028 */ fsubs       f0, f3, f0
/* 805991E8 D0010040 */ stfs        f0, 0x40(r1)
/* 805991EC 4BCAA8F1 */ bl          normalise__Q23EGG8Vector3fFv
/* 805991F0 FFE00890 */ fmr         f31, f1
/* 805991F4 7FA3EB78 */ mr          r3, r29
/* 805991F8 38810020 */ addi        r4, r1, 0x20
/* 805991FC 4BFF7A99 */ bl          PlayerPointers_getBodyFront
/* 80599200 C0E10038 */ lfs         f7, 0x38(r1)
/* 80599204 3861002C */ addi        r3, r1, 0x2c
/* 80599208 C0010024 */ lfs         f0, 0x24(r1)
/* 8059920C C0410040 */ lfs         f2, 0x40(r1)
/* 80599210 C0810020 */ lfs         f4, 0x20(r1)
/* 80599214 ECC70032 */ fmuls       f6, f7, f0
/* 80599218 C0A1003C */ lfs         f5, 0x3c(r1)
/* 8059921C EC020032 */ fmuls       f0, f2, f0
/* 80599220 EC620132 */ fmuls       f3, f2, f4
/* 80599224 C0210028 */ lfs         f1, 0x28(r1)
/* 80599228 EC850132 */ fmuls       f4, f5, f4
/* 8059922C EC470072 */ fmuls       f2, f7, f1
/* 80599230 EC250072 */ fmuls       f1, f5, f1
/* 80599234 EC862028 */ fsubs       f4, f6, f4
/* 80599238 EC431028 */ fsubs       f2, f3, f2
/* 8059923C EC010028 */ fsubs       f0, f1, f0
/* 80599240 D0810034 */ stfs        f4, 0x34(r1)
/* 80599244 D001002C */ stfs        f0, 0x2c(r1)
/* 80599248 D0410030 */ stfs        f2, 0x30(r1)
/* 8059924C 4BCAA891 */ bl          normalise__Q23EGG8Vector3fFv
/* 80599250 C0E1002C */ lfs         f7, 0x2c(r1)
/* 80599254 38610020 */ addi        r3, r1, 0x20
/* 80599258 C001003C */ lfs         f0, 0x3c(r1)
/* 8059925C C0410034 */ lfs         f2, 0x34(r1)
/* 80599260 C0810038 */ lfs         f4, 0x38(r1)
/* 80599264 ECC70032 */ fmuls       f6, f7, f0
/* 80599268 C0A10030 */ lfs         f5, 0x30(r1)
/* 8059926C EC020032 */ fmuls       f0, f2, f0
/* 80599270 EC620132 */ fmuls       f3, f2, f4
/* 80599274 C0210040 */ lfs         f1, 0x40(r1)
/* 80599278 EC850132 */ fmuls       f4, f5, f4
/* 8059927C EC470072 */ fmuls       f2, f7, f1
/* 80599280 EC250072 */ fmuls       f1, f5, f1
/* 80599284 EC862028 */ fsubs       f4, f6, f4
/* 80599288 EC431028 */ fsubs       f2, f3, f2
/* 8059928C EC010028 */ fsubs       f0, f1, f0
/* 80599290 D0810028 */ stfs        f4, 0x28(r1)
/* 80599294 D0010020 */ stfs        f0, 0x20(r1)
/* 80599298 D0410024 */ stfs        f2, 0x24(r1)
/* 8059929C 4BCAA841 */ bl          normalise__Q23EGG8Vector3fFv
/* 805992A0 C001002C */ lfs         f0, 0x2c(r1)
/* 805992A4 7FA3EB78 */ mr          r3, r29
/* 805992A8 D01D001C */ stfs        f0, 0x1c(r29)
/* 805992AC C0010030 */ lfs         f0, 0x30(r1)
/* 805992B0 D01D002C */ stfs        f0, 0x2c(r29)
/* 805992B4 C0010034 */ lfs         f0, 0x34(r1)
/* 805992B8 D01D003C */ stfs        f0, 0x3c(r29)
/* 805992BC C0010038 */ lfs         f0, 0x38(r1)
/* 805992C0 D01D0020 */ stfs        f0, 0x20(r29)
/* 805992C4 C001003C */ lfs         f0, 0x3c(r1)
/* 805992C8 D01D0030 */ stfs        f0, 0x30(r29)
/* 805992CC C0010040 */ lfs         f0, 0x40(r1)
/* 805992D0 D01D0040 */ stfs        f0, 0x40(r29)
/* 805992D4 C0010020 */ lfs         f0, 0x20(r1)
/* 805992D8 D01D0024 */ stfs        f0, 0x24(r29)
/* 805992DC C0010024 */ lfs         f0, 0x24(r1)
/* 805992E0 D01D0034 */ stfs        f0, 0x34(r29)
/* 805992E4 C0010028 */ lfs         f0, 0x28(r1)
/* 805992E8 D01D0044 */ stfs        f0, 0x44(r29)
/* 805992EC 4BFF81D1 */ bl          getScale__Q24Kart15KartObjectProxyFv
/* 805992F0 80830000 */ lwz         r4, 0(r3)
/* 805992F4 80030004 */ lwz         r0, 4(r3)
/* 805992F8 90010018 */ stw         r0, 0x18(r1)
/* 805992FC 90810014 */ stw         r4, 0x14(r1)
/* 80599300 80030008 */ lwz         r0, 8(r3)
/* 80599304 7FA3EB78 */ mr          r3, r29
/* 80599308 9001001C */ stw         r0, 0x1c(r1)
/* 8059930C 4BFF7611 */ bl          various_stuff_get_bike_parts_disp_params
/* 80599310 C0030054 */ lfs         f0, 0x54(r3)
/* 80599314 38810014 */ addi        r4, r1, 0x14
/* 80599318 EC1F0032 */ fmuls       f0, f31, f0
/* 8059931C D0010018 */ stfs        f0, 0x18(r1)
/* 80599320 807D007C */ lwz         r3, 0x7c(r29)
/* 80599324 81830000 */ lwz         r12, 0(r3)
/* 80599328 818C0014 */ lwz         r12, 0x14(r12)
/* 8059932C 7D8903A6 */ mtctr       r12
/* 80599330 4E800421 */ bctrl       
/* 80599334 83DD007C */ lwz         r30, 0x7c(r29)
/* 80599338 3BE00000 */ li          r31, 0
lbl_8059933c:
/* 8059933C 807E0014 */ lwz         r3, 0x14(r30)
/* 80599340 80630000 */ lwz         r3, 0(r3)
/* 80599344 2C030000 */ cmpwi       r3, 0
/* 80599348 41820010 */ beq-        lbl_80599358
/* 8059934C 38BD001C */ addi        r5, r29, 0x1c
/* 80599350 38800000 */ li          r4, 0
/* 80599354 4BAD483D */ bl          SetMtx
lbl_80599358:
/* 80599358 3BFF0001 */ addi        r31, r31, 1
/* 8059935C 3BDE0004 */ addi        r30, r30, 4
/* 80599360 2C1F0002 */ cmpwi       r31, 2
/* 80599364 4180FFD8 */ blt+        lbl_8059933c
lbl_80599368:
/* 80599368 E3E10068 */ psq_l       f31, 0x68(r1), 0, 0
/* 8059936C 80010074 */ lwz         r0, 0x74(r1)
/* 80599370 CBE10060 */ lfd         f31, 0x60(r1)
/* 80599374 83E1005C */ lwz         r31, 0x5c(r1)
/* 80599378 83C10058 */ lwz         r30, 0x58(r1)
/* 8059937C 83A10054 */ lwz         r29, 0x54(r1)
/* 80599380 7C0803A6 */ mtlr        r0
/* 80599384 38210070 */ addi        r1, r1, 0x70
/* 80599388 4E800020 */ blr         