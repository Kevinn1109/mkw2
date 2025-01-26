nofralloc
/* 8057FB6C 9421FFF0 */ stwu        r1, -0x10(r1)
/* 8057FB70 7C0802A6 */ mflr        r0
/* 8057FB74 3C80080C */ lis         r4, 0x80c
/* 8057FB78 38C00001 */ li          r6, 1
/* 8057FB7C 90010014 */ stw         r0, 0x14(r1)
/* 8057FB80 38040100 */ addi        r0, r4, 0x100
/* 8057FB84 38800001 */ li          r4, 1
/* 8057FB88 93E1000C */ stw         r31, 0xc(r1)
/* 8057FB8C 93C10008 */ stw         r30, 8(r1)
/* 8057FB90 7C7E1B78 */ mr          r30, r3
/* 8057FB94 80A30000 */ lwz         r5, 0(r3)
/* 8057FB98 80E50004 */ lwz         r7, 4(r5)
/* 8057FB9C 38A00001 */ li          r5, 1
/* 8057FBA0 8067000C */ lwz         r3, 0xc(r7)
/* 8057FBA4 7C600039 */ and.        r0, r3, r0
/* 8057FBA8 40820014 */ bne-        lbl_8057fbbc
/* 8057FBAC 80070004 */ lwz         r0, 4(r7)
/* 8057FBB0 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 8057FBB4 40820008 */ bne-        lbl_8057fbbc
/* 8057FBB8 38C00000 */ li          r6, 0
lbl_8057fbbc:
/* 8057FBBC 2C060000 */ cmpwi       r6, 0
/* 8057FBC0 40820014 */ bne-        lbl_8057fbd4
/* 8057FBC4 80070014 */ lwz         r0, 0x14(r7)
/* 8057FBC8 54000631 */ rlwinm.     r0, r0, 0, 0x18, 0x18
/* 8057FBCC 40820008 */ bne-        lbl_8057fbd4
/* 8057FBD0 38A00000 */ li          r5, 0
lbl_8057fbd4:
/* 8057FBD4 2C050000 */ cmpwi       r5, 0
/* 8057FBD8 40820014 */ bne-        lbl_8057fbec
/* 8057FBDC 80070008 */ lwz         r0, 8(r7)
/* 8057FBE0 540007FF */ clrlwi.     r0, r0, 0x1f
/* 8057FBE4 40820008 */ bne-        lbl_8057fbec
/* 8057FBE8 38800000 */ li          r4, 0
lbl_8057fbec:
/* 8057FBEC 2C040000 */ cmpwi       r4, 0
/* 8057FBF0 40820110 */ bne-        lbl_8057fd00
/* 8057FBF4 3C80808B */ lis         r4, lbl_808b5b32@ha
/* 8057FBF8 7FC3F378 */ mr          r3, r30
/* 8057FBFC ABE45B32 */ lha         r31, lbl_808b5b32@l(r4)
/* 8057FC00 48010E5D */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8057FC04 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 8057FC08 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 8057FC0C 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 8057FC10 80630068 */ lwz         r3, 0x68(r3)
/* 8057FC14 7C63002E */ lwzx        r3, r3, r0
/* 8057FC18 48123D31 */ bl          unk_806a3948
/* 8057FC1C 7FC3F378 */ mr          r3, r30
/* 8057FC20 48010B75 */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 8057FC24 48188F89 */ bl          unk_80708bac
/* 8057FC28 A01E0118 */ lhz         r0, 0x118(r30)
/* 8057FC2C 38800000 */ li          r4, 0
/* 8057FC30 540007FF */ clrlwi.     r0, r0, 0x1f
/* 8057FC34 41820010 */ beq-        lbl_8057fc44
/* 8057FC38 A81E010C */ lha         r0, 0x10c(r30)
/* 8057FC3C 7C1F0000 */ cmpw        r31, r0
/* 8057FC40 40810024 */ ble-        lbl_8057fc64
lbl_8057fc44:
/* 8057FC44 A01E0118 */ lhz         r0, 0x118(r30)
/* 8057FC48 3C60808B */ lis         r3, lbl_808b5c90@ha
/* 8057FC4C B3FE010C */ sth         r31, 0x10c(r30)
/* 8057FC50 38800001 */ li          r4, 1
/* 8057FC54 60000001 */ ori         r0, r0, 1
/* 8057FC58 B01E0118 */ sth         r0, 0x118(r30)
/* 8057FC5C C0035C90 */ lfs         f0, lbl_808b5c90@l(r3)
/* 8057FC60 D01E0124 */ stfs        f0, 0x124(r30)
lbl_8057fc64:
/* 8057FC64 2C040000 */ cmpwi       r4, 0
/* 8057FC68 41820074 */ beq-        lbl_8057fcdc
/* 8057FC6C 809E0000 */ lwz         r4, 0(r30)
/* 8057FC70 7FC3F378 */ mr          r3, r30
/* 8057FC74 80840004 */ lwz         r4, 4(r4)
/* 8057FC78 80040004 */ lwz         r0, 4(r4)
/* 8057FC7C 64000010 */ oris        r0, r0, 0x10
/* 8057FC80 90040004 */ stw         r0, 4(r4)
/* 8057FC84 C03E0124 */ lfs         f1, 0x124(r30)
/* 8057FC88 480111B9 */ bl          unk_80590e40
/* 8057FC8C 7FC3F378 */ mr          r3, r30
/* 8057FC90 38800006 */ li          r4, 6
/* 8057FC94 48010B1D */ bl          unk_805907b0
/* 8057FC98 7FC3F378 */ mr          r3, r30
/* 8057FC9C 48010DC1 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8057FCA0 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 8057FCA4 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 8057FCA8 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 8057FCAC 57E4043E */ clrlwi      r4, r31, 0x10
/* 8057FCB0 80630068 */ lwz         r3, 0x68(r3)
/* 8057FCB4 7C63002E */ lwzx        r3, r3, r0
/* 8057FCB8 48123E0D */ bl          unk_806a3ac4
/* 8057FCBC 7FC3F378 */ mr          r3, r30
/* 8057FCC0 48010D81 */ bl          kartModel__Q24Kart15KartObjectProxyFv
/* 8057FCC4 48254095 */ bl          unk_807d3d58
/* 8057FCC8 7FC3F378 */ mr          r3, r30
/* 8057FCCC 38800004 */ li          r4, 4
/* 8057FCD0 38A00000 */ li          r5, 0
/* 8057FCD4 38C00001 */ li          r6, 1
/* 8057FCD8 4801136D */ bl          unk_80591044
lbl_8057fcdc:
/* 8057FCDC 3C808089 */ lis         r4, lbl_80891a04@ha
/* 8057FCE0 7FC3F378 */ mr          r3, r30
/* 8057FCE4 C0241A04 */ lfs         f1, lbl_80891a04@l(r4)
/* 8057FCE8 38800003 */ li          r4, 3
/* 8057FCEC 38A00001 */ li          r5, 1
/* 8057FCF0 4801072D */ bl          unk_8059041c
/* 8057FCF4 7FC3F378 */ mr          r3, r30
/* 8057FCF8 3880001E */ li          r4, 0x1e
/* 8057FCFC 48011AC5 */ bl          unk_805917c0
lbl_8057fd00:
/* 8057FD00 80010014 */ lwz         r0, 0x14(r1)
/* 8057FD04 83E1000C */ lwz         r31, 0xc(r1)
/* 8057FD08 83C10008 */ lwz         r30, 8(r1)
/* 8057FD0C 7C0803A6 */ mtlr        r0
/* 8057FD10 38210010 */ addi        r1, r1, 0x10
/* 8057FD14 4E800020 */ blr         