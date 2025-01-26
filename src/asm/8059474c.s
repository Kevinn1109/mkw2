nofralloc
/* 8059474C 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80594750 7C0802A6 */ mflr        r0
/* 80594754 90010024 */ stw         r0, 0x24(r1)
/* 80594758 93E1001C */ stw         r31, 0x1c(r1)
/* 8059475C 7C7F1B78 */ mr          r31, r3
/* 80594760 80030090 */ lwz         r0, 0x90(r3)
/* 80594764 2C00FFFF */ cmpwi       r0, -1
/* 80594768 4182009C */ beq-        lbl_80594804
/* 8059476C A8C30094 */ lha         r6, 0x94(r3)
/* 80594770 3CA04330 */ lis         r5, 0x4330
/* 80594774 3C80808B */ lis         r4, lbl_808b6528@ha
/* 80594778 3CE08089 */ lis         r7, lbl_80891ef8@ha
/* 8059477C 38C60001 */ addi        r6, r6, 1
/* 80594780 B0C30094 */ sth         r6, 0x94(r3)
/* 80594784 5400083C */ slwi        r0, r0, 1
/* 80594788 38846528 */ addi        r4, r4, lbl_808b6528@l
/* 8059478C 7C0402AE */ lhax        r0, r4, r0
/* 80594790 7CC40734 */ extsh       r4, r6
/* 80594794 6C868000 */ xoris       r6, r4, 0x8000
/* 80594798 90C1000C */ stw         r6, 0xc(r1)
/* 8059479C 6C008000 */ xoris       r0, r0, 0x8000
/* 805947A0 3C808089 */ lis         r4, lbl_80891ef4@ha
/* 805947A4 90A10008 */ stw         r5, 8(r1)
/* 805947A8 C8671EF8 */ lfd         f3, lbl_80891ef8@l(r7)
/* 805947AC C8210008 */ lfd         f1, 8(r1)
/* 805947B0 90010014 */ stw         r0, 0x14(r1)
/* 805947B4 EC411828 */ fsubs       f2, f1, f3
/* 805947B8 C0041EF4 */ lfs         f0, lbl_80891ef4@l(r4)
/* 805947BC 90A10010 */ stw         r5, 0x10(r1)
/* 805947C0 C8210010 */ lfd         f1, 0x10(r1)
/* 805947C4 EC211828 */ fsubs       f1, f1, f3
/* 805947C8 EC220824 */ fdivs       f1, f2, f1
/* 805947CC D0230098 */ stfs        f1, 0x98(r3)
/* 805947D0 FC000840 */ fcmpo       cr0, f0, f1
/* 805947D4 40800008 */ bge-        lbl_805947dc
/* 805947D8 D0030098 */ stfs        f0, 0x98(r3)
lbl_805947dc:
/* 805947DC 80030090 */ lwz         r0, 0x90(r3)
/* 805947E0 3C80808B */ lis         r4, lbl_808b6528@ha
/* 805947E4 38846528 */ addi        r4, r4, lbl_808b6528@l
/* 805947E8 A8A30094 */ lha         r5, 0x94(r3)
/* 805947EC 5400083C */ slwi        r0, r0, 1
/* 805947F0 7C0402AE */ lhax        r0, r4, r0
/* 805947F4 7C050000 */ cmpw        r5, r0
/* 805947F8 4081000C */ ble-        lbl_80594804
/* 805947FC 3800FFFF */ li          r0, -1
/* 80594800 90030090 */ stw         r0, 0x90(r3)
lbl_80594804:
/* 80594804 80030008 */ lwz         r0, 8(r3)
/* 80594808 3C808089 */ lis         r4, lbl_80891ef0@ha
/* 8059480C C0041EF0 */ lfs         f0, lbl_80891ef0@l(r4)
/* 80594810 3CE0FE80 */ lis         r7, 0xfe80
/* 80594814 54060524 */ rlwinm      r6, r0, 0, 0x14, 0x12
/* 80594818 3CA03FC0 */ lis         r5, 0x3fc0
/* 8059481C 81030004 */ lwz         r8, 4(r3)
/* 80594820 38E79C78 */ addi        r7, r7, -0x6388
/* 80594824 3805EFFF */ addi        r0, r5, -0x1001
/* 80594828 8083000C */ lwz         r4, 0xc(r3)
/* 8059482C 7D053838 */ and         r5, r8, r7
/* 80594830 90A30004 */ stw         r5, 4(r3)
/* 80594834 7C800038 */ and         r0, r4, r0
/* 80594838 90C30008 */ stw         r6, 8(r3)
/* 8059483C 9003000C */ stw         r0, 0xc(r3)
/* 80594840 D003008C */ stfs        f0, 0x8c(r3)
/* 80594844 D0030088 */ stfs        f0, 0x88(r3)
/* 80594848 80630018 */ lwz         r3, 0x18(r3)
/* 8059484C 4BFFC001 */ bl          kartCollide__Q24Kart15KartObjectProxyFv
/* 80594850 4BFDF685 */ bl          PlayerSub18_updateRespawn
/* 80594854 7FE3FB78 */ mr          r3, r31
/* 80594858 4800037D */ bl          PlayerSub1c_updateCollisions
/* 8059485C 807F0018 */ lwz         r3, 0x18(r31)
/* 80594860 4BFFBFED */ bl          kartCollide__Q24Kart15KartObjectProxyFv
/* 80594864 4BFD9EA9 */ bl          updateBbox__Q24Kart11KartCollideFv
/* 80594868 80010024 */ lwz         r0, 0x24(r1)
/* 8059486C 83E1001C */ lwz         r31, 0x1c(r1)
/* 80594870 7C0803A6 */ mtlr        r0
/* 80594874 38210020 */ addi        r1, r1, 0x20
/* 80594878 4E800020 */ blr         