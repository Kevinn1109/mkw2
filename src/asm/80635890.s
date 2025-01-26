nofralloc
/* 80635890 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80635894 7C0802A6 */ mflr        r0
/* 80635898 90010014 */ stw         r0, 0x14(r1)
/* 8063589C 93E1000C */ stw         r31, 0xc(r1)
/* 806358A0 7C7F1B78 */ mr          r31, r3
/* 806358A4 38630034 */ addi        r3, r3, 0x34
/* 806358A8 93C10008 */ stw         r30, 8(r1)
/* 806358AC 4BFE5675 */ bl          SM34_calc
/* 806358B0 807F0000 */ lwz         r3, 0(r31)
/* 806358B4 4BFECAED */ bl          unk_806223a0
/* 806358B8 807F0000 */ lwz         r3, 0(r31)
/* 806358BC 4BFECC3D */ bl          Section_calc
/* 806358C0 807F0090 */ lwz         r3, 0x90(r31)
/* 806358C4 4BFEB27D */ bl          SaveGhostManager_calc
/* 806358C8 807F0000 */ lwz         r3, 0(r31)
/* 806358CC 38000000 */ li          r0, 0
/* 806358D0 901F0024 */ stw         r0, 0x24(r31)
/* 806358D4 2C030000 */ cmpwi       r3, 0
/* 806358D8 4182000C */ beq-        lbl_806358e4
/* 806358DC 4BFED5ED */ bl          unk_80622ec8
/* 806358E0 907F0024 */ stw         r3, 0x24(r31)
lbl_806358e4:
/* 806358E4 807F0090 */ lwz         r3, 0x90(r31)
/* 806358E8 4BFEBABD */ bl          unk_806213a4
/* 806358EC 2C030000 */ cmpwi       r3, 0
/* 806358F0 41820010 */ beq-        lbl_80635900
/* 806358F4 801F0024 */ lwz         r0, 0x24(r31)
/* 806358F8 60000002 */ ori         r0, r0, 2
/* 806358FC 901F0024 */ stw         r0, 0x24(r31)
lbl_80635900:
/* 80635900 3C608038 */ lis         r3, spInstance__Q26System8RKSystem@ha
/* 80635904 801F0024 */ lwz         r0, 0x24(r31)
/* 80635908 80635FC8 */ lwz         r3, spInstance__Q26System8RKSystem@l(r3)
/* 8063590C 540007FE */ clrlwi      r0, r0, 0x1f
/* 80635910 80630054 */ lwz         r3, 0x54(r3)
/* 80635914 681E0001 */ xori        r30, r0, 1
/* 80635918 80630024 */ lwz         r3, 0x24(r3)
/* 8063591C 81830000 */ lwz         r12, 0(r3)
/* 80635920 818C000C */ lwz         r12, 0xc(r12)
/* 80635924 7D8903A6 */ mtctr       r12
/* 80635928 4E800421 */ bctrl       
/* 8063592C 20830001 */ subfic      r4, r3, 1
/* 80635930 3803FFFF */ addi        r0, r3, -1
/* 80635934 7C830378 */ or          r3, r4, r0
/* 80635938 801F0030 */ lwz         r0, 0x30(r31)
/* 8063593C 54640FFE */ srwi        r4, r3, 0x1f
/* 80635940 68840001 */ xori        r4, r4, 1
/* 80635944 3C60809C */ lis         r3, lbl_809bd6f8@ha
/* 80635948 7FC62038 */ and         r6, r30, r4
/* 8063594C 7C000034 */ cntlzw      r0, r0
/* 80635950 7CA600D0 */ neg         r5, r6
/* 80635954 8063D6F8 */ lwz         r3, lbl_809bd6f8@l(r3)
/* 80635958 7CA53378 */ or          r5, r5, r6
/* 8063595C 5404D97E */ srwi        r4, r0, 5
/* 80635960 54A50FFE */ srwi        r5, r5, 0x1f
/* 80635964 8803004D */ lbz         r0, 0x4d(r3)
/* 80635968 7CA52038 */ and         r5, r5, r4
/* 8063596C 7C8500D0 */ neg         r4, r5
/* 80635970 7C842B78 */ or          r4, r4, r5
/* 80635974 54840FFE */ srwi        r4, r4, 0x1f
/* 80635978 7C040040 */ cmplw       r4, r0
/* 8063597C 41820008 */ beq-        lbl_80635984
/* 80635980 9883004D */ stb         r4, 0x4d(r3)
lbl_80635984:
/* 80635984 801F0024 */ lwz         r0, 0x24(r31)
/* 80635988 540007BD */ rlwinm.     r0, r0, 0, 0x1e, 0x1e
/* 8063598C 4182001C */ beq-        lbl_806359a8
/* 80635990 807F000C */ lwz         r3, 0xc(r31)
/* 80635994 4BFFF1ED */ bl          Section_getPriority
/* 80635998 2C030005 */ cmpwi       r3, 5
/* 8063599C 4082000C */ bne-        lbl_806359a8
/* 806359A0 38000005 */ li          r0, 5
/* 806359A4 901F000C */ stw         r0, 0xc(r31)
lbl_806359a8:
/* 806359A8 807F0000 */ lwz         r3, 0(r31)
/* 806359AC 4BFED5DD */ bl          unk_80622f88
/* 806359B0 28030001 */ cmplwi      r3, 1
/* 806359B4 7C7F1B78 */ mr          r31, r3
/* 806359B8 40820034 */ bne-        lbl_806359ec
/* 806359BC 4BB2D195 */ bl          DVDGetDriveStatus
/* 806359C0 2C030008 */ cmpwi       r3, 8
/* 806359C4 40820028 */ bne-        lbl_806359ec
/* 806359C8 4BB2D271 */ bl          DVDResume
/* 806359CC 4BB2D185 */ bl          DVDGetDriveStatus
/* 806359D0 2C030008 */ cmpwi       r3, 8
/* 806359D4 41820040 */ beq-        lbl_80635a14
/* 806359D8 3C608038 */ lis         r3, sInstance__Q23EGG14AsyncDvdStatus@ha
/* 806359DC 38000001 */ li          r0, 1
/* 806359E0 80635FC0 */ lwz         r3, sInstance__Q23EGG14AsyncDvdStatus@l(r3)
/* 806359E4 98030050 */ stb         r0, 0x50(r3)
/* 806359E8 4800002C */ b           lbl_80635a14
lbl_806359ec:
/* 806359EC 2C1F0000 */ cmpwi       r31, 0
/* 806359F0 40820024 */ bne-        lbl_80635a14
/* 806359F4 4BB2D15D */ bl          DVDGetDriveStatus
/* 806359F8 2C030008 */ cmpwi       r3, 8
/* 806359FC 41820018 */ beq-        lbl_80635a14
/* 80635A00 3C608038 */ lis         r3, sInstance__Q23EGG14AsyncDvdStatus@ha
/* 80635A04 38000000 */ li          r0, 0
/* 80635A08 80635FC0 */ lwz         r3, sInstance__Q23EGG14AsyncDvdStatus@l(r3)
/* 80635A0C 98030050 */ stb         r0, 0x50(r3)
/* 80635A10 4BB2D1ED */ bl          DVDPause
lbl_80635a14:
/* 80635A14 80010014 */ lwz         r0, 0x14(r1)
/* 80635A18 83E1000C */ lwz         r31, 0xc(r1)
/* 80635A1C 83C10008 */ lwz         r30, 8(r1)
/* 80635A20 7C0803A6 */ mtlr        r0
/* 80635A24 38210010 */ addi        r1, r1, 0x10
/* 80635A28 4E800020 */ blr         