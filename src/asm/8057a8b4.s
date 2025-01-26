nofralloc
/* 8057A8B4 9421FFD0 */ stwu        r1, -0x30(r1)
/* 8057A8B8 7C0802A6 */ mflr        r0
/* 8057A8BC 38C00001 */ li          r6, 1
/* 8057A8C0 38E00001 */ li          r7, 1
/* 8057A8C4 90010034 */ stw         r0, 0x34(r1)
/* 8057A8C8 39000001 */ li          r8, 1
/* 8057A8CC 38800001 */ li          r4, 1
/* 8057A8D0 93E1002C */ stw         r31, 0x2c(r1)
/* 8057A8D4 3FE08089 */ lis         r31, lbl_80891a00@ha
/* 8057A8D8 3BFF1A00 */ addi        r31, r31, lbl_80891a00@l
/* 8057A8DC 93C10028 */ stw         r30, 0x28(r1)
/* 8057A8E0 3FC0808B */ lis         r30, lbl_808b58f0@ha
/* 8057A8E4 C01F0000 */ lfs         f0, 0(r31)
/* 8057A8E8 3BDE58F0 */ addi        r30, r30, lbl_808b58f0@l
/* 8057A8EC 93A10024 */ stw         r29, 0x24(r1)
/* 8057A8F0 7C7D1B78 */ mr          r29, r3
/* 8057A8F4 81230000 */ lwz         r9, 0(r3)
/* 8057A8F8 D0030158 */ stfs        f0, 0x158(r3)
/* 8057A8FC D0030288 */ stfs        f0, 0x288(r3)
/* 8057A900 81490004 */ lwz         r10, 4(r9)
/* 8057A904 816A0004 */ lwz         r11, 4(r10)
/* 8057A908 556006F7 */ rlwinm.     r0, r11, 0, 0x1b, 0x1b
/* 8057A90C 40820014 */ bne-        lbl_8057a920
/* 8057A910 800A0008 */ lwz         r0, 8(r10)
/* 8057A914 7000001B */ andi.       r0, r0, 0x1b
/* 8057A918 40820008 */ bne-        lbl_8057a920
/* 8057A91C 38800000 */ li          r4, 0
lbl_8057a920:
/* 8057A920 2C040000 */ cmpwi       r4, 0
/* 8057A924 4082001C */ bne-        lbl_8057a940
/* 8057A928 3C80020C */ lis         r4, 0x20c
/* 8057A92C 80AA000C */ lwz         r5, 0xc(r10)
/* 8057A930 38040100 */ addi        r0, r4, 0x100
/* 8057A934 7CA00039 */ and.        r0, r5, r0
/* 8057A938 40820008 */ bne-        lbl_8057a940
/* 8057A93C 39000000 */ li          r8, 0
lbl_8057a940:
/* 8057A940 2C080000 */ cmpwi       r8, 0
/* 8057A944 4082001C */ bne-        lbl_8057a960
/* 8057A948 3C800007 */ lis         r4, 0x7
/* 8057A94C 80AA0014 */ lwz         r5, 0x14(r10)
/* 8057A950 38044E80 */ addi        r0, r4, 0x4e80
/* 8057A954 7CA00039 */ and.        r0, r5, r0
/* 8057A958 40820008 */ bne-        lbl_8057a960
/* 8057A95C 38E00000 */ li          r7, 0
lbl_8057a960:
/* 8057A960 2C070000 */ cmpwi       r7, 0
/* 8057A964 40820014 */ bne-        lbl_8057a978
/* 8057A968 800A0008 */ lwz         r0, 8(r10)
/* 8057A96C 5400056B */ rlwinm.     r0, r0, 0, 0x15, 0x15
/* 8057A970 40820008 */ bne-        lbl_8057a978
/* 8057A974 38C00000 */ li          r6, 0
lbl_8057a978:
/* 8057A978 2C060000 */ cmpwi       r6, 0
/* 8057A97C 408201D0 */ bne-        lbl_8057ab4c
/* 8057A980 55600319 */ rlwinm.     r0, r11, 0, 0xc, 0xc
/* 8057A984 41820034 */ beq-        lbl_8057a9b8
/* 8057A988 800300CC */ lwz         r0, 0xcc(r3)
/* 8057A98C 2C000000 */ cmpwi       r0, 0
/* 8057A990 41820028 */ beq-        lbl_8057a9b8
/* 8057A994 6C048000 */ xoris       r4, r0, 0x8000
/* 8057A998 3C004330 */ lis         r0, 0x4330
/* 8057A99C 9081000C */ stw         r4, 0xc(r1)
/* 8057A9A0 C83F0060 */ lfd         f1, 0x60(r31)
/* 8057A9A4 90010008 */ stw         r0, 8(r1)
/* 8057A9A8 C8010008 */ lfd         f0, 8(r1)
/* 8057A9AC EC000828 */ fsubs       f0, f0, f1
/* 8057A9B0 D0030288 */ stfs        f0, 0x288(r3)
/* 8057A9B4 48000058 */ b           lbl_8057aa0c
lbl_8057a9b8:
/* 8057A9B8 80A90004 */ lwz         r5, 4(r9)
/* 8057A9BC 80830000 */ lwz         r4, 0(r3)
/* 8057A9C0 C0050088 */ lfs         f0, 0x88(r5)
/* 8057A9C4 FC000050 */ fneg        f0, f0
/* 8057A9C8 D0030288 */ stfs        f0, 0x288(r3)
/* 8057A9CC 80840004 */ lwz         r4, 4(r4)
/* 8057A9D0 80040008 */ lwz         r0, 8(r4)
/* 8057A9D4 54000529 */ rlwinm.     r0, r0, 0, 0x14, 0x14
/* 8057A9D8 41820018 */ beq-        lbl_8057a9f0
/* 8057A9DC FC200018 */ frsp        f1, f0
/* 8057A9E0 C01E00A0 */ lfs         f0, 0xa0(r30)
/* 8057A9E4 EC010032 */ fmuls       f0, f1, f0
/* 8057A9E8 D0030288 */ stfs        f0, 0x288(r3)
/* 8057A9EC 48000020 */ b           lbl_8057aa0c
lbl_8057a9f0:
/* 8057A9F0 80040004 */ lwz         r0, 4(r4)
/* 8057A9F4 54000421 */ rlwinm.     r0, r0, 0, 0x10, 0x10
/* 8057A9F8 41820014 */ beq-        lbl_8057aa0c
/* 8057A9FC FC200018 */ frsp        f1, f0
/* 8057AA00 C01F005C */ lfs         f0, 0x5c(r31)
/* 8057AA04 EC010032 */ fmuls       f0, f1, f0
/* 8057AA08 D0030288 */ stfs        f0, 0x288(r3)
lbl_8057aa0c:
/* 8057AA0C 80630000 */ lwz         r3, 0(r3)
/* 8057AA10 80630004 */ lwz         r3, 4(r3)
/* 8057AA14 80630004 */ lwz         r3, 4(r3)
/* 8057AA18 546000C6 */ rlwinm      r0, r3, 0, 3, 3
/* 8057AA1C 50600739 */ rlwimi.     r0, r3, 0, 0x1c, 0x1c
/* 8057AA20 41820014 */ beq-        lbl_8057aa34
/* 8057AA24 7FA3EB78 */ mr          r3, r29
/* 8057AA28 48015E4D */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 8057AA2C C0830060 */ lfs         f4, 0x60(r3)
/* 8057AA30 48000010 */ b           lbl_8057aa40
lbl_8057aa34:
/* 8057AA34 7FA3EB78 */ mr          r3, r29
/* 8057AA38 48015E3D */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 8057AA3C C0830054 */ lfs         f4, 0x54(r3)
lbl_8057aa40:
/* 8057AA40 C07F0004 */ lfs         f3, 4(r31)
/* 8057AA44 C01D0288 */ lfs         f0, 0x288(r29)
/* 8057AA48 EC432028 */ fsubs       f2, f3, f4
/* 8057AA4C C03D015C */ lfs         f1, 0x15c(r29)
/* 8057AA50 EC800132 */ fmuls       f4, f0, f4
/* 8057AA54 C01F000C */ lfs         f0, 0xc(r31)
/* 8057AA58 EC2100B2 */ fmuls       f1, f1, f2
/* 8057AA5C EC24082A */ fadds       f1, f4, f1
/* 8057AA60 D03D015C */ stfs        f1, 0x15c(r29)
/* 8057AA64 FC000840 */ fcmpo       cr0, f0, f1
/* 8057AA68 4081000C */ ble-        lbl_8057aa74
/* 8057AA6C D01D015C */ stfs        f0, 0x15c(r29)
/* 8057AA70 48000010 */ b           lbl_8057aa80
lbl_8057aa74:
/* 8057AA74 FC030840 */ fcmpo       cr0, f3, f1
/* 8057AA78 40800008 */ bge-        lbl_8057aa80
/* 8057AA7C D07D015C */ stfs        f3, 0x15c(r29)
lbl_8057aa80:
/* 8057AA80 C07D015C */ lfs         f3, 0x15c(r29)
/* 8057AA84 D07D0158 */ stfs        f3, 0x158(r29)
/* 8057AA88 807D0000 */ lwz         r3, 0(r29)
/* 8057AA8C 80630004 */ lwz         r3, 4(r3)
/* 8057AA90 80630004 */ lwz         r3, 4(r3)
/* 8057AA94 546000C6 */ rlwinm      r0, r3, 0, 3, 3
/* 8057AA98 50600739 */ rlwimi.     r0, r3, 0, 0x1c, 0x1c
/* 8057AA9C 418200B0 */ beq-        lbl_8057ab4c
/* 8057AAA0 809D00CC */ lwz         r4, 0xcc(r29)
/* 8057AAA4 3C004330 */ lis         r0, 0x4330
/* 8057AAA8 90010008 */ stw         r0, 8(r1)
/* 8057AAAC 7FA3EB78 */ mr          r3, r29
/* 8057AAB0 6C808000 */ xoris       r0, r4, 0x8000
/* 8057AAB4 C85F0060 */ lfd         f2, 0x60(r31)
/* 8057AAB8 9001000C */ stw         r0, 0xc(r1)
/* 8057AABC C01F001C */ lfs         f0, 0x1c(r31)
/* 8057AAC0 C8210008 */ lfd         f1, 8(r1)
/* 8057AAC4 EC211028 */ fsubs       f1, f1, f2
/* 8057AAC8 EC23082A */ fadds       f1, f3, f1
/* 8057AACC EC000072 */ fmuls       f0, f0, f1
/* 8057AAD0 D01D0158 */ stfs        f0, 0x158(r29)
/* 8057AAD4 48015B91 */ bl          PlayerPointers_isCpu
/* 8057AAD8 2C030000 */ cmpwi       r3, 0
/* 8057AADC 4182000C */ beq-        lbl_8057aae8
/* 8057AAE0 C09F0000 */ lfs         f4, 0(r31)
/* 8057AAE4 48000008 */ b           lbl_8057aaec
lbl_8057aae8:
/* 8057AAE8 C09E0094 */ lfs         f4, 0x94(r30)
lbl_8057aaec:
/* 8057AAEC 807D00CC */ lwz         r3, 0xcc(r29)
/* 8057AAF0 3C004330 */ lis         r0, 0x4330
/* 8057AAF4 C01E0090 */ lfs         f0, 0x90(r30)
/* 8057AAF8 6C638000 */ xoris       r3, r3, 0x8000
/* 8057AAFC 90610014 */ stw         r3, 0x14(r1)
/* 8057AB00 EC602028 */ fsubs       f3, f0, f4
/* 8057AB04 C01D0158 */ lfs         f0, 0x158(r29)
/* 8057AB08 90010010 */ stw         r0, 0x10(r1)
/* 8057AB0C C85F0060 */ lfd         f2, 0x60(r31)
/* 8057AB10 C8210010 */ lfd         f1, 0x10(r1)
/* 8057AB14 EC6000F2 */ fmuls       f3, f0, f3
/* 8057AB18 C01F000C */ lfs         f0, 0xc(r31)
/* 8057AB1C EC211028 */ fsubs       f1, f1, f2
/* 8057AB20 EC240072 */ fmuls       f1, f4, f1
/* 8057AB24 EC23082A */ fadds       f1, f3, f1
/* 8057AB28 D03D0158 */ stfs        f1, 0x158(r29)
/* 8057AB2C FC000840 */ fcmpo       cr0, f0, f1
/* 8057AB30 4081000C */ ble-        lbl_8057ab3c
/* 8057AB34 D01D0158 */ stfs        f0, 0x158(r29)
/* 8057AB38 48000014 */ b           lbl_8057ab4c
lbl_8057ab3c:
/* 8057AB3C C01F0004 */ lfs         f0, 4(r31)
/* 8057AB40 FC000840 */ fcmpo       cr0, f0, f1
/* 8057AB44 40800008 */ bge-        lbl_8057ab4c
/* 8057AB48 D01D0158 */ stfs        f0, 0x158(r29)
lbl_8057ab4c:
/* 8057AB4C 80010034 */ lwz         r0, 0x34(r1)
/* 8057AB50 83E1002C */ lwz         r31, 0x2c(r1)
/* 8057AB54 83C10028 */ lwz         r30, 0x28(r1)
/* 8057AB58 83A10024 */ lwz         r29, 0x24(r1)
/* 8057AB5C 7C0803A6 */ mtlr        r0
/* 8057AB60 38210030 */ addi        r1, r1, 0x30
/* 8057AB64 4E800020 */ blr         