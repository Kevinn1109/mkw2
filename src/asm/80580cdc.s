nofralloc
/* 80580CDC 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80580CE0 7C0802A6 */ mflr        r0
/* 80580CE4 90010014 */ stw         r0, 0x14(r1)
/* 80580CE8 93E1000C */ stw         r31, 0xc(r1)
/* 80580CEC 7C9F2378 */ mr          r31, r4
/* 80580CF0 93C10008 */ stw         r30, 8(r1)
/* 80580CF4 7C7E1B78 */ mr          r30, r3
/* 80580CF8 80A30000 */ lwz         r5, 0(r3)
/* 80580CFC 80850004 */ lwz         r4, 4(r5)
/* 80580D00 8004000C */ lwz         r0, 0xc(r4)
/* 80580D04 5400045E */ rlwinm      r0, r0, 0, 0x11, 0xf
/* 80580D08 9004000C */ stw         r0, 0xc(r4)
/* 80580D0C 4800FD51 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80580D10 3C80809C */ lis         r4, lbl_809c3618@ha
/* 80580D14 5460063E */ clrlwi      r0, r3, 0x18
/* 80580D18 80643618 */ lwz         r3, lbl_809c3618@l(r4)
/* 80580D1C 1C000248 */ mulli       r0, r0, 0x248
/* 80580D20 80630014 */ lwz         r3, 0x14(r3)
/* 80580D24 7C630214 */ add         r3, r3, r0
/* 80580D28 482179E5 */ bl          unk_8079870c
/* 80580D2C 2C1F0000 */ cmpwi       r31, 0
/* 80580D30 40820028 */ bne-        lbl_80580d58
/* 80580D34 7FC3F378 */ mr          r3, r30
/* 80580D38 4800FA5D */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 80580D3C 81830000 */ lwz         r12, 0(r3)
/* 80580D40 3C808089 */ lis         r4, lbl_80891a00@ha
/* 80580D44 C0241A00 */ lfs         f1, lbl_80891a00@l(r4)
/* 80580D48 38800113 */ li          r4, 0x113
/* 80580D4C 818C00E0 */ lwz         r12, 0xe0(r12)
/* 80580D50 7D8903A6 */ mtctr       r12
/* 80580D54 4E800421 */ bctrl       
lbl_80580d58:
/* 80580D58 38000000 */ li          r0, 0
/* 80580D5C B01E0194 */ sth         r0, 0x194(r30)
/* 80580D60 7FC3F378 */ mr          r3, r30
/* 80580D64 4800FA01 */ bl          kartPhysicsEngine__Q24Kart15KartObjectProxyFv
/* 80580D68 3C808089 */ lis         r4, lbl_80891a04@ha
/* 80580D6C C0241A04 */ lfs         f1, lbl_80891a04@l(r4)
/* 80580D70 480175C9 */ bl          unk_80598338
/* 80580D74 881E0196 */ lbz         r0, 0x196(r30)
/* 80580D78 2C000000 */ cmpwi       r0, 0
/* 80580D7C 40820018 */ bne-        lbl_80580d94
/* 80580D80 807E0260 */ lwz         r3, 0x260(r30)
/* 80580D84 38800001 */ li          r4, 1
/* 80580D88 4BFEA3E1 */ bl          unk_8056b168
/* 80580D8C 38000001 */ li          r0, 1
/* 80580D90 981E0196 */ stb         r0, 0x196(r30)
lbl_80580d94:
/* 80580D94 2C1F0000 */ cmpwi       r31, 0
/* 80580D98 41820010 */ beq-        lbl_80580da8
/* 80580D9C 3C608089 */ lis         r3, lbl_80891a04@ha
/* 80580DA0 C0031A04 */ lfs         f0, lbl_80891a04@l(r3)
/* 80580DA4 D01E017C */ stfs        f0, 0x17c(r30)
lbl_80580da8:
/* 80580DA8 80010014 */ lwz         r0, 0x14(r1)
/* 80580DAC 83E1000C */ lwz         r31, 0xc(r1)
/* 80580DB0 83C10008 */ lwz         r30, 8(r1)
/* 80580DB4 7C0803A6 */ mtlr        r0
/* 80580DB8 38210010 */ addi        r1, r1, 0x10
/* 80580DBC 4E800020 */ blr         