nofralloc
/* 80537CD4 9421FF40 */ stwu        r1, -0xc0(r1)
/* 80537CD8 7C0802A6 */ mflr        r0
/* 80537CDC 900100C4 */ stw         r0, 0xc4(r1)
/* 80537CE0 DBE100B0 */ stfd        f31, 0xb0(r1)
/* 80537CE4 F3E100B8 */ psq_st      f31, 0xb8(r1), 0, 0
/* 80537CE8 DBC100A0 */ stfd        f30, 0xa0(r1)
/* 80537CEC F3C100A8 */ psq_st      f30, 0xa8(r1), 0, 0
/* 80537CF0 DBA10090 */ stfd        f29, 0x90(r1)
/* 80537CF4 F3A10098 */ psq_st      f29, 0x98(r1), 0, 0
/* 80537CF8 DB810080 */ stfd        f28, 0x80(r1)
/* 80537CFC F3810088 */ psq_st      f28, 0x88(r1), 0, 0
/* 80537D00 39610080 */ addi        r11, r1, 0x80
/* 80537D04 4BAE9885 */ bl          _savegpr_21
/* 80537D08 FFC00890 */ fmr         f30, f1
/* 80537D0C 3FA08089 */ lis         r29, lbl_80890218@ha
/* 80537D10 7CB72B78 */ mr          r23, r5
/* 80537D14 7C751B78 */ mr          r21, r3
/* 80537D18 7C962378 */ mr          r22, r4
/* 80537D1C 7CD83378 */ mr          r24, r6
/* 80537D20 7CF93B78 */ mr          r25, r7
/* 80537D24 7D1A4378 */ mr          r26, r8
/* 80537D28 7D3B4B78 */ mr          r27, r9
/* 80537D2C 7EE3BB78 */ mr          r3, r23
/* 80537D30 3BBD0218 */ addi        r29, r29, lbl_80890218@l
/* 80537D34 4BD0BE39 */ bl          normalise2__Q23EGG8Vector3fFv
/* 80537D38 C01D0010 */ lfs         f0, 0x10(r29)
/* 80537D3C C39D000C */ lfs         f28, 0xc(r29)
/* 80537D40 EC0007B2 */ fmuls       f0, f0, f30
/* 80537D44 FC00E040 */ fcmpo       cr0, f0, f28
/* 80537D48 40810008 */ ble-        lbl_80537d50
/* 80537D4C 48000008 */ b           lbl_80537d54
lbl_80537d50:
/* 80537D50 FF800090 */ fmr         f28, f0
lbl_80537d54:
/* 80537D54 7EE4BB78 */ mr          r4, r23
/* 80537D58 3861002C */ addi        r3, r1, 0x2c
/* 80537D5C 4BFDCA79 */ bl          VEC3_fromNeg
/* 80537D60 FC20E090 */ fmr         f1, f28
/* 80537D64 38610038 */ addi        r3, r1, 0x38
/* 80537D68 3881002C */ addi        r4, r1, 0x2c
/* 80537D6C 4BFDCAA5 */ bl          Vec3_scale
/* 80537D70 C3FD0000 */ lfs         f31, 0(r29)
/* 80537D74 3B800000 */ li          r28, 0
/* 80537D78 3FC0809C */ lis         r30, spInstance__Q25Field11CourseModel@ha
/* 80537D7C 3FE0809C */ lis         r31, VEC_INFINITY@ha
/* 80537D80 480001B0 */ b           lbl_80537f30
lbl_80537d84:
/* 80537D84 FC20F090 */ fmr         f1, f30
/* 80537D88 807E2F44 */ lwz         r3, spInstance__Q25Field11CourseModel@l(r30)
/* 80537D8C 7EC4B378 */ mr          r4, r22
/* 80537D90 7F06C378 */ mr          r6, r24
/* 80537D94 7F27CB78 */ mr          r7, r25
/* 80537D98 7F48D378 */ mr          r8, r26
/* 80537D9C 7F69DB78 */ mr          r9, r27
/* 80537DA0 38BF3C04 */ addi        r5, r31, VEC_INFINITY@l
/* 80537DA4 4825739D */ bl          checkSpherePartial__Q25Field11CourseModelFRCQ23EGG8Vector3fRCQ23EGG8Vector3fUlPQ25Field14ColInfoPartialPUlfUl
/* 80537DA8 2C030000 */ cmpwi       r3, 0
/* 80537DAC 40820150 */ bne-        lbl_80537efc
/* 80537DB0 FC20E090 */ fmr         f1, f28
/* 80537DB4 7EE4BB78 */ mr          r4, r23
/* 80537DB8 38610020 */ addi        r3, r1, 0x20
/* 80537DBC 3BC00000 */ li          r30, 0
/* 80537DC0 4BFDCA51 */ bl          Vec3_scale
/* 80537DC4 C0410020 */ lfs         f2, 0x20(r1)
/* 80537DC8 3FE0809C */ lis         r31, spInstance__Q25Field11CourseModel@ha
/* 80537DCC C0210024 */ lfs         f1, 0x24(r1)
/* 80537DD0 C0010028 */ lfs         f0, 0x28(r1)
/* 80537DD4 D0410038 */ stfs        f2, 0x38(r1)
/* 80537DD8 C3BD0000 */ lfs         f29, 0(r29)
/* 80537DDC D021003C */ stfs        f1, 0x3c(r1)
/* 80537DE0 C3FD0014 */ lfs         f31, 0x14(r29)
/* 80537DE4 D0010040 */ stfs        f0, 0x40(r1)
/* 80537DE8 C39D0018 */ lfs         f28, 0x18(r29)
/* 80537DEC 480000F4 */ b           lbl_80537ee0
lbl_80537df0:
/* 80537DF0 7EC4B378 */ mr          r4, r22
/* 80537DF4 38610014 */ addi        r3, r1, 0x14
/* 80537DF8 38A10038 */ addi        r5, r1, 0x38
/* 80537DFC 4BFDCA3D */ bl          Vec3_add
/* 80537E00 FC20F090 */ fmr         f1, f30
/* 80537E04 807F2F44 */ lwz         r3, spInstance__Q25Field11CourseModel@l(r31)
/* 80537E08 7EC5B378 */ mr          r5, r22
/* 80537E0C 7F06C378 */ mr          r6, r24
/* 80537E10 7F27CB78 */ mr          r7, r25
/* 80537E14 7F48D378 */ mr          r8, r26
/* 80537E18 7F69DB78 */ mr          r9, r27
/* 80537E1C 38810014 */ addi        r4, r1, 0x14
/* 80537E20 48257321 */ bl          checkSpherePartial__Q25Field11CourseModelFRCQ23EGG8Vector3fRCQ23EGG8Vector3fUlPQ25Field14ColInfoPartialPUlfUl
/* 80537E24 2C030000 */ cmpwi       r3, 0
/* 80537E28 41820058 */ beq-        lbl_80537e80
/* 80537E2C C0210038 */ lfs         f1, 0x38(r1)
/* 80537E30 3BC00001 */ li          r30, 1
/* 80537E34 C001003C */ lfs         f0, 0x3c(r1)
/* 80537E38 EC210072 */ fmuls       f1, f1, f1
/* 80537E3C C0410040 */ lfs         f2, 0x40(r1)
/* 80537E40 EC000032 */ fmuls       f0, f0, f0
/* 80537E44 EC4200B2 */ fmuls       f2, f2, f2
/* 80537E48 EC01002A */ fadds       f0, f1, f0
/* 80537E4C EC22002A */ fadds       f1, f2, f0
/* 80537E50 4BCF79BD */ bl          sqrt__Q23EGG5MathfFf
/* 80537E54 FC01F840 */ fcmpo       cr0, f1, f31
/* 80537E58 40800058 */ bge-        lbl_80537eb0
/* 80537E5C 7EC4B378 */ mr          r4, r22
/* 80537E60 38610008 */ addi        r3, r1, 8
/* 80537E64 38A10038 */ addi        r5, r1, 0x38
/* 80537E68 4BFDC9D1 */ bl          Vec3_add
/* 80537E6C 7EA3AB78 */ mr          r3, r21
/* 80537E70 38810008 */ addi        r4, r1, 8
/* 80537E74 38B90018 */ addi        r5, r25, 0x18
/* 80537E78 4BFDC9C1 */ bl          Vec3_add
/* 80537E7C 480000E4 */ b           lbl_80537f60
lbl_80537e80:
/* 80537E80 C0360000 */ lfs         f1, 0(r22)
/* 80537E84 C0010038 */ lfs         f0, 0x38(r1)
/* 80537E88 C0560004 */ lfs         f2, 4(r22)
/* 80537E8C EC01002A */ fadds       f0, f1, f0
/* 80537E90 C0360008 */ lfs         f1, 8(r22)
/* 80537E94 D0160000 */ stfs        f0, 0(r22)
/* 80537E98 C001003C */ lfs         f0, 0x3c(r1)
/* 80537E9C EC02002A */ fadds       f0, f2, f0
/* 80537EA0 D0160004 */ stfs        f0, 4(r22)
/* 80537EA4 C0010040 */ lfs         f0, 0x40(r1)
/* 80537EA8 EC01002A */ fadds       f0, f1, f0
/* 80537EAC D0160008 */ stfs        f0, 8(r22)
lbl_80537eb0:
/* 80537EB0 2C1E0000 */ cmpwi       r30, 0
/* 80537EB4 41820028 */ beq-        lbl_80537edc
/* 80537EB8 C0410038 */ lfs         f2, 0x38(r1)
/* 80537EBC C021003C */ lfs         f1, 0x3c(r1)
/* 80537EC0 C0010040 */ lfs         f0, 0x40(r1)
/* 80537EC4 EC420732 */ fmuls       f2, f2, f28
/* 80537EC8 EC210732 */ fmuls       f1, f1, f28
/* 80537ECC EC000732 */ fmuls       f0, f0, f28
/* 80537ED0 D0410038 */ stfs        f2, 0x38(r1)
/* 80537ED4 D021003C */ stfs        f1, 0x3c(r1)
/* 80537ED8 D0010040 */ stfs        f0, 0x40(r1)
lbl_80537edc:
/* 80537EDC 3B9C0001 */ addi        r28, r28, 1
lbl_80537ee0:
/* 80537EE0 281C03E8 */ cmplwi      r28, 0x3e8
/* 80537EE4 40800064 */ bge-        lbl_80537f48
/* 80537EE8 C0160004 */ lfs         f0, 4(r22)
/* 80537EEC FC1D0040 */ fcmpo       cr0, f29, f0
/* 80537EF0 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 80537EF4 4182FEFC */ beq+        lbl_80537df0
/* 80537EF8 48000050 */ b           lbl_80537f48
lbl_80537efc:
/* 80537EFC C0360000 */ lfs         f1, 0(r22)
/* 80537F00 3B9C0001 */ addi        r28, r28, 1
/* 80537F04 C0010038 */ lfs         f0, 0x38(r1)
/* 80537F08 C0560004 */ lfs         f2, 4(r22)
/* 80537F0C EC01002A */ fadds       f0, f1, f0
/* 80537F10 C0360008 */ lfs         f1, 8(r22)
/* 80537F14 D0160000 */ stfs        f0, 0(r22)
/* 80537F18 C001003C */ lfs         f0, 0x3c(r1)
/* 80537F1C EC02002A */ fadds       f0, f2, f0
/* 80537F20 D0160004 */ stfs        f0, 4(r22)
/* 80537F24 C0010040 */ lfs         f0, 0x40(r1)
/* 80537F28 EC01002A */ fadds       f0, f1, f0
/* 80537F2C D0160008 */ stfs        f0, 8(r22)
lbl_80537f30:
/* 80537F30 281C03E8 */ cmplwi      r28, 0x3e8
/* 80537F34 40800014 */ bge-        lbl_80537f48
/* 80537F38 C0160004 */ lfs         f0, 4(r22)
/* 80537F3C FC1F0040 */ fcmpo       cr0, f31, f0
/* 80537F40 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 80537F44 4182FE40 */ beq+        lbl_80537d84
lbl_80537f48:
/* 80537F48 80760000 */ lwz         r3, 0(r22)
/* 80537F4C 80160004 */ lwz         r0, 4(r22)
/* 80537F50 90150004 */ stw         r0, 4(r21)
/* 80537F54 90750000 */ stw         r3, 0(r21)
/* 80537F58 80160008 */ lwz         r0, 8(r22)
/* 80537F5C 90150008 */ stw         r0, 8(r21)
lbl_80537f60:
/* 80537F60 E3E100B8 */ psq_l       f31, 0xb8(r1), 0, 0
/* 80537F64 CBE100B0 */ lfd         f31, 0xb0(r1)
/* 80537F68 E3C100A8 */ psq_l       f30, 0xa8(r1), 0, 0
/* 80537F6C CBC100A0 */ lfd         f30, 0xa0(r1)
/* 80537F70 E3A10098 */ psq_l       f29, 0x98(r1), 0, 0
/* 80537F74 CBA10090 */ lfd         f29, 0x90(r1)
/* 80537F78 E3810088 */ psq_l       f28, 0x88(r1), 0, 0
/* 80537F7C 39610080 */ addi        r11, r1, 0x80
/* 80537F80 CB810080 */ lfd         f28, 0x80(r1)
/* 80537F84 4BAE9651 */ bl          _restgpr_21
/* 80537F88 800100C4 */ lwz         r0, 0xc4(r1)
/* 80537F8C 7C0803A6 */ mtlr        r0
/* 80537F90 382100C0 */ addi        r1, r1, 0xc0
/* 80537F94 4E800020 */ blr         