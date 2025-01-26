nofralloc
/* 80586E90 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80586E94 7C0802A6 */ mflr        r0
/* 80586E98 90010024 */ stw         r0, 0x24(r1)
/* 80586E9C DBE10010 */ stfd        f31, 0x10(r1)
/* 80586EA0 F3E10018 */ psq_st      f31, 0x18(r1), 0, 0
/* 80586EA4 3CA0809C */ lis         r5, spInstance__Q26System11RaceManager@ha
/* 80586EA8 38800002 */ li          r4, 2
/* 80586EAC 93E1000C */ stw         r31, 0xc(r1)
/* 80586EB0 3FE08089 */ lis         r31, lbl_80891a00@ha
/* 80586EB4 3BFF1A00 */ addi        r31, r31, lbl_80891a00@l
/* 80586EB8 93C10008 */ stw         r30, 8(r1)
/* 80586EBC 7C7E1B78 */ mr          r30, r3
/* 80586EC0 C3FF0038 */ lfs         f31, 0x38(r31)
/* 80586EC4 8065D730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r5)
/* 80586EC8 4BFAF369 */ bl          Raceinfo_isAtLeastStage
/* 80586ECC 2C030000 */ cmpwi       r3, 0
/* 80586ED0 41820080 */ beq-        lbl_80586f50
/* 80586ED4 807E0000 */ lwz         r3, 0(r30)
/* 80586ED8 80630004 */ lwz         r3, 4(r3)
/* 80586EDC 80830008 */ lwz         r4, 8(r3)
/* 80586EE0 74800204 */ andis.      r0, r4, 0x204
/* 80586EE4 4082008C */ bne-        lbl_80586f70
/* 80586EE8 C03E0028 */ lfs         f1, 0x28(r30)
/* 80586EEC C01F006C */ lfs         f0, 0x6c(r31)
/* 80586EF0 FC200A10 */ fabs        f1, f1
/* 80586EF4 FC010040 */ fcmpo       cr0, f1, f0
/* 80586EF8 4080004C */ bge-        lbl_80586f44
/* 80586EFC 80630004 */ lwz         r3, 4(r3)
/* 80586F00 5460035B */ rlwinm.     r0, r3, 0, 0xd, 0xd
/* 80586F04 41820040 */ beq-        lbl_80586f44
/* 80586F08 546007BF */ clrlwi.     r0, r3, 0x1e
/* 80586F0C 41820038 */ beq-        lbl_80586f44
/* 80586F10 548007FF */ clrlwi.     r0, r4, 0x1f
/* 80586F14 40820030 */ bne-        lbl_80586f44
/* 80586F18 54600675 */ rlwinm.     r0, r3, 0, 0x19, 0x1a
/* 80586F1C 41820028 */ beq-        lbl_80586f44
/* 80586F20 546007FF */ clrlwi.     r0, r3, 0x1f
/* 80586F24 4182000C */ beq-        lbl_80586f30
/* 80586F28 C03F0004 */ lfs         f1, 4(r31)
/* 80586F2C 48000008 */ b           lbl_80586f34
lbl_80586f30:
/* 80586F30 C03F000C */ lfs         f1, 0xc(r31)
lbl_80586f34:
/* 80586F34 C01F006C */ lfs         f0, 0x6c(r31)
/* 80586F38 EC000072 */ fmuls       f0, f0, f1
/* 80586F3C D01E0224 */ stfs        f0, 0x224(r30)
/* 80586F40 48000030 */ b           lbl_80586f70
lbl_80586f44:
/* 80586F44 C01E0028 */ lfs         f0, 0x28(r30)
/* 80586F48 D01E0224 */ stfs        f0, 0x224(r30)
/* 80586F4C 48000024 */ b           lbl_80586f70
lbl_80586f50:
/* 80586F50 807E0000 */ lwz         r3, 0(r30)
/* 80586F54 80630004 */ lwz         r3, 4(r3)
/* 80586F58 80030010 */ lwz         r0, 0x10(r3)
/* 80586F5C 540005EF */ rlwinm.     r0, r0, 0, 0x17, 0x17
/* 80586F60 40820010 */ bne-        lbl_80586f70
/* 80586F64 C01F0000 */ lfs         f0, 0(r31)
/* 80586F68 D01E0224 */ stfs        f0, 0x224(r30)
/* 80586F6C C3FF00FC */ lfs         f31, 0xfc(r31)
lbl_80586f70:
/* 80586F70 C01E0224 */ lfs         f0, 0x224(r30)
/* 80586F74 C03E0220 */ lfs         f1, 0x220(r30)
/* 80586F78 EC000828 */ fsubs       f0, f0, f1
/* 80586F7C EC1F0032 */ fmuls       f0, f31, f0
/* 80586F80 EC01002A */ fadds       f0, f1, f0
/* 80586F84 D01E0220 */ stfs        f0, 0x220(r30)
/* 80586F88 E3E10018 */ psq_l       f31, 0x18(r1), 0, 0
/* 80586F8C CBE10010 */ lfd         f31, 0x10(r1)
/* 80586F90 83E1000C */ lwz         r31, 0xc(r1)
/* 80586F94 83C10008 */ lwz         r30, 8(r1)
/* 80586F98 80010024 */ lwz         r0, 0x24(r1)
/* 80586F9C 7C0803A6 */ mtlr        r0
/* 80586FA0 38210020 */ addi        r1, r1, 0x20
/* 80586FA4 4E800020 */ blr         