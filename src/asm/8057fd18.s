nofralloc
/* 8057FD18 9421FFC0 */ stwu        r1, -0x40(r1)
/* 8057FD1C 7C0802A6 */ mflr        r0
/* 8057FD20 3CA0080C */ lis         r5, 0x80c
/* 8057FD24 90010044 */ stw         r0, 0x44(r1)
/* 8057FD28 38050100 */ addi        r0, r5, 0x100
/* 8057FD2C 38A00001 */ li          r5, 1
/* 8057FD30 93E1003C */ stw         r31, 0x3c(r1)
/* 8057FD34 3FE0808B */ lis         r31, lbl_808b58f0@ha
/* 8057FD38 3BFF58F0 */ addi        r31, r31, lbl_808b58f0@l
/* 8057FD3C 93C10038 */ stw         r30, 0x38(r1)
/* 8057FD40 93A10034 */ stw         r29, 0x34(r1)
/* 8057FD44 7C9D2378 */ mr          r29, r4
/* 8057FD48 38800001 */ li          r4, 1
/* 8057FD4C 93810030 */ stw         r28, 0x30(r1)
/* 8057FD50 7C7C1B78 */ mr          r28, r3
/* 8057FD54 80C30000 */ lwz         r6, 0(r3)
/* 8057FD58 80E60004 */ lwz         r7, 4(r6)
/* 8057FD5C 38C00001 */ li          r6, 1
/* 8057FD60 8067000C */ lwz         r3, 0xc(r7)
/* 8057FD64 7C600039 */ and.        r0, r3, r0
/* 8057FD68 40820014 */ bne-        lbl_8057fd7c
/* 8057FD6C 80070004 */ lwz         r0, 4(r7)
/* 8057FD70 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 8057FD74 40820008 */ bne-        lbl_8057fd7c
/* 8057FD78 38C00000 */ li          r6, 0
lbl_8057fd7c:
/* 8057FD7C 2C060000 */ cmpwi       r6, 0
/* 8057FD80 40820014 */ bne-        lbl_8057fd94
/* 8057FD84 80070014 */ lwz         r0, 0x14(r7)
/* 8057FD88 54000631 */ rlwinm.     r0, r0, 0, 0x18, 0x18
/* 8057FD8C 40820008 */ bne-        lbl_8057fd94
/* 8057FD90 38A00000 */ li          r5, 0
lbl_8057fd94:
/* 8057FD94 2C050000 */ cmpwi       r5, 0
/* 8057FD98 40820014 */ bne-        lbl_8057fdac
/* 8057FD9C 80070008 */ lwz         r0, 8(r7)
/* 8057FDA0 540007FF */ clrlwi.     r0, r0, 0x1f
/* 8057FDA4 40820008 */ bne-        lbl_8057fdac
/* 8057FDA8 38800000 */ li          r4, 0
lbl_8057fdac:
/* 8057FDAC 2C040000 */ cmpwi       r4, 0
/* 8057FDB0 408202EC */ bne-        lbl_8058009c
/* 8057FDB4 80070008 */ lwz         r0, 8(r7)
/* 8057FDB8 540005AD */ rlwinm.     r0, r0, 0, 0x16, 0x16
/* 8057FDBC 408202E0 */ bne-        lbl_8058009c
/* 8057FDC0 7F83E378 */ mr          r3, r28
/* 8057FDC4 48010609 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057FDC8 80BC0000 */ lwz         r5, 0(r28)
/* 8057FDCC 1C9D000C */ mulli       r4, r29, 0xc
/* 8057FDD0 81030074 */ lwz         r8, 0x74(r3)
/* 8057FDD4 381F02E0 */ addi        r0, r31, 0x2e0
/* 8057FDD8 80A50004 */ lwz         r5, 4(r5)
/* 8057FDDC 3BC00000 */ li          r30, 0
/* 8057FDE0 80E30078 */ lwz         r7, 0x78(r3)
/* 8057FDE4 80C3007C */ lwz         r6, 0x7c(r3)
/* 8057FDE8 7C002214 */ add         r0, r0, r4
/* 8057FDEC 80650004 */ lwz         r3, 4(r5)
/* 8057FDF0 91010020 */ stw         r8, 0x20(r1)
/* 8057FDF4 64634000 */ oris        r3, r3, 0x4000
/* 8057FDF8 90650004 */ stw         r3, 4(r5)
/* 8057FDFC 901C01C0 */ stw         r0, 0x1c0(r28)
/* 8057FE00 809F0360 */ lwz         r4, 0x360(r31)
/* 8057FE04 90E10024 */ stw         r7, 0x24(r1)
/* 8057FE08 7C1D2000 */ cmpw        r29, r4
/* 8057FE0C 90C10028 */ stw         r6, 0x28(r1)
/* 8057FE10 41800070 */ blt-        lbl_8057fe80
/* 8057FE14 801F0364 */ lwz         r0, 0x364(r31)
/* 8057FE18 7C1D0000 */ cmpw        r29, r0
/* 8057FE1C 41810064 */ bgt-        lbl_8057fe80
/* 8057FE20 C03C01B8 */ lfs         f1, 0x1b8(r28)
/* 8057FE24 C01F0340 */ lfs         f0, 0x340(r31)
/* 8057FE28 FC010040 */ fcmpo       cr0, f1, f0
/* 8057FE2C 4181001C */ bgt-        lbl_8057fe48
/* 8057FE30 C05C0010 */ lfs         f2, 0x10(r28)
/* 8057FE34 C01F0344 */ lfs         f0, 0x344(r31)
/* 8057FE38 C03C01BC */ lfs         f1, 0x1bc(r28)
/* 8057FE3C EC0000B2 */ fmuls       f0, f0, f2
/* 8057FE40 FC010040 */ fcmpo       cr0, f1, f0
/* 8057FE44 40810024 */ ble-        lbl_8057fe68
lbl_8057fe48:
/* 8057FE48 7C7D2050 */ subf        r3, r29, r4
/* 8057FE4C 7C04E850 */ subf        r0, r4, r29
/* 8057FE50 7C630378 */ or          r3, r3, r0
/* 8057FE54 54630FFE */ srwi        r3, r3, 0x1f
/* 8057FE58 381F0348 */ addi        r0, r31, 0x348
/* 8057FE5C 1C63000C */ mulli       r3, r3, 0xc
/* 8057FE60 7C001A14 */ add         r0, r0, r3
/* 8057FE64 901C01C0 */ stw         r0, 0x1c0(r28)
lbl_8057fe68:
/* 8057FE68 807C0000 */ lwz         r3, 0(r28)
/* 8057FE6C 3BC00001 */ li          r30, 1
/* 8057FE70 80630004 */ lwz         r3, 4(r3)
/* 8057FE74 8003000C */ lwz         r0, 0xc(r3)
/* 8057FE78 64000010 */ oris        r0, r0, 0x10
/* 8057FE7C 9003000C */ stw         r0, 0xc(r3)
lbl_8057fe80:
/* 8057FE80 801F0364 */ lwz         r0, 0x364(r31)
/* 8057FE84 7C1D0000 */ cmpw        r29, r0
/* 8057FE88 4082008C */ bne-        lbl_8057ff14
/* 8057FE8C 809C0000 */ lwz         r4, 0(r28)
/* 8057FE90 7F83E378 */ mr          r3, r28
/* 8057FE94 80840004 */ lwz         r4, 4(r4)
/* 8057FE98 8004000C */ lwz         r0, 0xc(r4)
/* 8057FE9C 60000040 */ ori         r0, r0, 0x40
/* 8057FEA0 9004000C */ stw         r0, 0xc(r4)
/* 8057FEA4 809C0000 */ lwz         r4, 0(r28)
/* 8057FEA8 80840004 */ lwz         r4, 4(r4)
/* 8057FEAC 80040008 */ lwz         r0, 8(r4)
/* 8057FEB0 64000080 */ oris        r0, r0, 0x80
/* 8057FEB4 90040008 */ stw         r0, 8(r4)
/* 8057FEB8 809C0000 */ lwz         r4, 0(r28)
/* 8057FEBC 80840004 */ lwz         r4, 4(r4)
/* 8057FEC0 80040008 */ lwz         r0, 8(r4)
/* 8057FEC4 60000800 */ ori         r0, r0, 0x800
/* 8057FEC8 90040008 */ stw         r0, 8(r4)
/* 8057FECC 48010B91 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8057FED0 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 8057FED4 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 8057FED8 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 8057FEDC 80630068 */ lwz         r3, 0x68(r3)
/* 8057FEE0 7C63002E */ lwzx        r3, r3, r0
/* 8057FEE4 48127DA9 */ bl          unk_806a7c8c
/* 8057FEE8 3C808089 */ lis         r4, lbl_80891a04@ha
/* 8057FEEC 7F83E378 */ mr          r3, r28
/* 8057FEF0 C0241A04 */ lfs         f1, lbl_80891a04@l(r4)
/* 8057FEF4 38800007 */ li          r4, 7
/* 8057FEF8 38A00001 */ li          r5, 1
/* 8057FEFC 48010521 */ bl          unk_8059041c
/* 8057FF00 7F83E378 */ mr          r3, r28
/* 8057FF04 48010891 */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 8057FF08 38800001 */ li          r4, 1
/* 8057FF0C 48188FD9 */ bl          unk_80708ee4
/* 8057FF10 48000144 */ b           lbl_80580054
lbl_8057ff14:
/* 8057FF14 809C01C0 */ lwz         r4, 0x1c0(r28)
/* 8057FF18 7F83E378 */ mr          r3, r28
/* 8057FF1C C0040008 */ lfs         f0, 8(r4)
/* 8057FF20 D0010024 */ stfs        f0, 0x24(r1)
/* 8057FF24 480104A9 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057FF28 C0010020 */ lfs         f0, 0x20(r1)
/* 8057FF2C D0030074 */ stfs        f0, 0x74(r3)
/* 8057FF30 C0010024 */ lfs         f0, 0x24(r1)
/* 8057FF34 D0030078 */ stfs        f0, 0x78(r3)
/* 8057FF38 C0010028 */ lfs         f0, 0x28(r1)
/* 8057FF3C D003007C */ stfs        f0, 0x7c(r3)
/* 8057FF40 7F83E378 */ mr          r3, r28
/* 8057FF44 48010489 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057FF48 80030114 */ lwz         r0, 0x114(r3)
/* 8057FF4C 3FA08089 */ lis         r29, lbl_80891a00@ha
/* 8057FF50 90010018 */ stw         r0, 0x18(r1)
/* 8057FF54 80830110 */ lwz         r4, 0x110(r3)
/* 8057FF58 80030118 */ lwz         r0, 0x118(r3)
/* 8057FF5C 7F83E378 */ mr          r3, r28
/* 8057FF60 C01D1A00 */ lfs         f0, lbl_80891a00@l(r29)
/* 8057FF64 90810014 */ stw         r4, 0x14(r1)
/* 8057FF68 9001001C */ stw         r0, 0x1c(r1)
/* 8057FF6C D0010018 */ stfs        f0, 0x18(r1)
/* 8057FF70 4801045D */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057FF74 C0010014 */ lfs         f0, 0x14(r1)
/* 8057FF78 2C1E0000 */ cmpwi       r30, 0
/* 8057FF7C D0030110 */ stfs        f0, 0x110(r3)
/* 8057FF80 C0010018 */ lfs         f0, 0x18(r1)
/* 8057FF84 D0030114 */ stfs        f0, 0x114(r3)
/* 8057FF88 C001001C */ lfs         f0, 0x1c(r1)
/* 8057FF8C D0030118 */ stfs        f0, 0x118(r3)
/* 8057FF90 4082009C */ bne-        lbl_8058002c
/* 8057FF94 809C005C */ lwz         r4, 0x5c(r28)
/* 8057FF98 38610008 */ addi        r3, r1, 8
/* 8057FF9C 801C0060 */ lwz         r0, 0x60(r28)
/* 8057FFA0 9001000C */ stw         r0, 0xc(r1)
/* 8057FFA4 C01D1A00 */ lfs         f0, lbl_80891a00@l(r29)
/* 8057FFA8 90810008 */ stw         r4, 8(r1)
/* 8057FFAC 801C0064 */ lwz         r0, 0x64(r28)
/* 8057FFB0 90010010 */ stw         r0, 0x10(r1)
/* 8057FFB4 D001000C */ stfs        f0, 0xc(r1)
/* 8057FFB8 4BCC3B25 */ bl          normalise__Q23EGG8Vector3fFv
/* 8057FFBC C07C005C */ lfs         f3, 0x5c(r28)
/* 8057FFC0 C0410008 */ lfs         f2, 8(r1)
/* 8057FFC4 C03C0060 */ lfs         f1, 0x60(r28)
/* 8057FFC8 C001000C */ lfs         f0, 0xc(r1)
/* 8057FFCC EC4300B2 */ fmuls       f2, f3, f2
/* 8057FFD0 C09C0064 */ lfs         f4, 0x64(r28)
/* 8057FFD4 EC210032 */ fmuls       f1, f1, f0
/* 8057FFD8 C0610010 */ lfs         f3, 0x10(r1)
/* 8057FFDC C01C0020 */ lfs         f0, 0x20(r28)
/* 8057FFE0 EC6400F2 */ fmuls       f3, f4, f3
/* 8057FFE4 807C0000 */ lwz         r3, 0(r28)
/* 8057FFE8 EC22082A */ fadds       f1, f2, f1
/* 8057FFEC EC23082A */ fadds       f1, f3, f1
/* 8057FFF0 EC000072 */ fmuls       f0, f0, f1
/* 8057FFF4 D01C0020 */ stfs        f0, 0x20(r28)
/* 8057FFF8 C0410008 */ lfs         f2, 8(r1)
/* 8057FFFC D05C005C */ stfs        f2, 0x5c(r28)
/* 80580000 C021000C */ lfs         f1, 0xc(r1)
/* 80580004 D03C0060 */ stfs        f1, 0x60(r28)
/* 80580008 C0010010 */ lfs         f0, 0x10(r1)
/* 8058000C D01C0064 */ stfs        f0, 0x64(r28)
/* 80580010 D05C0074 */ stfs        f2, 0x74(r28)
/* 80580014 D03C0078 */ stfs        f1, 0x78(r28)
/* 80580018 D01C007C */ stfs        f0, 0x7c(r28)
/* 8058001C 80630004 */ lwz         r3, 4(r3)
/* 80580020 8003000C */ lwz         r0, 0xc(r3)
/* 80580024 64000040 */ oris        r0, r0, 0x40
/* 80580028 9003000C */ stw         r0, 0xc(r3)
lbl_8058002c:
/* 8058002C 3C808089 */ lis         r4, lbl_80891a04@ha
/* 80580030 7F83E378 */ mr          r3, r28
/* 80580034 C0241A04 */ lfs         f1, lbl_80891a04@l(r4)
/* 80580038 38800003 */ li          r4, 3
/* 8058003C 38A00001 */ li          r5, 1
/* 80580040 480103DD */ bl          unk_8059041c
/* 80580044 7F83E378 */ mr          r3, r28
/* 80580048 4801074D */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 8058004C 38800000 */ li          r4, 0
/* 80580050 48188E95 */ bl          unk_80708ee4
lbl_80580054:
/* 80580054 807C01C0 */ lwz         r3, 0x1c0(r28)
/* 80580058 C01C0020 */ lfs         f0, 0x20(r28)
/* 8058005C C0230000 */ lfs         f1, 0(r3)
/* 80580060 D03C01B0 */ stfs        f1, 0x1b0(r28)
/* 80580064 FC010040 */ fcmpo       cr0, f1, f0
/* 80580068 C0030004 */ lfs         f0, 4(r3)
/* 8058006C D01C01B4 */ stfs        f0, 0x1b4(r28)
/* 80580070 40810008 */ ble-        lbl_80580078
/* 80580074 D03C0020 */ stfs        f1, 0x20(r28)
lbl_80580078:
/* 80580078 7F83E378 */ mr          r3, r28
/* 8058007C 480109E1 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80580080 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 80580084 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 80580088 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 8058008C 3880001E */ li          r4, 0x1e
/* 80580090 80630068 */ lwz         r3, 0x68(r3)
/* 80580094 7C63002E */ lwzx        r3, r3, r0
/* 80580098 48123A2D */ bl          unk_806a3ac4
lbl_8058009c:
/* 8058009C 80010044 */ lwz         r0, 0x44(r1)
/* 805800A0 83E1003C */ lwz         r31, 0x3c(r1)
/* 805800A4 83C10038 */ lwz         r30, 0x38(r1)
/* 805800A8 83A10034 */ lwz         r29, 0x34(r1)
/* 805800AC 83810030 */ lwz         r28, 0x30(r1)
/* 805800B0 7C0803A6 */ mtlr        r0
/* 805800B4 38210040 */ addi        r1, r1, 0x40
/* 805800B8 4E800020 */ blr         