nofralloc
/* 8057F96C 9421FFE0 */ stwu        r1, -0x20(r1)
/* 8057F970 7C0802A6 */ mflr        r0
/* 8057F974 3C80080C */ lis         r4, 0x80c
/* 8057F978 38C00001 */ li          r6, 1
/* 8057F97C 90010024 */ stw         r0, 0x24(r1)
/* 8057F980 38040100 */ addi        r0, r4, 0x100
/* 8057F984 38800001 */ li          r4, 1
/* 8057F988 93E1001C */ stw         r31, 0x1c(r1)
/* 8057F98C 93C10018 */ stw         r30, 0x18(r1)
/* 8057F990 3FC0808B */ lis         r30, lbl_808b58f0@ha
/* 8057F994 3BDE58F0 */ addi        r30, r30, lbl_808b58f0@l
/* 8057F998 93A10014 */ stw         r29, 0x14(r1)
/* 8057F99C 7C7D1B78 */ mr          r29, r3
/* 8057F9A0 80A30000 */ lwz         r5, 0(r3)
/* 8057F9A4 80E50004 */ lwz         r7, 4(r5)
/* 8057F9A8 38A00001 */ li          r5, 1
/* 8057F9AC 8067000C */ lwz         r3, 0xc(r7)
/* 8057F9B0 7C600039 */ and.        r0, r3, r0
/* 8057F9B4 40820014 */ bne-        lbl_8057f9c8
/* 8057F9B8 80070004 */ lwz         r0, 4(r7)
/* 8057F9BC 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 8057F9C0 40820008 */ bne-        lbl_8057f9c8
/* 8057F9C4 38C00000 */ li          r6, 0
lbl_8057f9c8:
/* 8057F9C8 2C060000 */ cmpwi       r6, 0
/* 8057F9CC 40820014 */ bne-        lbl_8057f9e0
/* 8057F9D0 80070014 */ lwz         r0, 0x14(r7)
/* 8057F9D4 54000631 */ rlwinm.     r0, r0, 0, 0x18, 0x18
/* 8057F9D8 40820008 */ bne-        lbl_8057f9e0
/* 8057F9DC 38A00000 */ li          r5, 0
lbl_8057f9e0:
/* 8057F9E0 2C050000 */ cmpwi       r5, 0
/* 8057F9E4 40820014 */ bne-        lbl_8057f9f8
/* 8057F9E8 80070008 */ lwz         r0, 8(r7)
/* 8057F9EC 540007FF */ clrlwi.     r0, r0, 0x1f
/* 8057F9F0 40820008 */ bne-        lbl_8057f9f8
/* 8057F9F4 38800000 */ li          r4, 0
lbl_8057f9f8:
/* 8057F9F8 2C040000 */ cmpwi       r4, 0
/* 8057F9FC 40820154 */ bne-        lbl_8057fb50
/* 8057FA00 80070008 */ lwz         r0, 8(r7)
/* 8057FA04 ABFE023C */ lha         r31, 0x23c(r30)
/* 8057FA08 54000421 */ rlwinm.     r0, r0, 0, 0x10, 0x10
/* 8057FA0C 41820008 */ beq-        lbl_8057fa14
/* 8057FA10 ABFE023E */ lha         r31, 0x23e(r30)
lbl_8057fa14:
/* 8057FA14 7FA3EB78 */ mr          r3, r29
/* 8057FA18 48011045 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8057FA1C 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 8057FA20 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 8057FA24 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 8057FA28 80630068 */ lwz         r3, 0x68(r3)
/* 8057FA2C 7C63002E */ lwzx        r3, r3, r0
/* 8057FA30 48123F19 */ bl          unk_806a3948
/* 8057FA34 7FA3EB78 */ mr          r3, r29
/* 8057FA38 48010D5D */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 8057FA3C 48189171 */ bl          unk_80708bac
/* 8057FA40 A01D0118 */ lhz         r0, 0x118(r29)
/* 8057FA44 38800000 */ li          r4, 0
/* 8057FA48 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 8057FA4C 41820010 */ beq-        lbl_8057fa5c
/* 8057FA50 A81D0114 */ lha         r0, 0x114(r29)
/* 8057FA54 7C1F0000 */ cmpw        r31, r0
/* 8057FA58 40810024 */ ble-        lbl_8057fa7c
lbl_8057fa5c:
/* 8057FA5C A01D0118 */ lhz         r0, 0x118(r29)
/* 8057FA60 387E03A0 */ addi        r3, r30, 0x3a0
/* 8057FA64 B3FD0114 */ sth         r31, 0x114(r29)
/* 8057FA68 38800001 */ li          r4, 1
/* 8057FA6C 60000010 */ ori         r0, r0, 0x10
/* 8057FA70 B01D0118 */ sth         r0, 0x118(r29)
/* 8057FA74 C0030010 */ lfs         f0, 0x10(r3)
/* 8057FA78 D01D0124 */ stfs        f0, 0x124(r29)
lbl_8057fa7c:
/* 8057FA7C 2C040000 */ cmpwi       r4, 0
/* 8057FA80 41820074 */ beq-        lbl_8057faf4
/* 8057FA84 809D0000 */ lwz         r4, 0(r29)
/* 8057FA88 7FA3EB78 */ mr          r3, r29
/* 8057FA8C 80840004 */ lwz         r4, 4(r4)
/* 8057FA90 80040004 */ lwz         r0, 4(r4)
/* 8057FA94 64000010 */ oris        r0, r0, 0x10
/* 8057FA98 90040004 */ stw         r0, 4(r4)
/* 8057FA9C C03D0124 */ lfs         f1, 0x124(r29)
/* 8057FAA0 480113A1 */ bl          unk_80590e40
/* 8057FAA4 7FA3EB78 */ mr          r3, r29
/* 8057FAA8 38800006 */ li          r4, 6
/* 8057FAAC 48010D05 */ bl          unk_805907b0
/* 8057FAB0 7FA3EB78 */ mr          r3, r29
/* 8057FAB4 48010FA9 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8057FAB8 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 8057FABC 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 8057FAC0 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 8057FAC4 57E4043E */ clrlwi      r4, r31, 0x10
/* 8057FAC8 80630068 */ lwz         r3, 0x68(r3)
/* 8057FACC 7C63002E */ lwzx        r3, r3, r0
/* 8057FAD0 48123FF5 */ bl          unk_806a3ac4
/* 8057FAD4 7FA3EB78 */ mr          r3, r29
/* 8057FAD8 48010F69 */ bl          kartModel__Q24Kart15KartObjectProxyFv
/* 8057FADC 4825427D */ bl          unk_807d3d58
/* 8057FAE0 7FA3EB78 */ mr          r3, r29
/* 8057FAE4 38800004 */ li          r4, 4
/* 8057FAE8 38A00000 */ li          r5, 0
/* 8057FAEC 38C00001 */ li          r6, 1
/* 8057FAF0 48011555 */ bl          unk_80591044
lbl_8057faf4:
/* 8057FAF4 A81D0148 */ lha         r0, 0x148(r29)
/* 8057FAF8 7C1F0000 */ cmpw        r31, r0
/* 8057FAFC 40810008 */ ble-        lbl_8057fb04
/* 8057FB00 B3FD0148 */ sth         r31, 0x148(r29)
lbl_8057fb04:
/* 8057FB04 809D0000 */ lwz         r4, 0(r29)
/* 8057FB08 3C608089 */ lis         r3, lbl_80891a04@ha
/* 8057FB0C C0231A04 */ lfs         f1, lbl_80891a04@l(r3)
/* 8057FB10 38000000 */ li          r0, 0
/* 8057FB14 80E40004 */ lwz         r7, 4(r4)
/* 8057FB18 7FA3EB78 */ mr          r3, r29
/* 8057FB1C 38800003 */ li          r4, 3
/* 8057FB20 38A00001 */ li          r5, 1
/* 8057FB24 80C70008 */ lwz         r6, 8(r7)
/* 8057FB28 60C60080 */ ori         r6, r6, 0x80
/* 8057FB2C 90C70008 */ stw         r6, 8(r7)
/* 8057FB30 B01D012C */ sth         r0, 0x12c(r29)
/* 8057FB34 80DD0000 */ lwz         r6, 0(r29)
/* 8057FB38 B3FD012E */ sth         r31, 0x12e(r29)
/* 8057FB3C 80C60004 */ lwz         r6, 4(r6)
/* 8057FB40 80060008 */ lwz         r0, 8(r6)
/* 8057FB44 60002000 */ ori         r0, r0, 0x2000
/* 8057FB48 90060008 */ stw         r0, 8(r6)
/* 8057FB4C 480108D1 */ bl          unk_8059041c
lbl_8057fb50:
/* 8057FB50 80010024 */ lwz         r0, 0x24(r1)
/* 8057FB54 83E1001C */ lwz         r31, 0x1c(r1)
/* 8057FB58 83C10018 */ lwz         r30, 0x18(r1)
/* 8057FB5C 83A10014 */ lwz         r29, 0x14(r1)
/* 8057FB60 7C0803A6 */ mtlr        r0
/* 8057FB64 38210020 */ addi        r1, r1, 0x20
/* 8057FB68 4E800020 */ blr         