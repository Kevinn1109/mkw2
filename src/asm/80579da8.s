nofralloc
/* 80579DA8 9421FFD0 */ stwu        r1, -0x30(r1)
/* 80579DAC 7C0802A6 */ mflr        r0
/* 80579DB0 90010034 */ stw         r0, 0x34(r1)
/* 80579DB4 93E1002C */ stw         r31, 0x2c(r1)
/* 80579DB8 93C10028 */ stw         r30, 0x28(r1)
/* 80579DBC 93A10024 */ stw         r29, 0x24(r1)
/* 80579DC0 7C7D1B78 */ mr          r29, r3
/* 80579DC4 80830000 */ lwz         r4, 0(r3)
/* 80579DC8 80840004 */ lwz         r4, 4(r4)
/* 80579DCC 8004000C */ lwz         r0, 0xc(r4)
/* 80579DD0 5400018D */ rlwinm.     r0, r0, 0, 6, 6
/* 80579DD4 41820130 */ beq-        lbl_80579f04
/* 80579DD8 480165F5 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80579DDC 3C80808B */ lis         r4, lbl_808b5bcc@ha
/* 80579DE0 8003006C */ lwz         r0, 0x6c(r3)
/* 80579DE4 C0245BCC */ lfs         f1, lbl_808b5bcc@l(r4)
/* 80579DE8 C01D0170 */ lfs         f0, 0x170(r29)
/* 80579DEC 90010018 */ stw         r0, 0x18(r1)
/* 80579DF0 EC210032 */ fmuls       f1, f1, f0
/* 80579DF4 80830068 */ lwz         r4, 0x68(r3)
/* 80579DF8 C0010018 */ lfs         f0, 0x18(r1)
/* 80579DFC 80030070 */ lwz         r0, 0x70(r3)
/* 80579E00 7FA3EB78 */ mr          r3, r29
/* 80579E04 EC000828 */ fsubs       f0, f0, f1
/* 80579E08 90810014 */ stw         r4, 0x14(r1)
/* 80579E0C 9001001C */ stw         r0, 0x1c(r1)
/* 80579E10 D0010018 */ stfs        f0, 0x18(r1)
/* 80579E14 480165B9 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80579E18 C0010014 */ lfs         f0, 0x14(r1)
/* 80579E1C D0030068 */ stfs        f0, 0x68(r3)
/* 80579E20 C0010018 */ lfs         f0, 0x18(r1)
/* 80579E24 D003006C */ stfs        f0, 0x6c(r3)
/* 80579E28 C001001C */ lfs         f0, 0x1c(r1)
/* 80579E2C D0030070 */ stfs        f0, 0x70(r3)
/* 80579E30 7FA3EB78 */ mr          r3, r29
/* 80579E34 48016599 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80579E38 38000001 */ li          r0, 1
/* 80579E3C 98030171 */ stb         r0, 0x171(r3)
/* 80579E40 3FC08089 */ lis         r30, lbl_80891a1c@ha
/* 80579E44 7FA3EB78 */ mr          r3, r29
/* 80579E48 C03D0020 */ lfs         f1, 0x20(r29)
/* 80579E4C C01E1A1C */ lfs         f0, lbl_80891a1c@l(r30)
/* 80579E50 EC010032 */ fmuls       f0, f1, f0
/* 80579E54 D01D0020 */ stfs        f0, 0x20(r29)
/* 80579E58 48016575 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80579E5C 80A30074 */ lwz         r5, 0x74(r3)
/* 80579E60 90A10008 */ stw         r5, 8(r1)
/* 80579E64 80830078 */ lwz         r4, 0x78(r3)
/* 80579E68 8003007C */ lwz         r0, 0x7c(r3)
/* 80579E6C 7FA3EB78 */ mr          r3, r29
/* 80579E70 9081000C */ stw         r4, 0xc(r1)
/* 80579E74 C07E1A1C */ lfs         f3, lbl_80891a1c@l(r30)
/* 80579E78 C0010008 */ lfs         f0, 8(r1)
/* 80579E7C C021000C */ lfs         f1, 0xc(r1)
/* 80579E80 EC4000F2 */ fmuls       f2, f0, f3
/* 80579E84 90010010 */ stw         r0, 0x10(r1)
/* 80579E88 EC2100F2 */ fmuls       f1, f1, f3
/* 80579E8C C0010010 */ lfs         f0, 0x10(r1)
/* 80579E90 D0410008 */ stfs        f2, 8(r1)
/* 80579E94 EC0000F2 */ fmuls       f0, f0, f3
/* 80579E98 D021000C */ stfs        f1, 0xc(r1)
/* 80579E9C D0010010 */ stfs        f0, 0x10(r1)
/* 80579EA0 4801652D */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80579EA4 C0010008 */ lfs         f0, 8(r1)
/* 80579EA8 D0030074 */ stfs        f0, 0x74(r3)
/* 80579EAC C001000C */ lfs         f0, 0xc(r1)
/* 80579EB0 D0030078 */ stfs        f0, 0x78(r3)
/* 80579EB4 C0010010 */ lfs         f0, 0x10(r1)
/* 80579EB8 D003007C */ stfs        f0, 0x7c(r3)
/* 80579EBC 7FA3EB78 */ mr          r3, r29
/* 80579EC0 4801650D */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80579EC4 3FC0802A */ lis         r30, lbl_802a4100@ha
/* 80579EC8 C01E4100 */ lfs         f0, lbl_802a4100@l(r30)
/* 80579ECC 3BFE4100 */ addi        r31, r30, lbl_802a4100@l
/* 80579ED0 D00300B0 */ stfs        f0, 0xb0(r3)
/* 80579ED4 C01F0004 */ lfs         f0, 4(r31)
/* 80579ED8 D00300B4 */ stfs        f0, 0xb4(r3)
/* 80579EDC C01F0008 */ lfs         f0, 8(r31)
/* 80579EE0 D00300B8 */ stfs        f0, 0xb8(r3)
/* 80579EE4 7FA3EB78 */ mr          r3, r29
/* 80579EE8 480164E5 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80579EEC C01E4100 */ lfs         f0, lbl_802a4100@l(r30)
/* 80579EF0 D00300C8 */ stfs        f0, 0xc8(r3)
/* 80579EF4 C01F0004 */ lfs         f0, 4(r31)
/* 80579EF8 D00300CC */ stfs        f0, 0xcc(r3)
/* 80579EFC C01F0008 */ lfs         f0, 8(r31)
/* 80579F00 D00300D0 */ stfs        f0, 0xd0(r3)
lbl_80579f04:
/* 80579F04 80010034 */ lwz         r0, 0x34(r1)
/* 80579F08 83E1002C */ lwz         r31, 0x2c(r1)
/* 80579F0C 83C10028 */ lwz         r30, 0x28(r1)
/* 80579F10 83A10024 */ lwz         r29, 0x24(r1)
/* 80579F14 7C0803A6 */ mtlr        r0
/* 80579F18 38210030 */ addi        r1, r1, 0x30
/* 80579F1C 4E800020 */ blr         