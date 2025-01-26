nofralloc
/* 80579CE4 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80579CE8 7C0802A6 */ mflr        r0
/* 80579CEC 90010024 */ stw         r0, 0x24(r1)
/* 80579CF0 93E1001C */ stw         r31, 0x1c(r1)
/* 80579CF4 93C10018 */ stw         r30, 0x18(r1)
/* 80579CF8 93A10014 */ stw         r29, 0x14(r1)
/* 80579CFC 7C7D1B78 */ mr          r29, r3
/* 80579D00 80A30000 */ lwz         r5, 0(r3)
/* 80579D04 80650004 */ lwz         r3, 4(r5)
/* 80579D08 8003000C */ lwz         r0, 0xc(r3)
/* 80579D0C 5400018D */ rlwinm.     r0, r0, 0, 6, 6
/* 80579D10 4082007C */ bne-        lbl_80579d8c
/* 80579D14 80030014 */ lwz         r0, 0x14(r3)
/* 80579D18 54000739 */ rlwinm.     r0, r0, 0, 0x1c, 0x1c
/* 80579D1C 4182000C */ beq-        lbl_80579d28
/* 80579D20 2C040000 */ cmpwi       r4, 0
/* 80579D24 4182005C */ beq-        lbl_80579d80
lbl_80579d28:
/* 80579D28 80850004 */ lwz         r4, 4(r5)
/* 80579D2C 7FA3EB78 */ mr          r3, r29
/* 80579D30 8004000C */ lwz         r0, 0xc(r4)
/* 80579D34 64000200 */ oris        r0, r0, 0x200
/* 80579D38 9004000C */ stw         r0, 0xc(r4)
/* 80579D3C 48016691 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80579D40 3FC0802A */ lis         r30, lbl_802a4100@ha
/* 80579D44 C01E4100 */ lfs         f0, lbl_802a4100@l(r30)
/* 80579D48 3BFE4100 */ addi        r31, r30, lbl_802a4100@l
/* 80579D4C D00300B0 */ stfs        f0, 0xb0(r3)
/* 80579D50 C01F0004 */ lfs         f0, 4(r31)
/* 80579D54 D00300B4 */ stfs        f0, 0xb4(r3)
/* 80579D58 C01F0008 */ lfs         f0, 8(r31)
/* 80579D5C D00300B8 */ stfs        f0, 0xb8(r3)
/* 80579D60 7FA3EB78 */ mr          r3, r29
/* 80579D64 48016669 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 80579D68 C01E4100 */ lfs         f0, lbl_802a4100@l(r30)
/* 80579D6C D00300C8 */ stfs        f0, 0xc8(r3)
/* 80579D70 C01F0004 */ lfs         f0, 4(r31)
/* 80579D74 D00300CC */ stfs        f0, 0xcc(r3)
/* 80579D78 C01F0008 */ lfs         f0, 8(r31)
/* 80579D7C D00300D0 */ stfs        f0, 0xd0(r3)
lbl_80579d80:
/* 80579D80 7FA3EB78 */ mr          r3, r29
/* 80579D84 38800005 */ li          r4, 5
/* 80579D88 48017A6D */ bl          unk_805917f4
lbl_80579d8c:
/* 80579D8C 80010024 */ lwz         r0, 0x24(r1)
/* 80579D90 83E1001C */ lwz         r31, 0x1c(r1)
/* 80579D94 83C10018 */ lwz         r30, 0x18(r1)
/* 80579D98 83A10014 */ lwz         r29, 0x14(r1)
/* 80579D9C 7C0803A6 */ mtlr        r0
/* 80579DA0 38210020 */ addi        r1, r1, 0x20
/* 80579DA4 4E800020 */ blr         