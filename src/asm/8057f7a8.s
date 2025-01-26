nofralloc
/* 8057F7A8 9421FFF0 */ stwu        r1, -0x10(r1)
/* 8057F7AC 7C0802A6 */ mflr        r0
/* 8057F7B0 3C80080C */ lis         r4, 0x80c
/* 8057F7B4 38C00001 */ li          r6, 1
/* 8057F7B8 90010014 */ stw         r0, 0x14(r1)
/* 8057F7BC 38040100 */ addi        r0, r4, 0x100
/* 8057F7C0 38E00001 */ li          r7, 1
/* 8057F7C4 93E1000C */ stw         r31, 0xc(r1)
/* 8057F7C8 93C10008 */ stw         r30, 8(r1)
/* 8057F7CC 7C7E1B78 */ mr          r30, r3
/* 8057F7D0 80A30000 */ lwz         r5, 0(r3)
/* 8057F7D4 81050004 */ lwz         r8, 4(r5)
/* 8057F7D8 38A00001 */ li          r5, 1
/* 8057F7DC 8088000C */ lwz         r4, 0xc(r8)
/* 8057F7E0 7C800039 */ and.        r0, r4, r0
/* 8057F7E4 40820014 */ bne-        lbl_8057f7f8
/* 8057F7E8 80080004 */ lwz         r0, 4(r8)
/* 8057F7EC 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 8057F7F0 40820008 */ bne-        lbl_8057f7f8
/* 8057F7F4 38E00000 */ li          r7, 0
lbl_8057f7f8:
/* 8057F7F8 2C070000 */ cmpwi       r7, 0
/* 8057F7FC 40820014 */ bne-        lbl_8057f810
/* 8057F800 80080014 */ lwz         r0, 0x14(r8)
/* 8057F804 54000631 */ rlwinm.     r0, r0, 0, 0x18, 0x18
/* 8057F808 40820008 */ bne-        lbl_8057f810
/* 8057F80C 38C00000 */ li          r6, 0
lbl_8057f810:
/* 8057F810 2C060000 */ cmpwi       r6, 0
/* 8057F814 40820014 */ bne-        lbl_8057f828
/* 8057F818 80080008 */ lwz         r0, 8(r8)
/* 8057F81C 540007FF */ clrlwi.     r0, r0, 0x1f
/* 8057F820 40820008 */ bne-        lbl_8057f828
/* 8057F824 38A00000 */ li          r5, 0
lbl_8057f828:
/* 8057F828 2C050000 */ cmpwi       r5, 0
/* 8057F82C 40820128 */ bne-        lbl_8057f954
/* 8057F830 80830258 */ lwz         r4, 0x258(r3)
/* 8057F834 7FC3F378 */ mr          r3, r30
/* 8057F838 83E40014 */ lwz         r31, 0x14(r4)
/* 8057F83C 48011231 */ bl          PlayerPointers_isBike
/* 8057F840 1C030006 */ mulli       r0, r3, 6
/* 8057F844 3C60808B */ lis         r3, lbl_808b5aa8@ha
/* 8057F848 57E4083C */ slwi        r4, r31, 1
/* 8057F84C 38635AA8 */ addi        r3, r3, lbl_808b5aa8@l
/* 8057F850 7C030214 */ add         r0, r3, r0
/* 8057F854 7FE402AE */ lhax        r31, r4, r0
/* 8057F858 7FC3F378 */ mr          r3, r30
/* 8057F85C 48011201 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8057F860 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 8057F864 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 8057F868 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 8057F86C 80630068 */ lwz         r3, 0x68(r3)
/* 8057F870 7C63002E */ lwzx        r3, r3, r0
/* 8057F874 481240D5 */ bl          unk_806a3948
/* 8057F878 7FC3F378 */ mr          r3, r30
/* 8057F87C 48010F19 */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 8057F880 4818932D */ bl          unk_80708bac
/* 8057F884 A01E0118 */ lhz         r0, 0x118(r30)
/* 8057F888 38800000 */ li          r4, 0
/* 8057F88C 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 8057F890 41820010 */ beq-        lbl_8057f8a0
/* 8057F894 A81E0114 */ lha         r0, 0x114(r30)
/* 8057F898 7C1F0000 */ cmpw        r31, r0
/* 8057F89C 40810028 */ ble-        lbl_8057f8c4
lbl_8057f8a0:
/* 8057F8A0 A01E0118 */ lhz         r0, 0x118(r30)
/* 8057F8A4 3C60808B */ lis         r3, lbl_808b5c90@ha
/* 8057F8A8 B3FE0114 */ sth         r31, 0x114(r30)
/* 8057F8AC 38635C90 */ addi        r3, r3, lbl_808b5c90@l
/* 8057F8B0 60000010 */ ori         r0, r0, 0x10
/* 8057F8B4 38800001 */ li          r4, 1
/* 8057F8B8 B01E0118 */ sth         r0, 0x118(r30)
/* 8057F8BC C0030010 */ lfs         f0, 0x10(r3)
/* 8057F8C0 D01E0124 */ stfs        f0, 0x124(r30)
lbl_8057f8c4:
/* 8057F8C4 2C040000 */ cmpwi       r4, 0
/* 8057F8C8 41820074 */ beq-        lbl_8057f93c
/* 8057F8CC 809E0000 */ lwz         r4, 0(r30)
/* 8057F8D0 7FC3F378 */ mr          r3, r30
/* 8057F8D4 80840004 */ lwz         r4, 4(r4)
/* 8057F8D8 80040004 */ lwz         r0, 4(r4)
/* 8057F8DC 64000010 */ oris        r0, r0, 0x10
/* 8057F8E0 90040004 */ stw         r0, 4(r4)
/* 8057F8E4 C03E0124 */ lfs         f1, 0x124(r30)
/* 8057F8E8 48011559 */ bl          unk_80590e40
/* 8057F8EC 7FC3F378 */ mr          r3, r30
/* 8057F8F0 38800006 */ li          r4, 6
/* 8057F8F4 48010EBD */ bl          unk_805907b0
/* 8057F8F8 7FC3F378 */ mr          r3, r30
/* 8057F8FC 48011161 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8057F900 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 8057F904 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 8057F908 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 8057F90C 57E4043E */ clrlwi      r4, r31, 0x10
/* 8057F910 80630068 */ lwz         r3, 0x68(r3)
/* 8057F914 7C63002E */ lwzx        r3, r3, r0
/* 8057F918 481241AD */ bl          unk_806a3ac4
/* 8057F91C 7FC3F378 */ mr          r3, r30
/* 8057F920 48011121 */ bl          kartModel__Q24Kart15KartObjectProxyFv
/* 8057F924 48254435 */ bl          unk_807d3d58
/* 8057F928 7FC3F378 */ mr          r3, r30
/* 8057F92C 38800004 */ li          r4, 4
/* 8057F930 38A00000 */ li          r5, 0
/* 8057F934 38C00001 */ li          r6, 1
/* 8057F938 4801170D */ bl          unk_80591044
lbl_8057f93c:
/* 8057F93C 3C808089 */ lis         r4, lbl_80891a04@ha
/* 8057F940 7FC3F378 */ mr          r3, r30
/* 8057F944 C0241A04 */ lfs         f1, lbl_80891a04@l(r4)
/* 8057F948 38800003 */ li          r4, 3
/* 8057F94C 38A00001 */ li          r5, 1
/* 8057F950 48010ACD */ bl          unk_8059041c
lbl_8057f954:
/* 8057F954 80010014 */ lwz         r0, 0x14(r1)
/* 8057F958 83E1000C */ lwz         r31, 0xc(r1)
/* 8057F95C 83C10008 */ lwz         r30, 8(r1)
/* 8057F960 7C0803A6 */ mtlr        r0
/* 8057F964 38210010 */ addi        r1, r1, 0x10
/* 8057F968 4E800020 */ blr         