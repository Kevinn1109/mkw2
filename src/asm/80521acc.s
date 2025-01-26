nofralloc
/* 80521ACC 9421FFC0 */ stwu        r1, -0x40(r1)
/* 80521AD0 7C0802A6 */ mflr        r0
/* 80521AD4 90010044 */ stw         r0, 0x44(r1)
/* 80521AD8 DBE10030 */ stfd        f31, 0x30(r1)
/* 80521ADC F3E10038 */ psq_st      f31, 0x38(r1), 0, 0
/* 80521AE0 FFE00890 */ fmr         f31, f1
/* 80521AE4 93E1002C */ stw         r31, 0x2c(r1)
/* 80521AE8 7CDF3378 */ mr          r31, r6
/* 80521AEC 93C10028 */ stw         r30, 0x28(r1)
/* 80521AF0 7CBE2B78 */ mr          r30, r5
/* 80521AF4 93A10024 */ stw         r29, 0x24(r1)
/* 80521AF8 7C7D1B78 */ mr          r29, r3
/* 80521AFC 93810020 */ stw         r28, 0x20(r1)
/* 80521B00 7C9C2378 */ mr          r28, r4
/* 80521B04 80030020 */ lwz         r0, 0x20(r3)
/* 80521B08 2C000000 */ cmpwi       r0, 0
/* 80521B0C 41820250 */ beq-        lbl_80521d5c
/* 80521B10 819C0000 */ lwz         r12, 0(r28)
/* 80521B14 7F83E378 */ mr          r3, r28
/* 80521B18 818C0014 */ lwz         r12, 0x14(r12)
/* 80521B1C 7D8903A6 */ mtctr       r12
/* 80521B20 4E800421 */ bctrl       
/* 80521B24 2C030000 */ cmpwi       r3, 0
/* 80521B28 41820234 */ beq-        lbl_80521d5c
/* 80521B2C 801D0010 */ lwz         r0, 0x10(r29)
/* 80521B30 7C1E0000 */ cmpw        r30, r0
/* 80521B34 40820010 */ bne-        lbl_80521b44
/* 80521B38 38000001 */ li          r0, 1
/* 80521B3C 981D0014 */ stb         r0, 0x14(r29)
/* 80521B40 4800021C */ b           lbl_80521d5c
lbl_80521b44:
/* 80521B44 819C0000 */ lwz         r12, 0(r28)
/* 80521B48 7F83E378 */ mr          r3, r28
/* 80521B4C 818C0010 */ lwz         r12, 0x10(r12)
/* 80521B50 7D8903A6 */ mtctr       r12
/* 80521B54 4E800421 */ bctrl       
/* 80521B58 48001F01 */ bl          getControllerType__Q26System12KPadDirectorFQ26System14eControlSource
/* 80521B5C 2C030000 */ cmpwi       r3, 0
/* 80521B60 41820010 */ beq-        lbl_80521b70
/* 80521B64 2C030001 */ cmpwi       r3, 1
/* 80521B68 41820010 */ beq-        lbl_80521b78
/* 80521B6C 480001F0 */ b           lbl_80521d5c
lbl_80521b70:
/* 80521B70 38800000 */ li          r4, 0
/* 80521B74 48000010 */ b           lbl_80521b84
lbl_80521b78:
/* 80521B78 38800001 */ li          r4, 1
/* 80521B7C 48000008 */ b           lbl_80521b84
/* 80521B80 480001DC */ b           lbl_80521d5c
lbl_80521b84:
/* 80521B84 3C60809C */ lis         r3, spInstance__Q26System12KPadDirector@ha
/* 80521B88 8063D70C */ lwz         r3, spInstance__Q26System12KPadDirector@l(r3)
/* 80521B8C 80034104 */ lwz         r0, 0x4104(r3)
/* 80521B90 2C000000 */ cmpwi       r0, 0
/* 80521B94 4082000C */ bne-        lbl_80521ba0
/* 80521B98 3B800000 */ li          r28, 0
/* 80521B9C 4800003C */ b           lbl_80521bd8
lbl_80521ba0:
/* 80521BA0 2C040000 */ cmpwi       r4, 0
/* 80521BA4 41820010 */ beq-        lbl_80521bb4
/* 80521BA8 2C040001 */ cmpwi       r4, 1
/* 80521BAC 41820018 */ beq-        lbl_80521bc4
/* 80521BB0 48000024 */ b           lbl_80521bd4
lbl_80521bb4:
/* 80521BB4 80634108 */ lwz         r3, 0x4108(r3)
/* 80521BB8 57C01838 */ slwi        r0, r30, 3
/* 80521BBC 7F830214 */ add         r28, r3, r0
/* 80521BC0 48000018 */ b           lbl_80521bd8
lbl_80521bc4:
/* 80521BC4 8063410C */ lwz         r3, 0x410c(r3)
/* 80521BC8 57C01838 */ slwi        r0, r30, 3
/* 80521BCC 7F830214 */ add         r28, r3, r0
/* 80521BD0 48000008 */ b           lbl_80521bd8
lbl_80521bd4:
/* 80521BD4 3B800000 */ li          r28, 0
lbl_80521bd8:
/* 80521BD8 2C1C0000 */ cmpwi       r28, 0
/* 80521BDC 41820180 */ beq-        lbl_80521d5c
/* 80521BE0 881D0014 */ lbz         r0, 0x14(r29)
/* 80521BE4 7C000775 */ extsb.      r0, r0
/* 80521BE8 4180003C */ blt-        lbl_80521c24
/* 80521BEC 807D0020 */ lwz         r3, 0x20(r29)
/* 80521BF0 2C030000 */ cmpwi       r3, 0
/* 80521BF4 41820020 */ beq-        lbl_80521c14
/* 80521BF8 480039C5 */ bl          unk_805255bc
/* 80521BFC 3880002C */ li          r4, 0x2c
/* 80521C00 38600000 */ li          r3, 0
/* 80521C04 3800FFFF */ li          r0, -1
/* 80521C08 909D0010 */ stw         r4, 0x10(r29)
/* 80521C0C 907D0018 */ stw         r3, 0x18(r29)
/* 80521C10 981D0014 */ stb         r0, 0x14(r29)
lbl_80521c14:
/* 80521C14 807D0024 */ lwz         r3, 0x24(r29)
/* 80521C18 2C030000 */ cmpwi       r3, 0
/* 80521C1C 41820008 */ beq-        lbl_80521c24
/* 80521C20 4800399D */ bl          unk_805255bc
lbl_80521c24:
/* 80521C24 881C0000 */ lbz         r0, 0(r28)
/* 80521C28 2C000000 */ cmpwi       r0, 0
/* 80521C2C 41820010 */ beq-        lbl_80521c3c
/* 80521C30 2C000001 */ cmpwi       r0, 1
/* 80521C34 4182005C */ beq-        lbl_80521c90
/* 80521C38 48000124 */ b           lbl_80521d5c
lbl_80521c3c:
/* 80521C3C 881C0001 */ lbz         r0, 1(r28)
/* 80521C40 28000001 */ cmplwi      r0, 1
/* 80521C44 40820010 */ bne-        lbl_80521c54
/* 80521C48 801D0010 */ lwz         r0, 0x10(r29)
/* 80521C4C 2C00002C */ cmpwi       r0, 0x2c
/* 80521C50 4082010C */ bne-        lbl_80521d5c
lbl_80521c54:
/* 80521C54 807D0020 */ lwz         r3, 0x20(r29)
/* 80521C58 7FE6FB78 */ mr          r6, r31
/* 80521C5C 809C0004 */ lwz         r4, 4(r28)
/* 80521C60 38A0FFFF */ li          r5, -1
/* 80521C64 48003D11 */ bl          unk_80525974
/* 80521C68 2C030000 */ cmpwi       r3, 0
/* 80521C6C 418200F0 */ beq-        lbl_80521d5c
/* 80521C70 881C0001 */ lbz         r0, 1(r28)
/* 80521C74 28000001 */ cmplwi      r0, 1
/* 80521C78 408200E4 */ bne-        lbl_80521d5c
/* 80521C7C 38000001 */ li          r0, 1
/* 80521C80 93DD0010 */ stw         r30, 0x10(r29)
/* 80521C84 981D0014 */ stb         r0, 0x14(r29)
/* 80521C88 907D0018 */ stw         r3, 0x18(r29)
/* 80521C8C 480000D0 */ b           lbl_80521d5c
lbl_80521c90:
/* 80521C90 A0FC0004 */ lhz         r7, 4(r28)
/* 80521C94 3CA04330 */ lis         r5, 0x4330
/* 80521C98 A01C0006 */ lhz         r0, 6(r28)
/* 80521C9C 3C808089 */ lis         r4, lbl_8088fce0@ha
/* 80521CA0 3CC08089 */ lis         r6, DIVIDE_BY_SEVEN_F__6System@ha
/* 80521CA4 3C608038 */ lis         r3, spInstance__Q26System8RKSystem@ha
/* 80521CA8 7C070050 */ subf        r0, r7, r0
/* 80521CAC 90A10010 */ stw         r5, 0x10(r1)
/* 80521CB0 6C008000 */ xoris       r0, r0, 0x8000
/* 80521CB4 80635FC8 */ lwz         r3, spInstance__Q26System8RKSystem@l(r3)
/* 80521CB8 90010014 */ stw         r0, 0x14(r1)
/* 80521CBC C824FCE0 */ lfd         f1, lbl_8088fce0@l(r4)
/* 80521CC0 C8010010 */ lfd         f0, 0x10(r1)
/* 80521CC4 90E1000C */ stw         r7, 0xc(r1)
/* 80521CC8 EC000828 */ fsubs       f0, f0, f1
/* 80521CCC C846FCD0 */ lfd         f2, DIVIDE_BY_SEVEN_F__6System@l(r6)
/* 80521CD0 90A10008 */ stw         r5, 8(r1)
/* 80521CD4 80630054 */ lwz         r3, 0x54(r3)
/* 80521CD8 C8210008 */ lfd         f1, 8(r1)
/* 80521CDC EC1F0032 */ fmuls       f0, f31, f0
/* 80521CE0 80630024 */ lwz         r3, 0x24(r3)
/* 80521CE4 EC211028 */ fsubs       f1, f1, f2
/* 80521CE8 81830000 */ lwz         r12, 0(r3)
/* 80521CEC EC01002A */ fadds       f0, f1, f0
/* 80521CF0 818C000C */ lwz         r12, 0xc(r12)
/* 80521CF4 FC00001E */ fctiwz      f0, f0
/* 80521CF8 D8010018 */ stfd        f0, 0x18(r1)
/* 80521CFC 8381001C */ lwz         r28, 0x1c(r1)
/* 80521D00 7D8903A6 */ mtctr       r12
/* 80521D04 4E800421 */ bctrl       
/* 80521D08 20830001 */ subfic      r4, r3, 1
/* 80521D0C 3803FFFF */ addi        r0, r3, -1
/* 80521D10 7C800378 */ or          r0, r4, r0
/* 80521D14 54000FFF */ rlwinm.     r0, r0, 1, 0x1f, 0x1f
/* 80521D18 40820044 */ bne-        lbl_80521d5c
/* 80521D1C 801D0020 */ lwz         r0, 0x20(r29)
/* 80521D20 807D0004 */ lwz         r3, 4(r29)
/* 80521D24 2C000000 */ cmpwi       r0, 0
/* 80521D28 41820034 */ beq-        lbl_80521d5c
/* 80521D2C 81830000 */ lwz         r12, 0(r3)
/* 80521D30 818C0014 */ lwz         r12, 0x14(r12)
/* 80521D34 7D8903A6 */ mtctr       r12
/* 80521D38 4E800421 */ bctrl       
/* 80521D3C 2C030000 */ cmpwi       r3, 0
/* 80521D40 4182001C */ beq-        lbl_80521d5c
/* 80521D44 3C808089 */ lis         r4, lbl_8088fcf4@ha
/* 80521D48 807D0020 */ lwz         r3, 0x20(r29)
/* 80521D4C C024FCF4 */ lfs         f1, lbl_8088fcf4@l(r4)
/* 80521D50 7F84E378 */ mr          r4, r28
/* 80521D54 7FE5FB78 */ mr          r5, r31
/* 80521D58 48003D1D */ bl          unk_80525a74
lbl_80521d5c:
/* 80521D5C E3E10038 */ psq_l       f31, 0x38(r1), 0, 0
/* 80521D60 80010044 */ lwz         r0, 0x44(r1)
/* 80521D64 CBE10030 */ lfd         f31, 0x30(r1)
/* 80521D68 83E1002C */ lwz         r31, 0x2c(r1)
/* 80521D6C 83C10028 */ lwz         r30, 0x28(r1)
/* 80521D70 83A10024 */ lwz         r29, 0x24(r1)
/* 80521D74 83810020 */ lwz         r28, 0x20(r1)
/* 80521D78 7C0803A6 */ mtlr        r0
/* 80521D7C 38210040 */ addi        r1, r1, 0x40
/* 80521D80 4E800020 */ blr         