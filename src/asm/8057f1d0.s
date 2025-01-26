nofralloc
/* 8057F1D0 9421FFF0 */ stwu        r1, -0x10(r1)
/* 8057F1D4 7C0802A6 */ mflr        r0
/* 8057F1D8 3C80080C */ lis         r4, 0x80c
/* 8057F1DC 38C00001 */ li          r6, 1
/* 8057F1E0 90010014 */ stw         r0, 0x14(r1)
/* 8057F1E4 38040100 */ addi        r0, r4, 0x100
/* 8057F1E8 38800001 */ li          r4, 1
/* 8057F1EC 93E1000C */ stw         r31, 0xc(r1)
/* 8057F1F0 93C10008 */ stw         r30, 8(r1)
/* 8057F1F4 7C7E1B78 */ mr          r30, r3
/* 8057F1F8 80A30000 */ lwz         r5, 0(r3)
/* 8057F1FC 80E50004 */ lwz         r7, 4(r5)
/* 8057F200 38A00001 */ li          r5, 1
/* 8057F204 8067000C */ lwz         r3, 0xc(r7)
/* 8057F208 7C600039 */ and.        r0, r3, r0
/* 8057F20C 40820014 */ bne-        lbl_8057f220
/* 8057F210 80070004 */ lwz         r0, 4(r7)
/* 8057F214 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 8057F218 40820008 */ bne-        lbl_8057f220
/* 8057F21C 38C00000 */ li          r6, 0
lbl_8057f220:
/* 8057F220 2C060000 */ cmpwi       r6, 0
/* 8057F224 40820014 */ bne-        lbl_8057f238
/* 8057F228 80070014 */ lwz         r0, 0x14(r7)
/* 8057F22C 54000631 */ rlwinm.     r0, r0, 0, 0x18, 0x18
/* 8057F230 40820008 */ bne-        lbl_8057f238
/* 8057F234 38A00000 */ li          r5, 0
lbl_8057f238:
/* 8057F238 2C050000 */ cmpwi       r5, 0
/* 8057F23C 40820014 */ bne-        lbl_8057f250
/* 8057F240 80070008 */ lwz         r0, 8(r7)
/* 8057F244 540007FF */ clrlwi.     r0, r0, 0x1f
/* 8057F248 40820008 */ bne-        lbl_8057f250
/* 8057F24C 38800000 */ li          r4, 0
lbl_8057f250:
/* 8057F250 2C040000 */ cmpwi       r4, 0
/* 8057F254 4082016C */ bne-        lbl_8057f3c0
/* 8057F258 3C80808B */ lis         r4, lbl_808b5b2a@ha
/* 8057F25C 7FC3F378 */ mr          r3, r30
/* 8057F260 ABE45B2A */ lha         r31, lbl_808b5b2a@l(r4)
/* 8057F264 480117F9 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8057F268 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 8057F26C 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 8057F270 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 8057F274 80630068 */ lwz         r3, 0x68(r3)
/* 8057F278 7C63002E */ lwzx        r3, r3, r0
/* 8057F27C 481246CD */ bl          unk_806a3948
/* 8057F280 7FC3F378 */ mr          r3, r30
/* 8057F284 48011511 */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 8057F288 48189925 */ bl          unk_80708bac
/* 8057F28C A01E0118 */ lhz         r0, 0x118(r30)
/* 8057F290 38800000 */ li          r4, 0
/* 8057F294 5400077B */ rlwinm.     r0, r0, 0, 0x1d, 0x1d
/* 8057F298 41820010 */ beq-        lbl_8057f2a8
/* 8057F29C A81E0110 */ lha         r0, 0x110(r30)
/* 8057F2A0 7C1F0000 */ cmpw        r31, r0
/* 8057F2A4 40810028 */ ble-        lbl_8057f2cc
lbl_8057f2a8:
/* 8057F2A8 A01E0118 */ lhz         r0, 0x118(r30)
/* 8057F2AC 3C60808B */ lis         r3, lbl_808b5c90@ha
/* 8057F2B0 B3FE0110 */ sth         r31, 0x110(r30)
/* 8057F2B4 38635C90 */ addi        r3, r3, lbl_808b5c90@l
/* 8057F2B8 60000004 */ ori         r0, r0, 4
/* 8057F2BC 38800001 */ li          r4, 1
/* 8057F2C0 B01E0118 */ sth         r0, 0x118(r30)
/* 8057F2C4 C0030008 */ lfs         f0, 8(r3)
/* 8057F2C8 D01E0124 */ stfs        f0, 0x124(r30)
lbl_8057f2cc:
/* 8057F2CC 2C040000 */ cmpwi       r4, 0
/* 8057F2D0 41820074 */ beq-        lbl_8057f344
/* 8057F2D4 809E0000 */ lwz         r4, 0(r30)
/* 8057F2D8 7FC3F378 */ mr          r3, r30
/* 8057F2DC 80840004 */ lwz         r4, 4(r4)
/* 8057F2E0 80040004 */ lwz         r0, 4(r4)
/* 8057F2E4 64000010 */ oris        r0, r0, 0x10
/* 8057F2E8 90040004 */ stw         r0, 4(r4)
/* 8057F2EC C03E0124 */ lfs         f1, 0x124(r30)
/* 8057F2F0 48011B51 */ bl          unk_80590e40
/* 8057F2F4 7FC3F378 */ mr          r3, r30
/* 8057F2F8 38800006 */ li          r4, 6
/* 8057F2FC 480114B5 */ bl          unk_805907b0
/* 8057F300 7FC3F378 */ mr          r3, r30
/* 8057F304 48011759 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8057F308 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 8057F30C 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 8057F310 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 8057F314 57E4043E */ clrlwi      r4, r31, 0x10
/* 8057F318 80630068 */ lwz         r3, 0x68(r3)
/* 8057F31C 7C63002E */ lwzx        r3, r3, r0
/* 8057F320 481247A5 */ bl          unk_806a3ac4
/* 8057F324 7FC3F378 */ mr          r3, r30
/* 8057F328 48011719 */ bl          kartModel__Q24Kart15KartObjectProxyFv
/* 8057F32C 48254A2D */ bl          unk_807d3d58
/* 8057F330 7FC3F378 */ mr          r3, r30
/* 8057F334 38800004 */ li          r4, 4
/* 8057F338 38A00000 */ li          r5, 0
/* 8057F33C 38C00001 */ li          r6, 1
/* 8057F340 48011D05 */ bl          unk_80591044
lbl_8057f344:
/* 8057F344 3C60808B */ lis         r3, lbl_808b5b2a@ha
/* 8057F348 A81E0148 */ lha         r0, 0x148(r30)
/* 8057F34C A8635B2A */ lha         r3, lbl_808b5b2a@l(r3)
/* 8057F350 7C030000 */ cmpw        r3, r0
/* 8057F354 40810008 */ ble-        lbl_8057f35c
/* 8057F358 B07E0148 */ sth         r3, 0x148(r30)
lbl_8057f35c:
/* 8057F35C 807E0000 */ lwz         r3, 0(r30)
/* 8057F360 80630004 */ lwz         r3, 4(r3)
/* 8057F364 80030008 */ lwz         r0, 8(r3)
/* 8057F368 60000080 */ ori         r0, r0, 0x80
/* 8057F36C 90030008 */ stw         r0, 8(r3)
/* 8057F370 809E0000 */ lwz         r4, 0(r30)
/* 8057F374 80640004 */ lwz         r3, 4(r4)
/* 8057F378 8003000C */ lwz         r0, 0xc(r3)
/* 8057F37C 540000C7 */ rlwinm.     r0, r0, 0, 3, 3
/* 8057F380 41820040 */ beq-        lbl_8057f3c0
/* 8057F384 80A40004 */ lwz         r5, 4(r4)
/* 8057F388 38000000 */ li          r0, 0
/* 8057F38C 7FC3F378 */ mr          r3, r30
/* 8057F390 8085000C */ lwz         r4, 0xc(r5)
/* 8057F394 54840104 */ rlwinm      r4, r4, 0, 4, 2
/* 8057F398 9085000C */ stw         r4, 0xc(r5)
/* 8057F39C B01E018E */ sth         r0, 0x18e(r30)
/* 8057F3A0 480116BD */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8057F3A4 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 8057F3A8 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 8057F3AC 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 8057F3B0 38800001 */ li          r4, 1
/* 8057F3B4 80630068 */ lwz         r3, 0x68(r3)
/* 8057F3B8 7C63002E */ lwzx        r3, r3, r0
/* 8057F3BC 9883010D */ stb         r4, 0x10d(r3)
lbl_8057f3c0:
/* 8057F3C0 80010014 */ lwz         r0, 0x14(r1)
/* 8057F3C4 83E1000C */ lwz         r31, 0xc(r1)
/* 8057F3C8 83C10008 */ lwz         r30, 8(r1)
/* 8057F3CC 7C0803A6 */ mtlr        r0
/* 8057F3D0 38210010 */ addi        r1, r1, 0x10
/* 8057F3D4 4E800020 */ blr         