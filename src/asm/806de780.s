nofralloc
/* 806DE780 9421FFF0 */ stwu        r1, -0x10(r1)
/* 806DE784 7C0802A6 */ mflr        r0
/* 806DE788 2C030000 */ cmpwi       r3, 0
/* 806DE78C 90010014 */ stw         r0, 0x14(r1)
/* 806DE790 93E1000C */ stw         r31, 0xc(r1)
/* 806DE794 7C9F2378 */ mr          r31, r4
/* 806DE798 93C10008 */ stw         r30, 8(r1)
/* 806DE79C 7C7E1B78 */ mr          r30, r3
/* 806DE7A0 41820040 */ beq-        lbl_806de7e0
/* 806DE7A4 3C80808C */ lis         r4, lbl_808c6420@ha
/* 806DE7A8 38846420 */ addi        r4, r4, lbl_808c6420@l
/* 806DE7AC 90830000 */ stw         r4, 0(r3)
/* 806DE7B0 806300B0 */ lwz         r3, 0xb0(r3)
/* 806DE7B4 4BB4B72D */ bl          __dla__FPv
/* 806DE7B8 38000000 */ li          r0, 0
/* 806DE7BC 901E00B0 */ stw         r0, 0xb0(r30)
/* 806DE7C0 7FC3F378 */ mr          r3, r30
/* 806DE7C4 38800000 */ li          r4, 0
/* 806DE7C8 901E00B4 */ stw         r0, 0xb4(r30)
/* 806DE7CC 4BFFF329 */ bl          unk_806ddaf4
/* 806DE7D0 2C1F0000 */ cmpwi       r31, 0
/* 806DE7D4 4081000C */ ble-        lbl_806de7e0
/* 806DE7D8 7FC3F378 */ mr          r3, r30
/* 806DE7DC 4BB4B639 */ bl          __dl__FPv
lbl_806de7e0:
/* 806DE7E0 7FC3F378 */ mr          r3, r30
/* 806DE7E4 83E1000C */ lwz         r31, 0xc(r1)
/* 806DE7E8 83C10008 */ lwz         r30, 8(r1)
/* 806DE7EC 80010014 */ lwz         r0, 0x14(r1)
/* 806DE7F0 7C0803A6 */ mtlr        r0
/* 806DE7F4 38210010 */ addi        r1, r1, 0x10
/* 806DE7F8 4E800020 */ blr         