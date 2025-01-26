nofralloc
/* 8058498C 9421FFD0 */ stwu        r1, -0x30(r1)
/* 80584990 7C0802A6 */ mflr        r0
/* 80584994 38800001 */ li          r4, 1
/* 80584998 38A00001 */ li          r5, 1
/* 8058499C 90010034 */ stw         r0, 0x34(r1)
/* 805849A0 93E1002C */ stw         r31, 0x2c(r1)
/* 805849A4 93C10028 */ stw         r30, 0x28(r1)
/* 805849A8 7C7E1B78 */ mr          r30, r3
/* 805849AC 8183000C */ lwz         r12, 0xc(r3)
/* 805849B0 818C0014 */ lwz         r12, 0x14(r12)
/* 805849B4 7D8903A6 */ mtctr       r12
/* 805849B8 4E800421 */ bctrl       
/* 805849BC 7FC3F378 */ mr          r3, r30
/* 805849C0 4800C361 */ bl          kartAction__Q24Kart15KartObjectProxyFv
/* 805849C4 38800001 */ li          r4, 1
/* 805849C8 4BFE30C1 */ bl          unk_80567a88
/* 805849CC 7FC3F378 */ mr          r3, r30
/* 805849D0 4800B9DD */ bl          kartPhysics__Q24Kart15KartObjectProxyFv
/* 805849D4 4801BA3D */ bl          resetPendingOrientations__Q24Kart11KartPhysicsFv
/* 805849D8 3BE00000 */ li          r31, 0
/* 805849DC B3FE0118 */ sth         r31, 0x118(r30)
/* 805849E0 809E0000 */ lwz         r4, 0(r30)
/* 805849E4 3C608089 */ lis         r3, lbl_80891a00@ha
/* 805849E8 C0031A00 */ lfs         f0, lbl_80891a00@l(r3)
/* 805849EC 7FC3F378 */ mr          r3, r30
/* 805849F0 80840004 */ lwz         r4, 4(r4)
/* 805849F4 80040004 */ lwz         r0, 4(r4)
/* 805849F8 54000314 */ rlwinm      r0, r0, 0, 0xc, 0xa
/* 805849FC 90040004 */ stw         r0, 4(r4)
/* 80584A00 809E0000 */ lwz         r4, 0(r30)
/* 80584A04 80840004 */ lwz         r4, 4(r4)
/* 80584A08 80040008 */ lwz         r0, 8(r4)
/* 80584A0C 54000314 */ rlwinm      r0, r0, 0, 0xc, 0xa
/* 80584A10 90040008 */ stw         r0, 8(r4)
/* 80584A14 B3FE0102 */ sth         r31, 0x102(r30)
/* 80584A18 809E0000 */ lwz         r4, 0(r30)
/* 80584A1C D01E01B0 */ stfs        f0, 0x1b0(r30)
/* 80584A20 80840004 */ lwz         r4, 4(r4)
/* 80584A24 80040004 */ lwz         r0, 4(r4)
/* 80584A28 54000080 */ rlwinm      r0, r0, 0, 2, 0
/* 80584A2C 90040004 */ stw         r0, 4(r4)
/* 80584A30 4800C429 */ bl          unk_80590e58
/* 80584A34 B3FE01C4 */ sth         r31, 0x1c4(r30)
/* 80584A38 7FC3F378 */ mr          r3, r30
/* 80584A3C 80DE0000 */ lwz         r6, 0(r30)
/* 80584A40 38800004 */ li          r4, 4
/* 80584A44 38A00000 */ li          r5, 0
/* 80584A48 80E60004 */ lwz         r7, 4(r6)
/* 80584A4C 38C00001 */ li          r6, 1
/* 80584A50 80070004 */ lwz         r0, 4(r7)
/* 80584A54 5400007E */ clrlwi      r0, r0, 1
/* 80584A58 90070004 */ stw         r0, 4(r7)
/* 80584A5C 4800C5F5 */ bl          unk_80591050
/* 80584A60 B3FE012C */ sth         r31, 0x12c(r30)
/* 80584A64 3C608089 */ lis         r3, lbl_80891a04@ha
/* 80584A68 809E0000 */ lwz         r4, 0(r30)
/* 80584A6C C0031A04 */ lfs         f0, lbl_80891a04@l(r3)
/* 80584A70 7FC3F378 */ mr          r3, r30
/* 80584A74 80840004 */ lwz         r4, 4(r4)
/* 80584A78 80040008 */ lwz         r0, 8(r4)
/* 80584A7C 540004E2 */ rlwinm      r0, r0, 0, 0x13, 0x11
/* 80584A80 90040008 */ stw         r0, 8(r4)
/* 80584A84 A01E0254 */ lhz         r0, 0x254(r30)
/* 80584A88 B3FE014C */ sth         r31, 0x14c(r30)
/* 80584A8C 540007B8 */ rlwinm      r0, r0, 0, 0x1e, 0x1c
/* 80584A90 809E0000 */ lwz         r4, 0(r30)
/* 80584A94 540006F2 */ rlwinm      r0, r0, 0, 0x1b, 0x19
/* 80584A98 B3FE014E */ sth         r31, 0x14e(r30)
/* 80584A9C B3FE0150 */ sth         r31, 0x150(r30)
/* 80584AA0 B01E0254 */ sth         r0, 0x254(r30)
/* 80584AA4 93FE00EC */ stw         r31, 0xec(r30)
/* 80584AA8 D01E00F0 */ stfs        f0, 0xf0(r30)
/* 80584AAC 80840004 */ lwz         r4, 4(r4)
/* 80584AB0 8004000C */ lwz         r0, 0xc(r4)
/* 80584AB4 540007FA */ rlwinm      r0, r0, 0, 0x1f, 0x1d
/* 80584AB8 9004000C */ stw         r0, 0xc(r4)
/* 80584ABC 809E0000 */ lwz         r4, 0(r30)
/* 80584AC0 80840004 */ lwz         r4, 4(r4)
/* 80584AC4 8004000C */ lwz         r0, 0xc(r4)
/* 80584AC8 5400003C */ rlwinm      r0, r0, 0, 0, 0x1e
/* 80584ACC 9004000C */ stw         r0, 0xc(r4)
/* 80584AD0 4800C389 */ bl          unk_80590e58
/* 80584AD4 B3FE0148 */ sth         r31, 0x148(r30)
/* 80584AD8 7FC3F378 */ mr          r3, r30
/* 80584ADC 809E0000 */ lwz         r4, 0(r30)
/* 80584AE0 80840004 */ lwz         r4, 4(r4)
/* 80584AE4 80040008 */ lwz         r0, 8(r4)
/* 80584AE8 5400066E */ rlwinm      r0, r0, 0, 0x19, 0x17
/* 80584AEC 90040008 */ stw         r0, 8(r4)
/* 80584AF0 4800C39D */ bl          unk_80590e8c
/* 80584AF4 7FC3F378 */ mr          r3, r30
/* 80584AF8 4800C3AD */ bl          unk_80590ea4
/* 80584AFC 7FC3F378 */ mr          r3, r30
/* 80584B00 4800B8CD */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80584B04 48030221 */ bl          reset__Q24Kart12KartDynamicsFv
/* 80584B08 809E0000 */ lwz         r4, 0(r30)
/* 80584B0C 80640004 */ lwz         r3, 4(r4)
/* 80584B10 8003000C */ lwz         r0, 0xc(r3)
/* 80584B14 540000C7 */ rlwinm.     r0, r0, 0, 3, 3
/* 80584B18 4182003C */ beq-        lbl_80584b54
/* 80584B1C 80840004 */ lwz         r4, 4(r4)
/* 80584B20 7FC3F378 */ mr          r3, r30
/* 80584B24 8004000C */ lwz         r0, 0xc(r4)
/* 80584B28 54000104 */ rlwinm      r0, r0, 0, 4, 2
/* 80584B2C 9004000C */ stw         r0, 0xc(r4)
/* 80584B30 B3FE018E */ sth         r31, 0x18e(r30)
/* 80584B34 4800BF29 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80584B38 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 80584B3C 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 80584B40 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 80584B44 38800001 */ li          r4, 1
/* 80584B48 80630068 */ lwz         r3, 0x68(r3)
/* 80584B4C 7C63002E */ lwzx        r3, r3, r0
/* 80584B50 9883010D */ stb         r4, 0x10d(r3)
lbl_80584b54:
/* 80584B54 7FC3F378 */ mr          r3, r30
/* 80584B58 4BFF97F1 */ bl          unk_8057e348
/* 80584B5C 80BE0000 */ lwz         r5, 0(r30)
/* 80584B60 7FC3F378 */ mr          r3, r30
/* 80584B64 38800000 */ li          r4, 0
/* 80584B68 80A50004 */ lwz         r5, 4(r5)
/* 80584B6C 8005000C */ lwz         r0, 0xc(r5)
/* 80584B70 540000C2 */ rlwinm      r0, r0, 0, 3, 1
/* 80584B74 9005000C */ stw         r0, 0xc(r5)
/* 80584B78 4800CE05 */ bl          unk_8059197c
/* 80584B7C 809E0000 */ lwz         r4, 0(r30)
/* 80584B80 3FE08089 */ lis         r31, lbl_80891a00@ha
/* 80584B84 C01F1A00 */ lfs         f0, lbl_80891a00@l(r31)
/* 80584B88 7FC3F378 */ mr          r3, r30
/* 80584B8C 80C40004 */ lwz         r6, 4(r4)
/* 80584B90 38810014 */ addi        r4, r1, 0x14
/* 80584B94 38A10008 */ addi        r5, r1, 8
/* 80584B98 80060004 */ lwz         r0, 4(r6)
/* 80584B9C 54000356 */ rlwinm      r0, r0, 0, 0xd, 0xb
/* 80584BA0 90060004 */ stw         r0, 4(r6)
/* 80584BA4 80DE0000 */ lwz         r6, 0(r30)
/* 80584BA8 80C60004 */ lwz         r6, 4(r6)
/* 80584BAC 80060008 */ lwz         r0, 8(r6)
/* 80584BB0 60000010 */ ori         r0, r0, 0x10
/* 80584BB4 90060008 */ stw         r0, 8(r6)
/* 80584BB8 80DE0000 */ lwz         r6, 0(r30)
/* 80584BBC 80C60004 */ lwz         r6, 4(r6)
/* 80584BC0 8006000C */ lwz         r0, 0xc(r6)
/* 80584BC4 60000020 */ ori         r0, r0, 0x20
/* 80584BC8 9006000C */ stw         r0, 0xc(r6)
/* 80584BCC 80DE0000 */ lwz         r6, 0(r30)
/* 80584BD0 80C60004 */ lwz         r6, 4(r6)
/* 80584BD4 80060008 */ lwz         r0, 8(r6)
/* 80584BD8 54000776 */ rlwinm      r0, r0, 0, 0x1d, 0x1b
/* 80584BDC 90060008 */ stw         r0, 8(r6)
/* 80584BE0 D01E01E0 */ stfs        f0, 0x1e0(r30)
/* 80584BE4 480007B9 */ bl          PlayerPointers_getCannonPosAndDir
/* 80584BE8 C01F1A00 */ lfs         f0, lbl_80891a00@l(r31)
/* 80584BEC 7FC3F378 */ mr          r3, r30
/* 80584BF0 D01E01E4 */ stfs        f0, 0x1e4(r30)
/* 80584BF4 4800B619 */ bl          getPos__Q24Kart15KartObjectProxyCFv
/* 80584BF8 C0630000 */ lfs         f3, 0(r3)
/* 80584BFC D07E01E8 */ stfs        f3, 0x1e8(r30)
/* 80584C00 C0430004 */ lfs         f2, 4(r3)
/* 80584C04 D05E01EC */ stfs        f2, 0x1ec(r30)
/* 80584C08 C0230008 */ lfs         f1, 8(r3)
/* 80584C0C 387E01F4 */ addi        r3, r30, 0x1f4
/* 80584C10 D03E01F0 */ stfs        f1, 0x1f0(r30)
/* 80584C14 C0010014 */ lfs         f0, 0x14(r1)
/* 80584C18 EC001828 */ fsubs       f0, f0, f3
/* 80584C1C D01E01F4 */ stfs        f0, 0x1f4(r30)
/* 80584C20 C0010018 */ lfs         f0, 0x18(r1)
/* 80584C24 EC001028 */ fsubs       f0, f0, f2
/* 80584C28 D01E01F8 */ stfs        f0, 0x1f8(r30)
/* 80584C2C C001001C */ lfs         f0, 0x1c(r1)
/* 80584C30 EC000828 */ fsubs       f0, f0, f1
/* 80584C34 D01E01FC */ stfs        f0, 0x1fc(r30)
/* 80584C38 4BCBEEA5 */ bl          normalise__Q23EGG8Vector3fFv
/* 80584C3C D03E01E0 */ stfs        f1, 0x1e0(r30)
/* 80584C40 387E01F4 */ addi        r3, r30, 0x1f4
/* 80584C44 4BCBEE99 */ bl          normalise__Q23EGG8Vector3fFv
/* 80584C48 C05E01F4 */ lfs         f2, 0x1f4(r30)
/* 80584C4C 3C80802A */ lis         r4, RKSystem_ey@ha
/* 80584C50 C03E01F8 */ lfs         f1, 0x1f8(r30)
/* 80584C54 387E0200 */ addi        r3, r30, 0x200
/* 80584C58 C01E01FC */ lfs         f0, 0x1fc(r30)
/* 80584C5C 38844130 */ addi        r4, r4, RKSystem_ey@l
/* 80584C60 D05E005C */ stfs        f2, 0x5c(r30)
/* 80584C64 38BE01F4 */ addi        r5, r30, 0x1f4
/* 80584C68 38C00001 */ li          r6, 1
/* 80584C6C D03E0060 */ stfs        f1, 0x60(r30)
/* 80584C70 D01E0064 */ stfs        f0, 0x64(r30)
/* 80584C74 D05E0074 */ stfs        f2, 0x74(r30)
/* 80584C78 D03E0078 */ stfs        f1, 0x78(r30)
/* 80584C7C D01E007C */ stfs        f0, 0x7c(r30)
/* 80584C80 48029D6D */ bl          VEC3_perpInPlane
/* 80584C84 C01F1A00 */ lfs         f0, lbl_80891a00@l(r31)
/* 80584C88 7FC3F378 */ mr          r3, r30
/* 80584C8C D01E0214 */ stfs        f0, 0x214(r30)
/* 80584C90 D01E0210 */ stfs        f0, 0x210(r30)
/* 80584C94 D01E020C */ stfs        f0, 0x20c(r30)
/* 80584C98 4800BAFD */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 80584C9C 481844B5 */ bl          unk_80709150
/* 80584CA0 7FC3F378 */ mr          r3, r30
/* 80584CA4 4800BD9D */ bl          kartModel__Q24Kart15KartObjectProxyFv
/* 80584CA8 8063000C */ lwz         r3, 0xc(r3)
/* 80584CAC 3880000C */ li          r4, 0xc
/* 80584CB0 482DFA41 */ bl          unk_808646f0
/* 80584CB4 3C808089 */ lis         r4, lbl_80891a04@ha
/* 80584CB8 7FC3F378 */ mr          r3, r30
/* 80584CBC C0241A04 */ lfs         f1, lbl_80891a04@l(r4)
/* 80584CC0 38800020 */ li          r4, 0x20
/* 80584CC4 38A00001 */ li          r5, 1
/* 80584CC8 4800B755 */ bl          unk_8059041c
/* 80584CCC 7FC3F378 */ mr          r3, r30
/* 80584CD0 38800000 */ li          r4, 0
/* 80584CD4 38A00000 */ li          r5, 0
/* 80584CD8 38C00001 */ li          r6, 1
/* 80584CDC 4800C369 */ bl          unk_80591044
/* 80584CE0 809E0000 */ lwz         r4, 0(r30)
/* 80584CE4 80640004 */ lwz         r3, 4(r4)
/* 80584CE8 80030014 */ lwz         r0, 0x14(r3)
/* 80584CEC 5400077B */ rlwinm.     r0, r0, 0, 0x1d, 0x1d
/* 80584CF0 41820050 */ beq-        lbl_80584d40
/* 80584CF4 80640004 */ lwz         r3, 4(r4)
/* 80584CF8 3880000D */ li          r4, 0xd
/* 80584CFC 80030080 */ lwz         r0, 0x80(r3)
/* 80584D00 2C000000 */ cmpwi       r0, 0
/* 80584D04 41820018 */ beq-        lbl_80584d1c
/* 80584D08 2C000001 */ cmpwi       r0, 1
/* 80584D0C 41820018 */ beq-        lbl_80584d24
/* 80584D10 2C000002 */ cmpwi       r0, 2
/* 80584D14 41820018 */ beq-        lbl_80584d2c
/* 80584D18 48000018 */ b           lbl_80584d30
lbl_80584d1c:
/* 80584D1C 38800002 */ li          r4, 2
/* 80584D20 48000010 */ b           lbl_80584d30
lbl_80584d24:
/* 80584D24 38800003 */ li          r4, 3
/* 80584D28 48000008 */ b           lbl_80584d30
lbl_80584d2c:
/* 80584D2C 38800004 */ li          r4, 4
lbl_80584d30:
/* 80584D30 2C04000D */ cmpwi       r4, 0xd
/* 80584D34 4182000C */ beq-        lbl_80584d40
/* 80584D38 7FC3F378 */ mr          r3, r30
/* 80584D3C 4800CAB9 */ bl          unk_805917f4
lbl_80584d40:
/* 80584D40 80010034 */ lwz         r0, 0x34(r1)
/* 80584D44 83E1002C */ lwz         r31, 0x2c(r1)
/* 80584D48 83C10028 */ lwz         r30, 0x28(r1)
/* 80584D4C 7C0803A6 */ mtlr        r0
/* 80584D50 38210030 */ addi        r1, r1, 0x30
/* 80584D54 4E800020 */ blr         