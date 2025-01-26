nofralloc
/* 80635E08 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80635E0C 7C0802A6 */ mflr        r0
/* 80635E10 90010014 */ stw         r0, 0x14(r1)
/* 80635E14 93E1000C */ stw         r31, 0xc(r1)
/* 80635E18 3BE00000 */ li          r31, 0
/* 80635E1C 93C10008 */ stw         r30, 8(r1)
/* 80635E20 7C9E2378 */ mr          r30, r4
/* 80635E24 80630000 */ lwz         r3, 0(r3)
/* 80635E28 4BFED161 */ bl          unk_80622f88
/* 80635E2C 2C030000 */ cmpwi       r3, 0
/* 80635E30 4082000C */ bne-        lbl_80635e3c
/* 80635E34 2C1E0000 */ cmpwi       r30, 0
/* 80635E38 41820008 */ beq-        lbl_80635e40
lbl_80635e3c:
/* 80635E3C 3BE00001 */ li          r31, 1
lbl_80635e40:
/* 80635E40 281F0001 */ cmplwi      r31, 1
/* 80635E44 40820034 */ bne-        lbl_80635e78
/* 80635E48 4BB2CD09 */ bl          DVDGetDriveStatus
/* 80635E4C 2C030008 */ cmpwi       r3, 8
/* 80635E50 40820028 */ bne-        lbl_80635e78
/* 80635E54 4BB2CDE5 */ bl          DVDResume
/* 80635E58 4BB2CCF9 */ bl          DVDGetDriveStatus
/* 80635E5C 2C030008 */ cmpwi       r3, 8
/* 80635E60 41820040 */ beq-        lbl_80635ea0
/* 80635E64 3C608038 */ lis         r3, sInstance__Q23EGG14AsyncDvdStatus@ha
/* 80635E68 38000001 */ li          r0, 1
/* 80635E6C 80635FC0 */ lwz         r3, sInstance__Q23EGG14AsyncDvdStatus@l(r3)
/* 80635E70 98030050 */ stb         r0, 0x50(r3)
/* 80635E74 4800002C */ b           lbl_80635ea0
lbl_80635e78:
/* 80635E78 2C1F0000 */ cmpwi       r31, 0
/* 80635E7C 40820024 */ bne-        lbl_80635ea0
/* 80635E80 4BB2CCD1 */ bl          DVDGetDriveStatus
/* 80635E84 2C030008 */ cmpwi       r3, 8
/* 80635E88 41820018 */ beq-        lbl_80635ea0
/* 80635E8C 3C608038 */ lis         r3, sInstance__Q23EGG14AsyncDvdStatus@ha
/* 80635E90 38000000 */ li          r0, 0
/* 80635E94 80635FC0 */ lwz         r3, sInstance__Q23EGG14AsyncDvdStatus@l(r3)
/* 80635E98 98030050 */ stb         r0, 0x50(r3)
/* 80635E9C 4BB2CD61 */ bl          DVDPause
lbl_80635ea0:
/* 80635EA0 80010014 */ lwz         r0, 0x14(r1)
/* 80635EA4 83E1000C */ lwz         r31, 0xc(r1)
/* 80635EA8 83C10008 */ lwz         r30, 8(r1)
/* 80635EAC 7C0803A6 */ mtlr        r0
/* 80635EB0 38210010 */ addi        r1, r1, 0x10
/* 80635EB4 4E800020 */ blr         