nofralloc
/* 80573B00 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80573B04 7C0802A6 */ mflr        r0
/* 80573B08 90010024 */ stw         r0, 0x24(r1)
/* 80573B0C 39610020 */ addi        r11, r1, 0x20
/* 80573B10 4BAADA91 */ bl          _savegpr_27
/* 80573B14 81030004 */ lwz         r8, 4(r3)
/* 80573B18 7C7B1B78 */ mr          r27, r3
/* 80573B1C 7C9C2378 */ mr          r28, r4
/* 80573B20 7CBD2B78 */ mr          r29, r5
/* 80573B24 81080004 */ lwz         r8, 4(r8)
/* 80573B28 7CDE3378 */ mr          r30, r6
/* 80573B2C 7CFF3B78 */ mr          r31, r7
/* 80573B30 80080014 */ lwz         r0, 0x14(r8)
/* 80573B34 54000739 */ rlwinm.     r0, r0, 0, 0x1c, 0x1c
/* 80573B38 40820354 */ bne-        lbl_80573e8c
/* 80573B3C 2C070000 */ cmpwi       r7, 0
/* 80573B40 40820034 */ bne-        lbl_80573b74
/* 80573B44 2C050000 */ cmpwi       r5, 0
/* 80573B48 4182002C */ beq-        lbl_80573b74
/* 80573B4C 38630004 */ addi        r3, r3, 4
/* 80573B50 4801CF0D */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80573B54 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 80573B58 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 80573B5C 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 80573B60 7FA4EB78 */ mr          r4, r29
/* 80573B64 7F85E378 */ mr          r5, r28
/* 80573B68 80630068 */ lwz         r3, 0x68(r3)
/* 80573B6C 7C63002E */ lwzx        r3, r3, r0
/* 80573B70 48137B41 */ bl          unk_806ab6b0
lbl_80573b74:
/* 80573B74 807B0004 */ lwz         r3, 4(r27)
/* 80573B78 80630004 */ lwz         r3, 4(r3)
/* 80573B7C 80030004 */ lwz         r0, 4(r3)
/* 80573B80 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 80573B84 40820328 */ bne-        lbl_80573eac
/* 80573B88 387B0004 */ addi        r3, r27, 4
/* 80573B8C 4801CBF1 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80573B90 8183000C */ lwz         r12, 0xc(r3)
/* 80573B94 818C0028 */ lwz         r12, 0x28(r12)
/* 80573B98 7D8903A6 */ mtctr       r12
/* 80573B9C 4E800421 */ bctrl       
/* 80573BA0 387B0004 */ addi        r3, r27, 4
/* 80573BA4 4801CEB9 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80573BA8 3C80809C */ lis         r4, lbl_809c3618@ha
/* 80573BAC 5460063E */ clrlwi      r0, r3, 0x18
/* 80573BB0 80643618 */ lwz         r3, lbl_809c3618@l(r4)
/* 80573BB4 1C000248 */ mulli       r0, r0, 0x248
/* 80573BB8 80630014 */ lwz         r3, 0x14(r3)
/* 80573BBC 7C630214 */ add         r3, r3, r0
/* 80573BC0 48224E4D */ bl          unk_80798a0c
/* 80573BC4 2C1E0000 */ cmpwi       r30, 0
/* 80573BC8 40820210 */ bne-        lbl_80573dd8
/* 80573BCC 3C60809C */ lis         r3, spInstance__Q26System10RaceConfig@ha
/* 80573BD0 38800000 */ li          r4, 0
/* 80573BD4 80A3D728 */ lwz         r5, spInstance__Q26System10RaceConfig@l(r3)
/* 80573BD8 80650B70 */ lwz         r3, 0xb70(r5)
/* 80573BDC 3863FFFD */ addi        r3, r3, -3
/* 80573BE0 28030007 */ cmplwi      r3, 7
/* 80573BE4 41810018 */ bgt-        lbl_80573bfc
/* 80573BE8 38000001 */ li          r0, 1
/* 80573BEC 7C001830 */ slw         r0, r0, r3
/* 80573BF0 700000C1 */ andi.       r0, r0, 0xc1
/* 80573BF4 41820008 */ beq-        lbl_80573bfc
/* 80573BF8 38800001 */ li          r4, 1
lbl_80573bfc:
/* 80573BFC 2C040000 */ cmpwi       r4, 0
/* 80573C00 418200E0 */ beq-        lbl_80573ce0
/* 80573C04 80050B78 */ lwz         r0, 0xb78(r5)
/* 80573C08 2C000000 */ cmpwi       r0, 0
/* 80573C0C 408200D4 */ bne-        lbl_80573ce0
/* 80573C10 387B0004 */ addi        r3, r27, 4
/* 80573C14 4801CE49 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80573C18 3C80809C */ lis         r4, spInstance__Q26System10RaceConfig@ha
/* 80573C1C 3CA0809C */ lis         r5, spInstance__Q26System11RaceManager@ha
/* 80573C20 8084D728 */ lwz         r4, spInstance__Q26System10RaceConfig@l(r4)
/* 80573C24 7C601B78 */ mr          r0, r3
/* 80573C28 8065D730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r5)
/* 80573C2C 80A40B70 */ lwz         r5, 0xb70(r4)
/* 80573C30 2C050003 */ cmpwi       r5, 3
/* 80573C34 40820050 */ bne-        lbl_80573c84
/* 80573C38 80840B78 */ lwz         r4, 0xb78(r4)
/* 80573C3C 2C040000 */ cmpwi       r4, 0
/* 80573C40 40820020 */ bne-        lbl_80573c60
/* 80573C44 80630010 */ lwz         r3, 0x10(r3)
/* 80573C48 5404063E */ clrlwi      r4, r0, 0x18
/* 80573C4C 81830000 */ lwz         r12, 0(r3)
/* 80573C50 818C0034 */ lwz         r12, 0x34(r12)
/* 80573C54 7D8903A6 */ mtctr       r12
/* 80573C58 4E800421 */ bctrl       
/* 80573C5C 4800016C */ b           lbl_80573dc8
lbl_80573c60:
/* 80573C60 2C040001 */ cmpwi       r4, 1
/* 80573C64 40820164 */ bne-        lbl_80573dc8
/* 80573C68 80630010 */ lwz         r3, 0x10(r3)
/* 80573C6C 5404063E */ clrlwi      r4, r0, 0x18
/* 80573C70 81830000 */ lwz         r12, 0(r3)
/* 80573C74 818C0034 */ lwz         r12, 0x34(r12)
/* 80573C78 7D8903A6 */ mtctr       r12
/* 80573C7C 4E800421 */ bctrl       
/* 80573C80 48000148 */ b           lbl_80573dc8
lbl_80573c84:
/* 80573C84 2C050009 */ cmpwi       r5, 9
/* 80573C88 4182000C */ beq-        lbl_80573c94
/* 80573C8C 2C05000A */ cmpwi       r5, 0xa
/* 80573C90 40820138 */ bne-        lbl_80573dc8
lbl_80573c94:
/* 80573C94 80840B78 */ lwz         r4, 0xb78(r4)
/* 80573C98 2C040000 */ cmpwi       r4, 0
/* 80573C9C 40820020 */ bne-        lbl_80573cbc
/* 80573CA0 80630010 */ lwz         r3, 0x10(r3)
/* 80573CA4 5404063E */ clrlwi      r4, r0, 0x18
/* 80573CA8 81830000 */ lwz         r12, 0(r3)
/* 80573CAC 818C0034 */ lwz         r12, 0x34(r12)
/* 80573CB0 7D8903A6 */ mtctr       r12
/* 80573CB4 4E800421 */ bctrl       
/* 80573CB8 48000110 */ b           lbl_80573dc8
lbl_80573cbc:
/* 80573CBC 2C040001 */ cmpwi       r4, 1
/* 80573CC0 40820108 */ bne-        lbl_80573dc8
/* 80573CC4 80630010 */ lwz         r3, 0x10(r3)
/* 80573CC8 5404063E */ clrlwi      r4, r0, 0x18
/* 80573CCC 81830000 */ lwz         r12, 0(r3)
/* 80573CD0 818C0034 */ lwz         r12, 0x34(r12)
/* 80573CD4 7D8903A6 */ mtctr       r12
/* 80573CD8 4E800421 */ bctrl       
/* 80573CDC 480000EC */ b           lbl_80573dc8
lbl_80573ce0:
/* 80573CE0 387B0004 */ addi        r3, r27, 4
/* 80573CE4 4801CD79 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80573CE8 7C7E1B78 */ mr          r30, r3
/* 80573CEC 387B0004 */ addi        r3, r27, 4
/* 80573CF0 4801CD6D */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80573CF4 3C80809C */ lis         r4, spInstance__Q26System10RaceConfig@ha
/* 80573CF8 3CA0809C */ lis         r5, spInstance__Q26System11RaceManager@ha
/* 80573CFC 8084D728 */ lwz         r4, spInstance__Q26System10RaceConfig@l(r4)
/* 80573D00 7C601B78 */ mr          r0, r3
/* 80573D04 8065D730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r5)
/* 80573D08 80A40B70 */ lwz         r5, 0xb70(r4)
/* 80573D0C 2C050003 */ cmpwi       r5, 3
/* 80573D10 40820058 */ bne-        lbl_80573d68
/* 80573D14 80840B78 */ lwz         r4, 0xb78(r4)
/* 80573D18 2C040000 */ cmpwi       r4, 0
/* 80573D1C 40820024 */ bne-        lbl_80573d40
/* 80573D20 80630010 */ lwz         r3, 0x10(r3)
/* 80573D24 5404063E */ clrlwi      r4, r0, 0x18
/* 80573D28 57C5063E */ clrlwi      r5, r30, 0x18
/* 80573D2C 81830000 */ lwz         r12, 0(r3)
/* 80573D30 818C002C */ lwz         r12, 0x2c(r12)
/* 80573D34 7D8903A6 */ mtctr       r12
/* 80573D38 4E800421 */ bctrl       
/* 80573D3C 4800008C */ b           lbl_80573dc8
lbl_80573d40:
/* 80573D40 2C040001 */ cmpwi       r4, 1
/* 80573D44 40820084 */ bne-        lbl_80573dc8
/* 80573D48 80630010 */ lwz         r3, 0x10(r3)
/* 80573D4C 5404063E */ clrlwi      r4, r0, 0x18
/* 80573D50 57C5063E */ clrlwi      r5, r30, 0x18
/* 80573D54 81830000 */ lwz         r12, 0(r3)
/* 80573D58 818C002C */ lwz         r12, 0x2c(r12)
/* 80573D5C 7D8903A6 */ mtctr       r12
/* 80573D60 4E800421 */ bctrl       
/* 80573D64 48000064 */ b           lbl_80573dc8
lbl_80573d68:
/* 80573D68 2C050009 */ cmpwi       r5, 9
/* 80573D6C 4182000C */ beq-        lbl_80573d78
/* 80573D70 2C05000A */ cmpwi       r5, 0xa
/* 80573D74 40820054 */ bne-        lbl_80573dc8
lbl_80573d78:
/* 80573D78 80840B78 */ lwz         r4, 0xb78(r4)
/* 80573D7C 2C040000 */ cmpwi       r4, 0
/* 80573D80 40820024 */ bne-        lbl_80573da4
/* 80573D84 80630010 */ lwz         r3, 0x10(r3)
/* 80573D88 5404063E */ clrlwi      r4, r0, 0x18
/* 80573D8C 57C5063E */ clrlwi      r5, r30, 0x18
/* 80573D90 81830000 */ lwz         r12, 0(r3)
/* 80573D94 818C002C */ lwz         r12, 0x2c(r12)
/* 80573D98 7D8903A6 */ mtctr       r12
/* 80573D9C 4E800421 */ bctrl       
/* 80573DA0 48000028 */ b           lbl_80573dc8
lbl_80573da4:
/* 80573DA4 2C040001 */ cmpwi       r4, 1
/* 80573DA8 40820020 */ bne-        lbl_80573dc8
/* 80573DAC 80630010 */ lwz         r3, 0x10(r3)
/* 80573DB0 5404063E */ clrlwi      r4, r0, 0x18
/* 80573DB4 57C5063E */ clrlwi      r5, r30, 0x18
/* 80573DB8 81830000 */ lwz         r12, 0(r3)
/* 80573DBC 818C002C */ lwz         r12, 0x2c(r12)
/* 80573DC0 7D8903A6 */ mtctr       r12
/* 80573DC4 4E800421 */ bctrl       
lbl_80573dc8:
/* 80573DC8 7F63DB78 */ mr          r3, r27
/* 80573DCC 7FA4EB78 */ mr          r4, r29
/* 80573DD0 7F85E378 */ mr          r5, r28
/* 80573DD4 4BFFD6B1 */ bl          unk_80571484
lbl_80573dd8:
/* 80573DD8 2C1C0000 */ cmpwi       r28, 0
/* 80573DDC 387B0004 */ addi        r3, r27, 4
/* 80573DE0 38800011 */ li          r4, 0x11
/* 80573DE4 41820008 */ beq-        lbl_80573dec
/* 80573DE8 38800010 */ li          r4, 0x10
lbl_80573dec:
/* 80573DEC 3CA08089 */ lis         r5, lbl_80891734@ha
/* 80573DF0 C0251734 */ lfs         f1, lbl_80891734@l(r5)
/* 80573DF4 38A00001 */ li          r5, 1
/* 80573DF8 4801C625 */ bl          unk_8059041c
/* 80573DFC 2C1F0000 */ cmpwi       r31, 0
/* 80573E00 41820018 */ beq-        lbl_80573e18
/* 80573E04 807B0004 */ lwz         r3, 4(r27)
/* 80573E08 80630004 */ lwz         r3, 4(r3)
/* 80573E0C 80030010 */ lwz         r0, 0x10(r3)
/* 80573E10 60000400 */ ori         r0, r0, 0x400
/* 80573E14 90030010 */ stw         r0, 0x10(r3)
lbl_80573e18:
/* 80573E18 2C1C0000 */ cmpwi       r28, 0
/* 80573E1C 4082000C */ bne-        lbl_80573e28
/* 80573E20 387B0004 */ addi        r3, r27, 4
/* 80573E24 4801D14D */ bl          unk_80590f70
lbl_80573e28:
/* 80573E28 38000082 */ li          r0, 0x82
/* 80573E2C B01B0048 */ sth         r0, 0x48(r27)
/* 80573E30 3C60809C */ lis         r3, spInstance__Q26System10RaceConfig@ha
/* 80573E34 38800000 */ li          r4, 0
/* 80573E38 8063D728 */ lwz         r3, spInstance__Q26System10RaceConfig@l(r3)
/* 80573E3C 80630B70 */ lwz         r3, 0xb70(r3)
/* 80573E40 3803FFFD */ addi        r0, r3, -3
/* 80573E44 28000007 */ cmplwi      r0, 7
/* 80573E48 41810018 */ bgt-        lbl_80573e60
/* 80573E4C 38600001 */ li          r3, 1
/* 80573E50 7C600030 */ slw         r0, r3, r0
/* 80573E54 700000C1 */ andi.       r0, r0, 0xc1
/* 80573E58 41820008 */ beq-        lbl_80573e60
/* 80573E5C 7C641B78 */ mr          r4, r3
lbl_80573e60:
/* 80573E60 2C040000 */ cmpwi       r4, 0
/* 80573E64 41820010 */ beq-        lbl_80573e74
/* 80573E68 A87B0048 */ lha         r3, 0x48(r27)
/* 80573E6C 3803003C */ addi        r0, r3, 0x3c
/* 80573E70 B01B0048 */ sth         r0, 0x48(r27)
lbl_80573e74:
/* 80573E74 807B0004 */ lwz         r3, 4(r27)
/* 80573E78 80630004 */ lwz         r3, 4(r3)
/* 80573E7C 80030004 */ lwz         r0, 4(r3)
/* 80573E80 60000010 */ ori         r0, r0, 0x10
/* 80573E84 90030004 */ stw         r0, 4(r3)
/* 80573E88 48000024 */ b           lbl_80573eac
lbl_80573e8c:
/* 80573E8C 2C040000 */ cmpwi       r4, 0
/* 80573E90 4082000C */ bne-        lbl_80573e9c
/* 80573E94 38630004 */ addi        r3, r3, 4
/* 80573E98 4801D0D9 */ bl          unk_80590f70
lbl_80573e9c:
/* 80573E9C 387B0004 */ addi        r3, r27, 4
/* 80573EA0 4801D5AD */ bl          kartNetReceiver__Q24Kart15KartObjectProxyFv
/* 80573EA4 38000001 */ li          r0, 1
/* 80573EA8 98030055 */ stb         r0, 0x55(r3)
lbl_80573eac:
/* 80573EAC 39610020 */ addi        r11, r1, 0x20
/* 80573EB0 4BAAD73D */ bl          _restgpr_27
/* 80573EB4 80010024 */ lwz         r0, 0x24(r1)
/* 80573EB8 7C0803A6 */ mtlr        r0
/* 80573EBC 38210020 */ addi        r1, r1, 0x20
/* 80573EC0 4E800020 */ blr         