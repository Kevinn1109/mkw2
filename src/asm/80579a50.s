nofralloc
/* 80579A50 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80579A54 7C0802A6 */ mflr        r0
/* 80579A58 90010024 */ stw         r0, 0x24(r1)
/* 80579A5C 93E1001C */ stw         r31, 0x1c(r1)
/* 80579A60 3FE0808B */ lis         r31, lbl_808b58f0@ha
/* 80579A64 3BFF58F0 */ addi        r31, r31, lbl_808b58f0@l
/* 80579A68 93C10018 */ stw         r30, 0x18(r1)
/* 80579A6C 7C7E1B78 */ mr          r30, r3
/* 80579A70 80830000 */ lwz         r4, 0(r3)
/* 80579A74 80640004 */ lwz         r3, 4(r4)
/* 80579A78 80030014 */ lwz         r0, 0x14(r3)
/* 80579A7C 54000739 */ rlwinm.     r0, r0, 0, 0x1c, 0x1c
/* 80579A80 4082024C */ bne-        lbl_80579ccc
/* 80579A84 8003000C */ lwz         r0, 0xc(r3)
/* 80579A88 540004A5 */ rlwinm.     r0, r0, 0, 0x12, 0x12
/* 80579A8C 41820240 */ beq-        lbl_80579ccc
/* 80579A90 3C60809C */ lis         r3, spInstance__Q26System10RaceConfig@ha
/* 80579A94 38800000 */ li          r4, 0
/* 80579A98 80A3D728 */ lwz         r5, spInstance__Q26System10RaceConfig@l(r3)
/* 80579A9C 80650B70 */ lwz         r3, 0xb70(r5)
/* 80579AA0 3863FFFD */ addi        r3, r3, -3
/* 80579AA4 28030007 */ cmplwi      r3, 7
/* 80579AA8 41810018 */ bgt-        lbl_80579ac0
/* 80579AAC 38000001 */ li          r0, 1
/* 80579AB0 7C001830 */ slw         r0, r0, r3
/* 80579AB4 700000C1 */ andi.       r0, r0, 0xc1
/* 80579AB8 41820008 */ beq-        lbl_80579ac0
/* 80579ABC 38800001 */ li          r4, 1
lbl_80579ac0:
/* 80579AC0 2C040000 */ cmpwi       r4, 0
/* 80579AC4 418200C4 */ beq-        lbl_80579b88
/* 80579AC8 80050B78 */ lwz         r0, 0xb78(r5)
/* 80579ACC 2C000000 */ cmpwi       r0, 0
/* 80579AD0 408200B8 */ bne-        lbl_80579b88
/* 80579AD4 7FC3F378 */ mr          r3, r30
/* 80579AD8 48016F85 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80579ADC 5460063E */ clrlwi      r0, r3, 0x18
/* 80579AE0 3C60809C */ lis         r3, lbl_809c4748@ha
/* 80579AE4 1C000018 */ mulli       r0, r0, 0x18
/* 80579AE8 80634748 */ lwz         r3, lbl_809c4748@l(r3)
/* 80579AEC 7C630214 */ add         r3, r3, r0
/* 80579AF0 880303C4 */ lbz         r0, 0x3c4(r3)
/* 80579AF4 2C000000 */ cmpwi       r0, 0
/* 80579AF8 40820090 */ bne-        lbl_80579b88
/* 80579AFC A01E0234 */ lhz         r0, 0x234(r30)
/* 80579B00 2C000000 */ cmpwi       r0, 0
/* 80579B04 40820084 */ bne-        lbl_80579b88
/* 80579B08 809E0000 */ lwz         r4, 0(r30)
/* 80579B0C 7FC3F378 */ mr          r3, r30
/* 80579B10 80840004 */ lwz         r4, 4(r4)
/* 80579B14 80040014 */ lwz         r0, 0x14(r4)
/* 80579B18 60000080 */ ori         r0, r0, 0x80
/* 80579B1C 90040014 */ stw         r0, 0x14(r4)
/* 80579B20 48016F3D */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80579B24 3C80809C */ lis         r4, spInstance__Q26System10RaceConfig@ha
/* 80579B28 3CA0809C */ lis         r5, spInstance__Q26System11RaceManager@ha
/* 80579B2C 8084D728 */ lwz         r4, spInstance__Q26System10RaceConfig@l(r4)
/* 80579B30 7C601B78 */ mr          r0, r3
/* 80579B34 8065D730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r5)
/* 80579B38 80A40B70 */ lwz         r5, 0xb70(r4)
/* 80579B3C 2C050003 */ cmpwi       r5, 3
/* 80579B40 40820020 */ bne-        lbl_80579b60
/* 80579B44 80840B78 */ lwz         r4, 0xb78(r4)
/* 80579B48 2C040000 */ cmpwi       r4, 0
/* 80579B4C 4082003C */ bne-        lbl_80579b88
/* 80579B50 80630010 */ lwz         r3, 0x10(r3)
/* 80579B54 5404063E */ clrlwi      r4, r0, 0x18
/* 80579B58 4BFBF2A9 */ bl          unk_80538e00
/* 80579B5C 4800002C */ b           lbl_80579b88
lbl_80579b60:
/* 80579B60 2C050009 */ cmpwi       r5, 9
/* 80579B64 4182000C */ beq-        lbl_80579b70
/* 80579B68 2C05000A */ cmpwi       r5, 0xa
/* 80579B6C 4082001C */ bne-        lbl_80579b88
lbl_80579b70:
/* 80579B70 80840B78 */ lwz         r4, 0xb78(r4)
/* 80579B74 2C040000 */ cmpwi       r4, 0
/* 80579B78 40820010 */ bne-        lbl_80579b88
/* 80579B7C 80630010 */ lwz         r3, 0x10(r3)
/* 80579B80 5404063E */ clrlwi      r4, r0, 0x18
/* 80579B84 4BFC1B75 */ bl          unk_8053b6f8
lbl_80579b88:
/* 80579B88 7FC3F378 */ mr          r3, r30
/* 80579B8C 48016841 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80579B90 809E0000 */ lwz         r4, 0(r30)
/* 80579B94 80C30068 */ lwz         r6, 0x68(r3)
/* 80579B98 80840004 */ lwz         r4, 4(r4)
/* 80579B9C 80A3006C */ lwz         r5, 0x6c(r3)
/* 80579BA0 80040014 */ lwz         r0, 0x14(r4)
/* 80579BA4 80630070 */ lwz         r3, 0x70(r3)
/* 80579BA8 54000631 */ rlwinm.     r0, r0, 0, 0x18, 0x18
/* 80579BAC 90C10008 */ stw         r6, 8(r1)
/* 80579BB0 90A1000C */ stw         r5, 0xc(r1)
/* 80579BB4 90610010 */ stw         r3, 0x10(r1)
/* 80579BB8 4182000C */ beq-        lbl_80579bc4
/* 80579BBC C03F02D0 */ lfs         f1, 0x2d0(r31)
/* 80579BC0 48000008 */ b           lbl_80579bc8
lbl_80579bc4:
/* 80579BC4 C03F02CC */ lfs         f1, 0x2cc(r31)
lbl_80579bc8:
/* 80579BC8 C001000C */ lfs         f0, 0xc(r1)
/* 80579BCC 7FC3F378 */ mr          r3, r30
/* 80579BD0 EC000828 */ fsubs       f0, f0, f1
/* 80579BD4 D001000C */ stfs        f0, 0xc(r1)
/* 80579BD8 480167F5 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80579BDC C0010008 */ lfs         f0, 8(r1)
/* 80579BE0 D0030068 */ stfs        f0, 0x68(r3)
/* 80579BE4 C001000C */ lfs         f0, 0xc(r1)
/* 80579BE8 D003006C */ stfs        f0, 0x6c(r3)
/* 80579BEC C0010010 */ lfs         f0, 0x10(r1)
/* 80579BF0 D0030070 */ stfs        f0, 0x70(r3)
/* 80579BF4 7FC3F378 */ mr          r3, r30
/* 80579BF8 480167D5 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80579BFC 38000001 */ li          r0, 1
/* 80579C00 98030171 */ stb         r0, 0x171(r3)
/* 80579C04 807E0000 */ lwz         r3, 0(r30)
/* 80579C08 A89F02D4 */ lha         r4, 0x2d4(r31)
/* 80579C0C 80630004 */ lwz         r3, 4(r3)
/* 80579C10 80030014 */ lwz         r0, 0x14(r3)
/* 80579C14 54000631 */ rlwinm.     r0, r0, 0, 0x18, 0x18
/* 80579C18 41820008 */ beq-        lbl_80579c20
/* 80579C1C A89F02D6 */ lha         r4, 0x2d6(r31)
lbl_80579c20:
/* 80579C20 A07E0234 */ lhz         r3, 0x234(r30)
/* 80579C24 38030001 */ addi        r0, r3, 1
/* 80579C28 B01E0234 */ sth         r0, 0x234(r30)
/* 80579C2C 5400043E */ clrlwi      r0, r0, 0x10
/* 80579C30 7C002000 */ cmpw        r0, r4
/* 80579C34 40810098 */ ble-        lbl_80579ccc
/* 80579C38 809E0000 */ lwz         r4, 0(r30)
/* 80579C3C 7FC3F378 */ mr          r3, r30
/* 80579C40 80840004 */ lwz         r4, 4(r4)
/* 80579C44 8004000C */ lwz         r0, 0xc(r4)
/* 80579C48 540004E2 */ rlwinm      r0, r0, 0, 0x13, 0x11
/* 80579C4C 9004000C */ stw         r0, 0xc(r4)
/* 80579C50 809E0000 */ lwz         r4, 0(r30)
/* 80579C54 80840004 */ lwz         r4, 4(r4)
/* 80579C58 8004000C */ lwz         r0, 0xc(r4)
/* 80579C5C 60004000 */ ori         r0, r0, 0x4000
/* 80579C60 9004000C */ stw         r0, 0xc(r4)
/* 80579C64 809E0000 */ lwz         r4, 0(r30)
/* 80579C68 80840004 */ lwz         r4, 4(r4)
/* 80579C6C 80040014 */ lwz         r0, 0x14(r4)
/* 80579C70 5400066E */ rlwinm      r0, r0, 0, 0x19, 0x17
/* 80579C74 90040014 */ stw         r0, 0x14(r4)
/* 80579C78 48016DE5 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80579C7C 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 80579C80 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 80579C84 808421D0 */ lwz         r4, lbl_809c21d0@l(r4)
/* 80579C88 38A00001 */ li          r5, 1
/* 80579C8C 3BE00000 */ li          r31, 0
/* 80579C90 7FC3F378 */ mr          r3, r30
/* 80579C94 80840068 */ lwz         r4, 0x68(r4)
/* 80579C98 7C84002E */ lwzx        r4, r4, r0
/* 80579C9C 98A4006A */ stb         r5, 0x6a(r4)
/* 80579CA0 809E0000 */ lwz         r4, 0(r30)
/* 80579CA4 80840004 */ lwz         r4, 4(r4)
/* 80579CA8 80040008 */ lwz         r0, 8(r4)
/* 80579CAC 64000002 */ oris        r0, r0, 2
/* 80579CB0 90040008 */ stw         r0, 8(r4)
/* 80579CB4 A01E0254 */ lhz         r0, 0x254(r30)
/* 80579CB8 B3FE0234 */ sth         r31, 0x234(r30)
/* 80579CBC 60000001 */ ori         r0, r0, 1
/* 80579CC0 B01E0254 */ sth         r0, 0x254(r30)
/* 80579CC4 48016709 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80579CC8 9BE30171 */ stb         r31, 0x171(r3)
lbl_80579ccc:
/* 80579CCC 80010024 */ lwz         r0, 0x24(r1)
/* 80579CD0 83E1001C */ lwz         r31, 0x1c(r1)
/* 80579CD4 83C10018 */ lwz         r30, 0x18(r1)
/* 80579CD8 7C0803A6 */ mtlr        r0
/* 80579CDC 38210020 */ addi        r1, r1, 0x20
/* 80579CE0 4E800020 */ blr         