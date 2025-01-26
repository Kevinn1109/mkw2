nofralloc
/* 8056EEF4 9421FF50 */ stwu        r1, -0xb0(r1)
/* 8056EEF8 7C0802A6 */ mflr        r0
/* 8056EEFC 900100B4 */ stw         r0, 0xb4(r1)
/* 8056EF00 DBE100A0 */ stfd        f31, 0xa0(r1)
/* 8056EF04 F3E100A8 */ psq_st      f31, 0xa8(r1), 0, 0
/* 8056EF08 DBC10090 */ stfd        f30, 0x90(r1)
/* 8056EF0C F3C10098 */ psq_st      f30, 0x98(r1), 0, 0
/* 8056EF10 DBA10080 */ stfd        f29, 0x80(r1)
/* 8056EF14 F3A10088 */ psq_st      f29, 0x88(r1), 0, 0
/* 8056EF18 DB810070 */ stfd        f28, 0x70(r1)
/* 8056EF1C F3810078 */ psq_st      f28, 0x78(r1), 0, 0
/* 8056EF20 39610070 */ addi        r11, r1, 0x70
/* 8056EF24 4BAB2659 */ bl          _savegpr_18
/* 8056EF28 7C952378 */ mr          r21, r4
/* 8056EF2C 7CB62B78 */ mr          r22, r5
/* 8056EF30 7CD23378 */ mr          r18, r6
/* 8056EF34 3B600000 */ li          r27, 0
/* 8056EF38 38630004 */ addi        r3, r3, 4
/* 8056EF3C 4802189D */ bl          hitboxGroup__Q24Kart15KartObjectProxyFv
/* 8056EF40 7C7E1B78 */ mr          r30, r3
/* 8056EF44 7E439378 */ mr          r3, r18
/* 8056EF48 48021891 */ bl          hitboxGroup__Q24Kart15KartObjectProxyFv
/* 8056EF4C 3C808089 */ lis         r4, lbl_80891730@ha
/* 8056EF50 A8BE0000 */ lha         r5, 0(r30)
/* 8056EF54 A8030000 */ lha         r0, 0(r3)
/* 8056EF58 7C7F1B78 */ mr          r31, r3
/* 8056EF5C C3C41730 */ lfs         f30, lbl_80891730@l(r4)
/* 8056EF60 54BA043E */ clrlwi      r26, r5, 0x10
/* 8056EF64 5419043E */ clrlwi      r25, r0, 0x10
/* 8056EF68 3B000000 */ li          r24, 0
/* 8056EF6C 3E60808B */ lis         r19, lbl_808b56f4@ha
/* 8056EF70 3E80808B */ lis         r20, lbl_808b56d0@ha
/* 8056EF74 480001C8 */ b           lbl_8056f13c
lbl_8056ef78:
/* 8056EF78 5700043E */ clrlwi      r0, r24, 0x10
/* 8056EF7C 2C190000 */ cmpwi       r25, 0
/* 8056EF80 1C000030 */ mulli       r0, r0, 0x30
/* 8056EF84 807E008C */ lwz         r3, 0x8c(r30)
/* 8056EF88 3AE00000 */ li          r23, 0
/* 8056EF8C 7FA30214 */ add         r29, r3, r0
/* 8056EF90 418201A8 */ beq-        lbl_8056f138
/* 8056EF94 3B9D000C */ addi        r28, r29, 0xc
/* 8056EF98 48000194 */ b           lbl_8056f12c
lbl_8056ef9c:
/* 8056EF9C 56E0043E */ clrlwi      r0, r23, 0x10
/* 8056EFA0 809F008C */ lwz         r4, 0x8c(r31)
/* 8056EFA4 1C000030 */ mulli       r0, r0, 0x30
/* 8056EFA8 C39D0004 */ lfs         f28, 4(r29)
/* 8056EFAC 7F85E378 */ mr          r5, r28
/* 8056EFB0 38610008 */ addi        r3, r1, 8
/* 8056EFB4 7C840214 */ add         r4, r4, r0
/* 8056EFB8 3A400000 */ li          r18, 0
/* 8056EFBC C3A40004 */ lfs         f29, 4(r4)
/* 8056EFC0 3884000C */ addi        r4, r4, 0xc
/* 8056EFC4 4BFA58A9 */ bl          VEC3_sub
/* 8056EFC8 C0410008 */ lfs         f2, 8(r1)
/* 8056EFCC ECBCE82A */ fadds       f5, f28, f29
/* 8056EFD0 C081000C */ lfs         f4, 0xc(r1)
/* 8056EFD4 EC2200B2 */ fmuls       f1, f2, f2
/* 8056EFD8 C0610010 */ lfs         f3, 0x10(r1)
/* 8056EFDC EC040132 */ fmuls       f0, f4, f4
/* 8056EFE0 D041002C */ stfs        f2, 0x2c(r1)
/* 8056EFE4 EC4300F2 */ fmuls       f2, f3, f3
/* 8056EFE8 EFA50172 */ fmuls       f29, f5, f5
/* 8056EFEC EC01002A */ fadds       f0, f1, f0
/* 8056EFF0 D0810030 */ stfs        f4, 0x30(r1)
/* 8056EFF4 D0610034 */ stfs        f3, 0x34(r1)
/* 8056EFF8 EF82002A */ fadds       f28, f2, f0
/* 8056EFFC EC1DE028 */ fsubs       f0, f29, f28
/* 8056F000 FC00F040 */ fcmpo       cr0, f0, f30
/* 8056F004 40810094 */ ble-        lbl_8056f098
/* 8056F008 FC1CF040 */ fcmpo       cr0, f28, f30
/* 8056F00C 4C411382 */ cror        cr0eq, cr0gt, cr0eq
/* 8056F010 41820018 */ beq-        lbl_8056f028
/* 8056F014 387356F4 */ addi        r3, r19, lbl_808b56f4@l
/* 8056F018 38B456D0 */ addi        r5, r20, lbl_808b56d0@l
/* 8056F01C 38800273 */ li          r4, 0x273
/* 8056F020 4CC63182 */ crclr       cr1eq
/* 8056F024 4BAB702D */ bl          VWarning
lbl_8056f028:
/* 8056F028 FC1CF040 */ fcmpo       cr0, f28, f30
/* 8056F02C 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 8056F030 4082000C */ bne-        lbl_8056f03c
/* 8056F034 FFE0F090 */ fmr         f31, f30
/* 8056F038 48000010 */ b           lbl_8056f048
lbl_8056f03c:
/* 8056F03C FC20E090 */ fmr         f1, f28
/* 8056F040 4BB16001 */ bl          FrSqrt
/* 8056F044 EFFC0072 */ fmuls       f31, f28, f1
lbl_8056f048:
/* 8056F048 FC1DF040 */ fcmpo       cr0, f29, f30
/* 8056F04C 4C411382 */ cror        cr0eq, cr0gt, cr0eq
/* 8056F050 41820018 */ beq-        lbl_8056f068
/* 8056F054 387356F4 */ addi        r3, r19, lbl_808b56f4@l
/* 8056F058 38B456D0 */ addi        r5, r20, lbl_808b56d0@l
/* 8056F05C 38800273 */ li          r4, 0x273
/* 8056F060 4CC63182 */ crclr       cr1eq
/* 8056F064 4BAB6FED */ bl          VWarning
lbl_8056f068:
/* 8056F068 FC1DF040 */ fcmpo       cr0, f29, f30
/* 8056F06C 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 8056F070 4082000C */ bne-        lbl_8056f07c
/* 8056F074 FC00F090 */ fmr         f0, f30
/* 8056F078 48000010 */ b           lbl_8056f088
lbl_8056f07c:
/* 8056F07C FC20E890 */ fmr         f1, f29
/* 8056F080 4BB15FC1 */ bl          FrSqrt
/* 8056F084 EC1D0072 */ fmuls       f0, f29, f1
lbl_8056f088:
/* 8056F088 EFE0F828 */ fsubs       f31, f0, f31
/* 8056F08C 3861002C */ addi        r3, r1, 0x2c
/* 8056F090 4BCD4A4D */ bl          normalise__Q23EGG8Vector3fFv
/* 8056F094 3A400001 */ li          r18, 1
lbl_8056f098:
/* 8056F098 2C120000 */ cmpwi       r18, 0
/* 8056F09C 4182008C */ beq-        lbl_8056f128
/* 8056F0A0 C03D0004 */ lfs         f1, 4(r29)
/* 8056F0A4 38610020 */ addi        r3, r1, 0x20
/* 8056F0A8 3881002C */ addi        r4, r1, 0x2c
/* 8056F0AC 4BFA5765 */ bl          Vec3_scale
/* 8056F0B0 38610014 */ addi        r3, r1, 0x14
/* 8056F0B4 389D000C */ addi        r4, r29, 0xc
/* 8056F0B8 38A10020 */ addi        r5, r1, 0x20
/* 8056F0BC 4BFA577D */ bl          Vec3_add
/* 8056F0C0 7EC3B378 */ mr          r3, r22
/* 8056F0C4 7EC4B378 */ mr          r4, r22
/* 8056F0C8 38A10014 */ addi        r5, r1, 0x14
/* 8056F0CC 4BB164F5 */ bl          VEC3Minimize__Q24nw4r4mathFPQ34nw4r4math4VEC3PCQ34nw4r4math4VEC3PCQ34nw4r4math4VEC3
/* 8056F0D0 3876000C */ addi        r3, r22, 0xc
/* 8056F0D4 38A10014 */ addi        r5, r1, 0x14
/* 8056F0D8 7C641B78 */ mr          r4, r3
/* 8056F0DC 4BB164A5 */ bl          VEC3Maximize__Q24nw4r4mathFPQ34nw4r4math4VEC3PCQ34nw4r4math4VEC3PCQ34nw4r4math4VEC3
/* 8056F0E0 C041002C */ lfs         f2, 0x2c(r1)
/* 8056F0E4 7EA3AB78 */ mr          r3, r21
/* 8056F0E8 C0210030 */ lfs         f1, 0x30(r1)
/* 8056F0EC 7EA4AB78 */ mr          r4, r21
/* 8056F0F0 C0010034 */ lfs         f0, 0x34(r1)
/* 8056F0F4 EC4207F2 */ fmuls       f2, f2, f31
/* 8056F0F8 EC2107F2 */ fmuls       f1, f1, f31
/* 8056F0FC 38A1002C */ addi        r5, r1, 0x2c
/* 8056F100 EC0007F2 */ fmuls       f0, f0, f31
/* 8056F104 D041002C */ stfs        f2, 0x2c(r1)
/* 8056F108 D0210030 */ stfs        f1, 0x30(r1)
/* 8056F10C D0010034 */ stfs        f0, 0x34(r1)
/* 8056F110 4BB164B1 */ bl          VEC3Minimize__Q24nw4r4mathFPQ34nw4r4math4VEC3PCQ34nw4r4math4VEC3PCQ34nw4r4math4VEC3
/* 8056F114 3875000C */ addi        r3, r21, 0xc
/* 8056F118 38A1002C */ addi        r5, r1, 0x2c
/* 8056F11C 7C641B78 */ mr          r4, r3
/* 8056F120 4BB16461 */ bl          VEC3Maximize__Q24nw4r4mathFPQ34nw4r4math4VEC3PCQ34nw4r4math4VEC3PCQ34nw4r4math4VEC3
/* 8056F124 3B600001 */ li          r27, 1
lbl_8056f128:
/* 8056F128 3AF70001 */ addi        r23, r23, 1
lbl_8056f12c:
/* 8056F12C 56E0043E */ clrlwi      r0, r23, 0x10
/* 8056F130 7C00C840 */ cmplw       r0, r25
/* 8056F134 4180FE68 */ blt+        lbl_8056ef9c
lbl_8056f138:
/* 8056F138 3B180001 */ addi        r24, r24, 1
lbl_8056f13c:
/* 8056F13C 5700043E */ clrlwi      r0, r24, 0x10
/* 8056F140 7C00D040 */ cmplw       r0, r26
/* 8056F144 4180FE34 */ blt+        lbl_8056ef78
/* 8056F148 7F63DB78 */ mr          r3, r27
/* 8056F14C E3E100A8 */ psq_l       f31, 0xa8(r1), 0, 0
/* 8056F150 CBE100A0 */ lfd         f31, 0xa0(r1)
/* 8056F154 E3C10098 */ psq_l       f30, 0x98(r1), 0, 0
/* 8056F158 CBC10090 */ lfd         f30, 0x90(r1)
/* 8056F15C E3A10088 */ psq_l       f29, 0x88(r1), 0, 0
/* 8056F160 CBA10080 */ lfd         f29, 0x80(r1)
/* 8056F164 E3810078 */ psq_l       f28, 0x78(r1), 0, 0
/* 8056F168 CB810070 */ lfd         f28, 0x70(r1)
/* 8056F16C 39610070 */ addi        r11, r1, 0x70
/* 8056F170 4BAB2459 */ bl          _restgpr_18
/* 8056F174 800100B4 */ lwz         r0, 0xb4(r1)
/* 8056F178 7C0803A6 */ mtlr        r0
/* 8056F17C 382100B0 */ addi        r1, r1, 0xb0
/* 8056F180 4E800020 */ blr         