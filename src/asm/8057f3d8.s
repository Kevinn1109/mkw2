nofralloc
/* 8057F3D8 9421FFF0 */ stwu        r1, -0x10(r1)
/* 8057F3DC 7C0802A6 */ mflr        r0
/* 8057F3E0 3C80080C */ lis         r4, 0x80c
/* 8057F3E4 38C00001 */ li          r6, 1
/* 8057F3E8 90010014 */ stw         r0, 0x14(r1)
/* 8057F3EC 38040100 */ addi        r0, r4, 0x100
/* 8057F3F0 38800001 */ li          r4, 1
/* 8057F3F4 93E1000C */ stw         r31, 0xc(r1)
/* 8057F3F8 93C10008 */ stw         r30, 8(r1)
/* 8057F3FC 7C7E1B78 */ mr          r30, r3
/* 8057F400 80A30000 */ lwz         r5, 0(r3)
/* 8057F404 80E50004 */ lwz         r7, 4(r5)
/* 8057F408 38A00001 */ li          r5, 1
/* 8057F40C 8067000C */ lwz         r3, 0xc(r7)
/* 8057F410 7C600039 */ and.        r0, r3, r0
/* 8057F414 40820014 */ bne-        lbl_8057f428
/* 8057F418 80070004 */ lwz         r0, 4(r7)
/* 8057F41C 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 8057F420 40820008 */ bne-        lbl_8057f428
/* 8057F424 38C00000 */ li          r6, 0
lbl_8057f428:
/* 8057F428 2C060000 */ cmpwi       r6, 0
/* 8057F42C 40820014 */ bne-        lbl_8057f440
/* 8057F430 80070014 */ lwz         r0, 0x14(r7)
/* 8057F434 54000631 */ rlwinm.     r0, r0, 0, 0x18, 0x18
/* 8057F438 40820008 */ bne-        lbl_8057f440
/* 8057F43C 38A00000 */ li          r5, 0
lbl_8057f440:
/* 8057F440 2C050000 */ cmpwi       r5, 0
/* 8057F444 40820014 */ bne-        lbl_8057f458
/* 8057F448 80070008 */ lwz         r0, 8(r7)
/* 8057F44C 540007FF */ clrlwi.     r0, r0, 0x1f
/* 8057F450 40820008 */ bne-        lbl_8057f458
/* 8057F454 38800000 */ li          r4, 0
lbl_8057f458:
/* 8057F458 2C040000 */ cmpwi       r4, 0
/* 8057F45C 408201BC */ bne-        lbl_8057f618
/* 8057F460 3C80808B */ lis         r4, lbl_808b5b28@ha
/* 8057F464 7FC3F378 */ mr          r3, r30
/* 8057F468 ABE45B28 */ lha         r31, lbl_808b5b28@l(r4)
/* 8057F46C 480115F1 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8057F470 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 8057F474 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 8057F478 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 8057F47C 80630068 */ lwz         r3, 0x68(r3)
/* 8057F480 7C63002E */ lwzx        r3, r3, r0
/* 8057F484 481244C5 */ bl          unk_806a3948
/* 8057F488 7FC3F378 */ mr          r3, r30
/* 8057F48C 48011309 */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 8057F490 4818971D */ bl          unk_80708bac
/* 8057F494 A01E0118 */ lhz         r0, 0x118(r30)
/* 8057F498 38800000 */ li          r4, 0
/* 8057F49C 5400077B */ rlwinm.     r0, r0, 0, 0x1d, 0x1d
/* 8057F4A0 41820010 */ beq-        lbl_8057f4b0
/* 8057F4A4 A81E0110 */ lha         r0, 0x110(r30)
/* 8057F4A8 7C1F0000 */ cmpw        r31, r0
/* 8057F4AC 40810028 */ ble-        lbl_8057f4d4
lbl_8057f4b0:
/* 8057F4B0 A01E0118 */ lhz         r0, 0x118(r30)
/* 8057F4B4 3C60808B */ lis         r3, lbl_808b5c90@ha
/* 8057F4B8 B3FE0110 */ sth         r31, 0x110(r30)
/* 8057F4BC 38635C90 */ addi        r3, r3, lbl_808b5c90@l
/* 8057F4C0 60000004 */ ori         r0, r0, 4
/* 8057F4C4 38800001 */ li          r4, 1
/* 8057F4C8 B01E0118 */ sth         r0, 0x118(r30)
/* 8057F4CC C0030008 */ lfs         f0, 8(r3)
/* 8057F4D0 D01E0124 */ stfs        f0, 0x124(r30)
lbl_8057f4d4:
/* 8057F4D4 2C040000 */ cmpwi       r4, 0
/* 8057F4D8 41820074 */ beq-        lbl_8057f54c
/* 8057F4DC 809E0000 */ lwz         r4, 0(r30)
/* 8057F4E0 7FC3F378 */ mr          r3, r30
/* 8057F4E4 80840004 */ lwz         r4, 4(r4)
/* 8057F4E8 80040004 */ lwz         r0, 4(r4)
/* 8057F4EC 64000010 */ oris        r0, r0, 0x10
/* 8057F4F0 90040004 */ stw         r0, 4(r4)
/* 8057F4F4 C03E0124 */ lfs         f1, 0x124(r30)
/* 8057F4F8 48011949 */ bl          unk_80590e40
/* 8057F4FC 7FC3F378 */ mr          r3, r30
/* 8057F500 38800006 */ li          r4, 6
/* 8057F504 480112AD */ bl          unk_805907b0
/* 8057F508 7FC3F378 */ mr          r3, r30
/* 8057F50C 48011551 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8057F510 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 8057F514 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 8057F518 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 8057F51C 57E4043E */ clrlwi      r4, r31, 0x10
/* 8057F520 80630068 */ lwz         r3, 0x68(r3)
/* 8057F524 7C63002E */ lwzx        r3, r3, r0
/* 8057F528 4812459D */ bl          unk_806a3ac4
/* 8057F52C 7FC3F378 */ mr          r3, r30
/* 8057F530 48011511 */ bl          kartModel__Q24Kart15KartObjectProxyFv
/* 8057F534 48254825 */ bl          unk_807d3d58
/* 8057F538 7FC3F378 */ mr          r3, r30
/* 8057F53C 38800004 */ li          r4, 4
/* 8057F540 38A00000 */ li          r5, 0
/* 8057F544 38C00001 */ li          r6, 1
/* 8057F548 48011AFD */ bl          unk_80591044
lbl_8057f54c:
/* 8057F54C 3C60808B */ lis         r3, lbl_808b5b28@ha
/* 8057F550 A81E0148 */ lha         r0, 0x148(r30)
/* 8057F554 A8635B28 */ lha         r3, lbl_808b5b28@l(r3)
/* 8057F558 7C030000 */ cmpw        r3, r0
/* 8057F55C 40810008 */ ble-        lbl_8057f564
/* 8057F560 B07E0148 */ sth         r3, 0x148(r30)
lbl_8057f564:
/* 8057F564 809E0000 */ lwz         r4, 0(r30)
/* 8057F568 7FC3F378 */ mr          r3, r30
/* 8057F56C 80840004 */ lwz         r4, 4(r4)
/* 8057F570 80040008 */ lwz         r0, 8(r4)
/* 8057F574 60000080 */ ori         r0, r0, 0x80
/* 8057F578 90040008 */ stw         r0, 8(r4)
/* 8057F57C 480114C5 */ bl          kartModel__Q24Kart15KartObjectProxyFv
/* 8057F580 48247495 */ bl          unk_807c6a14
/* 8057F584 3C808089 */ lis         r4, lbl_80891a04@ha
/* 8057F588 7FC3F378 */ mr          r3, r30
/* 8057F58C C0241A04 */ lfs         f1, lbl_80891a04@l(r4)
/* 8057F590 38800003 */ li          r4, 3
/* 8057F594 38A00001 */ li          r5, 1
/* 8057F598 48010E85 */ bl          unk_8059041c
/* 8057F59C 809E0000 */ lwz         r4, 0(r30)
/* 8057F5A0 80640004 */ lwz         r3, 4(r4)
/* 8057F5A4 8003000C */ lwz         r0, 0xc(r3)
/* 8057F5A8 540000C7 */ rlwinm.     r0, r0, 0, 3, 3
/* 8057F5AC 41820040 */ beq-        lbl_8057f5ec
/* 8057F5B0 80A40004 */ lwz         r5, 4(r4)
/* 8057F5B4 38000000 */ li          r0, 0
/* 8057F5B8 7FC3F378 */ mr          r3, r30
/* 8057F5BC 8085000C */ lwz         r4, 0xc(r5)
/* 8057F5C0 54840104 */ rlwinm      r4, r4, 0, 4, 2
/* 8057F5C4 9085000C */ stw         r4, 0xc(r5)
/* 8057F5C8 B01E018E */ sth         r0, 0x18e(r30)
/* 8057F5CC 48011491 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8057F5D0 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 8057F5D4 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 8057F5D8 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 8057F5DC 38800001 */ li          r4, 1
/* 8057F5E0 80630068 */ lwz         r3, 0x68(r3)
/* 8057F5E4 7C63002E */ lwzx        r3, r3, r0
/* 8057F5E8 9883010D */ stb         r4, 0x10d(r3)
lbl_8057f5ec:
/* 8057F5EC 3C60808B */ lis         r3, lbl_808b5b28@ha
/* 8057F5F0 80BE0000 */ lwz         r5, 0(r30)
/* 8057F5F4 A8035B28 */ lha         r0, lbl_808b5b28@l(r3)
/* 8057F5F8 7FC3F378 */ mr          r3, r30
/* 8057F5FC B01E0188 */ sth         r0, 0x188(r30)
/* 8057F600 3880001A */ li          r4, 0x1a
/* 8057F604 80A50004 */ lwz         r5, 4(r5)
/* 8057F608 80050004 */ lwz         r0, 4(r5)
/* 8057F60C 64000400 */ oris        r0, r0, 0x400
/* 8057F610 90050004 */ stw         r0, 4(r5)
/* 8057F614 480121AD */ bl          unk_805917c0
lbl_8057f618:
/* 8057F618 80010014 */ lwz         r0, 0x14(r1)
/* 8057F61C 83E1000C */ lwz         r31, 0xc(r1)
/* 8057F620 83C10008 */ lwz         r30, 8(r1)
/* 8057F624 7C0803A6 */ mtlr        r0
/* 8057F628 38210010 */ addi        r1, r1, 0x10
/* 8057F62C 4E800020 */ blr         