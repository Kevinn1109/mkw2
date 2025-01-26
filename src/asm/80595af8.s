nofralloc
/* 80595AF8 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80595AFC 7C0802A6 */ mflr        r0
/* 80595B00 2C04FFFF */ cmpwi       r4, -1
/* 80595B04 90010014 */ stw         r0, 0x14(r1)
/* 80595B08 93E1000C */ stw         r31, 0xc(r1)
/* 80595B0C 7C7F1B78 */ mr          r31, r3
/* 80595B10 93C10008 */ stw         r30, 8(r1)
/* 80595B14 7C9E2378 */ mr          r30, r4
/* 80595B18 4082006C */ bne-        lbl_80595b84
/* 80595B1C 80630018 */ lwz         r3, 0x18(r3)
/* 80595B20 4BFFAC5D */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80595B24 38630264 */ addi        r3, r3, 0x264
/* 80595B28 4BFF3589 */ bl          unk_805890b0
/* 80595B2C 3C60809C */ lis         r3, spInstance__Q26System10RaceConfig@ha
/* 80595B30 3C80809C */ lis         r4, spInstance__Q26System11RaceManager@ha
/* 80595B34 80A3D728 */ lwz         r5, spInstance__Q26System10RaceConfig@l(r3)
/* 80595B38 8064D730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r4)
/* 80595B3C 80050B70 */ lwz         r0, 0xb70(r5)
/* 80595B40 2C000004 */ cmpwi       r0, 4
/* 80595B44 4082001C */ bne-        lbl_80595b60
/* 80595B48 A0050B9E */ lhz         r0, 0xb9e(r5)
/* 80595B4C 2C00000A */ cmpwi       r0, 0xa
/* 80595B50 40820010 */ bne-        lbl_80595b60
/* 80595B54 80630010 */ lwz         r3, 0x10(r3)
/* 80595B58 38000002 */ li          r0, 2
/* 80595B5C 9003000C */ stw         r0, 0xc(r3)
lbl_80595b60:
/* 80595B60 807F0018 */ lwz         r3, 0x18(r31)
/* 80595B64 80830000 */ lwz         r4, 0(r3)
/* 80595B68 80840004 */ lwz         r4, 4(r4)
/* 80595B6C 80040014 */ lwz         r0, 0x14(r4)
/* 80595B70 5400077B */ rlwinm.     r0, r0, 0, 0x1d, 0x1d
/* 80595B74 418200D0 */ beq-        lbl_80595c44
/* 80595B78 3880001C */ li          r4, 0x1c
/* 80595B7C 4BFFBC45 */ bl          unk_805917c0
/* 80595B80 480000C4 */ b           lbl_80595c44
lbl_80595b84:
/* 80595B84 2C040000 */ cmpwi       r4, 0
/* 80595B88 40810088 */ ble-        lbl_80595c10
/* 80595B8C 80630018 */ lwz         r3, 0x18(r3)
/* 80595B90 4BFFABED */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80595B94 3C80808B */ lis         r4, lbl_808b64f8@ha
/* 80595B98 57C01838 */ slwi        r0, r30, 3
/* 80595B9C 388464F8 */ addi        r4, r4, lbl_808b64f8@l
/* 80595BA0 7C840214 */ add         r4, r4, r0
/* 80595BA4 A8840004 */ lha         r4, 4(r4)
/* 80595BA8 4BFEC585 */ bl          PlayerSub10_applyStartBoost
/* 80595BAC 3C60809C */ lis         r3, spInstance__Q26System10RaceConfig@ha
/* 80595BB0 3C80809C */ lis         r4, spInstance__Q26System11RaceManager@ha
/* 80595BB4 80A3D728 */ lwz         r5, spInstance__Q26System10RaceConfig@l(r3)
/* 80595BB8 8064D730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r4)
/* 80595BBC 80050B70 */ lwz         r0, 0xb70(r5)
/* 80595BC0 2C000004 */ cmpwi       r0, 4
/* 80595BC4 4082001C */ bne-        lbl_80595be0
/* 80595BC8 A0050B9E */ lhz         r0, 0xb9e(r5)
/* 80595BCC 2C00000A */ cmpwi       r0, 0xa
/* 80595BD0 40820010 */ bne-        lbl_80595be0
/* 80595BD4 80630010 */ lwz         r3, 0x10(r3)
/* 80595BD8 7FC4F378 */ mr          r4, r30
/* 80595BDC 4BFA7F59 */ bl          unk_8053db34
lbl_80595be0:
/* 80595BE0 807F0018 */ lwz         r3, 0x18(r31)
/* 80595BE4 80830000 */ lwz         r4, 0(r3)
/* 80595BE8 80840004 */ lwz         r4, 4(r4)
/* 80595BEC 80040014 */ lwz         r0, 0x14(r4)
/* 80595BF0 5400077B */ rlwinm.     r0, r0, 0, 0x1d, 0x1d
/* 80595BF4 41820050 */ beq-        lbl_80595c44
/* 80595BF8 3880001B */ li          r4, 0x1b
/* 80595BFC 4BFFBBC5 */ bl          unk_805917c0
/* 80595C00 807F0018 */ lwz         r3, 0x18(r31)
/* 80595C04 4BFFB83D */ bl          kartNetSender__Q24Kart15KartObjectProxyFv
/* 80595C08 9BC30057 */ stb         r30, 0x57(r3)
/* 80595C0C 48000038 */ b           lbl_80595c44
lbl_80595c10:
/* 80595C10 3C60809C */ lis         r3, spInstance__Q26System10RaceConfig@ha
/* 80595C14 3C80809C */ lis         r4, spInstance__Q26System11RaceManager@ha
/* 80595C18 80A3D728 */ lwz         r5, spInstance__Q26System10RaceConfig@l(r3)
/* 80595C1C 8064D730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r4)
/* 80595C20 80050B70 */ lwz         r0, 0xb70(r5)
/* 80595C24 2C000004 */ cmpwi       r0, 4
/* 80595C28 4082001C */ bne-        lbl_80595c44
/* 80595C2C A0050B9E */ lhz         r0, 0xb9e(r5)
/* 80595C30 2C00000A */ cmpwi       r0, 0xa
/* 80595C34 40820010 */ bne-        lbl_80595c44
/* 80595C38 80630010 */ lwz         r3, 0x10(r3)
/* 80595C3C 38000002 */ li          r0, 2
/* 80595C40 9003000C */ stw         r0, 0xc(r3)
lbl_80595c44:
/* 80595C44 80010014 */ lwz         r0, 0x14(r1)
/* 80595C48 83E1000C */ lwz         r31, 0xc(r1)
/* 80595C4C 83C10008 */ lwz         r30, 8(r1)
/* 80595C50 7C0803A6 */ mtlr        r0
/* 80595C54 38210010 */ addi        r1, r1, 0x10
/* 80595C58 4E800020 */ blr         