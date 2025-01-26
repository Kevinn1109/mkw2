nofralloc
/* 80586DB4 9421FFC0 */ stwu        r1, -0x40(r1)
/* 80586DB8 7C0802A6 */ mflr        r0
/* 80586DBC 90010044 */ stw         r0, 0x44(r1)
/* 80586DC0 DBE10030 */ stfd        f31, 0x30(r1)
/* 80586DC4 F3E10038 */ psq_st      f31, 0x38(r1), 0, 0
/* 80586DC8 FFE00890 */ fmr         f31, f1
/* 80586DCC 93E1002C */ stw         r31, 0x2c(r1)
/* 80586DD0 7CBF2B78 */ mr          r31, r5
/* 80586DD4 93C10028 */ stw         r30, 0x28(r1)
/* 80586DD8 7C9E2378 */ mr          r30, r4
/* 80586DDC 93A10024 */ stw         r29, 0x24(r1)
/* 80586DE0 7C7D1B78 */ mr          r29, r3
/* 80586DE4 A8030244 */ lha         r0, 0x244(r3)
/* 80586DE8 2C000000 */ cmpwi       r0, 0
/* 80586DEC 41810080 */ bgt-        lbl_80586e6c
/* 80586DF0 4800998D */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80586DF4 7C651B78 */ mr          r5, r3
/* 80586DF8 7FC4F378 */ mr          r4, r30
/* 80586DFC 38610014 */ addi        r3, r1, 0x14
/* 80586E00 38C00001 */ li          r6, 1
/* 80586E04 38A50044 */ addi        r5, r5, 0x44
/* 80586E08 48027BE5 */ bl          VEC3_perpInPlane
/* 80586E0C C0410014 */ lfs         f2, 0x14(r1)
/* 80586E10 7FA3EB78 */ mr          r3, r29
/* 80586E14 C0210018 */ lfs         f1, 0x18(r1)
/* 80586E18 C001001C */ lfs         f0, 0x1c(r1)
/* 80586E1C EC5F00B2 */ fmuls       f2, f31, f2
/* 80586E20 EC3F0072 */ fmuls       f1, f31, f1
/* 80586E24 EC1F0032 */ fmuls       f0, f31, f0
/* 80586E28 D0410008 */ stfs        f2, 8(r1)
/* 80586E2C D021000C */ stfs        f1, 0xc(r1)
/* 80586E30 D0010010 */ stfs        f0, 0x10(r1)
/* 80586E34 48009599 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80586E38 38810008 */ addi        r4, r1, 8
/* 80586E3C 4802F54D */ bl          addForce__Q24Kart12KartDynamicsFRCQ23EGG8Vector3f
/* 80586E40 7FA3EB78 */ mr          r3, r29
/* 80586E44 48009A09 */ bl          kartCollide__Q24Kart15KartObjectProxyFv
/* 80586E48 4BFEA591 */ bl          unk_805713d8
/* 80586E4C 3C60808B */ lis         r3, lbl_808b596a@ha
/* 80586E50 2C1F0000 */ cmpwi       r31, 0
/* 80586E54 A803596A */ lha         r0, lbl_808b596a@l(r3)
/* 80586E58 B01D0244 */ sth         r0, 0x244(r29)
/* 80586E5C 41820010 */ beq-        lbl_80586e6c
/* 80586E60 3C608089 */ lis         r3, lbl_80891a00@ha
/* 80586E64 C0031A00 */ lfs         f0, lbl_80891a00@l(r3)
/* 80586E68 D01D0020 */ stfs        f0, 0x20(r29)
lbl_80586e6c:
/* 80586E6C E3E10038 */ psq_l       f31, 0x38(r1), 0, 0
/* 80586E70 80010044 */ lwz         r0, 0x44(r1)
/* 80586E74 CBE10030 */ lfd         f31, 0x30(r1)
/* 80586E78 83E1002C */ lwz         r31, 0x2c(r1)
/* 80586E7C 83C10028 */ lwz         r30, 0x28(r1)
/* 80586E80 83A10024 */ lwz         r29, 0x24(r1)
/* 80586E84 7C0803A6 */ mtlr        r0
/* 80586E88 38210040 */ addi        r1, r1, 0x40
/* 80586E8C 4E800020 */ blr         