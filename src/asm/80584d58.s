nofralloc
/* 80584D58 9421FF40 */ stwu        r1, -0xc0(r1)
/* 80584D5C 7C0802A6 */ mflr        r0
/* 80584D60 900100C4 */ stw         r0, 0xc4(r1)
/* 80584D64 DBE100B0 */ stfd        f31, 0xb0(r1)
/* 80584D68 F3E100B8 */ psq_st      f31, 0xb8(r1), 0, 0
/* 80584D6C 3881005C */ addi        r4, r1, 0x5c
/* 80584D70 38A10050 */ addi        r5, r1, 0x50
/* 80584D74 93E100AC */ stw         r31, 0xac(r1)
/* 80584D78 3FE08089 */ lis         r31, lbl_80891a00@ha
/* 80584D7C 3BFF1A00 */ addi        r31, r31, lbl_80891a00@l
/* 80584D80 93C100A8 */ stw         r30, 0xa8(r1)
/* 80584D84 7C7E1B78 */ mr          r30, r3
/* 80584D88 93A100A4 */ stw         r29, 0xa4(r1)
/* 80584D8C 48000611 */ bl          PlayerPointers_getCannonPosAndDir
/* 80584D90 80A1005C */ lwz         r5, 0x5c(r1)
/* 80584D94 38610044 */ addi        r3, r1, 0x44
/* 80584D98 80810060 */ lwz         r4, 0x60(r1)
/* 80584D9C 80010064 */ lwz         r0, 0x64(r1)
/* 80584DA0 90A10044 */ stw         r5, 0x44(r1)
/* 80584DA4 90810048 */ stw         r4, 0x48(r1)
/* 80584DA8 C0610044 */ lfs         f3, 0x44(r1)
/* 80584DAC 9001004C */ stw         r0, 0x4c(r1)
/* 80584DB0 C0410048 */ lfs         f2, 0x48(r1)
/* 80584DB4 C01E01E8 */ lfs         f0, 0x1e8(r30)
/* 80584DB8 C021004C */ lfs         f1, 0x4c(r1)
/* 80584DBC EC630028 */ fsubs       f3, f3, f0
/* 80584DC0 D0610044 */ stfs        f3, 0x44(r1)
/* 80584DC4 C01E01EC */ lfs         f0, 0x1ec(r30)
/* 80584DC8 EC420028 */ fsubs       f2, f2, f0
/* 80584DCC D0410048 */ stfs        f2, 0x48(r1)
/* 80584DD0 C01E01F0 */ lfs         f0, 0x1f0(r30)
/* 80584DD4 EC210028 */ fsubs       f1, f1, f0
/* 80584DD8 D021004C */ stfs        f1, 0x4c(r1)
/* 80584DDC C01E020C */ lfs         f0, 0x20c(r30)
/* 80584DE0 EC030028 */ fsubs       f0, f3, f0
/* 80584DE4 D0010044 */ stfs        f0, 0x44(r1)
/* 80584DE8 C01E0210 */ lfs         f0, 0x210(r30)
/* 80584DEC 80010044 */ lwz         r0, 0x44(r1)
/* 80584DF0 EC020028 */ fsubs       f0, f2, f0
/* 80584DF4 D0010048 */ stfs        f0, 0x48(r1)
/* 80584DF8 C01E0214 */ lfs         f0, 0x214(r30)
/* 80584DFC 80810048 */ lwz         r4, 0x48(r1)
/* 80584E00 EC010028 */ fsubs       f0, f1, f0
/* 80584E04 90010038 */ stw         r0, 0x38(r1)
/* 80584E08 D001004C */ stfs        f0, 0x4c(r1)
/* 80584E0C 8001004C */ lwz         r0, 0x4c(r1)
/* 80584E10 9081003C */ stw         r4, 0x3c(r1)
/* 80584E14 90010040 */ stw         r0, 0x40(r1)
/* 80584E18 4BCBECC5 */ bl          normalise__Q23EGG8Vector3fFv
/* 80584E1C C01F0000 */ lfs         f0, 0(r31)
/* 80584E20 FFE00890 */ fmr         f31, f1
/* 80584E24 D001003C */ stfs        f0, 0x3c(r1)
/* 80584E28 38610038 */ addi        r3, r1, 0x38
/* 80584E2C 4BCBECB1 */ bl          normalise__Q23EGG8Vector3fFv
/* 80584E30 809E01F4 */ lwz         r4, 0x1f4(r30)
/* 80584E34 3861002C */ addi        r3, r1, 0x2c
/* 80584E38 801E01F8 */ lwz         r0, 0x1f8(r30)
/* 80584E3C 90010030 */ stw         r0, 0x30(r1)
/* 80584E40 C01F0000 */ lfs         f0, 0(r31)
/* 80584E44 9081002C */ stw         r4, 0x2c(r1)
/* 80584E48 801E01FC */ lwz         r0, 0x1fc(r30)
/* 80584E4C 90010034 */ stw         r0, 0x34(r1)
/* 80584E50 D0010030 */ stfs        f0, 0x30(r1)
/* 80584E54 4BCBEC89 */ bl          normalise__Q23EGG8Vector3fFv
/* 80584E58 C03F0004 */ lfs         f1, 4(r31)
/* 80584E5C 3CA08038 */ lis         r5, ey__Q23EGG8Vector3f@ha
/* 80584E60 C01F00D8 */ lfs         f0, 0xd8(r31)
/* 80584E64 38610068 */ addi        r3, r1, 0x68
/* 80584E68 D03E00B0 */ stfs        f1, 0xb0(r30)
/* 80584E6C 38810044 */ addi        r4, r1, 0x44
/* 80584E70 38A54BD0 */ addi        r5, r5, ey__Q23EGG8Vector3f@l
/* 80584E74 D01E00B4 */ stfs        f0, 0xb4(r30)
/* 80584E78 4802993D */ bl          unk_805ae7b4
/* 80584E7C C01F0070 */ lfs         f0, 0x70(r31)
/* 80584E80 3C80802A */ lis         r4, RKSystem_ey@ha
/* 80584E84 38644130 */ addi        r3, r4, RKSystem_ey@l
/* 80584E88 C0610088 */ lfs         f3, 0x88(r1)
/* 80584E8C C0444130 */ lfs         f2, RKSystem_ey@l(r4)
/* 80584E90 FC1F0040 */ fcmpo       cr0, f31, f0
/* 80584E94 C0210078 */ lfs         f1, 0x78(r1)
/* 80584E98 ECE300B2 */ fmuls       f7, f3, f2
/* 80584E9C C0010068 */ lfs         f0, 0x68(r1)
/* 80584EA0 EC8100B2 */ fmuls       f4, f1, f2
/* 80584EA4 C061008C */ lfs         f3, 0x8c(r1)
/* 80584EA8 EC2000B2 */ fmuls       f1, f0, f2
/* 80584EAC C0A30004 */ lfs         f5, 4(r3)
/* 80584EB0 C001006C */ lfs         f0, 0x6c(r1)
/* 80584EB4 ECC30172 */ fmuls       f6, f3, f5
/* 80584EB8 C041007C */ lfs         f2, 0x7c(r1)
/* 80584EBC EC000172 */ fmuls       f0, f0, f5
/* 80584EC0 C1010090 */ lfs         f8, 0x90(r1)
/* 80584EC4 EC620172 */ fmuls       f3, f2, f5
/* 80584EC8 C1230008 */ lfs         f9, 8(r3)
/* 80584ECC C0A10080 */ lfs         f5, 0x80(r1)
/* 80584ED0 ECC7302A */ fadds       f6, f7, f6
/* 80584ED4 C0410070 */ lfs         f2, 0x70(r1)
/* 80584ED8 ED080272 */ fmuls       f8, f8, f9
/* 80584EDC EC64182A */ fadds       f3, f4, f3
/* 80584EE0 ECA50272 */ fmuls       f5, f5, f9
/* 80584EE4 EC88302A */ fadds       f4, f8, f6
/* 80584EE8 EC420272 */ fmuls       f2, f2, f9
/* 80584EEC EC65182A */ fadds       f3, f5, f3
/* 80584EF0 D09E0040 */ stfs        f4, 0x40(r30)
/* 80584EF4 EC01002A */ fadds       f0, f1, f0
/* 80584EF8 D07E003C */ stfs        f3, 0x3c(r30)
/* 80584EFC EC02002A */ fadds       f0, f2, f0
/* 80584F00 D07E0048 */ stfs        f3, 0x48(r30)
/* 80584F04 D01E0038 */ stfs        f0, 0x38(r30)
/* 80584F08 D01E0044 */ stfs        f0, 0x44(r30)
/* 80584F0C D09E004C */ stfs        f4, 0x4c(r30)
/* 80584F10 41800040 */ blt-        lbl_80584f50
/* 80584F14 C0610038 */ lfs         f3, 0x38(r1)
/* 80584F18 C041002C */ lfs         f2, 0x2c(r1)
/* 80584F1C C021003C */ lfs         f1, 0x3c(r1)
/* 80584F20 C0010030 */ lfs         f0, 0x30(r1)
/* 80584F24 EC4300B2 */ fmuls       f2, f3, f2
/* 80584F28 C0810040 */ lfs         f4, 0x40(r1)
/* 80584F2C EC210032 */ fmuls       f1, f1, f0
/* 80584F30 C0610034 */ lfs         f3, 0x34(r1)
/* 80584F34 C01F0000 */ lfs         f0, 0(r31)
/* 80584F38 EC6400F2 */ fmuls       f3, f4, f3
/* 80584F3C EC22082A */ fadds       f1, f2, f1
/* 80584F40 EC23082A */ fadds       f1, f3, f1
/* 80584F44 FC010040 */ fcmpo       cr0, f1, f0
/* 80584F48 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 80584F4C 408200B8 */ bne-        lbl_80585004
lbl_80584f50:
/* 80584F50 809E0000 */ lwz         r4, 0(r30)
/* 80584F54 80640004 */ lwz         r3, 4(r4)
/* 80584F58 80030008 */ lwz         r0, 8(r3)
/* 80584F5C 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 80584F60 41820344 */ beq-        lbl_805852a4
/* 80584F64 80840004 */ lwz         r4, 4(r4)
/* 80584F68 7FC3F378 */ mr          r3, r30
/* 80584F6C 80040008 */ lwz         r0, 8(r4)
/* 80584F70 54000734 */ rlwinm      r0, r0, 0, 0x1c, 0x1a
/* 80584F74 90040008 */ stw         r0, 8(r4)
/* 80584F78 809E0000 */ lwz         r4, 0(r30)
/* 80584F7C 80840004 */ lwz         r4, 4(r4)
/* 80584F80 8004000C */ lwz         r0, 0xc(r4)
/* 80584F84 540006F2 */ rlwinm      r0, r0, 0, 0x1b, 0x19
/* 80584F88 9004000C */ stw         r0, 0xc(r4)
/* 80584F8C 809E0000 */ lwz         r4, 0(r30)
/* 80584F90 80840004 */ lwz         r4, 4(r4)
/* 80584F94 80040010 */ lwz         r0, 0x10(r4)
/* 80584F98 60000040 */ ori         r0, r0, 0x40
/* 80584F9C 90040010 */ stw         r0, 0x10(r4)
/* 80584FA0 C07E0020 */ lfs         f3, 0x20(r30)
/* 80584FA4 C05E01F4 */ lfs         f2, 0x1f4(r30)
/* 80584FA8 C03E01F8 */ lfs         f1, 0x1f8(r30)
/* 80584FAC C01E01FC */ lfs         f0, 0x1fc(r30)
/* 80584FB0 EC4300B2 */ fmuls       f2, f3, f2
/* 80584FB4 EC230072 */ fmuls       f1, f3, f1
/* 80584FB8 EC030032 */ fmuls       f0, f3, f0
/* 80584FBC D0410008 */ stfs        f2, 8(r1)
/* 80584FC0 D021000C */ stfs        f1, 0xc(r1)
/* 80584FC4 D0010010 */ stfs        f0, 0x10(r1)
/* 80584FC8 4800B405 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80584FCC C0010008 */ lfs         f0, 8(r1)
/* 80584FD0 38800000 */ li          r4, 0
/* 80584FD4 D003014C */ stfs        f0, 0x14c(r3)
/* 80584FD8 38A00000 */ li          r5, 0
/* 80584FDC C001000C */ lfs         f0, 0xc(r1)
/* 80584FE0 38C00001 */ li          r6, 1
/* 80584FE4 D0030150 */ stfs        f0, 0x150(r3)
/* 80584FE8 C0010010 */ lfs         f0, 0x10(r1)
/* 80584FEC D0030154 */ stfs        f0, 0x154(r3)
/* 80584FF0 7FC3F378 */ mr          r3, r30
/* 80584FF4 4800C05D */ bl          unk_80591050
/* 80584FF8 7FC3F378 */ mr          r3, r30
/* 80584FFC 4800BEDD */ bl          unk_80590ed8
/* 80585000 480002A4 */ b           lbl_805852a4
lbl_80585004:
/* 80585004 3C80802A */ lis         r4, lbl_802a4148@ha
/* 80585008 C0610088 */ lfs         f3, 0x88(r1)
/* 8058500C C0444148 */ lfs         f2, lbl_802a4148@l(r4)
/* 80585010 38644148 */ addi        r3, r4, lbl_802a4148@l
/* 80585014 C0210078 */ lfs         f1, 0x78(r1)
/* 80585018 3CA0809C */ lis         r5, spInstance__Q26System9CourseMap@ha
/* 8058501C ECE300B2 */ fmuls       f7, f3, f2
/* 80585020 C0010068 */ lfs         f0, 0x68(r1)
/* 80585024 EC8100B2 */ fmuls       f4, f1, f2
/* 80585028 C061008C */ lfs         f3, 0x8c(r1)
/* 8058502C EC2000B2 */ fmuls       f1, f0, f2
/* 80585030 C0A30004 */ lfs         f5, 4(r3)
/* 80585034 C001006C */ lfs         f0, 0x6c(r1)
/* 80585038 ECC30172 */ fmuls       f6, f3, f5
/* 8058503C C041007C */ lfs         f2, 0x7c(r1)
/* 80585040 EC000172 */ fmuls       f0, f0, f5
/* 80585044 C1230008 */ lfs         f9, 8(r3)
/* 80585048 EC620172 */ fmuls       f3, f2, f5
/* 8058504C C1010090 */ lfs         f8, 0x90(r1)
/* 80585050 C0A10080 */ lfs         f5, 0x80(r1)
/* 80585054 ECC7302A */ fadds       f6, f7, f6
/* 80585058 C0410070 */ lfs         f2, 0x70(r1)
/* 8058505C ED080272 */ fmuls       f8, f8, f9
/* 80585060 EC64182A */ fadds       f3, f4, f3
/* 80585064 807E0000 */ lwz         r3, 0(r30)
/* 80585068 ECA50272 */ fmuls       f5, f5, f9
/* 8058506C EC01002A */ fadds       f0, f1, f0
/* 80585070 EC420272 */ fmuls       f2, f2, f9
/* 80585074 EC88302A */ fadds       f4, f8, f6
/* 80585078 EC25182A */ fadds       f1, f5, f3
/* 8058507C EC02002A */ fadds       f0, f2, f0
/* 80585080 D09E0088 */ stfs        f4, 0x88(r30)
/* 80585084 D03E0084 */ stfs        f1, 0x84(r30)
/* 80585088 D01E0080 */ stfs        f0, 0x80(r30)
/* 8058508C 80830004 */ lwz         r4, 4(r3)
/* 80585090 8065D6E8 */ lwz         r3, spInstance__Q26System9CourseMap@l(r5)
/* 80585094 80040080 */ lwz         r0, 0x80(r4)
/* 80585098 5404043E */ clrlwi      r4, r0, 0x10
/* 8058509C 4BF93A45 */ bl          getCannonPoint__Q26System9CourseMapCFUs
/* 805850A0 80830000 */ lwz         r4, 0(r3)
/* 805850A4 3C60808B */ lis         r3, lbl_808b5ce8@ha
/* 805850A8 38635CE8 */ addi        r3, r3, lbl_808b5ce8@l
/* 805850AC A804001A */ lha         r0, 0x1a(r4)
/* 805850B0 2C000000 */ cmpwi       r0, 0
/* 805850B4 54002036 */ slwi        r0, r0, 4
/* 805850B8 7FA30214 */ add         r29, r3, r0
/* 805850BC 41810008 */ bgt-        lbl_805850c4
/* 805850C0 7C7D1B78 */ mr          r29, r3
lbl_805850c4:
/* 805850C4 C01E0014 */ lfs         f0, 0x14(r30)
/* 805850C8 D01E0020 */ stfs        f0, 0x20(r30)
/* 805850CC C01D0008 */ lfs         f0, 8(r29)
/* 805850D0 C0FD0000 */ lfs         f7, 0(r29)
/* 805850D4 FC1F0040 */ fcmpo       cr0, f31, f0
/* 805850D8 40800060 */ bge-        lbl_80585138
/* 805850DC EC9F0024 */ fdivs       f4, f31, f0
/* 805850E0 C01F0000 */ lfs         f0, 0(r31)
/* 805850E4 FC002040 */ fcmpo       cr0, f0, f4
/* 805850E8 40810008 */ ble-        lbl_805850f0
/* 805850EC FC800090 */ fmr         f4, f0
lbl_805850f0:
/* 805850F0 C07D000C */ lfs         f3, 0xc(r29)
/* 805850F4 C01F0000 */ lfs         f0, 0(r31)
/* 805850F8 FC030040 */ fcmpo       cr0, f3, f0
/* 805850FC 40810008 */ ble-        lbl_80585104
/* 80585100 48000008 */ b           lbl_80585108
lbl_80585104:
/* 80585104 C07E0014 */ lfs         f3, 0x14(r30)
lbl_80585108:
/* 80585108 C01D0000 */ lfs         f0, 0(r29)
/* 8058510C C03D000C */ lfs         f1, 0xc(r29)
/* 80585110 EC401828 */ fsubs       f2, f0, f3
/* 80585114 C01F0000 */ lfs         f0, 0(r31)
/* 80585118 FC010040 */ fcmpo       cr0, f1, f0
/* 8058511C EC0400B2 */ fmuls       f0, f4, f2
/* 80585120 ECE3002A */ fadds       f7, f3, f0
/* 80585124 40810014 */ ble-        lbl_80585138
/* 80585128 C01E0020 */ lfs         f0, 0x20(r30)
/* 8058512C FC070040 */ fcmpo       cr0, f7, f0
/* 80585130 40800008 */ bge-        lbl_80585138
/* 80585134 D0FE0020 */ stfs        f7, 0x20(r30)
lbl_80585138:
/* 80585138 C05E01F4 */ lfs         f2, 0x1f4(r30)
/* 8058513C C03E01F8 */ lfs         f1, 0x1f8(r30)
/* 80585140 C01E01FC */ lfs         f0, 0x1fc(r30)
/* 80585144 ECC700B2 */ fmuls       f6, f7, f2
/* 80585148 EC870072 */ fmuls       f4, f7, f1
/* 8058514C C0BE020C */ lfs         f5, 0x20c(r30)
/* 80585150 EC470032 */ fmuls       f2, f7, f0
/* 80585154 C07E0210 */ lfs         f3, 0x210(r30)
/* 80585158 C01E0214 */ lfs         f0, 0x214(r30)
/* 8058515C ECA5302A */ fadds       f5, f5, f6
/* 80585160 EC63202A */ fadds       f3, f3, f4
/* 80585164 C03F0000 */ lfs         f1, 0(r31)
/* 80585168 EC00102A */ fadds       f0, f0, f2
/* 8058516C D0BE020C */ stfs        f5, 0x20c(r30)
/* 80585170 D07E0210 */ stfs        f3, 0x210(r30)
/* 80585174 D01E0214 */ stfs        f0, 0x214(r30)
/* 80585178 C01D0004 */ lfs         f0, 4(r29)
/* 8058517C D0210028 */ stfs        f1, 0x28(r1)
/* 80585180 FC000840 */ fcmpo       cr0, f0, f1
/* 80585184 D0210024 */ stfs        f1, 0x24(r1)
/* 80585188 D0210020 */ stfs        f1, 0x20(r1)
/* 8058518C 40810054 */ ble-        lbl_805851e0
/* 80585190 C01E01E0 */ lfs         f0, 0x1e0(r30)
/* 80585194 C05F0004 */ lfs         f2, 4(r31)
/* 80585198 EC7F0024 */ fdivs       f3, f31, f0
/* 8058519C C03F00DC */ lfs         f1, 0xdc(r31)
/* 805851A0 C01F00E0 */ lfs         f0, 0xe0(r31)
/* 805851A4 EC421828 */ fsubs       f2, f2, f3
/* 805851A8 EC2100B2 */ fmuls       f1, f1, f2
/* 805851AC EC200072 */ fmuls       f1, f0, f1
/* 805851B0 4BAFFF61 */ bl          SinFIdx__Q24nw4r4mathFf
/* 805851B4 C01D0004 */ lfs         f0, 4(r29)
/* 805851B8 C05E0200 */ lfs         f2, 0x200(r30)
/* 805851BC EC600072 */ fmuls       f3, f0, f1
/* 805851C0 C03E0204 */ lfs         f1, 0x204(r30)
/* 805851C4 C01E0208 */ lfs         f0, 0x208(r30)
/* 805851C8 EC4300B2 */ fmuls       f2, f3, f2
/* 805851CC EC230072 */ fmuls       f1, f3, f1
/* 805851D0 EC030032 */ fmuls       f0, f3, f0
/* 805851D4 D0410020 */ stfs        f2, 0x20(r1)
/* 805851D8 D0210024 */ stfs        f1, 0x24(r1)
/* 805851DC D0010028 */ stfs        f0, 0x28(r1)
lbl_805851e0:
/* 805851E0 C07E01E8 */ lfs         f3, 0x1e8(r30)
/* 805851E4 7FC3F378 */ mr          r3, r30
/* 805851E8 C01E020C */ lfs         f0, 0x20c(r30)
/* 805851EC C05E01EC */ lfs         f2, 0x1ec(r30)
/* 805851F0 ECA3002A */ fadds       f5, f3, f0
/* 805851F4 C03E0210 */ lfs         f1, 0x210(r30)
/* 805851F8 C0010020 */ lfs         f0, 0x20(r1)
/* 805851FC EC82082A */ fadds       f4, f2, f1
/* 80585200 C07E01F0 */ lfs         f3, 0x1f0(r30)
/* 80585204 EC45002A */ fadds       f2, f5, f0
/* 80585208 C01E0214 */ lfs         f0, 0x214(r30)
/* 8058520C C0210024 */ lfs         f1, 0x24(r1)
/* 80585210 EC63002A */ fadds       f3, f3, f0
/* 80585214 C0010028 */ lfs         f0, 0x28(r1)
/* 80585218 EC24082A */ fadds       f1, f4, f1
/* 8058521C D0410014 */ stfs        f2, 0x14(r1)
/* 80585220 EC03002A */ fadds       f0, f3, f0
/* 80585224 D0210018 */ stfs        f1, 0x18(r1)
/* 80585228 D001001C */ stfs        f0, 0x1c(r1)
/* 8058522C 4800B1A1 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80585230 C0010014 */ lfs         f0, 0x14(r1)
/* 80585234 38810044 */ addi        r4, r1, 0x44
/* 80585238 D0030068 */ stfs        f0, 0x68(r3)
/* 8058523C C0010018 */ lfs         f0, 0x18(r1)
/* 80585240 D003006C */ stfs        f0, 0x6c(r3)
/* 80585244 C001001C */ lfs         f0, 0x1c(r1)
/* 80585248 D0030070 */ stfs        f0, 0x70(r3)
/* 8058524C 7FC3F378 */ mr          r3, r30
/* 80585250 C03F0038 */ lfs         f1, 0x38(r31)
/* 80585254 C07E01F4 */ lfs         f3, 0x1f4(r30)
/* 80585258 C05E01F8 */ lfs         f2, 0x1f8(r30)
/* 8058525C C01E01FC */ lfs         f0, 0x1fc(r30)
/* 80585260 D07E005C */ stfs        f3, 0x5c(r30)
/* 80585264 D05E0060 */ stfs        f2, 0x60(r30)
/* 80585268 D01E0064 */ stfs        f0, 0x64(r30)
/* 8058526C D07E0074 */ stfs        f3, 0x74(r30)
/* 80585270 D05E0078 */ stfs        f2, 0x78(r30)
/* 80585274 D01E007C */ stfs        f0, 0x7c(r30)
/* 80585278 48000345 */ bl          unk_805855bc
/* 8058527C 7FC3F378 */ mr          r3, r30
/* 80585280 4800B14D */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80585284 3C80802A */ lis         r4, lbl_802a4100@ha
/* 80585288 C0044100 */ lfs         f0, lbl_802a4100@l(r4)
/* 8058528C 38844100 */ addi        r4, r4, lbl_802a4100@l
/* 80585290 D0030074 */ stfs        f0, 0x74(r3)
/* 80585294 C0040004 */ lfs         f0, 4(r4)
/* 80585298 D0030078 */ stfs        f0, 0x78(r3)
/* 8058529C C0040008 */ lfs         f0, 8(r4)
/* 805852A0 D003007C */ stfs        f0, 0x7c(r3)
lbl_805852a4:
/* 805852A4 E3E100B8 */ psq_l       f31, 0xb8(r1), 0, 0
/* 805852A8 800100C4 */ lwz         r0, 0xc4(r1)
/* 805852AC CBE100B0 */ lfd         f31, 0xb0(r1)
/* 805852B0 83E100AC */ lwz         r31, 0xac(r1)
/* 805852B4 83C100A8 */ lwz         r30, 0xa8(r1)
/* 805852B8 83A100A4 */ lwz         r29, 0xa4(r1)
/* 805852BC 7C0803A6 */ mtlr        r0
/* 805852C0 382100C0 */ addi        r1, r1, 0xc0
/* 805852C4 4E800020 */ blr         