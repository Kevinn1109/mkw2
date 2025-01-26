nofralloc
/* 80520B9C 9421FFD0 */ stwu        r1, -0x30(r1)
/* 80520BA0 7C0802A6 */ mflr        r0
/* 80520BA4 90010034 */ stw         r0, 0x34(r1)
/* 80520BA8 39610030 */ addi        r11, r1, 0x30
/* 80520BAC 4BB009F5 */ bl          _savegpr_27
/* 80520BB0 88040014 */ lbz         r0, 0x14(r4)
/* 80520BB4 7C7B1B78 */ mr          r27, r3
/* 80520BB8 7C9E2378 */ mr          r30, r4
/* 80520BBC 5400066E */ rlwinm      r0, r0, 0, 0x19, 0x17
/* 80520BC0 98040014 */ stb         r0, 0x14(r4)
/* 80520BC4 88050030 */ lbz         r0, 0x30(r5)
/* 80520BC8 5400066E */ rlwinm      r0, r0, 0, 0x19, 0x17
/* 80520BCC 98050030 */ stb         r0, 0x30(r5)
/* 80520BD0 80030090 */ lwz         r0, 0x90(r3)
/* 80520BD4 2C000000 */ cmpwi       r0, 0
/* 80520BD8 4182015C */ beq-        lbl_80520d34
/* 80520BDC 880300A6 */ lbz         r0, 0xa6(r3)
/* 80520BE0 2C000000 */ cmpwi       r0, 0
/* 80520BE4 41820150 */ beq-        lbl_80520d34
/* 80520BE8 80630094 */ lwz         r3, 0x94(r3)
/* 80520BEC 81830000 */ lwz         r12, 0(r3)
/* 80520BF0 818C000C */ lwz         r12, 0xc(r12)
/* 80520BF4 7D8903A6 */ mtctr       r12
/* 80520BF8 4E800421 */ bctrl       
/* 80520BFC 7C7D1B78 */ mr          r29, r3
/* 80520C00 807B0098 */ lwz         r3, 0x98(r27)
/* 80520C04 81830000 */ lwz         r12, 0(r3)
/* 80520C08 818C000C */ lwz         r12, 0xc(r12)
/* 80520C0C 7D8903A6 */ mtctr       r12
/* 80520C10 4E800421 */ bctrl       
/* 80520C14 547CE73E */ rlwinm      r28, r3, 0x1c, 0x1c, 0x1f
/* 80520C18 547F073E */ clrlwi      r31, r3, 0x1c
/* 80520C1C 807B009C */ lwz         r3, 0x9c(r27)
/* 80520C20 81830000 */ lwz         r12, 0(r3)
/* 80520C24 818C000C */ lwz         r12, 0xc(r12)
/* 80520C28 7D8903A6 */ mtctr       r12
/* 80520C2C 4E800421 */ bctrl       
/* 80520C30 57A0063E */ clrlwi      r0, r29, 0x18
/* 80520C34 B01E0004 */ sth         r0, 4(r30)
/* 80520C38 3C80809C */ lis         r4, spInstance__Q26System12KPadDirector@ha
/* 80520C3C 9B9E0010 */ stb         r28, 0x10(r30)
/* 80520C40 8084D70C */ lwz         r4, spInstance__Q26System12KPadDirector@l(r4)
/* 80520C44 88044155 */ lbz         r0, 0x4155(r4)
/* 80520C48 2C000000 */ cmpwi       r0, 0
/* 80520C4C 41820038 */ beq-        lbl_80520c84
/* 80520C50 3C004330 */ lis         r0, 0x4330
/* 80520C54 9381000C */ stw         r28, 0xc(r1)
/* 80520C58 3CA08089 */ lis         r5, DIVIDE_BY_SEVEN_F__6System@ha
/* 80520C5C 3C808089 */ lis         r4, SEVEN_F__6System@ha
/* 80520C60 90010008 */ stw         r0, 8(r1)
/* 80520C64 C845FCD0 */ lfd         f2, DIVIDE_BY_SEVEN_F__6System@l(r5)
/* 80520C68 C8010008 */ lfd         f0, 8(r1)
/* 80520C6C C024FCC8 */ lfs         f1, SEVEN_F__6System@l(r4)
/* 80520C70 EC001028 */ fsubs       f0, f0, f2
/* 80520C74 EC000828 */ fsubs       f0, f0, f1
/* 80520C78 EC000824 */ fdivs       f0, f0, f1
/* 80520C7C FC600050 */ fneg        f3, f0
/* 80520C80 48000030 */ b           lbl_80520cb0
lbl_80520c84:
/* 80520C84 3C004330 */ lis         r0, 0x4330
/* 80520C88 9381000C */ stw         r28, 0xc(r1)
/* 80520C8C 3CA08089 */ lis         r5, DIVIDE_BY_SEVEN_F__6System@ha
/* 80520C90 3C808089 */ lis         r4, SEVEN_F__6System@ha
/* 80520C94 90010008 */ stw         r0, 8(r1)
/* 80520C98 C845FCD0 */ lfd         f2, DIVIDE_BY_SEVEN_F__6System@l(r5)
/* 80520C9C C8010008 */ lfd         f0, 8(r1)
/* 80520CA0 C024FCC8 */ lfs         f1, SEVEN_F__6System@l(r4)
/* 80520CA4 EC001028 */ fsubs       f0, f0, f2
/* 80520CA8 EC000828 */ fsubs       f0, f0, f1
/* 80520CAC EC600824 */ fdivs       f3, f0, f1
lbl_80520cb0:
/* 80520CB0 3C004330 */ lis         r0, 0x4330
/* 80520CB4 93E1000C */ stw         r31, 0xc(r1)
/* 80520CB8 3CC08089 */ lis         r6, DIVIDE_BY_SEVEN_F__6System@ha
/* 80520CBC 3CA08089 */ lis         r5, SEVEN_F__6System@ha
/* 80520CC0 90010008 */ stw         r0, 8(r1)
/* 80520CC4 3C80809C */ lis         r4, spInstance__Q26System12KPadDirector@ha
/* 80520CC8 C846FCD0 */ lfd         f2, DIVIDE_BY_SEVEN_F__6System@l(r6)
/* 80520CCC 5466063E */ clrlwi      r6, r3, 0x18
/* 80520CD0 C8010008 */ lfd         f0, 8(r1)
/* 80520CD4 C025FCC8 */ lfs         f1, SEVEN_F__6System@l(r5)
/* 80520CD8 EC001028 */ fsubs       f0, f0, f2
/* 80520CDC D07E0008 */ stfs        f3, 8(r30)
/* 80520CE0 9BFE0011 */ stb         r31, 0x11(r30)
/* 80520CE4 EC000828 */ fsubs       f0, f0, f1
/* 80520CE8 987E0013 */ stb         r3, 0x13(r30)
/* 80520CEC EC000824 */ fdivs       f0, f0, f1
/* 80520CF0 D01E000C */ stfs        f0, 0xc(r30)
/* 80520CF4 8064D70C */ lwz         r3, spInstance__Q26System12KPadDirector@l(r4)
/* 80520CF8 88034155 */ lbz         r0, 0x4155(r3)
/* 80520CFC 2C000000 */ cmpwi       r0, 0
/* 80520D00 41820024 */ beq-        lbl_80520d24
/* 80520D04 2C060003 */ cmpwi       r6, 3
/* 80520D08 41820010 */ beq-        lbl_80520d18
/* 80520D0C 2C060004 */ cmpwi       r6, 4
/* 80520D10 41820010 */ beq-        lbl_80520d20
/* 80520D14 48000010 */ b           lbl_80520d24
lbl_80520d18:
/* 80520D18 38C00004 */ li          r6, 4
/* 80520D1C 48000008 */ b           lbl_80520d24
lbl_80520d20:
/* 80520D20 38C00003 */ li          r6, 3
lbl_80520d24:
/* 80520D24 881E0014 */ lbz         r0, 0x14(r30)
/* 80520D28 98DE0012 */ stb         r6, 0x12(r30)
/* 80520D2C 60000080 */ ori         r0, r0, 0x80
/* 80520D30 981E0014 */ stb         r0, 0x14(r30)
lbl_80520d34:
/* 80520D34 39610030 */ addi        r11, r1, 0x30
/* 80520D38 4BB008B5 */ bl          _restgpr_27
/* 80520D3C 80010034 */ lwz         r0, 0x34(r1)
/* 80520D40 7C0803A6 */ mtlr        r0
/* 80520D44 38210030 */ addi        r1, r1, 0x30
/* 80520D48 4E800020 */ blr         