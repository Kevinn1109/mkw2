nofralloc
/* 800099CC 9421FFF0 */ stwu        r1, -0x10(r1)
/* 800099D0 7C0802A6 */ mflr        r0
/* 800099D4 3C808027 */ lis         r4, __vt__Q23EGG10BaseSystem@ha
/* 800099D8 3CC08027 */ lis         r6, __vt__Q26System8RKSystem@ha
/* 800099DC 90010014 */ stw         r0, 0x14(r1)
/* 800099E0 38840C2C */ addi        r4, r4, __vt__Q23EGG10BaseSystem@l
/* 800099E4 C0028058 */ lfs         f0, 0.0
/* 800099E8 38C60BF0 */ addi        r6, r6, __vt__Q26System8RKSystem@l
/* 800099EC 93E1000C */ stw         r31, 0xc(r1)
/* 800099F0 38E00000 */ li          r7, 0
/* 800099F4 38000001 */ li          r0, 1
/* 800099F8 3FE08001 */ lis         r31, __dt__Q23EGG8Vector3fFv@ha
/* 800099FC 93C10008 */ stw         r30, 8(r1)
/* 80009A00 3FC0802A */ lis         r30, sInstance__Q26System8RKSystem@ha
/* 80009A04 3BDE4080 */ addi        r30, r30, sInstance__Q26System8RKSystem@l
/* 80009A08 909E0000 */ stw         r4, 0(r30)
/* 80009A0C 391E0000 */ addi        r8, r30, 0
/* 80009A10 387E0080 */ addi        r3, r30, 0x80
/* 80009A14 3C800017 */ lis         r4, 0x17
/* 80009A18 38A47000 */ addi        r5, r4, 0x7000
/* 80009A1C 90A80034 */ stw         r5, 0x34(r8)
/* 80009A20 3C800008 */ lis         r4, 0x8
/* 80009A24 90880038 */ stw         r4, 0x38(r8)
/* 80009A28 389F9B40 */ addi        r4, r31, __dt__Q23EGG8Vector3fFv@l
/* 80009A2C 38BE0074 */ addi        r5, r30, 0x74
/* 80009A30 90E8003C */ stw         r7, 0x3c(r8)
/* 80009A34 90DE0000 */ stw         r6, 0(r30)
/* 80009A38 98080068 */ stb         r0, 0x68(r8)
/* 80009A3C 98E80069 */ stb         r7, 0x69(r8)
/* 80009A40 D01E0080 */ stfs        f0, 0x80(r30)
/* 80009A44 D0030004 */ stfs        f0, 4(r3)
/* 80009A48 D0030008 */ stfs        f0, 8(r3)
/* 80009A4C 480178ED */ bl          __register_global_object
/* 80009A50 C022805C */ lfs         f1, 1.0
/* 80009A54 387E0098 */ addi        r3, r30, 0x98
/* 80009A58 C0028058 */ lfs         f0, 0.0
/* 80009A5C 389F9B40 */ addi        r4, r31, __dt__Q23EGG8Vector3fFv@l
/* 80009A60 D03E0098 */ stfs        f1, 0x98(r30)
/* 80009A64 38BE008C */ addi        r5, r30, 0x8c
/* 80009A68 D0030004 */ stfs        f0, 4(r3)
/* 80009A6C D0030008 */ stfs        f0, 8(r3)
/* 80009A70 480178C9 */ bl          __register_global_object
/* 80009A74 C0228058 */ lfs         f1, 0.0
/* 80009A78 387E00B0 */ addi        r3, r30, 0xb0
/* 80009A7C C002805C */ lfs         f0, 1.0
/* 80009A80 389F9B40 */ addi        r4, r31, __dt__Q23EGG8Vector3fFv@l
/* 80009A84 D03E00B0 */ stfs        f1, 0xb0(r30)
/* 80009A88 38BE00A4 */ addi        r5, r30, 0xa4
/* 80009A8C D0030004 */ stfs        f0, 4(r3)
/* 80009A90 D0230008 */ stfs        f1, 8(r3)
/* 80009A94 480178A5 */ bl          __register_global_object
/* 80009A98 C0228058 */ lfs         f1, 0.0
/* 80009A9C 387E00C8 */ addi        r3, r30, 0xc8
/* 80009AA0 C002805C */ lfs         f0, 1.0
/* 80009AA4 389F9B40 */ addi        r4, r31, __dt__Q23EGG8Vector3fFv@l
/* 80009AA8 D03E00C8 */ stfs        f1, 0xc8(r30)
/* 80009AAC 38BE00BC */ addi        r5, r30, 0xbc
/* 80009AB0 D0230004 */ stfs        f1, 4(r3)
/* 80009AB4 D0030008 */ stfs        f0, 8(r3)
/* 80009AB8 48017881 */ bl          __register_global_object
/* 80009ABC C0028058 */ lfs         f0, 0.0
/* 80009AC0 386D93D0 */ la          r3, lbl_80385fd0
/* 80009AC4 3FE08001 */ lis         r31, __dt__Q23EGG8Vector2fFv@ha
/* 80009AC8 D0030004 */ stfs        f0, 4(r3)
/* 80009ACC 389F9B80 */ addi        r4, r31, __dt__Q23EGG8Vector2fFv@l
/* 80009AD0 38BE00D4 */ addi        r5, r30, 0xd4
/* 80009AD4 D00D93D0 */ stfs        f0, lbl_80385fd0
/* 80009AD8 386D93D0 */ la          r3, lbl_80385fd0
/* 80009ADC 4801785D */ bl          __register_global_object
/* 80009AE0 C022805C */ lfs         f1, 1.0
/* 80009AE4 38CD93D8 */ la          r6, lbl_80385fd8
/* 80009AE8 C0028058 */ lfs         f0, 0.0
/* 80009AEC 389F9B80 */ addi        r4, r31, __dt__Q23EGG8Vector2fFv@l
/* 80009AF0 D02D93D8 */ stfs        f1, lbl_80385fd8
/* 80009AF4 38BE00E0 */ addi        r5, r30, 0xe0
/* 80009AF8 386D93D8 */ la          r3, lbl_80385fd8
/* 80009AFC D0060004 */ stfs        f0, 4(r6)
/* 80009B00 48017839 */ bl          __register_global_object
/* 80009B04 C0228058 */ lfs         f1, 0.0
/* 80009B08 38CD93E0 */ la          r6, lbl_80385fe0
/* 80009B0C C002805C */ lfs         f0, 1.0
/* 80009B10 389F9B80 */ addi        r4, r31, __dt__Q23EGG8Vector2fFv@l
/* 80009B14 D02D93E0 */ stfs        f1, lbl_80385fe0
/* 80009B18 38BE00EC */ addi        r5, r30, 0xec
/* 80009B1C 386D93E0 */ la          r3, lbl_80385fe0
/* 80009B20 D0060004 */ stfs        f0, 4(r6)
/* 80009B24 48017815 */ bl          __register_global_object
/* 80009B28 80010014 */ lwz         r0, 0x14(r1)
/* 80009B2C 83E1000C */ lwz         r31, 0xc(r1)
/* 80009B30 83C10008 */ lwz         r30, 8(r1)
/* 80009B34 7C0803A6 */ mtlr        r0
/* 80009B38 38210010 */ addi        r1, r1, 0x10
/* 80009B3C 4E800020 */ blr         