nofralloc
/* 8057B028 9421FFD0 */ stwu        r1, -0x30(r1)
/* 8057B02C 7C0802A6 */ mflr        r0
/* 8057B030 90010034 */ stw         r0, 0x34(r1)
/* 8057B034 DBE10020 */ stfd        f31, 0x20(r1)
/* 8057B038 F3E10028 */ psq_st      f31, 0x28(r1), 0, 0
/* 8057B03C 93E1001C */ stw         r31, 0x1c(r1)
/* 8057B040 3FE08089 */ lis         r31, lbl_80891a00@ha
/* 8057B044 3BFF1A00 */ addi        r31, r31, lbl_80891a00@l
/* 8057B048 93C10018 */ stw         r30, 0x18(r1)
/* 8057B04C 7C7E1B78 */ mr          r30, r3
/* 8057B050 C3FF0000 */ lfs         f31, 0(r31)
/* 8057B054 C0030020 */ lfs         f0, 0x20(r3)
/* 8057B058 FC200210 */ fabs        f1, f0
/* 8057B05C C01F0070 */ lfs         f0, 0x70(r31)
/* 8057B060 FC010040 */ fcmpo       cr0, f1, f0
/* 8057B064 40800074 */ bge-        lbl_8057b0d8
/* 8057B068 C023003C */ lfs         f1, 0x3c(r3)
/* 8057B06C FC01F840 */ fcmpo       cr0, f1, f31
/* 8057B070 40810068 */ ble-        lbl_8057b0d8
/* 8057B074 C01F0004 */ lfs         f0, 4(r31)
/* 8057B078 EC200828 */ fsubs       f1, f0, f1
/* 8057B07C FC01F840 */ fcmpo       cr0, f1, f31
/* 8057B080 40810058 */ ble-        lbl_8057b0d8
/* 8057B084 C01F0074 */ lfs         f0, 0x74(r31)
/* 8057B088 EC210032 */ fmuls       f1, f1, f0
/* 8057B08C FC000840 */ fcmpo       cr0, f0, f1
/* 8057B090 40800008 */ bge-        lbl_8057b098
/* 8057B094 FC200090 */ fmr         f1, f0
lbl_8057b098:
/* 8057B098 EFFF082A */ fadds       f31, f31, f1
/* 8057B09C 7FC3F378 */ mr          r3, r30
/* 8057B0A0 38810008 */ addi        r4, r1, 8
/* 8057B0A4 48015BF1 */ bl          PlayerPointers_getBodyFront
/* 8057B0A8 C021000C */ lfs         f1, 0xc(r1)
/* 8057B0AC C01F0078 */ lfs         f0, 0x78(r31)
/* 8057B0B0 FC200850 */ fneg        f1, f1
/* 8057B0B4 FC000840 */ fcmpo       cr0, f0, f1
/* 8057B0B8 4081000C */ ble-        lbl_8057b0c4
/* 8057B0BC FC200090 */ fmr         f1, f0
/* 8057B0C0 48000014 */ b           lbl_8057b0d4
lbl_8057b0c4:
/* 8057B0C4 C01F001C */ lfs         f0, 0x1c(r31)
/* 8057B0C8 FC000840 */ fcmpo       cr0, f0, f1
/* 8057B0CC 40800008 */ bge-        lbl_8057b0d4
/* 8057B0D0 FC200090 */ fmr         f1, f0
lbl_8057b0d4:
/* 8057B0D4 EFFF0072 */ fmuls       f31, f31, f1
lbl_8057b0d8:
/* 8057B0D8 C01E0020 */ lfs         f0, 0x20(r30)
/* 8057B0DC FC20F890 */ fmr         f1, f31
/* 8057B0E0 EC00F82A */ fadds       f0, f0, f31
/* 8057B0E4 D01E0020 */ stfs        f0, 0x20(r30)
/* 8057B0E8 E3E10028 */ psq_l       f31, 0x28(r1), 0, 0
/* 8057B0EC CBE10020 */ lfd         f31, 0x20(r1)
/* 8057B0F0 83E1001C */ lwz         r31, 0x1c(r1)
/* 8057B0F4 83C10018 */ lwz         r30, 0x18(r1)
/* 8057B0F8 80010034 */ lwz         r0, 0x34(r1)
/* 8057B0FC 7C0803A6 */ mtlr        r0
/* 8057B100 38210030 */ addi        r1, r1, 0x30
/* 8057B104 4E800020 */ blr         