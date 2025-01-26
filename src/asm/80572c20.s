nofralloc
/* 80572C20 9421FFB0 */ stwu        r1, -0x50(r1)
/* 80572C24 7C0802A6 */ mflr        r0
/* 80572C28 90010054 */ stw         r0, 0x54(r1)
/* 80572C2C DBE10040 */ stfd        f31, 0x40(r1)
/* 80572C30 F3E10048 */ psq_st      f31, 0x48(r1), 0, 0
/* 80572C34 DBC10030 */ stfd        f30, 0x30(r1)
/* 80572C38 F3C10038 */ psq_st      f30, 0x38(r1), 0, 0
/* 80572C3C 39610030 */ addi        r11, r1, 0x30
/* 80572C40 4BAAE955 */ bl          _savegpr_24
/* 80572C44 3FE08089 */ lis         r31, lbl_80891730@ha
/* 80572C48 7C7C1B78 */ mr          r28, r3
/* 80572C4C 3BFF1730 */ addi        r31, r31, lbl_80891730@l
/* 80572C50 38630004 */ addi        r3, r3, 4
/* 80572C54 4801D759 */ bl          kartPhysics__Q24Kart15KartObjectProxyFv
/* 80572C58 83C30008 */ lwz         r30, 8(r3)
/* 80572C5C 387C0004 */ addi        r3, r28, 4
/* 80572C60 4801DB1D */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80572C64 387C0004 */ addi        r3, r28, 4
/* 80572C68 4801E855 */ bl          getScale__Q24Kart15KartObjectProxyFv
/* 80572C6C 387C0004 */ addi        r3, r28, 4
/* 80572C70 4801D75D */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80572C74 809C0004 */ lwz         r4, 4(r28)
/* 80572C78 3BA30100 */ addi        r29, r3, 0x100
/* 80572C7C 80640004 */ lwz         r3, 4(r4)
/* 80572C80 80030010 */ lwz         r0, 0x10(r3)
/* 80572C84 70000880 */ andi.       r0, r0, 0x880
/* 80572C88 40820010 */ bne-        lbl_80572c98
/* 80572C8C 8003000C */ lwz         r0, 0xc(r3)
/* 80572C90 54000109 */ rlwinm.     r0, r0, 0, 4, 4
/* 80572C94 41820010 */ beq-        lbl_80572ca4
lbl_80572c98:
/* 80572C98 387C0004 */ addi        r3, r28, 4
/* 80572C9C 4801D731 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80572CA0 3BA300F0 */ addi        r29, r3, 0xf0
lbl_80572ca4:
/* 80572CA4 80BC0004 */ lwz         r5, 4(r28)
/* 80572CA8 387C0004 */ addi        r3, r28, 4
/* 80572CAC 80850004 */ lwz         r4, 4(r5)
/* 80572CB0 80A50004 */ lwz         r5, 4(r5)
/* 80572CB4 80040010 */ lwz         r0, 0x10(r4)
/* 80572CB8 3B250034 */ addi        r25, r5, 0x34
/* 80572CBC 5418DFFE */ rlwinm      r24, r0, 0x1b, 0x1f, 0x1f
/* 80572CC0 4801D9DD */ bl          kartBody__Q24Kart15KartObjectProxyFv
/* 80572CC4 C3E3009C */ lfs         f31, 0x9c(r3)
/* 80572CC8 387C0004 */ addi        r3, r28, 4
/* 80572CCC 4801DAB1 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80572CD0 C3C30170 */ lfs         f30, 0x170(r3)
/* 80572CD4 387C0004 */ addi        r3, r28, 4
/* 80572CD8 4801E7E5 */ bl          getScale__Q24Kart15KartObjectProxyFv
/* 80572CDC 7C7A1B78 */ mr          r26, r3
/* 80572CE0 387C0004 */ addi        r3, r28, 4
/* 80572CE4 4801D6E9 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80572CE8 7C7B1B78 */ mr          r27, r3
/* 80572CEC 387C0004 */ addi        r3, r28, 4
/* 80572CF0 4801DD6D */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80572CF4 FC20F090 */ fmr         f1, f30
/* 80572CF8 7C601B78 */ mr          r0, r3
/* 80572CFC FC40F890 */ fmr         f2, f31
/* 80572D00 7F83E378 */ mr          r3, r28
/* 80572D04 7F65DB78 */ mr          r5, r27
/* 80572D08 7FC6F378 */ mr          r6, r30
/* 80572D0C 7FA7EB78 */ mr          r7, r29
/* 80572D10 7F48D378 */ mr          r8, r26
/* 80572D14 7F09C378 */ mr          r9, r24
/* 80572D18 7F2ACB78 */ mr          r10, r25
/* 80572D1C 5404063E */ clrlwi      r4, r0, 0x18
/* 80572D20 48043A05 */ bl          PlayerSub18_findCollisionInner
/* 80572D24 801E0008 */ lwz         r0, 8(r30)
/* 80572D28 70030042 */ andi.       r3, r0, 0x42
/* 80572D2C 40820010 */ bne-        lbl_80572d3c
/* 80572D30 801C002C */ lwz         r0, 0x2c(r28)
/* 80572D34 5400073B */ rlwinm.     r0, r0, 0, 0x1c, 0x1d
/* 80572D38 418200CC */ beq-        lbl_80572e04
lbl_80572d3c:
/* 80572D3C 2C030000 */ cmpwi       r3, 0
/* 80572D40 41820074 */ beq-        lbl_80572db4
/* 80572D44 801C002C */ lwz         r0, 0x2c(r28)
/* 80572D48 5400073B */ rlwinm.     r0, r0, 0, 0x1c, 0x1d
/* 80572D4C 418200B0 */ beq-        lbl_80572dfc
/* 80572D50 C03E0024 */ lfs         f1, 0x24(r30)
/* 80572D54 C01C0020 */ lfs         f0, 0x20(r28)
/* 80572D58 EC01002A */ fadds       f0, f1, f0
/* 80572D5C D01E0024 */ stfs        f0, 0x24(r30)
/* 80572D60 C03E0028 */ lfs         f1, 0x28(r30)
/* 80572D64 C01C0024 */ lfs         f0, 0x24(r28)
/* 80572D68 EC01002A */ fadds       f0, f1, f0
/* 80572D6C D01E0028 */ stfs        f0, 0x28(r30)
/* 80572D70 C03E002C */ lfs         f1, 0x2c(r30)
/* 80572D74 C01C0028 */ lfs         f0, 0x28(r28)
/* 80572D78 EC01002A */ fadds       f0, f1, f0
/* 80572D7C D01E002C */ stfs        f0, 0x2c(r30)
/* 80572D80 801C002C */ lwz         r0, 0x2c(r28)
/* 80572D84 5400077B */ rlwinm.     r0, r0, 0, 0x1d, 0x1d
/* 80572D88 41820010 */ beq-        lbl_80572d98
/* 80572D8C 801E0008 */ lwz         r0, 8(r30)
/* 80572D90 60000002 */ ori         r0, r0, 2
/* 80572D94 901E0008 */ stw         r0, 8(r30)
lbl_80572d98:
/* 80572D98 801C002C */ lwz         r0, 0x2c(r28)
/* 80572D9C 54000739 */ rlwinm.     r0, r0, 0, 0x1c, 0x1c
/* 80572DA0 4182005C */ beq-        lbl_80572dfc
/* 80572DA4 801E0008 */ lwz         r0, 8(r30)
/* 80572DA8 60000040 */ ori         r0, r0, 0x40
/* 80572DAC 901E0008 */ stw         r0, 8(r30)
/* 80572DB0 4800004C */ b           lbl_80572dfc
lbl_80572db4:
/* 80572DB4 C01C0020 */ lfs         f0, 0x20(r28)
/* 80572DB8 D01E0024 */ stfs        f0, 0x24(r30)
/* 80572DBC C01C0024 */ lfs         f0, 0x24(r28)
/* 80572DC0 D01E0028 */ stfs        f0, 0x28(r30)
/* 80572DC4 C01C0028 */ lfs         f0, 0x28(r28)
/* 80572DC8 D01E002C */ stfs        f0, 0x2c(r30)
/* 80572DCC 801C002C */ lwz         r0, 0x2c(r28)
/* 80572DD0 5400077B */ rlwinm.     r0, r0, 0, 0x1d, 0x1d
/* 80572DD4 41820010 */ beq-        lbl_80572de4
/* 80572DD8 801E0008 */ lwz         r0, 8(r30)
/* 80572DDC 60000002 */ ori         r0, r0, 2
/* 80572DE0 901E0008 */ stw         r0, 8(r30)
lbl_80572de4:
/* 80572DE4 801C002C */ lwz         r0, 0x2c(r28)
/* 80572DE8 54000739 */ rlwinm.     r0, r0, 0, 0x1c, 0x1c
/* 80572DEC 41820010 */ beq-        lbl_80572dfc
/* 80572DF0 801E0008 */ lwz         r0, 8(r30)
/* 80572DF4 60000040 */ ori         r0, r0, 0x40
/* 80572DF8 901E0008 */ stw         r0, 8(r30)
lbl_80572dfc:
/* 80572DFC 387E0024 */ addi        r3, r30, 0x24
/* 80572E00 4BCD0CDD */ bl          normalise__Q23EGG8Vector3fFv
lbl_80572e04:
/* 80572E04 387C0004 */ addi        r3, r28, 4
/* 80572E08 4801D5A5 */ bl          kartPhysics__Q24Kart15KartObjectProxyFv
/* 80572E0C 387C0004 */ addi        r3, r28, 4
/* 80572E10 3BA00000 */ li          r29, 0
/* 80572E14 4801E6E1 */ bl          inRespawn__Q24Kart15KartObjectProxyFv
/* 80572E18 2C030000 */ cmpwi       r3, 0
/* 80572E1C 40820040 */ bne-        lbl_80572e5c
/* 80572E20 807C0004 */ lwz         r3, 4(r28)
/* 80572E24 80830004 */ lwz         r4, 4(r3)
/* 80572E28 80040004 */ lwz         r0, 4(r4)
/* 80572E2C 540002D7 */ rlwinm.     r0, r0, 0, 0xb, 0xb
/* 80572E30 4082002C */ bne-        lbl_80572e5c
/* 80572E34 80640008 */ lwz         r3, 8(r4)
/* 80572E38 5460056B */ rlwinm.     r0, r3, 0, 0x15, 0x15
/* 80572E3C 40820020 */ bne-        lbl_80572e5c
/* 80572E40 546004E7 */ rlwinm.     r0, r3, 0, 0x13, 0x13
/* 80572E44 40820018 */ bne-        lbl_80572e5c
/* 80572E48 8004000C */ lwz         r0, 0xc(r4)
/* 80572E4C 54000529 */ rlwinm.     r0, r0, 0, 0x14, 0x14
/* 80572E50 4082000C */ bne-        lbl_80572e5c
/* 80572E54 546005AD */ rlwinm.     r0, r3, 0, 0x16, 0x16
/* 80572E58 41820008 */ beq-        lbl_80572e60
lbl_80572e5c:
/* 80572E5C 3BA00001 */ li          r29, 1
lbl_80572e60:
/* 80572E60 2C1D0000 */ cmpwi       r29, 0
/* 80572E64 4182000C */ beq-        lbl_80572e70
/* 80572E68 C3DF0000 */ lfs         f30, 0(r31)
/* 80572E6C 48000008 */ b           lbl_80572e74
lbl_80572e70:
/* 80572E70 C3DF0038 */ lfs         f30, 0x38(r31)
lbl_80572e74:
/* 80572E74 C01F0000 */ lfs         f0, 0(r31)
/* 80572E78 3B000000 */ li          r24, 0
/* 80572E7C 38800000 */ li          r4, 0
/* 80572E80 FC1E0040 */ fcmpo       cr0, f30, f0
/* 80572E84 4081001C */ ble-        lbl_80572ea0
/* 80572E88 807C0004 */ lwz         r3, 4(r28)
/* 80572E8C 80630004 */ lwz         r3, 4(r3)
/* 80572E90 80030004 */ lwz         r0, 4(r3)
/* 80572E94 54000421 */ rlwinm.     r0, r0, 0, 0x10, 0x10
/* 80572E98 41820008 */ beq-        lbl_80572ea0
/* 80572E9C 38800001 */ li          r4, 1
lbl_80572ea0:
/* 80572EA0 2C040000 */ cmpwi       r4, 0
/* 80572EA4 41820020 */ beq-        lbl_80572ec4
/* 80572EA8 387C0004 */ addi        r3, r28, 4
/* 80572EAC 4801D521 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80572EB0 C02300D8 */ lfs         f1, 0xd8(r3)
/* 80572EB4 C01F0060 */ lfs         f0, 0x60(r31)
/* 80572EB8 FC010040 */ fcmpo       cr0, f1, f0
/* 80572EBC 40800008 */ bge-        lbl_80572ec4
/* 80572EC0 3B000001 */ li          r24, 1
lbl_80572ec4:
/* 80572EC4 807C0004 */ lwz         r3, 4(r28)
/* 80572EC8 80630004 */ lwz         r3, 4(r3)
/* 80572ECC 80030008 */ lwz         r0, 8(r3)
/* 80572ED0 8063000C */ lwz         r3, 0xc(r3)
/* 80572ED4 540007FF */ clrlwi.     r0, r0, 0x1f
/* 80572ED8 547957FE */ rlwinm      r25, r3, 0xa, 0x1f, 0x1f
/* 80572EDC 4182000C */ beq-        lbl_80572ee8
/* 80572EE0 C3FF002C */ lfs         f31, 0x2c(r31)
/* 80572EE4 48000008 */ b           lbl_80572eec
lbl_80572ee8:
/* 80572EE8 C3FF0034 */ lfs         f31, 0x34(r31)
lbl_80572eec:
/* 80572EEC 387C0004 */ addi        r3, r28, 4
/* 80572EF0 4801D4BD */ bl          kartPhysics__Q24Kart15KartObjectProxyFv
/* 80572EF4 7C7D1B78 */ mr          r29, r3
/* 80572EF8 387C0004 */ addi        r3, r28, 4
/* 80572EFC 4801D4D1 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80572F00 FC20F890 */ fmr         f1, f31
/* 80572F04 7F200034 */ cntlzw      r0, r25
/* 80572F08 FC40F090 */ fmr         f2, f30
/* 80572F0C 80BD0008 */ lwz         r5, 8(r29)
/* 80572F10 7C641B78 */ mr          r4, r3
/* 80572F14 7F83E378 */ mr          r3, r28
/* 80572F18 7F06C378 */ mr          r6, r24
/* 80572F1C 5407D97E */ srwi        r7, r0, 5
/* 80572F20 48044399 */ bl          unk_805b72b8
/* 80572F24 E3E10048 */ psq_l       f31, 0x48(r1), 0, 0
/* 80572F28 CBE10040 */ lfd         f31, 0x40(r1)
/* 80572F2C E3C10038 */ psq_l       f30, 0x38(r1), 0, 0
/* 80572F30 39610030 */ addi        r11, r1, 0x30
/* 80572F34 CBC10030 */ lfd         f30, 0x30(r1)
/* 80572F38 4BAAE6A9 */ bl          _restgpr_24
/* 80572F3C 80010054 */ lwz         r0, 0x54(r1)
/* 80572F40 7C0803A6 */ mtlr        r0
/* 80572F44 38210050 */ addi        r1, r1, 0x50
/* 80572F48 4E800020 */ blr         