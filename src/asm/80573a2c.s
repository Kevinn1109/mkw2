nofralloc
/* 80573A2C 9421FFC0 */ stwu        r1, -0x40(r1)
/* 80573A30 7C0802A6 */ mflr        r0
/* 80573A34 90010044 */ stw         r0, 0x44(r1)
/* 80573A38 DBE10030 */ stfd        f31, 0x30(r1)
/* 80573A3C F3E10038 */ psq_st      f31, 0x38(r1), 0, 0
/* 80573A40 93E1002C */ stw         r31, 0x2c(r1)
/* 80573A44 3FE08089 */ lis         r31, lbl_80891730@ha
/* 80573A48 3BFF1730 */ addi        r31, r31, lbl_80891730@l
/* 80573A4C 93C10028 */ stw         r30, 0x28(r1)
/* 80573A50 7C9E2378 */ mr          r30, r4
/* 80573A54 93A10024 */ stw         r29, 0x24(r1)
/* 80573A58 7C7D1B78 */ mr          r29, r3
/* 80573A5C 38630004 */ addi        r3, r3, 4
/* 80573A60 4801CD61 */ bl          kartAccessor_34__Q24Kart15KartObjectProxyFv
/* 80573A64 7C641B78 */ mr          r4, r3
/* 80573A68 7FC5F378 */ mr          r5, r30
/* 80573A6C 38610008 */ addi        r3, r1, 8
/* 80573A70 4BFFEAD5 */ bl          unk_80572544
/* 80573A74 387D0004 */ addi        r3, r29, 4
/* 80573A78 4801D26D */ bl          PlayerPointers_getMalCol2
/* 80573A7C C0610008 */ lfs         f3, 8(r1)
/* 80573A80 C0430000 */ lfs         f2, 0(r3)
/* 80573A84 C021000C */ lfs         f1, 0xc(r1)
/* 80573A88 C0030004 */ lfs         f0, 4(r3)
/* 80573A8C EC6300B2 */ fmuls       f3, f3, f2
/* 80573A90 C0830008 */ lfs         f4, 8(r3)
/* 80573A94 387D0004 */ addi        r3, r29, 4
/* 80573A98 EC410032 */ fmuls       f2, f1, f0
/* 80573A9C C0010010 */ lfs         f0, 0x10(r1)
/* 80573AA0 C03F0074 */ lfs         f1, 0x74(r31)
/* 80573AA4 EC800132 */ fmuls       f4, f0, f4
/* 80573AA8 C01F0070 */ lfs         f0, 0x70(r31)
/* 80573AAC EC43102A */ fadds       f2, f3, f2
/* 80573AB0 EC44102A */ fadds       f2, f4, f2
/* 80573AB4 FC401210 */ fabs        f2, f2
/* 80573AB8 EC2100B2 */ fmuls       f1, f1, f2
/* 80573ABC EFE0082A */ fadds       f31, f0, f1
/* 80573AC0 4801CCBD */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80573AC4 C01F0078 */ lfs         f0, 0x78(r31)
/* 80573AC8 38810008 */ addi        r4, r1, 8
/* 80573ACC 38A00001 */ li          r5, 1
/* 80573AD0 EC2007F2 */ fmuls       f1, f0, f31
/* 80573AD4 480132E1 */ bl          unk_80586db4
/* 80573AD8 3860FFFF */ li          r3, -1
/* 80573ADC E3E10038 */ psq_l       f31, 0x38(r1), 0, 0
/* 80573AE0 CBE10030 */ lfd         f31, 0x30(r1)
/* 80573AE4 83E1002C */ lwz         r31, 0x2c(r1)
/* 80573AE8 83C10028 */ lwz         r30, 0x28(r1)
/* 80573AEC 83A10024 */ lwz         r29, 0x24(r1)
/* 80573AF0 80010044 */ lwz         r0, 0x44(r1)
/* 80573AF4 7C0803A6 */ mtlr        r0
/* 80573AF8 38210040 */ addi        r1, r1, 0x40
/* 80573AFC 4E800020 */ blr         