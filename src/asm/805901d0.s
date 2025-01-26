nofralloc
/* 805901D0 9421FFF0 */ stwu        r1, -0x10(r1)
/* 805901D4 7C0802A6 */ mflr        r0
/* 805901D8 3CA0809C */ lis         r5, lbl_809c18f8@ha
/* 805901DC 90010014 */ stw         r0, 0x14(r1)
/* 805901E0 93E1000C */ stw         r31, 0xc(r1)
/* 805901E4 7C7F1B78 */ mr          r31, r3
/* 805901E8 806518F8 */ lwz         r3, lbl_809c18f8@l(r5)
/* 805901EC 4BFFFF15 */ bl          PlayerHolder_getPlayer
/* 805901F0 80030000 */ lwz         r0, 0(r3)
/* 805901F4 901F0000 */ stw         r0, 0(r31)
/* 805901F8 83E1000C */ lwz         r31, 0xc(r1)
/* 805901FC 80010014 */ lwz         r0, 0x14(r1)
/* 80590200 7C0803A6 */ mtlr        r0
/* 80590204 38210010 */ addi        r1, r1, 0x10
/* 80590208 4E800020 */ blr         