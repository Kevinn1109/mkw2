nofralloc
/* 80581C90 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80581C94 7C0802A6 */ mflr        r0
/* 80581C98 90010024 */ stw         r0, 0x24(r1)
/* 80581C9C 93E1001C */ stw         r31, 0x1c(r1)
/* 80581CA0 3FE0808B */ lis         r31, lbl_808b58f0@ha
/* 80581CA4 3BFF58F0 */ addi        r31, r31, lbl_808b58f0@l
/* 80581CA8 93C10018 */ stw         r30, 0x18(r1)
/* 80581CAC 93A10014 */ stw         r29, 0x14(r1)
/* 80581CB0 7C7D1B78 */ mr          r29, r3
/* 80581CB4 80830000 */ lwz         r4, 0(r3)
/* 80581CB8 80A40004 */ lwz         r5, 4(r4)
/* 80581CBC 80C5000C */ lwz         r6, 0xc(r5)
/* 80581CC0 54C00463 */ rlwinm.     r0, r6, 0, 0x11, 0x11
/* 80581CC4 418202A0 */ beq-        lbl_80581f64
/* 80581CC8 4800ED95 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80581CCC 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 80581CD0 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 80581CD4 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 80581CD8 38800001 */ li          r4, 1
/* 80581CDC 80630068 */ lwz         r3, 0x68(r3)
/* 80581CE0 7C63002E */ lwzx        r3, r3, r0
/* 80581CE4 9883006A */ stb         r4, 0x6a(r3)
/* 80581CE8 807D0000 */ lwz         r3, 0(r29)
/* 80581CEC 80A30004 */ lwz         r5, 4(r3)
/* 80581CF0 80C50004 */ lwz         r6, 4(r5)
/* 80581CF4 54C0035B */ rlwinm.     r0, r6, 0, 0xd, 0xd
/* 80581CF8 41820218 */ beq-        lbl_80581f10
/* 80581CFC A81D0236 */ lha         r0, 0x236(r29)
/* 80581D00 2C000000 */ cmpwi       r0, 0
/* 80581D04 4081014C */ ble-        lbl_80581e50
/* 80581D08 3C60080C */ lis         r3, 0x80c
/* 80581D0C 8085000C */ lwz         r4, 0xc(r5)
/* 80581D10 38030100 */ addi        r0, r3, 0x100
/* 80581D14 7C800039 */ and.        r0, r4, r0
/* 80581D18 38600000 */ li          r3, 0
/* 80581D1C 40820024 */ bne-        lbl_80581d40
/* 80581D20 54C006F7 */ rlwinm.     r0, r6, 0, 0x1b, 0x1b
/* 80581D24 4082001C */ bne-        lbl_80581d40
/* 80581D28 80050014 */ lwz         r0, 0x14(r5)
/* 80581D2C 54000631 */ rlwinm.     r0, r0, 0, 0x18, 0x18
/* 80581D30 40820010 */ bne-        lbl_80581d40
/* 80581D34 80050008 */ lwz         r0, 8(r5)
/* 80581D38 540007FF */ clrlwi.     r0, r0, 0x1f
/* 80581D3C 41820008 */ beq-        lbl_80581d44
lbl_80581d40:
/* 80581D40 38600001 */ li          r3, 1
lbl_80581d44:
/* 80581D44 2C030000 */ cmpwi       r3, 0
/* 80581D48 40820110 */ bne-        lbl_80581e58
/* 80581D4C ABDF0240 */ lha         r30, 0x240(r31)
/* 80581D50 7FA3EB78 */ mr          r3, r29
/* 80581D54 4800ED09 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80581D58 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 80581D5C 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 80581D60 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 80581D64 80630068 */ lwz         r3, 0x68(r3)
/* 80581D68 7C63002E */ lwzx        r3, r3, r0
/* 80581D6C 48121BDD */ bl          unk_806a3948
/* 80581D70 7FA3EB78 */ mr          r3, r29
/* 80581D74 4800EA21 */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 80581D78 48186E35 */ bl          unk_80708bac
/* 80581D7C A01D0118 */ lhz         r0, 0x118(r29)
/* 80581D80 38600000 */ li          r3, 0
/* 80581D84 540007FF */ clrlwi.     r0, r0, 0x1f
/* 80581D88 41820010 */ beq-        lbl_80581d98
/* 80581D8C A81D010C */ lha         r0, 0x10c(r29)
/* 80581D90 7C1E0000 */ cmpw        r30, r0
/* 80581D94 40810020 */ ble-        lbl_80581db4
lbl_80581d98:
/* 80581D98 A01D0118 */ lhz         r0, 0x118(r29)
/* 80581D9C 38600001 */ li          r3, 1
/* 80581DA0 B3DD010C */ sth         r30, 0x10c(r29)
/* 80581DA4 60000001 */ ori         r0, r0, 1
/* 80581DA8 B01D0118 */ sth         r0, 0x118(r29)
/* 80581DAC C01F03A0 */ lfs         f0, 0x3a0(r31)
/* 80581DB0 D01D0124 */ stfs        f0, 0x124(r29)
lbl_80581db4:
/* 80581DB4 2C030000 */ cmpwi       r3, 0
/* 80581DB8 41820074 */ beq-        lbl_80581e2c
/* 80581DBC 809D0000 */ lwz         r4, 0(r29)
/* 80581DC0 7FA3EB78 */ mr          r3, r29
/* 80581DC4 80840004 */ lwz         r4, 4(r4)
/* 80581DC8 80040004 */ lwz         r0, 4(r4)
/* 80581DCC 64000010 */ oris        r0, r0, 0x10
/* 80581DD0 90040004 */ stw         r0, 4(r4)
/* 80581DD4 C03D0124 */ lfs         f1, 0x124(r29)
/* 80581DD8 4800F069 */ bl          unk_80590e40
/* 80581DDC 7FA3EB78 */ mr          r3, r29
/* 80581DE0 38800006 */ li          r4, 6
/* 80581DE4 4800E9CD */ bl          unk_805907b0
/* 80581DE8 7FA3EB78 */ mr          r3, r29
/* 80581DEC 4800EC71 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80581DF0 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 80581DF4 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 80581DF8 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 80581DFC 57C4043E */ clrlwi      r4, r30, 0x10
/* 80581E00 80630068 */ lwz         r3, 0x68(r3)
/* 80581E04 7C63002E */ lwzx        r3, r3, r0
/* 80581E08 48121CBD */ bl          unk_806a3ac4
/* 80581E0C 7FA3EB78 */ mr          r3, r29
/* 80581E10 4800EC31 */ bl          kartModel__Q24Kart15KartObjectProxyFv
/* 80581E14 48251F45 */ bl          unk_807d3d58
/* 80581E18 7FA3EB78 */ mr          r3, r29
/* 80581E1C 38800004 */ li          r4, 4
/* 80581E20 38A00000 */ li          r5, 0
/* 80581E24 38C00001 */ li          r6, 1
/* 80581E28 4800F21D */ bl          unk_80591044
lbl_80581e2c:
/* 80581E2C A81F0240 */ lha         r0, 0x240(r31)
/* 80581E30 3C808089 */ lis         r4, lbl_80891a04@ha
/* 80581E34 C0241A04 */ lfs         f1, lbl_80891a04@l(r4)
/* 80581E38 7FA3EB78 */ mr          r3, r29
/* 80581E3C B01D023A */ sth         r0, 0x23a(r29)
/* 80581E40 38800003 */ li          r4, 3
/* 80581E44 38A00001 */ li          r5, 1
/* 80581E48 4800E5D5 */ bl          unk_8059041c
/* 80581E4C 4800000C */ b           lbl_80581e58
lbl_80581e50:
/* 80581E50 A81F0258 */ lha         r0, 0x258(r31)
/* 80581E54 B01D0238 */ sth         r0, 0x238(r29)
lbl_80581e58:
/* 80581E58 809D0000 */ lwz         r4, 0(r29)
/* 80581E5C 3C60809C */ lis         r3, spInstance__Q26System10RaceConfig@ha
/* 80581E60 80840004 */ lwz         r4, 4(r4)
/* 80581E64 8004000C */ lwz         r0, 0xc(r4)
/* 80581E68 540004A0 */ rlwinm      r0, r0, 0, 0x12, 0x10
/* 80581E6C 9004000C */ stw         r0, 0xc(r4)
/* 80581E70 A01D0254 */ lhz         r0, 0x254(r29)
/* 80581E74 5400043C */ rlwinm      r0, r0, 0, 0x10, 0x1e
/* 80581E78 B01D0254 */ sth         r0, 0x254(r29)
/* 80581E7C 8063D728 */ lwz         r3, spInstance__Q26System10RaceConfig@l(r3)
/* 80581E80 80030B78 */ lwz         r0, 0xb78(r3)
/* 80581E84 2C000000 */ cmpwi       r0, 0
/* 80581E88 4082005C */ bne-        lbl_80581ee4
/* 80581E8C 80630B70 */ lwz         r3, 0xb70(r3)
/* 80581E90 38800000 */ li          r4, 0
/* 80581E94 3803FFFD */ addi        r0, r3, -3
/* 80581E98 28000007 */ cmplwi      r0, 7
/* 80581E9C 41810018 */ bgt-        lbl_80581eb4
/* 80581EA0 38600001 */ li          r3, 1
/* 80581EA4 7C600030 */ slw         r0, r3, r0
/* 80581EA8 700000C1 */ andi.       r0, r0, 0xc1
/* 80581EAC 41820008 */ beq-        lbl_80581eb4
/* 80581EB0 7C641B78 */ mr          r4, r3
lbl_80581eb4:
/* 80581EB4 2C040000 */ cmpwi       r4, 0
/* 80581EB8 4182002C */ beq-        lbl_80581ee4
/* 80581EBC 809D0000 */ lwz         r4, 0(r29)
/* 80581EC0 7FA3EB78 */ mr          r3, r29
/* 80581EC4 80840004 */ lwz         r4, 4(r4)
/* 80581EC8 80040008 */ lwz         r0, 8(r4)
/* 80581ECC 60000100 */ ori         r0, r0, 0x100
/* 80581ED0 90040008 */ stw         r0, 8(r4)
/* 80581ED4 A81F0124 */ lha         r0, 0x124(r31)
/* 80581ED8 B01D01A8 */ sth         r0, 0x1a8(r29)
/* 80581EDC 4800F1B1 */ bl          kartBlink__Q24Kart15KartObjectProxyFv
/* 80581EE0 4BFE8411 */ bl          unk_8056a2f0
lbl_80581ee4:
/* 80581EE4 7FA3EB78 */ mr          r3, r29
/* 80581EE8 4800EB75 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80581EEC 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 80581EF0 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 80581EF4 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 80581EF8 80630068 */ lwz         r3, 0x68(r3)
/* 80581EFC 7C63002E */ lwzx        r3, r3, r0
/* 80581F00 48130A65 */ bl          unk_806b2964
/* 80581F04 7FA3EB78 */ mr          r3, r29
/* 80581F08 38800001 */ li          r4, 1
/* 80581F0C 4800F8E9 */ bl          unk_805917f4
lbl_80581f10:
/* 80581F10 A87D0236 */ lha         r3, 0x236(r29)
/* 80581F14 3803FFFF */ addi        r0, r3, -1
/* 80581F18 B01D0236 */ sth         r0, 0x236(r29)
/* 80581F1C 7C000735 */ extsh.      r0, r0
/* 80581F20 4080000C */ bge-        lbl_80581f2c
/* 80581F24 38000000 */ li          r0, 0
/* 80581F28 B01D0236 */ sth         r0, 0x236(r29)
lbl_80581f2c:
/* 80581F2C A01D0254 */ lhz         r0, 0x254(r29)
/* 80581F30 540007FF */ clrlwi.     r0, r0, 0x1f
/* 80581F34 418201C0 */ beq-        lbl_805820f4
/* 80581F38 807D0000 */ lwz         r3, 0(r29)
/* 80581F3C 80630004 */ lwz         r3, 4(r3)
/* 80581F40 80030004 */ lwz         r0, 4(r3)
/* 80581F44 540005EF */ rlwinm.     r0, r0, 0, 0x17, 0x17
/* 80581F48 418201AC */ beq-        lbl_805820f4
/* 80581F4C A87F0258 */ lha         r3, 0x258(r31)
/* 80581F50 A01D0254 */ lhz         r0, 0x254(r29)
/* 80581F54 B07D0236 */ sth         r3, 0x236(r29)
/* 80581F58 5400043C */ rlwinm      r0, r0, 0, 0x10, 0x1e
/* 80581F5C B01D0254 */ sth         r0, 0x254(r29)
/* 80581F60 48000194 */ b           lbl_805820f4
lbl_80581f64:
/* 80581F64 A8030238 */ lha         r0, 0x238(r3)
/* 80581F68 2C000000 */ cmpwi       r0, 0
/* 80581F6C 40810178 */ ble-        lbl_805820e4
/* 80581F70 80E50004 */ lwz         r7, 4(r5)
/* 80581F74 54E005EF */ rlwinm.     r0, r7, 0, 0x17, 0x17
/* 80581F78 4182014C */ beq-        lbl_805820c4
/* 80581F7C 3C60080C */ lis         r3, 0x80c
/* 80581F80 38800000 */ li          r4, 0
/* 80581F84 38030100 */ addi        r0, r3, 0x100
/* 80581F88 7CC00039 */ and.        r0, r6, r0
/* 80581F8C 40820024 */ bne-        lbl_80581fb0
/* 80581F90 54E006F7 */ rlwinm.     r0, r7, 0, 0x1b, 0x1b
/* 80581F94 4082001C */ bne-        lbl_80581fb0
/* 80581F98 80050014 */ lwz         r0, 0x14(r5)
/* 80581F9C 54000631 */ rlwinm.     r0, r0, 0, 0x18, 0x18
/* 80581FA0 40820010 */ bne-        lbl_80581fb0
/* 80581FA4 80050008 */ lwz         r0, 8(r5)
/* 80581FA8 540007FF */ clrlwi.     r0, r0, 0x1f
/* 80581FAC 41820008 */ beq-        lbl_80581fb4
lbl_80581fb0:
/* 80581FB0 38800001 */ li          r4, 1
lbl_80581fb4:
/* 80581FB4 2C040000 */ cmpwi       r4, 0
/* 80581FB8 40820104 */ bne-        lbl_805820bc
/* 80581FBC ABDF0240 */ lha         r30, 0x240(r31)
/* 80581FC0 7FA3EB78 */ mr          r3, r29
/* 80581FC4 4800EA99 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80581FC8 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 80581FCC 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 80581FD0 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 80581FD4 80630068 */ lwz         r3, 0x68(r3)
/* 80581FD8 7C63002E */ lwzx        r3, r3, r0
/* 80581FDC 4812196D */ bl          unk_806a3948
/* 80581FE0 7FA3EB78 */ mr          r3, r29
/* 80581FE4 4800E7B1 */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 80581FE8 48186BC5 */ bl          unk_80708bac
/* 80581FEC A01D0118 */ lhz         r0, 0x118(r29)
/* 80581FF0 38600000 */ li          r3, 0
/* 80581FF4 540007FF */ clrlwi.     r0, r0, 0x1f
/* 80581FF8 41820010 */ beq-        lbl_80582008
/* 80581FFC A81D010C */ lha         r0, 0x10c(r29)
/* 80582000 7C1E0000 */ cmpw        r30, r0
/* 80582004 40810020 */ ble-        lbl_80582024
lbl_80582008:
/* 80582008 A01D0118 */ lhz         r0, 0x118(r29)
/* 8058200C 38600001 */ li          r3, 1
/* 80582010 B3DD010C */ sth         r30, 0x10c(r29)
/* 80582014 60000001 */ ori         r0, r0, 1
/* 80582018 B01D0118 */ sth         r0, 0x118(r29)
/* 8058201C C01F03A0 */ lfs         f0, 0x3a0(r31)
/* 80582020 D01D0124 */ stfs        f0, 0x124(r29)
lbl_80582024:
/* 80582024 2C030000 */ cmpwi       r3, 0
/* 80582028 41820074 */ beq-        lbl_8058209c
/* 8058202C 809D0000 */ lwz         r4, 0(r29)
/* 80582030 7FA3EB78 */ mr          r3, r29
/* 80582034 80840004 */ lwz         r4, 4(r4)
/* 80582038 80040004 */ lwz         r0, 4(r4)
/* 8058203C 64000010 */ oris        r0, r0, 0x10
/* 80582040 90040004 */ stw         r0, 4(r4)
/* 80582044 C03D0124 */ lfs         f1, 0x124(r29)
/* 80582048 4800EDF9 */ bl          unk_80590e40
/* 8058204C 7FA3EB78 */ mr          r3, r29
/* 80582050 38800006 */ li          r4, 6
/* 80582054 4800E75D */ bl          unk_805907b0
/* 80582058 7FA3EB78 */ mr          r3, r29
/* 8058205C 4800EA01 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80582060 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 80582064 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 80582068 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 8058206C 57C4043E */ clrlwi      r4, r30, 0x10
/* 80582070 80630068 */ lwz         r3, 0x68(r3)
/* 80582074 7C63002E */ lwzx        r3, r3, r0
/* 80582078 48121A4D */ bl          unk_806a3ac4
/* 8058207C 7FA3EB78 */ mr          r3, r29
/* 80582080 4800E9C1 */ bl          kartModel__Q24Kart15KartObjectProxyFv
/* 80582084 48251CD5 */ bl          unk_807d3d58
/* 80582088 7FA3EB78 */ mr          r3, r29
/* 8058208C 38800004 */ li          r4, 4
/* 80582090 38A00000 */ li          r5, 0
/* 80582094 38C00001 */ li          r6, 1
/* 80582098 4800EFAD */ bl          unk_80591044
lbl_8058209c:
/* 8058209C A81F0240 */ lha         r0, 0x240(r31)
/* 805820A0 3C808089 */ lis         r4, lbl_80891a04@ha
/* 805820A4 C0241A04 */ lfs         f1, lbl_80891a04@l(r4)
/* 805820A8 7FA3EB78 */ mr          r3, r29
/* 805820AC B01D023A */ sth         r0, 0x23a(r29)
/* 805820B0 38800003 */ li          r4, 3
/* 805820B4 38A00001 */ li          r5, 1
/* 805820B8 4800E365 */ bl          unk_8059041c
lbl_805820bc:
/* 805820BC 38000000 */ li          r0, 0
/* 805820C0 B01D0238 */ sth         r0, 0x238(r29)
lbl_805820c4:
/* 805820C4 A87D0238 */ lha         r3, 0x238(r29)
/* 805820C8 3803FFFF */ addi        r0, r3, -1
/* 805820CC B01D0238 */ sth         r0, 0x238(r29)
/* 805820D0 7C000735 */ extsh.      r0, r0
/* 805820D4 40800020 */ bge-        lbl_805820f4
/* 805820D8 38000000 */ li          r0, 0
/* 805820DC B01D0238 */ sth         r0, 0x238(r29)
/* 805820E0 48000014 */ b           lbl_805820f4
lbl_805820e4:
/* 805820E4 80640004 */ lwz         r3, 4(r4)
/* 805820E8 80030008 */ lwz         r0, 8(r3)
/* 805820EC 540003DA */ rlwinm      r0, r0, 0, 0xf, 0xd
/* 805820F0 90030008 */ stw         r0, 8(r3)
lbl_805820f4:
/* 805820F4 A87D023A */ lha         r3, 0x23a(r29)
/* 805820F8 3803FFFF */ addi        r0, r3, -1
/* 805820FC B01D023A */ sth         r0, 0x23a(r29)
/* 80582100 7C000735 */ extsh.      r0, r0
/* 80582104 4080000C */ bge-        lbl_80582110
/* 80582108 38000000 */ li          r0, 0
/* 8058210C B01D023A */ sth         r0, 0x23a(r29)
lbl_80582110:
/* 80582110 80010024 */ lwz         r0, 0x24(r1)
/* 80582114 83E1001C */ lwz         r31, 0x1c(r1)
/* 80582118 83C10018 */ lwz         r30, 0x18(r1)
/* 8058211C 83A10014 */ lwz         r29, 0x14(r1)
/* 80582120 7C0803A6 */ mtlr        r0
/* 80582124 38210020 */ addi        r1, r1, 0x20
/* 80582128 4E800020 */ blr         