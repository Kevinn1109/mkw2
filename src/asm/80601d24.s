nofralloc
/* 80601D24 9421FFA0 */ stwu        r1, -0x60(r1)
/* 80601D28 7C0802A6 */ mflr        r0
/* 80601D2C 90010064 */ stw         r0, 0x64(r1)
/* 80601D30 DBE10050 */ stfd        f31, 0x50(r1)
/* 80601D34 F3E10058 */ psq_st      f31, 0x58(r1), 0, 0
/* 80601D38 39610050 */ addi        r11, r1, 0x50
/* 80601D3C 4BA1F849 */ bl          _savegpr_20
/* 80601D40 8803000C */ lbz         r0, 0xc(r3)
/* 80601D44 3EE08089 */ lis         r23, lbl_80896820@ha
/* 80601D48 7C7E1B78 */ mr          r30, r3
/* 80601D4C 3BE00000 */ li          r31, 0
/* 80601D50 28000001 */ cmplwi      r0, 1
/* 80601D54 3AF76820 */ addi        r23, r23, lbl_80896820@l
/* 80601D58 408201C8 */ bne-        lbl_80601f20
/* 80601D5C 3F60808C */ lis         r27, lbl_808ba624@ha
/* 80601D60 3EC0809C */ lis         r22, lbl_809c1c90@ha
/* 80601D64 C3F70000 */ lfs         f31, 0(r23)
/* 80601D68 3B7BA624 */ addi        r27, r27, lbl_808ba624@l
/* 80601D6C 3AD61C90 */ addi        r22, r22, lbl_809c1c90@l
/* 80601D70 3BE00001 */ li          r31, 1
/* 80601D74 3B200003 */ li          r25, 3
/* 80601D78 3B40FFFF */ li          r26, -1
/* 80601D7C 3B800004 */ li          r28, 4
/* 80601D80 3B000000 */ li          r24, 0
/* 80601D84 3BA00006 */ li          r29, 6
/* 80601D88 4800018C */ b           lbl_80601f14
lbl_80601d8c:
/* 80601D8C 801E0008 */ lwz         r0, 8(r30)
/* 80601D90 9B1E000C */ stb         r24, 0xc(r30)
/* 80601D94 2C000002 */ cmpwi       r0, 2
/* 80601D98 41820020 */ beq-        lbl_80601db8
/* 80601D9C 2C000003 */ cmpwi       r0, 3
/* 80601DA0 41820064 */ beq-        lbl_80601e04
/* 80601DA4 2C000004 */ cmpwi       r0, 4
/* 80601DA8 41820118 */ beq-        lbl_80601ec0
/* 80601DAC 2C000005 */ cmpwi       r0, 5
/* 80601DB0 4182011C */ beq-        lbl_80601ecc
/* 80601DB4 48000160 */ b           lbl_80601f14
lbl_80601db8:
/* 80601DB8 933E0008 */ stw         r25, 8(r30)
/* 80601DBC 7FC3F378 */ mr          r3, r30
/* 80601DC0 935E001C */ stw         r26, 0x1c(r30)
/* 80601DC4 819E0000 */ lwz         r12, 0(r30)
/* 80601DC8 818C0038 */ lwz         r12, 0x38(r12)
/* 80601DCC 7D8903A6 */ mtctr       r12
/* 80601DD0 4E800421 */ bctrl       
/* 80601DD4 801E0010 */ lwz         r0, 0x10(r30)
/* 80601DD8 2C000000 */ cmpwi       r0, 0
/* 80601DDC 4082000C */ bne-        lbl_80601de8
/* 80601DE0 C0170004 */ lfs         f0, 4(r23)
/* 80601DE4 48000008 */ b           lbl_80601dec
lbl_80601de8:
/* 80601DE8 C0170008 */ lfs         f0, 8(r23)
lbl_80601dec:
/* 80601DEC 93610018 */ stw         r27, 0x18(r1)
/* 80601DF0 387E0024 */ addi        r3, r30, 0x24
/* 80601DF4 38810018 */ addi        r4, r1, 0x18
/* 80601DF8 D001001C */ stfs        f0, 0x1c(r1)
/* 80601DFC 4BFC0CD5 */ bl          transform__Q22UI12ControlGroupFRQ32UI12ControlGroup7Functor
/* 80601E00 48000114 */ b           lbl_80601f14
lbl_80601e04:
/* 80601E04 93610010 */ stw         r27, 0x10(r1)
/* 80601E08 387E0024 */ addi        r3, r30, 0x24
/* 80601E0C 38810010 */ addi        r4, r1, 0x10
/* 80601E10 D3E10014 */ stfs        f31, 0x14(r1)
/* 80601E14 4BFC0CBD */ bl          transform__Q22UI12ControlGroupFRQ32UI12ControlGroup7Functor
/* 80601E18 82BE0038 */ lwz         r21, 0x38(r30)
/* 80601E1C 939E0008 */ stw         r28, 8(r30)
/* 80601E20 2C150000 */ cmpwi       r21, 0
/* 80601E24 935E001C */ stw         r26, 0x1c(r30)
/* 80601E28 4082000C */ bne-        lbl_80601e34
/* 80601E2C 3AA00000 */ li          r21, 0
/* 80601E30 48000050 */ b           lbl_80601e80
lbl_80601e34:
/* 80601E34 41820048 */ beq-        lbl_80601e7c
/* 80601E38 81950000 */ lwz         r12, 0(r21)
/* 80601E3C 7EA3AB78 */ mr          r3, r21
/* 80601E40 818C0008 */ lwz         r12, 8(r12)
/* 80601E44 7D8903A6 */ mtctr       r12
/* 80601E48 4E800421 */ bctrl       
/* 80601E4C 48000018 */ b           lbl_80601e64
lbl_80601e50:
/* 80601E50 7C03B040 */ cmplw       r3, r22
/* 80601E54 4082000C */ bne-        lbl_80601e60
/* 80601E58 38000001 */ li          r0, 1
/* 80601E5C 48000014 */ b           lbl_80601e70
lbl_80601e60:
/* 80601E60 80630000 */ lwz         r3, 0(r3)
lbl_80601e64:
/* 80601E64 2C030000 */ cmpwi       r3, 0
/* 80601E68 4082FFE8 */ bne+        lbl_80601e50
/* 80601E6C 38000000 */ li          r0, 0
lbl_80601e70:
/* 80601E70 2C000000 */ cmpwi       r0, 0
/* 80601E74 41820008 */ beq-        lbl_80601e7c
/* 80601E78 48000008 */ b           lbl_80601e80
lbl_80601e7c:
/* 80601E7C 3AA00000 */ li          r21, 0
lbl_80601e80:
/* 80601E80 2C150000 */ cmpwi       r21, 0
/* 80601E84 41820024 */ beq-        lbl_80601ea8
/* 80601E88 3A800000 */ li          r20, 0
lbl_80601e8c:
/* 80601E8C 7EA3AB78 */ mr          r3, r21
/* 80601E90 7E84A378 */ mr          r4, r20
/* 80601E94 38A00001 */ li          r5, 1
/* 80601E98 4BFF0269 */ bl          unk_805f2100
/* 80601E9C 3A940001 */ addi        r20, r20, 1
/* 80601EA0 2C140005 */ cmpwi       r20, 5
/* 80601EA4 4180FFE8 */ blt+        lbl_80601e8c
lbl_80601ea8:
/* 80601EA8 819E0000 */ lwz         r12, 0(r30)
/* 80601EAC 7FC3F378 */ mr          r3, r30
/* 80601EB0 818C003C */ lwz         r12, 0x3c(r12)
/* 80601EB4 7D8903A6 */ mtctr       r12
/* 80601EB8 4E800421 */ bctrl       
/* 80601EBC 48000058 */ b           lbl_80601f14
lbl_80601ec0:
/* 80601EC0 7FC3F378 */ mr          r3, r30
/* 80601EC4 48000C41 */ bl          unk_80602b04
/* 80601EC8 4800004C */ b           lbl_80601f14
lbl_80601ecc:
/* 80601ECC 801E0010 */ lwz         r0, 0x10(r30)
/* 80601ED0 2C000000 */ cmpwi       r0, 0
/* 80601ED4 4082000C */ bne-        lbl_80601ee0
/* 80601ED8 C0170008 */ lfs         f0, 8(r23)
/* 80601EDC 48000008 */ b           lbl_80601ee4
lbl_80601ee0:
/* 80601EE0 C0170004 */ lfs         f0, 4(r23)
lbl_80601ee4:
/* 80601EE4 93610008 */ stw         r27, 8(r1)
/* 80601EE8 387E0024 */ addi        r3, r30, 0x24
/* 80601EEC 38810008 */ addi        r4, r1, 8
/* 80601EF0 D001000C */ stfs        f0, 0xc(r1)
/* 80601EF4 4BFC0BDD */ bl          transform__Q22UI12ControlGroupFRQ32UI12ControlGroup7Functor
/* 80601EF8 93BE0008 */ stw         r29, 8(r30)
/* 80601EFC 7FC3F378 */ mr          r3, r30
/* 80601F00 935E001C */ stw         r26, 0x1c(r30)
/* 80601F04 819E0000 */ lwz         r12, 0(r30)
/* 80601F08 818C0044 */ lwz         r12, 0x44(r12)
/* 80601F0C 7D8903A6 */ mtctr       r12
/* 80601F10 4E800421 */ bctrl       
lbl_80601f14:
/* 80601F14 881E000C */ lbz         r0, 0xc(r30)
/* 80601F18 28000001 */ cmplwi      r0, 1
/* 80601F1C 4182FE70 */ beq+        lbl_80601d8c
lbl_80601f20:
/* 80601F20 7FE3FB78 */ mr          r3, r31
/* 80601F24 E3E10058 */ psq_l       f31, 0x58(r1), 0, 0
/* 80601F28 CBE10050 */ lfd         f31, 0x50(r1)
/* 80601F2C 39610050 */ addi        r11, r1, 0x50
/* 80601F30 4BA1F6A1 */ bl          _restgpr_20
/* 80601F34 80010064 */ lwz         r0, 0x64(r1)
/* 80601F38 7C0803A6 */ mtlr        r0
/* 80601F3C 38210060 */ addi        r1, r1, 0x60
/* 80601F40 4E800020 */ blr         