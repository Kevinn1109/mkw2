nofralloc
/* 8059F6F8 9421FFF0 */ stwu        r1, -0x10(r1)
/* 8059F6FC 7C0802A6 */ mflr        r0
/* 8059F700 2C030000 */ cmpwi       r3, 0
/* 8059F704 90010014 */ stw         r0, 0x14(r1)
/* 8059F708 93E1000C */ stw         r31, 0xc(r1)
/* 8059F70C 7C9F2378 */ mr          r31, r4
/* 8059F710 93C10008 */ stw         r30, 8(r1)
/* 8059F714 7C7E1B78 */ mr          r30, r3
/* 8059F718 41820054 */ beq-        lbl_8059f76c
/* 8059F71C 80030004 */ lwz         r0, 4(r3)
/* 8059F720 3C80808B */ lis         r4, __vt__Q24Kart11KartPhysics@ha
/* 8059F724 388469E8 */ addi        r4, r4, __vt__Q24Kart11KartPhysics@l
/* 8059F728 90830000 */ stw         r4, 0(r3)
/* 8059F72C 2C000000 */ cmpwi       r0, 0
/* 8059F730 4182001C */ beq-        lbl_8059f74c
/* 8059F734 7C030378 */ mr          r3, r0
/* 8059F738 38800001 */ li          r4, 1
/* 8059F73C 81830000 */ lwz         r12, 0(r3)
/* 8059F740 818C0008 */ lwz         r12, 8(r12)
/* 8059F744 7D8903A6 */ mtctr       r12
/* 8059F748 4E800421 */ bctrl       
lbl_8059f74c:
/* 8059F74C 807E0008 */ lwz         r3, 8(r30)
/* 8059F750 2C030000 */ cmpwi       r3, 0
/* 8059F754 41820008 */ beq-        lbl_8059f75c
/* 8059F758 4BC8A6BD */ bl          __dl__FPv
lbl_8059f75c:
/* 8059F75C 2C1F0000 */ cmpwi       r31, 0
/* 8059F760 4081000C */ ble-        lbl_8059f76c
/* 8059F764 7FC3F378 */ mr          r3, r30
/* 8059F768 4BC8A6AD */ bl          __dl__FPv
lbl_8059f76c:
/* 8059F76C 7FC3F378 */ mr          r3, r30
/* 8059F770 83E1000C */ lwz         r31, 0xc(r1)
/* 8059F774 83C10008 */ lwz         r30, 8(r1)
/* 8059F778 80010014 */ lwz         r0, 0x14(r1)
/* 8059F77C 7C0803A6 */ mtlr        r0
/* 8059F780 38210010 */ addi        r1, r1, 0x10
/* 8059F784 4E800020 */ blr         