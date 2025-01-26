nofralloc
/* 80511EC8 9421FFA0 */ stwu        r1, -0x60(r1)
/* 80511ECC 7C0802A6 */ mflr        r0
/* 80511ED0 90010064 */ stw         r0, 0x64(r1)
/* 80511ED4 DBE10050 */ stfd        f31, 0x50(r1)
/* 80511ED8 F3E10058 */ psq_st      f31, 0x58(r1), 0, 0
/* 80511EDC DBC10040 */ stfd        f30, 0x40(r1)
/* 80511EE0 F3C10048 */ psq_st      f30, 0x48(r1), 0, 0
/* 80511EE4 93E1003C */ stw         r31, 0x3c(r1)
/* 80511EE8 93C10038 */ stw         r30, 0x38(r1)
/* 80511EEC 93A10034 */ stw         r29, 0x34(r1)
/* 80511EF0 7C9D2378 */ mr          r29, r4
/* 80511EF4 7CA42B78 */ mr          r4, r5
/* 80511EF8 93810030 */ stw         r28, 0x30(r1)
/* 80511EFC 7C7C1B78 */ mr          r28, r3
/* 80511F00 38610020 */ addi        r3, r1, 0x20
/* 80511F04 7FA5EB78 */ mr          r5, r29
/* 80511F08 48000115 */ bl          VEC2_sub
/* 80511F0C 3FC08038 */ lis         r30, sInstance__Q26System13SystemManager@ha
/* 80511F10 3C608089 */ lis         r3, lbl_8088f8d4@ha
/* 80511F14 80BE6000 */ lwz         r5, sInstance__Q26System13SystemManager@l(r30)
/* 80511F18 7FA4EB78 */ mr          r4, r29
/* 80511F1C C003F8D4 */ lfs         f0, lbl_8088f8d4@l(r3)
/* 80511F20 38610010 */ addi        r3, r1, 0x10
/* 80511F24 C045007C */ lfs         f2, 0x7c(r5)
/* 80511F28 38BC0008 */ addi        r5, r28, 8
/* 80511F2C C0210020 */ lfs         f1, 0x20(r1)
/* 80511F30 EC401024 */ fdivs       f2, f0, f2
/* 80511F34 C0010024 */ lfs         f0, 0x24(r1)
/* 80511F38 EC2100B2 */ fmuls       f1, f1, f2
/* 80511F3C EC0000B2 */ fmuls       f0, f0, f2
/* 80511F40 D0210020 */ stfs        f1, 0x20(r1)
/* 80511F44 D0010024 */ stfs        f0, 0x24(r1)
/* 80511F48 480000D5 */ bl          VEC2_sub
/* 80511F4C 38610018 */ addi        r3, r1, 0x18
/* 80511F50 38810010 */ addi        r4, r1, 0x10
/* 80511F54 38A10020 */ addi        r5, r1, 0x20
/* 80511F58 480000E9 */ bl          VEC2_add
/* 80511F5C 3C808089 */ lis         r4, lbl_8088f8d0@ha
/* 80511F60 3C608089 */ lis         r3, lbl_8088f8e0@ha
/* 80511F64 C3C4F8D0 */ lfs         f30, lbl_8088f8d0@l(r4)
/* 80511F68 3BA00001 */ li          r29, 1
/* 80511F6C CBE3F8E0 */ lfd         f31, lbl_8088f8e0@l(r3)
/* 80511F70 3FE04330 */ lis         r31, 0x4330
/* 80511F74 48000050 */ b           lbl_80511fc4
lbl_80511f78:
/* 80511F78 C0610018 */ lfs         f3, 0x18(r1)
/* 80511F7C C05C0010 */ lfs         f2, 0x10(r28)
/* 80511F80 C021001C */ lfs         f1, 0x1c(r1)
/* 80511F84 C01C0014 */ lfs         f0, 0x14(r28)
/* 80511F88 EC4300B2 */ fmuls       f2, f3, f2
/* 80511F8C EC010032 */ fmuls       f0, f1, f0
/* 80511F90 EC02002A */ fadds       f0, f2, f0
/* 80511F94 FC00F040 */ fcmpo       cr0, f0, f30
/* 80511F98 4C411382 */ cror        cr0eq, cr0gt, cr0eq
/* 80511F9C 4182004C */ beq-        lbl_80511fe8
/* 80511FA0 38610008 */ addi        r3, r1, 8
/* 80511FA4 38810018 */ addi        r4, r1, 0x18
/* 80511FA8 38A10020 */ addi        r5, r1, 0x20
/* 80511FAC 48000095 */ bl          VEC2_add
/* 80511FB0 C0210008 */ lfs         f1, 8(r1)
/* 80511FB4 3BBD0001 */ addi        r29, r29, 1
/* 80511FB8 C001000C */ lfs         f0, 0xc(r1)
/* 80511FBC D0210018 */ stfs        f1, 0x18(r1)
/* 80511FC0 D001001C */ stfs        f0, 0x1c(r1)
lbl_80511fc4:
/* 80511FC4 57A0043E */ clrlwi      r0, r29, 0x10
/* 80511FC8 9001002C */ stw         r0, 0x2c(r1)
/* 80511FCC 807E6000 */ lwz         r3, sInstance__Q26System13SystemManager@l(r30)
/* 80511FD0 93E10028 */ stw         r31, 0x28(r1)
/* 80511FD4 C023007C */ lfs         f1, 0x7c(r3)
/* 80511FD8 C8010028 */ lfd         f0, 0x28(r1)
/* 80511FDC EC00F828 */ fsubs       f0, f0, f31
/* 80511FE0 FC000840 */ fcmpo       cr0, f0, f1
/* 80511FE4 4180FF94 */ blt+        lbl_80511f78
lbl_80511fe8:
/* 80511FE8 7FA3EB78 */ mr          r3, r29
/* 80511FEC E3E10058 */ psq_l       f31, 0x58(r1), 0, 0
/* 80511FF0 CBE10050 */ lfd         f31, 0x50(r1)
/* 80511FF4 E3C10048 */ psq_l       f30, 0x48(r1), 0, 0
/* 80511FF8 CBC10040 */ lfd         f30, 0x40(r1)
/* 80511FFC 83E1003C */ lwz         r31, 0x3c(r1)
/* 80512000 83C10038 */ lwz         r30, 0x38(r1)
/* 80512004 83A10034 */ lwz         r29, 0x34(r1)
/* 80512008 83810030 */ lwz         r28, 0x30(r1)
/* 8051200C 80010064 */ lwz         r0, 0x64(r1)
/* 80512010 7C0803A6 */ mtlr        r0
/* 80512014 38210060 */ addi        r1, r1, 0x60
/* 80512018 4E800020 */ blr         