nofralloc
/* 80584044 9421FF30 */ stwu        r1, -0xd0(r1)
/* 80584048 7C0802A6 */ mflr        r0
/* 8058404C 900100D4 */ stw         r0, 0xd4(r1)
/* 80584050 DBE100C0 */ stfd        f31, 0xc0(r1)
/* 80584054 F3E100C8 */ psq_st      f31, 0xc8(r1), 0, 0
/* 80584058 C0450000 */ lfs         f2, 0(r5)
/* 8058405C 93E100BC */ stw         r31, 0xbc(r1)
/* 80584060 7C7F1B78 */ mr          r31, r3
/* 80584064 C0250004 */ lfs         f1, 4(r5)
/* 80584068 38610030 */ addi        r3, r1, 0x30
/* 8058406C 93C100B8 */ stw         r30, 0xb8(r1)
/* 80584070 3FC08089 */ lis         r30, lbl_80891a00@ha
/* 80584074 3BDE1A00 */ addi        r30, r30, lbl_80891a00@l
/* 80584078 C0050008 */ lfs         f0, 8(r5)
/* 8058407C C07E0054 */ lfs         f3, 0x54(r30)
/* 80584080 93A100B4 */ stw         r29, 0xb4(r1)
/* 80584084 7C9D2378 */ mr          r29, r4
/* 80584088 80E50000 */ lwz         r7, 0(r5)
/* 8058408C EC4300B2 */ fmuls       f2, f3, f2
/* 80584090 80C50004 */ lwz         r6, 4(r5)
/* 80584094 EC230072 */ fmuls       f1, f3, f1
/* 80584098 80050008 */ lwz         r0, 8(r5)
/* 8058409C EC030032 */ fmuls       f0, f3, f0
/* 805840A0 90E10040 */ stw         r7, 0x40(r1)
/* 805840A4 38810040 */ addi        r4, r1, 0x40
/* 805840A8 90C10044 */ stw         r6, 0x44(r1)
/* 805840AC 90010048 */ stw         r0, 0x48(r1)
/* 805840B0 D0410040 */ stfs        f2, 0x40(r1)
/* 805840B4 D0210044 */ stfs        f1, 0x44(r1)
/* 805840B8 D0010048 */ stfs        f0, 0x48(r1)
/* 805840BC 4BCB5D55 */ bl          setRPY__Q23EGG5QuatfFRCQ23EGG8Vector3f
/* 805840C0 C3FE00CC */ lfs         f31, 0xcc(r30)
/* 805840C4 39800000 */ li          r12, 0
/* 805840C8 C01E0000 */ lfs         f0, 0(r30)
/* 805840CC 3C60809C */ lis         r3, spInstance__Q25Field11CourseModel@ha
/* 805840D0 817D0000 */ lwz         r11, 0(r29)
/* 805840D4 FC20F890 */ fmr         f1, f31
/* 805840D8 815D0004 */ lwz         r10, 4(r29)
/* 805840DC 3CA0809C */ lis         r5, VEC_INFINITY@ha
/* 805840E0 801D0008 */ lwz         r0, 8(r29)
/* 805840E4 38810024 */ addi        r4, r1, 0x24
/* 805840E8 D001004C */ stfs        f0, 0x4c(r1)
/* 805840EC 80632F44 */ lwz         r3, spInstance__Q25Field11CourseModel@l(r3)
/* 805840F0 38A53C04 */ addi        r5, r5, VEC_INFINITY@l
/* 805840F4 D0010050 */ stfs        f0, 0x50(r1)
/* 805840F8 38E1004C */ addi        r7, r1, 0x4c
/* 805840FC 39010008 */ addi        r8, r1, 8
/* 80584100 38C0FFFF */ li          r6, -1
/* 80584104 D0010054 */ stfs        f0, 0x54(r1)
/* 80584108 39200000 */ li          r9, 0
/* 8058410C D0010058 */ stfs        f0, 0x58(r1)
/* 80584110 D001005C */ stfs        f0, 0x5c(r1)
/* 80584114 D0010060 */ stfs        f0, 0x60(r1)
/* 80584118 918100A4 */ stw         r12, 0xa4(r1)
/* 8058411C 91810008 */ stw         r12, 8(r1)
/* 80584120 91610024 */ stw         r11, 0x24(r1)
/* 80584124 91410028 */ stw         r10, 0x28(r1)
/* 80584128 9001002C */ stw         r0, 0x2c(r1)
/* 8058412C 4820B659 */ bl          checkSphereFullPush__Q25Field11CourseModelFRCQ23EGG8Vector3fRCQ23EGG8Vector3fUlPQ25Field7ColInfoPUlfUl
/* 80584130 2C030000 */ cmpwi       r3, 0
/* 80584134 418200B8 */ beq-        lbl_805841ec
/* 80584138 3C6020E8 */ lis         r3, 0x20e8
/* 8058413C 80810008 */ lwz         r4, 8(r1)
/* 80584140 38030FFF */ addi        r0, r3, 0xfff
/* 80584144 7C800039 */ and.        r0, r4, r0
/* 80584148 418200A4 */ beq-        lbl_805841ec
/* 8058414C C0A10024 */ lfs         f5, 0x24(r1)
/* 80584150 FC60F850 */ fneg        f3, f31
/* 80584154 C0810064 */ lfs         f4, 0x64(r1)
/* 80584158 7FE3FB78 */ mr          r3, r31
/* 8058415C C0410070 */ lfs         f2, 0x70(r1)
/* 80584160 ED05202A */ fadds       f8, f5, f4
/* 80584164 C0210074 */ lfs         f1, 0x74(r1)
/* 80584168 C0010078 */ lfs         f0, 0x78(r1)
/* 8058416C EC4300B2 */ fmuls       f2, f3, f2
/* 80584170 C0E10028 */ lfs         f7, 0x28(r1)
/* 80584174 EC230072 */ fmuls       f1, f3, f1
/* 80584178 C0C10068 */ lfs         f6, 0x68(r1)
/* 8058417C EC48102A */ fadds       f2, f8, f2
/* 80584180 C0A1002C */ lfs         f5, 0x2c(r1)
/* 80584184 EC030032 */ fmuls       f0, f3, f0
/* 80584188 C081006C */ lfs         f4, 0x6c(r1)
/* 8058418C ECC7302A */ fadds       f6, f7, f6
/* 80584190 D0410024 */ stfs        f2, 0x24(r1)
/* 80584194 EC85202A */ fadds       f4, f5, f4
/* 80584198 EC26082A */ fadds       f1, f6, f1
/* 8058419C EC04002A */ fadds       f0, f4, f0
/* 805841A0 D0210028 */ stfs        f1, 0x28(r1)
/* 805841A4 D001002C */ stfs        f0, 0x2c(r1)
/* 805841A8 4800C6E1 */ bl          bsp__Q24Kart15KartObjectProxyCFv
/* 805841AC C0C30000 */ lfs         f6, 0(r3)
/* 805841B0 C0410070 */ lfs         f2, 0x70(r1)
/* 805841B4 C0210074 */ lfs         f1, 0x74(r1)
/* 805841B8 ECA600B2 */ fmuls       f5, f6, f2
/* 805841BC C0810024 */ lfs         f4, 0x24(r1)
/* 805841C0 C0010078 */ lfs         f0, 0x78(r1)
/* 805841C4 EC660072 */ fmuls       f3, f6, f1
/* 805841C8 C0410028 */ lfs         f2, 0x28(r1)
/* 805841CC EC260032 */ fmuls       f1, f6, f0
/* 805841D0 C001002C */ lfs         f0, 0x2c(r1)
/* 805841D4 EC84282A */ fadds       f4, f4, f5
/* 805841D8 EC42182A */ fadds       f2, f2, f3
/* 805841DC EC00082A */ fadds       f0, f0, f1
/* 805841E0 D0810024 */ stfs        f4, 0x24(r1)
/* 805841E4 D0410028 */ stfs        f2, 0x28(r1)
/* 805841E8 D001002C */ stfs        f0, 0x2c(r1)
lbl_805841ec:
/* 805841EC 7FE3FB78 */ mr          r3, r31
/* 805841F0 38810024 */ addi        r4, r1, 0x24
/* 805841F4 4800C045 */ bl          various_stuff_set_player_position
/* 805841F8 7FE3FB78 */ mr          r3, r31
/* 805841FC 38810030 */ addi        r4, r1, 0x30
/* 80584200 4800C089 */ bl          various_stuff_set_player_rotation
/* 80584204 7FE3FB78 */ mr          r3, r31
/* 80584208 4800C55D */ bl          kartPhysicsEngine__Q24Kart15KartObjectProxyFv
/* 8058420C 48013729 */ bl          unk_80597934
/* 80584210 7FE3FB78 */ mr          r3, r31
/* 80584214 4800C199 */ bl          kartPhysics__Q24Kart15KartObjectProxyFv
/* 80584218 80A30004 */ lwz         r5, 4(r3)
/* 8058421C 38810018 */ addi        r4, r1, 0x18
/* 80584220 C0050068 */ lfs         f0, 0x68(r5)
/* 80584224 D0030018 */ stfs        f0, 0x18(r3)
/* 80584228 C005006C */ lfs         f0, 0x6c(r5)
/* 8058422C D003001C */ stfs        f0, 0x1c(r3)
/* 80584230 C0050070 */ lfs         f0, 0x70(r5)
/* 80584234 D0030020 */ stfs        f0, 0x20(r3)
/* 80584238 80A30004 */ lwz         r5, 4(r3)
/* 8058423C C00500D4 */ lfs         f0, 0xd4(r5)
/* 80584240 D00300F0 */ stfs        f0, 0xf0(r3)
/* 80584244 C00500D8 */ lfs         f0, 0xd8(r5)
/* 80584248 D00300F4 */ stfs        f0, 0xf4(r3)
/* 8058424C C00500DC */ lfs         f0, 0xdc(r5)
/* 80584250 D00300F8 */ stfs        f0, 0xf8(r3)
/* 80584254 7FE3FB78 */ mr          r3, r31
/* 80584258 4800CA15 */ bl          unk_80590c6c
/* 8058425C 7FE3FB78 */ mr          r3, r31
/* 80584260 3881000C */ addi        r4, r1, 0xc
/* 80584264 4800CA31 */ bl          PlayerPointers_getBodyFront
/* 80584268 C041000C */ lfs         f2, 0xc(r1)
/* 8058426C 7FE3FB78 */ mr          r3, r31
/* 80584270 D05F0050 */ stfs        f2, 0x50(r31)
/* 80584274 C0210010 */ lfs         f1, 0x10(r1)
/* 80584278 D03F0054 */ stfs        f1, 0x54(r31)
/* 8058427C C0010014 */ lfs         f0, 0x14(r1)
/* 80584280 D01F0058 */ stfs        f0, 0x58(r31)
/* 80584284 D05F005C */ stfs        f2, 0x5c(r31)
/* 80584288 D03F0060 */ stfs        f1, 0x60(r31)
/* 8058428C D01F0064 */ stfs        f0, 0x64(r31)
/* 80584290 D05F0080 */ stfs        f2, 0x80(r31)
/* 80584294 D03F0084 */ stfs        f1, 0x84(r31)
/* 80584298 D01F0088 */ stfs        f0, 0x88(r31)
/* 8058429C C0010018 */ lfs         f0, 0x18(r1)
/* 805842A0 D01F0044 */ stfs        f0, 0x44(r31)
/* 805842A4 C001001C */ lfs         f0, 0x1c(r1)
/* 805842A8 D01F0048 */ stfs        f0, 0x48(r31)
/* 805842AC C0010020 */ lfs         f0, 0x20(r1)
/* 805842B0 D01F004C */ stfs        f0, 0x4c(r31)
/* 805842B4 4800C0F9 */ bl          kartPhysics__Q24Kart15KartObjectProxyFv
/* 805842B8 80630004 */ lwz         r3, 4(r3)
/* 805842BC 3BC00000 */ li          r30, 0
/* 805842C0 C01F0044 */ lfs         f0, 0x44(r31)
/* 805842C4 D0030158 */ stfs        f0, 0x158(r3)
/* 805842C8 C01F0048 */ lfs         f0, 0x48(r31)
/* 805842CC D003015C */ stfs        f0, 0x15c(r3)
/* 805842D0 C01F004C */ lfs         f0, 0x4c(r31)
/* 805842D4 D0030160 */ stfs        f0, 0x160(r3)
/* 805842D8 48000018 */ b           lbl_805842f0
lbl_805842dc:
/* 805842DC 7FE3FB78 */ mr          r3, r31
/* 805842E0 7FC4F378 */ mr          r4, r30
/* 805842E4 4800C3D1 */ bl          kartSus__Q24Kart15KartObjectProxyFl
/* 805842E8 480148FD */ bl          tire0_set_initial_physics_values
/* 805842EC 3BDE0001 */ addi        r30, r30, 1
lbl_805842f0:
/* 805842F0 7FE3FB78 */ mr          r3, r31
/* 805842F4 4800BFE9 */ bl          PlayerPointers_getWheelCount0
/* 805842F8 5460043E */ clrlwi      r0, r3, 0x10
/* 805842FC 7C1E0000 */ cmpw        r30, r0
/* 80584300 4180FFDC */ blt+        lbl_805842dc
/* 80584304 7FE3FB78 */ mr          r3, r31
/* 80584308 4800D225 */ bl          kartAccessor_50__Q24Kart15KartObjectProxyFv
/* 8058430C 48203A45 */ bl          unk_80787d50
/* 80584310 E3E100C8 */ psq_l       f31, 0xc8(r1), 0, 0
/* 80584314 800100D4 */ lwz         r0, 0xd4(r1)
/* 80584318 CBE100C0 */ lfd         f31, 0xc0(r1)
/* 8058431C 83E100BC */ lwz         r31, 0xbc(r1)
/* 80584320 83C100B8 */ lwz         r30, 0xb8(r1)
/* 80584324 83A100B4 */ lwz         r29, 0xb4(r1)
/* 80584328 7C0803A6 */ mtlr        r0
/* 8058432C 382100D0 */ addi        r1, r1, 0xd0
/* 80584330 4E800020 */ blr         