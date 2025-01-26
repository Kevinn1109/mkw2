nofralloc
/* 806DE7FC 9421FFE0 */ stwu        r1, -0x20(r1)
/* 806DE800 7C0802A6 */ mflr        r0
/* 806DE804 90010024 */ stw         r0, 0x24(r1)
/* 806DE808 93E1001C */ stw         r31, 0x1c(r1)
/* 806DE80C 93C10018 */ stw         r30, 0x18(r1)
/* 806DE810 3FC0808A */ lis         r30, lbl_808a0520@ha
/* 806DE814 38BE0520 */ addi        r5, r30, lbl_808a0520@l
/* 806DE818 93A10014 */ stw         r29, 0x14(r1)
/* 806DE81C 7C7D1B78 */ mr          r29, r3
/* 806DE820 481407CD */ bl          unk_8081efec
/* 806DE824 3C60808C */ lis         r3, lbl_808c6510@ha
/* 806DE828 3C80809C */ lis         r4, lbl_809c2284@ha
/* 806DE82C 38636510 */ addi        r3, r3, lbl_808c6510@l
/* 806DE830 907D0000 */ stw         r3, 0(r29)
/* 806DE834 3FE0809C */ lis         r31, lbl_809c2280@ha
/* 806DE838 88042284 */ lbz         r0, lbl_809c2284@l(r4)
/* 806DE83C 981D00B4 */ stb         r0, 0xb4(r29)
/* 806DE840 801F2280 */ lwz         r0, lbl_809c2280@l(r31)
/* 806DE844 88642284 */ lbz         r3, lbl_809c2284@l(r4)
/* 806DE848 2C000000 */ cmpwi       r0, 0
/* 806DE84C 38030001 */ addi        r0, r3, 1
/* 806DE850 98042284 */ stb         r0, lbl_809c2284@l(r4)
/* 806DE854 40820070 */ bne-        lbl_806de8c4
/* 806DE858 3C60809C */ lis         r3, spInstance__Q26System10RaceConfig@ha
/* 806DE85C 8063D728 */ lwz         r3, spInstance__Q26System10RaceConfig@l(r3)
/* 806DE860 88030025 */ lbz         r0, 0x25(r3)
/* 806DE864 2C000001 */ cmpwi       r0, 1
/* 806DE868 40820030 */ bne-        lbl_806de898
/* 806DE86C 3860007C */ li          r3, 0x7c
/* 806DE870 4BB4B55D */ bl          __nw__FUl
/* 806DE874 2C030000 */ cmpwi       r3, 0
/* 806DE878 41820014 */ beq-        lbl_806de88c
/* 806DE87C 389E0520 */ addi        r4, r30, lbl_808a0520@l
/* 806DE880 38A00000 */ li          r5, 0
/* 806DE884 38840005 */ addi        r4, r4, 5
/* 806DE888 4BB44445 */ bl          unk_80222ccc
lbl_806de88c:
/* 806DE88C 3C80809C */ lis         r4, lbl_809c2280@ha
/* 806DE890 90642280 */ stw         r3, lbl_809c2280@l(r4)
/* 806DE894 4800004C */ b           lbl_806de8e0
lbl_806de898:
/* 806DE898 3860007C */ li          r3, 0x7c
/* 806DE89C 4BB4B531 */ bl          __nw__FUl
/* 806DE8A0 2C030000 */ cmpwi       r3, 0
/* 806DE8A4 41820014 */ beq-        lbl_806de8b8
/* 806DE8A8 389E0520 */ addi        r4, r30, lbl_808a0520@l
/* 806DE8AC 38A00000 */ li          r5, 0
/* 806DE8B0 38840011 */ addi        r4, r4, 0x11
/* 806DE8B4 4BB44419 */ bl          unk_80222ccc
lbl_806de8b8:
/* 806DE8B8 3C80809C */ lis         r4, lbl_809c2280@ha
/* 806DE8BC 90642280 */ stw         r3, lbl_809c2280@l(r4)
/* 806DE8C0 48000020 */ b           lbl_806de8e0
lbl_806de8c4:
/* 806DE8C4 38600028 */ li          r3, 0x28
/* 806DE8C8 4BB4B505 */ bl          __nw__FUl
/* 806DE8CC 2C030000 */ cmpwi       r3, 0
/* 806DE8D0 4182000C */ beq-        lbl_806de8dc
/* 806DE8D4 809F2280 */ lwz         r4, lbl_809c2280@l(r31)
/* 806DE8D8 4BB4763D */ bl          unk_80225f14
lbl_806de8dc:
/* 806DE8DC 907D00B0 */ stw         r3, 0xb0(r29)
lbl_806de8e0:
/* 806DE8E0 819D0000 */ lwz         r12, 0(r29)
/* 806DE8E4 7FA3EB78 */ mr          r3, r29
/* 806DE8E8 818C0054 */ lwz         r12, 0x54(r12)
/* 806DE8EC 7D8903A6 */ mtctr       r12
/* 806DE8F0 4E800421 */ bctrl       
/* 806DE8F4 83E1001C */ lwz         r31, 0x1c(r1)
/* 806DE8F8 7FA3EB78 */ mr          r3, r29
/* 806DE8FC 83C10018 */ lwz         r30, 0x18(r1)
/* 806DE900 83A10014 */ lwz         r29, 0x14(r1)
/* 806DE904 80010024 */ lwz         r0, 0x24(r1)
/* 806DE908 7C0803A6 */ mtlr        r0
/* 806DE90C 38210020 */ addi        r1, r1, 0x20
/* 806DE910 4E800020 */ blr         