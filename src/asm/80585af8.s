nofralloc
/* 80585AF8 9421FF40 */ stwu        r1, -0xc0(r1)
/* 80585AFC 7C0802A6 */ mflr        r0
/* 80585B00 900100C4 */ stw         r0, 0xc4(r1)
/* 80585B04 DBE100B0 */ stfd        f31, 0xb0(r1)
/* 80585B08 F3E100B8 */ psq_st      f31, 0xb8(r1), 0, 0
/* 80585B0C DBC100A0 */ stfd        f30, 0xa0(r1)
/* 80585B10 F3C100A8 */ psq_st      f30, 0xa8(r1), 0, 0
/* 80585B14 DBA10090 */ stfd        f29, 0x90(r1)
/* 80585B18 F3A10098 */ psq_st      f29, 0x98(r1), 0, 0
/* 80585B1C 93E1008C */ stw         r31, 0x8c(r1)
/* 80585B20 3FE08089 */ lis         r31, lbl_80891a00@ha
/* 80585B24 3BFF1A00 */ addi        r31, r31, lbl_80891a00@l
/* 80585B28 93C10088 */ stw         r30, 0x88(r1)
/* 80585B2C 7C7E1B78 */ mr          r30, r3
/* 80585B30 93A10084 */ stw         r29, 0x84(r1)
/* 80585B34 80830000 */ lwz         r4, 0(r3)
/* 80585B38 80840004 */ lwz         r4, 4(r4)
/* 80585B3C 80A40008 */ lwz         r5, 8(r4)
/* 80585B40 54A007FF */ clrlwi.     r0, r5, 0x1f
/* 80585B44 40820544 */ bne-        lbl_80586088
/* 80585B48 8004000C */ lwz         r0, 0xc(r4)
/* 80585B4C 54000109 */ rlwinm.     r0, r0, 0, 4, 4
/* 80585B50 40820538 */ bne-        lbl_80586088
/* 80585B54 54A000C7 */ rlwinm.     r0, r5, 0, 3, 3
/* 80585B58 4182032C */ beq-        lbl_80585e84
/* 80585B5C 3C80802A */ lis         r4, RKSystem_ey@ha
/* 80585B60 38610068 */ addi        r3, r1, 0x68
/* 80585B64 38844130 */ addi        r4, r4, RKSystem_ey@l
/* 80585B68 4BF8EC6D */ bl          VEC3_fromNeg
/* 80585B6C 7FC3F378 */ mr          r3, r30
/* 80585B70 4800AC0D */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80585B74 7C651B78 */ mr          r5, r3
/* 80585B78 38610068 */ addi        r3, r1, 0x68
/* 80585B7C 7C641B78 */ mr          r4, r3
/* 80585B80 38C00001 */ li          r6, 1
/* 80585B84 38A50044 */ addi        r5, r5, 0x44
/* 80585B88 48028E65 */ bl          VEC3_perpInPlane
/* 80585B8C 7FC3F378 */ mr          r3, r30
/* 80585B90 4800ABED */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80585B94 38A30068 */ addi        r5, r3, 0x68
/* 80585B98 C0430068 */ lfs         f2, 0x68(r3)
/* 80585B9C C0610068 */ lfs         f3, 0x68(r1)
/* 80585BA0 38610014 */ addi        r3, r1, 0x14
/* 80585BA4 C021006C */ lfs         f1, 0x6c(r1)
/* 80585BA8 38810068 */ addi        r4, r1, 0x68
/* 80585BAC C0050004 */ lfs         f0, 4(r5)
/* 80585BB0 EC4300B2 */ fmuls       f2, f3, f2
/* 80585BB4 C0610070 */ lfs         f3, 0x70(r1)
/* 80585BB8 EC010032 */ fmuls       f0, f1, f0
/* 80585BBC C0250008 */ lfs         f1, 8(r5)
/* 80585BC0 EC230072 */ fmuls       f1, f3, f1
/* 80585BC4 EC02002A */ fadds       f0, f2, f0
/* 80585BC8 EFE1002A */ fadds       f31, f1, f0
/* 80585BCC 4BFB1C65 */ bl          VEC3_fromCross
/* 80585BD0 C0210014 */ lfs         f1, 0x14(r1)
/* 80585BD4 C0010018 */ lfs         f0, 0x18(r1)
/* 80585BD8 EC210072 */ fmuls       f1, f1, f1
/* 80585BDC C041001C */ lfs         f2, 0x1c(r1)
/* 80585BE0 EC000032 */ fmuls       f0, f0, f0
/* 80585BE4 EC4200B2 */ fmuls       f2, f2, f2
/* 80585BE8 EC01002A */ fadds       f0, f1, f0
/* 80585BEC EC22002A */ fadds       f1, f2, f0
/* 80585BF0 4BCA9C1D */ bl          sqrt__Q23EGG5MathfFf
/* 80585BF4 FC40F890 */ fmr         f2, f31
/* 80585BF8 4BCA9CED */ bl          atan2_Q23EGG5MathfFff
/* 80585BFC C01F0000 */ lfs         f0, 0(r31)
/* 80585C00 FC010040 */ fcmpo       cr0, f1, f0
/* 80585C04 40810008 */ ble-        lbl_80585c0c
/* 80585C08 48000008 */ b           lbl_80585c10
lbl_80585c0c:
/* 80585C0C FC200850 */ fneg        f1, f1
lbl_80585c10:
/* 80585C10 C01F0058 */ lfs         f0, 0x58(r31)
/* 80585C14 3C60808B */ lis         r3, lbl_808b5a00@ha
/* 80585C18 C3A35A00 */ lfs         f29, lbl_808b5a00@l(r3)
/* 80585C1C 7FC3F378 */ mr          r3, r30
/* 80585C20 EFC00072 */ fmuls       f30, f0, f1
/* 80585C24 C3FF0004 */ lfs         f31, 4(r31)
/* 80585C28 4800AB55 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80585C2C 3CA0802A */ lis         r5, RKSystem_ey@ha
/* 80585C30 C0630044 */ lfs         f3, 0x44(r3)
/* 80585C34 38854130 */ addi        r4, r5, RKSystem_ey@l
/* 80585C38 C0454130 */ lfs         f2, RKSystem_ey@l(r5)
/* 80585C3C C0230048 */ lfs         f1, 0x48(r3)
/* 80585C40 C0040004 */ lfs         f0, 4(r4)
/* 80585C44 EC4300B2 */ fmuls       f2, f3, f2
/* 80585C48 C083004C */ lfs         f4, 0x4c(r3)
/* 80585C4C EC210032 */ fmuls       f1, f1, f0
/* 80585C50 C0640008 */ lfs         f3, 8(r4)
/* 80585C54 C01F00E4 */ lfs         f0, 0xe4(r31)
/* 80585C58 EC6400F2 */ fmuls       f3, f4, f3
/* 80585C5C EC22082A */ fadds       f1, f2, f1
/* 80585C60 EC23082A */ fadds       f1, f3, f1
/* 80585C64 FC010040 */ fcmpo       cr0, f1, f0
/* 80585C68 40800014 */ bge-        lbl_80585c7c
/* 80585C6C C03F001C */ lfs         f1, 0x1c(r31)
/* 80585C70 C01F0074 */ lfs         f0, 0x74(r31)
/* 80585C74 EFBD0072 */ fmuls       f29, f29, f1
/* 80585C78 EFFF0032 */ fmuls       f31, f31, f0
lbl_80585c7c:
/* 80585C7C FC1EE840 */ fcmpo       cr0, f30, f29
/* 80585C80 40810184 */ ble-        lbl_80585e04
/* 80585C84 3C60809C */ lis         r3, spInstance__Q26System10RaceConfig@ha
/* 80585C88 8063D728 */ lwz         r3, spInstance__Q26System10RaceConfig@l(r3)
/* 80585C8C 80030B68 */ lwz         r0, 0xb68(r3)
/* 80585C90 2C00000F */ cmpwi       r0, 0xf
/* 80585C94 3C80808B */ lis         r4, lbl_808b5a00@ha
/* 80585C98 7FC3F378 */ mr          r3, r30
/* 80585C9C C0245A00 */ lfs         f1, lbl_808b5a00@l(r4)
/* 80585CA0 3BA45A00 */ addi        r29, r4, lbl_808b5a00@l
/* 80585CA4 C01D000C */ lfs         f0, 0xc(r29)
/* 80585CA8 EC3E0828 */ fsubs       f1, f30, f1
/* 80585CAC EFA00072 */ fmuls       f29, f0, f1
/* 80585CB0 4800AACD */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80585CB4 C00300B4 */ lfs         f0, 0xb4(r3)
/* 80585CB8 38610058 */ addi        r3, r1, 0x58
/* 80585CBC C03F0000 */ lfs         f1, 0(r31)
/* 80585CC0 ECBD0032 */ fmuls       f5, f29, f0
/* 80585CC4 C09D0008 */ lfs         f4, 8(r29)
/* 80585CC8 C05F0054 */ lfs         f2, 0x54(r31)
/* 80585CCC FC600890 */ fmr         f3, f1
/* 80585CD0 C01E0010 */ lfs         f0, 0x10(r30)
/* 80585CD4 EC84282A */ fadds       f4, f4, f5
/* 80585CD8 EC8407F2 */ fmuls       f4, f4, f31
/* 80585CDC EC420132 */ fmuls       f2, f2, f4
/* 80585CE0 EC420032 */ fmuls       f2, f2, f0
/* 80585CE4 4BCB4275 */ bl          setRPY__Q23EGG5QuatfFfff
/* 80585CE8 7FC3F378 */ mr          r3, r30
/* 80585CEC 4800A6E1 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80585CF0 7C641B78 */ mr          r4, r3
/* 80585CF4 C14300FC */ lfs         f10, 0xfc(r3)
/* 80585CF8 C0010064 */ lfs         f0, 0x64(r1)
/* 80585CFC 38610048 */ addi        r3, r1, 0x48
/* 80585D00 C3E400F0 */ lfs         f31, 0xf0(r4)
/* 80585D04 C1A10058 */ lfs         f13, 0x58(r1)
/* 80585D08 ECEA0032 */ fmuls       f7, f10, f0
/* 80585D0C C18400F4 */ lfs         f12, 0xf4(r4)
/* 80585D10 ECBF0032 */ fmuls       f5, f31, f0
/* 80585D14 C161005C */ lfs         f11, 0x5c(r1)
/* 80585D18 EC8A0372 */ fmuls       f4, f10, f13
/* 80585D1C C12400F8 */ lfs         f9, 0xf8(r4)
/* 80585D20 C1010060 */ lfs         f8, 0x60(r1)
/* 80585D24 ECDF0372 */ fmuls       f6, f31, f13
/* 80585D28 ECA5202A */ fadds       f5, f5, f4
/* 80585D2C EC6C0032 */ fmuls       f3, f12, f0
/* 80585D30 EC4A02F2 */ fmuls       f2, f10, f11
/* 80585D34 EC290032 */ fmuls       f1, f9, f0
/* 80585D38 EC0A0232 */ fmuls       f0, f10, f8
/* 80585D3C ED473028 */ fsubs       f10, f7, f6
/* 80585D40 ECEC02F2 */ fmuls       f7, f12, f11
/* 80585D44 EC63102A */ fadds       f3, f3, f2
/* 80585D48 EC01002A */ fadds       f0, f1, f0
/* 80585D4C ECCC0232 */ fmuls       f6, f12, f8
/* 80585D50 ED4A3828 */ fsubs       f10, f10, f7
/* 80585D54 EC290232 */ fmuls       f1, f9, f8
/* 80585D58 ECE6282A */ fadds       f7, f6, f5
/* 80585D5C EC890372 */ fmuls       f4, f9, f13
/* 80585D60 EC5F02F2 */ fmuls       f2, f31, f11
/* 80585D64 ECC902F2 */ fmuls       f6, f9, f11
/* 80585D68 ECA4182A */ fadds       f5, f4, f3
/* 80585D6C EC82002A */ fadds       f4, f2, f0
/* 80585D70 EC7F0232 */ fmuls       f3, f31, f8
/* 80585D74 EC0C0372 */ fmuls       f0, f12, f13
/* 80585D78 EC2A0828 */ fsubs       f1, f10, f1
/* 80585D7C EC473028 */ fsubs       f2, f7, f6
/* 80585D80 EC651828 */ fsubs       f3, f5, f3
/* 80585D84 EC840028 */ fsubs       f4, f4, f0
/* 80585D88 4BCB4075 */ bl          set__Q23EGG5QuatfFffff
/* 80585D8C 38610048 */ addi        r3, r1, 0x48
/* 80585D90 4BCB43D9 */ bl          normalise__Q23EGG5QuatfFv
/* 80585D94 7FC3F378 */ mr          r3, r30
/* 80585D98 4800A635 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80585D9C 3C80802A */ lis         r4, lbl_802a4100@ha
/* 80585DA0 C0044100 */ lfs         f0, lbl_802a4100@l(r4)
/* 80585DA4 38844100 */ addi        r4, r4, lbl_802a4100@l
/* 80585DA8 D00300A4 */ stfs        f0, 0xa4(r3)
/* 80585DAC C0040004 */ lfs         f0, 4(r4)
/* 80585DB0 D00300A8 */ stfs        f0, 0xa8(r3)
/* 80585DB4 C0040008 */ lfs         f0, 8(r4)
/* 80585DB8 D00300AC */ stfs        f0, 0xac(r3)
/* 80585DBC 7FC3F378 */ mr          r3, r30
/* 80585DC0 4800A60D */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80585DC4 C0010048 */ lfs         f0, 0x48(r1)
/* 80585DC8 D0030100 */ stfs        f0, 0x100(r3)
/* 80585DCC FC600018 */ frsp        f3, f0
/* 80585DD0 C001004C */ lfs         f0, 0x4c(r1)
/* 80585DD4 D0030104 */ stfs        f0, 0x104(r3)
/* 80585DD8 FC400018 */ frsp        f2, f0
/* 80585DDC C0010050 */ lfs         f0, 0x50(r1)
/* 80585DE0 D0030108 */ stfs        f0, 0x108(r3)
/* 80585DE4 FC200018 */ frsp        f1, f0
/* 80585DE8 C0010054 */ lfs         f0, 0x54(r1)
/* 80585DEC D003010C */ stfs        f0, 0x10c(r3)
/* 80585DF0 FC000018 */ frsp        f0, f0
/* 80585DF4 D06300F0 */ stfs        f3, 0xf0(r3)
/* 80585DF8 D04300F4 */ stfs        f2, 0xf4(r3)
/* 80585DFC D02300F8 */ stfs        f1, 0xf8(r3)
/* 80585E00 D00300FC */ stfs        f0, 0xfc(r3)
lbl_80585e04:
/* 80585E04 809E0000 */ lwz         r4, 0(r30)
/* 80585E08 7FC3F378 */ mr          r3, r30
/* 80585E0C 80840004 */ lwz         r4, 4(r4)
/* 80585E10 80040004 */ lwz         r0, 4(r4)
/* 80585E14 54000356 */ rlwinm      r0, r0, 0, 0xd, 0xb
/* 80585E18 90040004 */ stw         r0, 4(r4)
/* 80585E1C 480002A1 */ bl          unk_805860bc
/* 80585E20 809E0000 */ lwz         r4, 0(r30)
/* 80585E24 80840004 */ lwz         r4, 4(r4)
/* 80585E28 8004000C */ lwz         r0, 0xc(r4)
/* 80585E2C 54000529 */ rlwinm.     r0, r0, 0, 0x14, 0x14
/* 80585E30 40820258 */ bne-        lbl_80586088
/* 80585E34 2C030000 */ cmpwi       r3, 0
/* 80585E38 40820250 */ bne-        lbl_80586088
/* 80585E3C 7FC3F378 */ mr          r3, r30
/* 80585E40 4800A93D */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80585E44 80830000 */ lwz         r4, 0(r3)
/* 80585E48 80840004 */ lwz         r4, 4(r4)
/* 80585E4C 80040008 */ lwz         r0, 8(r4)
/* 80585E50 54000104 */ rlwinm      r0, r0, 0, 4, 2
/* 80585E54 90040008 */ stw         r0, 8(r4)
/* 80585E58 80830000 */ lwz         r4, 0(r3)
/* 80585E5C 80840004 */ lwz         r4, 4(r4)
/* 80585E60 8004000C */ lwz         r0, 0xc(r4)
/* 80585E64 54000566 */ rlwinm      r0, r0, 0, 0x15, 0x13
/* 80585E68 9004000C */ stw         r0, 0xc(r4)
/* 80585E6C 80630000 */ lwz         r3, 0(r3)
/* 80585E70 80630004 */ lwz         r3, 4(r3)
/* 80585E74 8003000C */ lwz         r0, 0xc(r3)
/* 80585E78 54000188 */ rlwinm      r0, r0, 0, 6, 4
/* 80585E7C 9003000C */ stw         r0, 0xc(r3)
/* 80585E80 48000208 */ b           lbl_80586088
lbl_80585e84:
/* 80585E84 54A00109 */ rlwinm.     r0, r5, 0, 4, 4
/* 80585E88 41820200 */ beq-        lbl_80586088
/* 80585E8C 70A01600 */ andi.       r0, r5, 0x1600
/* 80585E90 408201F8 */ bne-        lbl_80586088
/* 80585E94 4800A8E9 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80585E98 80830068 */ lwz         r4, 0x68(r3)
/* 80585E9C 8003006C */ lwz         r0, 0x6c(r3)
/* 80585EA0 9001003C */ stw         r0, 0x3c(r1)
/* 80585EA4 90810038 */ stw         r4, 0x38(r1)
/* 80585EA8 80030070 */ lwz         r0, 0x70(r3)
/* 80585EAC 7FC3F378 */ mr          r3, r30
/* 80585EB0 90010040 */ stw         r0, 0x40(r1)
/* 80585EB4 4800A8C9 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80585EB8 80830044 */ lwz         r4, 0x44(r3)
/* 80585EBC 80030048 */ lwz         r0, 0x48(r3)
/* 80585EC0 90010030 */ stw         r0, 0x30(r1)
/* 80585EC4 C07F0000 */ lfs         f3, 0(r31)
/* 80585EC8 9081002C */ stw         r4, 0x2c(r1)
/* 80585ECC EC0300F2 */ fmuls       f0, f3, f3
/* 80585ED0 8003004C */ lwz         r0, 0x4c(r3)
/* 80585ED4 C021002C */ lfs         f1, 0x2c(r1)
/* 80585ED8 90010034 */ stw         r0, 0x34(r1)
/* 80585EDC EC210072 */ fmuls       f1, f1, f1
/* 80585EE0 C0410034 */ lfs         f2, 0x34(r1)
/* 80585EE4 D0610030 */ stfs        f3, 0x30(r1)
/* 80585EE8 EC4200B2 */ fmuls       f2, f2, f2
/* 80585EEC EC01002A */ fadds       f0, f1, f0
/* 80585EF0 EC22002A */ fadds       f1, f2, f0
/* 80585EF4 4BCA9919 */ bl          sqrt__Q23EGG5MathfFf
/* 80585EF8 C01F0000 */ lfs         f0, 0(r31)
/* 80585EFC FC010040 */ fcmpo       cr0, f1, f0
/* 80585F00 40810188 */ ble-        lbl_80586088
/* 80585F04 7FC3F378 */ mr          r3, r30
/* 80585F08 4800ADF1 */ bl          getVehicleSpeed__Q24Kart15KartObjectProxyFv
/* 80585F0C C01F0000 */ lfs         f0, 0(r31)
/* 80585F10 FC010040 */ fcmpo       cr0, f1, f0
/* 80585F14 40810174 */ ble-        lbl_80586088
/* 80585F18 3861002C */ addi        r3, r1, 0x2c
/* 80585F1C 4BCBDBC1 */ bl          normalise__Q23EGG8Vector3fFv
/* 80585F20 38610038 */ addi        r3, r1, 0x38
/* 80585F24 38A1002C */ addi        r5, r1, 0x2c
/* 80585F28 7C641B78 */ mr          r4, r3
/* 80585F2C 38C00001 */ li          r6, 1
/* 80585F30 48028ABD */ bl          VEC3_perpInPlane
/* 80585F34 C021003C */ lfs         f1, 0x3c(r1)
/* 80585F38 C01F0000 */ lfs         f0, 0(r31)
/* 80585F3C FC010040 */ fcmpo       cr0, f1, f0
/* 80585F40 40810148 */ ble-        lbl_80586088
/* 80585F44 3C60802A */ lis         r3, RKSystem_ey@ha
/* 80585F48 C0410038 */ lfs         f2, 0x38(r1)
/* 80585F4C 38834130 */ addi        r4, r3, RKSystem_ey@l
/* 80585F50 C0634130 */ lfs         f3, RKSystem_ey@l(r3)
/* 80585F54 C0240004 */ lfs         f1, 4(r4)
/* 80585F58 38610008 */ addi        r3, r1, 8
/* 80585F5C C001003C */ lfs         f0, 0x3c(r1)
/* 80585F60 EC4300B2 */ fmuls       f2, f3, f2
/* 80585F64 C0640008 */ lfs         f3, 8(r4)
/* 80585F68 38A10038 */ addi        r5, r1, 0x38
/* 80585F6C EC010032 */ fmuls       f0, f1, f0
/* 80585F70 C0210040 */ lfs         f1, 0x40(r1)
/* 80585F74 EC230072 */ fmuls       f1, f3, f1
/* 80585F78 EC02002A */ fadds       f0, f2, f0
/* 80585F7C EFE1002A */ fadds       f31, f1, f0
/* 80585F80 4BFB18B1 */ bl          VEC3_fromCross
/* 80585F84 C0210008 */ lfs         f1, 8(r1)
/* 80585F88 C001000C */ lfs         f0, 0xc(r1)
/* 80585F8C EC210072 */ fmuls       f1, f1, f1
/* 80585F90 C0410010 */ lfs         f2, 0x10(r1)
/* 80585F94 EC000032 */ fmuls       f0, f0, f0
/* 80585F98 EC4200B2 */ fmuls       f2, f2, f2
/* 80585F9C EC01002A */ fadds       f0, f1, f0
/* 80585FA0 EC22002A */ fadds       f1, f2, f0
/* 80585FA4 4BCA9869 */ bl          sqrt__Q23EGG5MathfFf
/* 80585FA8 FC40F890 */ fmr         f2, f31
/* 80585FAC 4BCA9939 */ bl          atan2_Q23EGG5MathfFff
/* 80585FB0 C01F0000 */ lfs         f0, 0(r31)
/* 80585FB4 FC010040 */ fcmpo       cr0, f1, f0
/* 80585FB8 3C60802A */ lis         r3, RKSystem_ey@ha
/* 80585FBC C001003C */ lfs         f0, 0x3c(r1)
/* 80585FC0 38834130 */ addi        r4, r3, RKSystem_ey@l
/* 80585FC4 C0E34130 */ lfs         f7, RKSystem_ey@l(r3)
/* 80585FC8 C0440008 */ lfs         f2, 8(r4)
/* 80585FCC 7FC3F378 */ mr          r3, r30
/* 80585FD0 C0810038 */ lfs         f4, 0x38(r1)
/* 80585FD4 ECC70032 */ fmuls       f6, f7, f0
/* 80585FD8 C0A40004 */ lfs         f5, 4(r4)
/* 80585FDC EC020032 */ fmuls       f0, f2, f0
/* 80585FE0 EC620132 */ fmuls       f3, f2, f4
/* 80585FE4 C0210040 */ lfs         f1, 0x40(r1)
/* 80585FE8 EC850132 */ fmuls       f4, f5, f4
/* 80585FEC EC470072 */ fmuls       f2, f7, f1
/* 80585FF0 EC250072 */ fmuls       f1, f5, f1
/* 80585FF4 EC862028 */ fsubs       f4, f6, f4
/* 80585FF8 EC431028 */ fsubs       f2, f3, f2
/* 80585FFC EC010028 */ fsubs       f0, f1, f0
/* 80586000 D0810028 */ stfs        f4, 0x28(r1)
/* 80586004 D0010020 */ stfs        f0, 0x20(r1)
/* 80586008 D0410024 */ stfs        f2, 0x24(r1)
/* 8058600C 4800A771 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80586010 C0610020 */ lfs         f3, 0x20(r1)
/* 80586014 C0430044 */ lfs         f2, 0x44(r3)
/* 80586018 C0210024 */ lfs         f1, 0x24(r1)
/* 8058601C C0030048 */ lfs         f0, 0x48(r3)
/* 80586020 EC4300B2 */ fmuls       f2, f3, f2
/* 80586024 C0810028 */ lfs         f4, 0x28(r1)
/* 80586028 EC210032 */ fmuls       f1, f1, f0
/* 8058602C C063004C */ lfs         f3, 0x4c(r3)
/* 80586030 C01F0000 */ lfs         f0, 0(r31)
/* 80586034 EC6400F2 */ fmuls       f3, f4, f3
/* 80586038 EC22082A */ fadds       f1, f2, f1
/* 8058603C EC23082A */ fadds       f1, f3, f1
/* 80586040 FC010040 */ fcmpo       cr0, f1, f0
/* 80586044 4081000C */ ble-        lbl_80586050
/* 80586048 C01F0004 */ lfs         f0, 4(r31)
/* 8058604C 48000008 */ b           lbl_80586054
lbl_80586050:
/* 80586050 C01F000C */ lfs         f0, 0xc(r31)
lbl_80586054:
/* 80586054 D01E0010 */ stfs        f0, 0x10(r30)
/* 80586058 38000000 */ li          r0, 0
/* 8058605C 807E0000 */ lwz         r3, 0(r30)
/* 80586060 80830004 */ lwz         r4, 4(r3)
/* 80586064 80640004 */ lwz         r3, 4(r4)
/* 80586068 54630356 */ rlwinm      r3, r3, 0, 0xd, 0xb
/* 8058606C 90640004 */ stw         r3, 4(r4)
/* 80586070 807E0000 */ lwz         r3, 0(r30)
/* 80586074 80830004 */ lwz         r4, 4(r3)
/* 80586078 80640008 */ lwz         r3, 8(r4)
/* 8058607C 64631000 */ oris        r3, r3, 0x1000
/* 80586080 90640008 */ stw         r3, 8(r4)
/* 80586084 901E0014 */ stw         r0, 0x14(r30)
lbl_80586088:
/* 80586088 E3E100B8 */ psq_l       f31, 0xb8(r1), 0, 0
/* 8058608C CBE100B0 */ lfd         f31, 0xb0(r1)
/* 80586090 E3C100A8 */ psq_l       f30, 0xa8(r1), 0, 0
/* 80586094 CBC100A0 */ lfd         f30, 0xa0(r1)
/* 80586098 E3A10098 */ psq_l       f29, 0x98(r1), 0, 0
/* 8058609C CBA10090 */ lfd         f29, 0x90(r1)
/* 805860A0 83E1008C */ lwz         r31, 0x8c(r1)
/* 805860A4 83C10088 */ lwz         r30, 0x88(r1)
/* 805860A8 800100C4 */ lwz         r0, 0xc4(r1)
/* 805860AC 83A10084 */ lwz         r29, 0x84(r1)
/* 805860B0 7C0803A6 */ mtlr        r0
/* 805860B4 382100C0 */ addi        r1, r1, 0xc0
/* 805860B8 4E800020 */ blr         