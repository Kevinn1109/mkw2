nofralloc
/* 806DE914 9421FFF0 */ stwu        r1, -0x10(r1)
/* 806DE918 7C0802A6 */ mflr        r0
/* 806DE91C 2C030000 */ cmpwi       r3, 0
/* 806DE920 90010014 */ stw         r0, 0x14(r1)
/* 806DE924 93E1000C */ stw         r31, 0xc(r1)
/* 806DE928 7C9F2378 */ mr          r31, r4
/* 806DE92C 93C10008 */ stw         r30, 8(r1)
/* 806DE930 7C7E1B78 */ mr          r30, r3
/* 806DE934 41820060 */ beq-        lbl_806de994
/* 806DE938 3CA0808C */ lis         r5, lbl_808c6510@ha
/* 806DE93C 3C80809C */ lis         r4, lbl_809c2280@ha
/* 806DE940 38A56510 */ addi        r5, r5, lbl_808c6510@l
/* 806DE944 90A30000 */ stw         r5, 0(r3)
/* 806DE948 80642280 */ lwz         r3, lbl_809c2280@l(r4)
/* 806DE94C 2C030000 */ cmpwi       r3, 0
/* 806DE950 41820028 */ beq-        lbl_806de978
/* 806DE954 41820018 */ beq-        lbl_806de96c
/* 806DE958 81830000 */ lwz         r12, 0(r3)
/* 806DE95C 38800001 */ li          r4, 1
/* 806DE960 818C0008 */ lwz         r12, 8(r12)
/* 806DE964 7D8903A6 */ mtctr       r12
/* 806DE968 4E800421 */ bctrl       
lbl_806de96c:
/* 806DE96C 3C60809C */ lis         r3, lbl_809c2280@ha
/* 806DE970 38000000 */ li          r0, 0
/* 806DE974 90032280 */ stw         r0, lbl_809c2280@l(r3)
lbl_806de978:
/* 806DE978 2C1F0000 */ cmpwi       r31, 0
/* 806DE97C 3C60809C */ lis         r3, lbl_809c2284@ha
/* 806DE980 38000000 */ li          r0, 0
/* 806DE984 98032284 */ stb         r0, lbl_809c2284@l(r3)
/* 806DE988 4081000C */ ble-        lbl_806de994
/* 806DE98C 7FC3F378 */ mr          r3, r30
/* 806DE990 4BB4B485 */ bl          __dl__FPv
lbl_806de994:
/* 806DE994 7FC3F378 */ mr          r3, r30
/* 806DE998 83E1000C */ lwz         r31, 0xc(r1)
/* 806DE99C 83C10008 */ lwz         r30, 8(r1)
/* 806DE9A0 80010014 */ lwz         r0, 0x14(r1)
/* 806DE9A4 7C0803A6 */ mtlr        r0
/* 806DE9A8 38210010 */ addi        r1, r1, 0x10
/* 806DE9AC 4E800020 */ blr         