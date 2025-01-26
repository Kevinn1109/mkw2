nofralloc
/* 80520A60 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80520A64 7C0802A6 */ mflr        r0
/* 80520A68 90010024 */ stw         r0, 0x24(r1)
/* 80520A6C 880300A6 */ lbz         r0, 0xa6(r3)
/* 80520A70 93E1001C */ stw         r31, 0x1c(r1)
/* 80520A74 2C000000 */ cmpwi       r0, 0
/* 80520A78 93C10018 */ stw         r30, 0x18(r1)
/* 80520A7C 93A10014 */ stw         r29, 0x14(r1)
/* 80520A80 93810010 */ stw         r28, 0x10(r1)
/* 80520A84 40820010 */ bne-        lbl_80520a94
/* 80520A88 3C608089 */ lis         r3, ZERO_F__6System@ha
/* 80520A8C C023FCC0 */ lfs         f1, ZERO_F__6System@l(r3)
/* 80520A90 48000068 */ b           lbl_80520af8
lbl_80520a94:
/* 80520A94 7C7E1B78 */ mr          r30, r3
/* 80520A98 3BA00000 */ li          r29, 0
/* 80520A9C 3B800000 */ li          r28, 0
lbl_80520aa0:
/* 80520AA0 807E0094 */ lwz         r3, 0x94(r30)
/* 80520AA4 81830000 */ lwz         r12, 0(r3)
/* 80520AA8 83E30008 */ lwz         r31, 8(r3)
/* 80520AAC 818C0010 */ lwz         r12, 0x10(r12)
/* 80520AB0 7D8903A6 */ mtctr       r12
/* 80520AB4 4E800421 */ bctrl       
/* 80520AB8 7C1F19D6 */ mullw       r0, r31, r3
/* 80520ABC 3B9C0001 */ addi        r28, r28, 1
/* 80520AC0 3BDE0004 */ addi        r30, r30, 4
/* 80520AC4 2C1C0003 */ cmpwi       r28, 3
/* 80520AC8 7FBD0214 */ add         r29, r29, r0
/* 80520ACC 4180FFD4 */ blt+        lbl_80520aa0
/* 80520AD0 3C004330 */ lis         r0, 0x4330
/* 80520AD4 93A1000C */ stw         r29, 0xc(r1)
/* 80520AD8 3C808089 */ lis         r4, DIVIDE_BY_SEVEN_F__6System@ha
/* 80520ADC 3C608089 */ lis         r3, lbl_8088fcf0@ha
/* 80520AE0 90010008 */ stw         r0, 8(r1)
/* 80520AE4 C844FCD0 */ lfd         f2, DIVIDE_BY_SEVEN_F__6System@l(r4)
/* 80520AE8 C8210008 */ lfd         f1, 8(r1)
/* 80520AEC C003FCF0 */ lfs         f0, lbl_8088fcf0@l(r3)
/* 80520AF0 EC211028 */ fsubs       f1, f1, f2
/* 80520AF4 EC210024 */ fdivs       f1, f1, f0
lbl_80520af8:
/* 80520AF8 80010024 */ lwz         r0, 0x24(r1)
/* 80520AFC 83E1001C */ lwz         r31, 0x1c(r1)
/* 80520B00 83C10018 */ lwz         r30, 0x18(r1)
/* 80520B04 83A10014 */ lwz         r29, 0x14(r1)
/* 80520B08 83810010 */ lwz         r28, 0x10(r1)
/* 80520B0C 7C0803A6 */ mtlr        r0
/* 80520B10 38210020 */ addi        r1, r1, 0x20
/* 80520B14 4E800020 */ blr         