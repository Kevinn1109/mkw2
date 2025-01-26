nofralloc
/* 8057F090 9421FFE0 */ stwu        r1, -0x20(r1)
/* 8057F094 7C0802A6 */ mflr        r0
/* 8057F098 90010024 */ stw         r0, 0x24(r1)
/* 8057F09C 93E1001C */ stw         r31, 0x1c(r1)
/* 8057F0A0 7CBF2B78 */ mr          r31, r5
/* 8057F0A4 93C10018 */ stw         r30, 0x18(r1)
/* 8057F0A8 7C9E2378 */ mr          r30, r4
/* 8057F0AC 93A10014 */ stw         r29, 0x14(r1)
/* 8057F0B0 7C7D1B78 */ mr          r29, r3
/* 8057F0B4 480119A9 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8057F0B8 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 8057F0BC 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 8057F0C0 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 8057F0C4 80630068 */ lwz         r3, 0x68(r3)
/* 8057F0C8 7C63002E */ lwzx        r3, r3, r0
/* 8057F0CC 4812487D */ bl          unk_806a3948
/* 8057F0D0 7FA3EB78 */ mr          r3, r29
/* 8057F0D4 480116C1 */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 8057F0D8 48189AD5 */ bl          unk_80708bac
/* 8057F0DC 57C0063E */ clrlwi      r0, r30, 0x18
/* 8057F0E0 38600001 */ li          r3, 1
/* 8057F0E4 7C650030 */ slw         r5, r3, r0
/* 8057F0E8 A07D0118 */ lhz         r3, 0x118(r29)
/* 8057F0EC 54A0043E */ clrlwi      r0, r5, 0x10
/* 8057F0F0 57C4083C */ slwi        r4, r30, 1
/* 8057F0F4 7C600039 */ and.        r0, r3, r0
/* 8057F0F8 38C00000 */ li          r6, 0
/* 8057F0FC 7C7D2214 */ add         r3, r29, r4
/* 8057F100 41820010 */ beq-        lbl_8057f110
/* 8057F104 A803010C */ lha         r0, 0x10c(r3)
/* 8057F108 7C1F0000 */ cmpw        r31, r0
/* 8057F10C 40810030 */ ble-        lbl_8057f13c
lbl_8057f110:
/* 8057F110 B3E3010C */ sth         r31, 0x10c(r3)
/* 8057F114 54A4043E */ clrlwi      r4, r5, 0x10
/* 8057F118 3C60808B */ lis         r3, lbl_808b5c90@ha
/* 8057F11C 57C0103A */ slwi        r0, r30, 2
/* 8057F120 A0BD0118 */ lhz         r5, 0x118(r29)
/* 8057F124 38635C90 */ addi        r3, r3, lbl_808b5c90@l
/* 8057F128 38C00001 */ li          r6, 1
/* 8057F12C 7CA42378 */ or          r4, r5, r4
/* 8057F130 B09D0118 */ sth         r4, 0x118(r29)
/* 8057F134 7C03042E */ lfsx        f0, r3, r0
/* 8057F138 D01D0124 */ stfs        f0, 0x124(r29)
lbl_8057f13c:
/* 8057F13C 2C060000 */ cmpwi       r6, 0
/* 8057F140 41820074 */ beq-        lbl_8057f1b4
/* 8057F144 809D0000 */ lwz         r4, 0(r29)
/* 8057F148 7FA3EB78 */ mr          r3, r29
/* 8057F14C 80840004 */ lwz         r4, 4(r4)
/* 8057F150 80040004 */ lwz         r0, 4(r4)
/* 8057F154 64000010 */ oris        r0, r0, 0x10
/* 8057F158 90040004 */ stw         r0, 4(r4)
/* 8057F15C C03D0124 */ lfs         f1, 0x124(r29)
/* 8057F160 48011CE1 */ bl          unk_80590e40
/* 8057F164 7FA3EB78 */ mr          r3, r29
/* 8057F168 38800006 */ li          r4, 6
/* 8057F16C 48011645 */ bl          unk_805907b0
/* 8057F170 7FA3EB78 */ mr          r3, r29
/* 8057F174 480118E9 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8057F178 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 8057F17C 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 8057F180 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 8057F184 57E4043E */ clrlwi      r4, r31, 0x10
/* 8057F188 80630068 */ lwz         r3, 0x68(r3)
/* 8057F18C 7C63002E */ lwzx        r3, r3, r0
/* 8057F190 48124935 */ bl          unk_806a3ac4
/* 8057F194 7FA3EB78 */ mr          r3, r29
/* 8057F198 480118A9 */ bl          kartModel__Q24Kart15KartObjectProxyFv
/* 8057F19C 48254BBD */ bl          unk_807d3d58
/* 8057F1A0 7FA3EB78 */ mr          r3, r29
/* 8057F1A4 38800004 */ li          r4, 4
/* 8057F1A8 38A00000 */ li          r5, 0
/* 8057F1AC 38C00001 */ li          r6, 1
/* 8057F1B0 48011E95 */ bl          unk_80591044
lbl_8057f1b4:
/* 8057F1B4 80010024 */ lwz         r0, 0x24(r1)
/* 8057F1B8 83E1001C */ lwz         r31, 0x1c(r1)
/* 8057F1BC 83C10018 */ lwz         r30, 0x18(r1)
/* 8057F1C0 83A10014 */ lwz         r29, 0x14(r1)
/* 8057F1C4 7C0803A6 */ mtlr        r0
/* 8057F1C8 38210020 */ addi        r1, r1, 0x20
/* 8057F1CC 4E800020 */ blr         