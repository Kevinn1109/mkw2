nofralloc
/* 806DD858 9421FFB0 */ stwu        r1, -0x50(r1)
/* 806DD85C 7C0802A6 */ mflr        r0
/* 806DD860 90010054 */ stw         r0, 0x54(r1)
/* 806DD864 93E1004C */ stw         r31, 0x4c(r1)
/* 806DD868 93C10048 */ stw         r30, 0x48(r1)
/* 806DD86C 800300B4 */ lwz         r0, 0xb4(r3)
/* 806DD870 2C000003 */ cmpwi       r0, 3
/* 806DD874 4182000C */ beq-        lbl_806dd880
/* 806DD878 481440FD */ bl          unk_80821974
/* 806DD87C 48000090 */ b           lbl_806dd90c
lbl_806dd880:
/* 806DD880 83C30010 */ lwz         r30, 0x10(r3)
/* 806DD884 C0230038 */ lfs         f1, 0x38(r3)
/* 806DD888 809E0010 */ lwz         r4, 0x10(r30)
/* 806DD88C C00300D0 */ lfs         f0, 0xd0(r3)
/* 806DD890 80840000 */ lwz         r4, 0(r4)
/* 806DD894 C0430030 */ lfs         f2, 0x30(r3)
/* 806DD898 2C040000 */ cmpwi       r4, 0
/* 806DD89C D0410008 */ stfs        f2, 8(r1)
/* 806DD8A0 D001000C */ stfs        f0, 0xc(r1)
/* 806DD8A4 D0210010 */ stfs        f1, 0x10(r1)
/* 806DD8A8 41820014 */ beq-        lbl_806dd8bc
/* 806DD8AC 3864000C */ addi        r3, r4, 0xc
/* 806DD8B0 38810018 */ addi        r4, r1, 0x18
/* 806DD8B4 4BABC47D */ bl          PSMTXCopy
/* 806DD8B8 4800000C */ b           lbl_806dd8c4
lbl_806dd8bc:
/* 806DD8BC 38610018 */ addi        r3, r1, 0x18
/* 806DD8C0 4BABC445 */ bl          PSMTXIdentity
lbl_806dd8c4:
/* 806DD8C4 C0410008 */ lfs         f2, 8(r1)
/* 806DD8C8 3BE00000 */ li          r31, 0
/* 806DD8CC C021000C */ lfs         f1, 0xc(r1)
/* 806DD8D0 C0010010 */ lfs         f0, 0x10(r1)
/* 806DD8D4 D0410024 */ stfs        f2, 0x24(r1)
/* 806DD8D8 D0210034 */ stfs        f1, 0x34(r1)
/* 806DD8DC D0010044 */ stfs        f0, 0x44(r1)
lbl_806dd8e0:
/* 806DD8E0 807E0014 */ lwz         r3, 0x14(r30)
/* 806DD8E4 80630000 */ lwz         r3, 0(r3)
/* 806DD8E8 2C030000 */ cmpwi       r3, 0
/* 806DD8EC 41820010 */ beq-        lbl_806dd8fc
/* 806DD8F0 38A10018 */ addi        r5, r1, 0x18
/* 806DD8F4 38800000 */ li          r4, 0
/* 806DD8F8 4B990299 */ bl          SetMtx
lbl_806dd8fc:
/* 806DD8FC 3BFF0001 */ addi        r31, r31, 1
/* 806DD900 3BDE0004 */ addi        r30, r30, 4
/* 806DD904 2C1F0002 */ cmpwi       r31, 2
/* 806DD908 4180FFD8 */ blt+        lbl_806dd8e0
lbl_806dd90c:
/* 806DD90C 80010054 */ lwz         r0, 0x54(r1)
/* 806DD910 83E1004C */ lwz         r31, 0x4c(r1)
/* 806DD914 83C10048 */ lwz         r30, 0x48(r1)
/* 806DD918 7C0803A6 */ mtlr        r0
/* 806DD91C 38210050 */ addi        r1, r1, 0x50
/* 806DD920 4E800020 */ blr         