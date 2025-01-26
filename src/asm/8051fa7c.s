nofralloc
/* 8051FA7C 9421FFF0 */ stwu        r1, -0x10(r1)
/* 8051FA80 38C00000 */ li          r6, 0
/* 8051FA84 A0650006 */ lhz         r3, 6(r5)
/* 8051FA88 70600900 */ andi.       r0, r3, 0x900
/* 8051FA8C 41820008 */ beq-        lbl_8051fa94
/* 8051FA90 60C60001 */ ori         r6, r6, 1
lbl_8051fa94:
/* 8051FA94 5460056D */ rlwinm.     r0, r3, 0, 0x15, 0x16
/* 8051FA98 4182000C */ beq-        lbl_8051faa4
/* 8051FA9C 60C00002 */ ori         r0, r6, 2
/* 8051FAA0 5406043E */ clrlwi      r6, r0, 0x10
lbl_8051faa4:
/* 8051FAA4 546006F7 */ rlwinm.     r0, r3, 0, 0x1b, 0x1b
/* 8051FAA8 4182000C */ beq-        lbl_8051fab4
/* 8051FAAC 60C00004 */ ori         r0, r6, 4
/* 8051FAB0 5406043E */ clrlwi      r6, r0, 0x10
lbl_8051fab4:
/* 8051FAB4 54600739 */ rlwinm.     r0, r3, 0, 0x1c, 0x1c
/* 8051FAB8 4182000C */ beq-        lbl_8051fac4
/* 8051FABC 60C00008 */ ori         r0, r6, 8
/* 8051FAC0 5406043E */ clrlwi      r6, r0, 0x10
lbl_8051fac4:
/* 8051FAC4 5460077B */ rlwinm.     r0, r3, 0, 0x1d, 0x1d
/* 8051FAC8 4182000C */ beq-        lbl_8051fad4
/* 8051FACC 60C00010 */ ori         r0, r6, 0x10
/* 8051FAD0 5406043E */ clrlwi      r6, r0, 0x10
lbl_8051fad4:
/* 8051FAD4 546007FF */ clrlwi.     r0, r3, 0x1f
/* 8051FAD8 4182000C */ beq-        lbl_8051fae4
/* 8051FADC 60C00020 */ ori         r0, r6, 0x20
/* 8051FAE0 5406043E */ clrlwi      r6, r0, 0x10
lbl_8051fae4:
/* 8051FAE4 546007BD */ rlwinm.     r0, r3, 0, 0x1e, 0x1e
/* 8051FAE8 4182000C */ beq-        lbl_8051faf4
/* 8051FAEC 60C00040 */ ori         r0, r6, 0x40
/* 8051FAF0 5406043E */ clrlwi      r6, r0, 0x10
lbl_8051faf4:
/* 8051FAF4 54600421 */ rlwinm.     r0, r3, 0, 0x10, 0x10
/* 8051FAF8 4182000C */ beq-        lbl_8051fb04
/* 8051FAFC 60C00080 */ ori         r0, r6, 0x80
/* 8051FB00 5406043E */ clrlwi      r6, r0, 0x10
lbl_8051fb04:
/* 8051FB04 70605000 */ andi.       r0, r3, 0x5000
/* 8051FB08 4182000C */ beq-        lbl_8051fb14
/* 8051FB0C 60C00100 */ ori         r0, r6, 0x100
/* 8051FB10 5406043E */ clrlwi      r6, r0, 0x10
lbl_8051fb14:
/* 8051FB14 B0C40004 */ sth         r6, 4(r4)
/* 8051FB18 3C60809C */ lis         r3, spInstance__Q26System12KPadDirector@ha
/* 8051FB1C A0050006 */ lhz         r0, 6(r5)
/* 8051FB20 B0040006 */ sth         r0, 6(r4)
/* 8051FB24 88C50010 */ lbz         r6, 0x10(r5)
/* 8051FB28 98C40018 */ stb         r6, 0x18(r4)
/* 8051FB2C 8063D70C */ lwz         r3, spInstance__Q26System12KPadDirector@l(r3)
/* 8051FB30 88034155 */ lbz         r0, 0x4155(r3)
/* 8051FB34 2C000000 */ cmpwi       r0, 0
/* 8051FB38 41820038 */ beq-        lbl_8051fb70
/* 8051FB3C 3C004330 */ lis         r0, 0x4330
/* 8051FB40 90C1000C */ stw         r6, 0xc(r1)
/* 8051FB44 3CC08089 */ lis         r6, DIVIDE_BY_SEVEN_F__6System@ha
/* 8051FB48 3C608089 */ lis         r3, SEVEN_F__6System@ha
/* 8051FB4C 90010008 */ stw         r0, 8(r1)
/* 8051FB50 C846FCD0 */ lfd         f2, DIVIDE_BY_SEVEN_F__6System@l(r6)
/* 8051FB54 C8010008 */ lfd         f0, 8(r1)
/* 8051FB58 C023FCC8 */ lfs         f1, SEVEN_F__6System@l(r3)
/* 8051FB5C EC001028 */ fsubs       f0, f0, f2
/* 8051FB60 EC000828 */ fsubs       f0, f0, f1
/* 8051FB64 EC000824 */ fdivs       f0, f0, f1
/* 8051FB68 FC000050 */ fneg        f0, f0
/* 8051FB6C 48000030 */ b           lbl_8051fb9c
lbl_8051fb70:
/* 8051FB70 3C004330 */ lis         r0, 0x4330
/* 8051FB74 90C1000C */ stw         r6, 0xc(r1)
/* 8051FB78 3CC08089 */ lis         r6, DIVIDE_BY_SEVEN_F__6System@ha
/* 8051FB7C 3C608089 */ lis         r3, SEVEN_F__6System@ha
/* 8051FB80 90010008 */ stw         r0, 8(r1)
/* 8051FB84 C846FCD0 */ lfd         f2, DIVIDE_BY_SEVEN_F__6System@l(r6)
/* 8051FB88 C8010008 */ lfd         f0, 8(r1)
/* 8051FB8C C023FCC8 */ lfs         f1, SEVEN_F__6System@l(r3)
/* 8051FB90 EC001028 */ fsubs       f0, f0, f2
/* 8051FB94 EC000828 */ fsubs       f0, f0, f1
/* 8051FB98 EC000824 */ fdivs       f0, f0, f1
lbl_8051fb9c:
/* 8051FB9C D0040008 */ stfs        f0, 8(r4)
/* 8051FBA0 3C004330 */ lis         r0, 0x4330
/* 8051FBA4 3CC08089 */ lis         r6, DIVIDE_BY_SEVEN_F__6System@ha
/* 8051FBA8 3C608089 */ lis         r3, SEVEN_F__6System@ha
/* 8051FBAC 88A50011 */ lbz         r5, 0x11(r5)
/* 8051FBB0 90A1000C */ stw         r5, 0xc(r1)
/* 8051FBB4 C846FCD0 */ lfd         f2, DIVIDE_BY_SEVEN_F__6System@l(r6)
/* 8051FBB8 90010008 */ stw         r0, 8(r1)
/* 8051FBBC C023FCC8 */ lfs         f1, SEVEN_F__6System@l(r3)
/* 8051FBC0 C8010008 */ lfd         f0, 8(r1)
/* 8051FBC4 98A40019 */ stb         r5, 0x19(r4)
/* 8051FBC8 EC001028 */ fsubs       f0, f0, f2
/* 8051FBCC EC000828 */ fsubs       f0, f0, f1
/* 8051FBD0 EC000824 */ fdivs       f0, f0, f1
/* 8051FBD4 D004000C */ stfs        f0, 0xc(r4)
/* 8051FBD8 38210010 */ addi        r1, r1, 0x10
/* 8051FBDC 4E800020 */ blr         