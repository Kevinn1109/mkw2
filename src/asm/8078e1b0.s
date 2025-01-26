nofralloc
/* 8078E1B0 9421FF90 */ stwu        r1, -0x70(r1)
/* 8078E1B4 7C0802A6 */ mflr        r0
/* 8078E1B8 90010074 */ stw         r0, 0x74(r1)
/* 8078E1BC 39610070 */ addi        r11, r1, 0x70
/* 8078E1C0 4B8933D9 */ bl          _savegpr_25
/* 8078E1C4 2C030000 */ cmpwi       r3, 0
/* 8078E1C8 7C791B78 */ mr          r25, r3
/* 8078E1CC 7C9E2378 */ mr          r30, r4
/* 8078E1D0 7CBF2B78 */ mr          r31, r5
/* 8078E1D4 7CDA3378 */ mr          r26, r6
/* 8078E1D8 7CFB3B78 */ mr          r27, r7
/* 8078E1DC 7D1C4378 */ mr          r28, r8
/* 8078E1E0 41820088 */ beq-        lbl_8078e268
/* 8078E1E4 3C60809C */ lis         r3, spInstance__Q26System10RaceConfig@ha
/* 8078E1E8 8063D728 */ lwz         r3, spInstance__Q26System10RaceConfig@l(r3)
/* 8078E1EC 80030B68 */ lwz         r0, 0xb68(r3)
/* 8078E1F0 2C00000A */ cmpwi       r0, 0xa
/* 8078E1F4 40820074 */ bne-        lbl_8078e268
/* 8078E1F8 38600084 */ li          r3, 0x84
/* 8078E1FC 4BA9BBD1 */ bl          __nw__FUl
/* 8078E200 2C030000 */ cmpwi       r3, 0
/* 8078E204 7C7D1B78 */ mr          r29, r3
/* 8078E208 41820038 */ beq-        lbl_8078e240
/* 8078E20C 7F84E378 */ mr          r4, r28
/* 8078E210 38A00000 */ li          r5, 0
/* 8078E214 4BE2ADFD */ bl          unk_805b9010
/* 8078E218 3C60808D */ lis         r3, lbl_808d1890@ha
/* 8078E21C 38000002 */ li          r0, 2
/* 8078E220 38631890 */ addi        r3, r3, lbl_808d1890@l
/* 8078E224 907D0000 */ stw         r3, 0(r29)
/* 8078E228 38630028 */ addi        r3, r3, 0x28
/* 8078E22C 907D004C */ stw         r3, 0x4c(r29)
/* 8078E230 901D0074 */ stw         r0, 0x74(r29)
/* 8078E234 901D0078 */ stw         r0, 0x78(r29)
/* 8078E238 901D007C */ stw         r0, 0x7c(r29)
/* 8078E23C 901D0080 */ stw         r0, 0x80(r29)
lbl_8078e240:
/* 8078E240 3C60809C */ lis         r3, lbl_809c2f40@ha
/* 8078E244 3C80808D */ lis         r4, lbl_808d1860@ha
/* 8078E248 80032F40 */ lwz         r0, lbl_809c2f40@l(r3)
/* 8078E24C 7FA3EB78 */ mr          r3, r29
/* 8078E250 38841860 */ addi        r4, r4, lbl_808d1860@l
/* 8078E254 38C00001 */ li          r6, 1
/* 8078E258 5405043E */ clrlwi      r5, r0, 0x10
/* 8078E25C 4BE2AF75 */ bl          unk_805b91d0
/* 8078E260 93BF0000 */ stw         r29, 0(r31)
/* 8078E264 48000024 */ b           lbl_8078e288
lbl_8078e268:
/* 8078E268 3860004C */ li          r3, 0x4c
/* 8078E26C 4BA9BB61 */ bl          __nw__FUl
/* 8078E270 2C030000 */ cmpwi       r3, 0
/* 8078E274 41820010 */ beq-        lbl_8078e284
/* 8078E278 7F84E378 */ mr          r4, r28
/* 8078E27C 38A00000 */ li          r5, 0
/* 8078E280 4BDCD28D */ bl          unk_8055b50c
lbl_8078e284:
/* 8078E284 907F0000 */ stw         r3, 0(r31)
lbl_8078e288:
/* 8078E288 7FC3F378 */ mr          r3, r30
/* 8078E28C 7F45D378 */ mr          r5, r26
/* 8078E290 38800001 */ li          r4, 1
/* 8078E294 4BDCD385 */ bl          unk_8055b618
/* 8078E298 7C1900D0 */ neg         r0, r25
/* 8078E29C 807F0000 */ lwz         r3, 0(r31)
/* 8078E2A0 7C00CB78 */ or          r0, r0, r25
/* 8078E2A4 7F64DB78 */ mr          r4, r27
/* 8078E2A8 7C00FE70 */ srawi       r0, r0, 0x1f
/* 8078E2AC 7FC5F378 */ mr          r5, r30
/* 8078E2B0 540605EE */ rlwinm      r6, r0, 0, 0x17, 0x17
/* 8078E2B4 38E00000 */ li          r7, 0
/* 8078E2B8 4BDCE0C1 */ bl          unk_8055c378
/* 8078E2BC 3C80808A */ lis         r4, lbl_808a4be0@ha
/* 8078E2C0 38610018 */ addi        r3, r1, 0x18
/* 8078E2C4 C0044BE0 */ lfs         f0, lbl_808a4be0@l(r4)
/* 8078E2C8 3881000C */ addi        r4, r1, 0xc
/* 8078E2CC D001000C */ stfs        f0, 0xc(r1)
/* 8078E2D0 D0010010 */ stfs        f0, 0x10(r1)
/* 8078E2D4 D0010014 */ stfs        f0, 0x14(r1)
/* 8078E2D8 4BAA1FA9 */ bl          makeS__Q23EGG9Matrix34fFRCQ23EGG8Vector3f
/* 8078E2DC 839F0000 */ lwz         r28, 0(r31)
/* 8078E2E0 3BA00000 */ li          r29, 0
lbl_8078e2e4:
/* 8078E2E4 807C0014 */ lwz         r3, 0x14(r28)
/* 8078E2E8 80630000 */ lwz         r3, 0(r3)
/* 8078E2EC 2C030000 */ cmpwi       r3, 0
/* 8078E2F0 41820010 */ beq-        lbl_8078e300
/* 8078E2F4 38A10018 */ addi        r5, r1, 0x18
/* 8078E2F8 38800000 */ li          r4, 0
/* 8078E2FC 4B8DF895 */ bl          SetMtx
lbl_8078e300:
/* 8078E300 3BBD0001 */ addi        r29, r29, 1
/* 8078E304 3B9C0004 */ addi        r28, r28, 4
/* 8078E308 2C1D0002 */ cmpwi       r29, 2
/* 8078E30C 4180FFD8 */ blt+        lbl_8078e2e4
/* 8078E310 801E0000 */ lwz         r0, 0(r30)
/* 8078E314 38810008 */ addi        r4, r1, 8
/* 8078E318 90010008 */ stw         r0, 8(r1)
/* 8078E31C 807F0000 */ lwz         r3, 0(r31)
/* 8078E320 4BDD07C1 */ bl          unk_8055eae0
/* 8078E324 39610070 */ addi        r11, r1, 0x70
/* 8078E328 4B8932BD */ bl          _restgpr_25
/* 8078E32C 80010074 */ lwz         r0, 0x74(r1)
/* 8078E330 7C0803A6 */ mtlr        r0
/* 8078E334 38210070 */ addi        r1, r1, 0x70
/* 8078E338 4E800020 */ blr         