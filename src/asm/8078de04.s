nofralloc
/* 8078DE04 9421FFF0 */ stwu        r1, -0x10(r1)
/* 8078DE08 7C0802A6 */ mflr        r0
/* 8078DE0C 38A00000 */ li          r5, 0
/* 8078DE10 90010014 */ stw         r0, 0x14(r1)
/* 8078DE14 93E1000C */ stw         r31, 0xc(r1)
/* 8078DE18 7C7F1B78 */ mr          r31, r3
/* 8078DE1C 4BE2B1F5 */ bl          unk_805b9010
/* 8078DE20 3C60808D */ lis         r3, lbl_808d1890@ha
/* 8078DE24 38000002 */ li          r0, 2
/* 8078DE28 38631890 */ addi        r3, r3, lbl_808d1890@l
/* 8078DE2C 907F0000 */ stw         r3, 0(r31)
/* 8078DE30 38830028 */ addi        r4, r3, 0x28
/* 8078DE34 909F004C */ stw         r4, 0x4c(r31)
/* 8078DE38 7FE3FB78 */ mr          r3, r31
/* 8078DE3C 901F0074 */ stw         r0, 0x74(r31)
/* 8078DE40 901F0078 */ stw         r0, 0x78(r31)
/* 8078DE44 901F007C */ stw         r0, 0x7c(r31)
/* 8078DE48 901F0080 */ stw         r0, 0x80(r31)
/* 8078DE4C 83E1000C */ lwz         r31, 0xc(r1)
/* 8078DE50 80010014 */ lwz         r0, 0x14(r1)
/* 8078DE54 7C0803A6 */ mtlr        r0
/* 8078DE58 38210010 */ addi        r1, r1, 0x10
/* 8078DE5C 4E800020 */ blr         