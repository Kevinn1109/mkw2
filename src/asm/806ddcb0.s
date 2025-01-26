nofralloc
/* 806DDCB0 9421FFF0 */ stwu        r1, -0x10(r1)
/* 806DDCB4 7C0802A6 */ mflr        r0
/* 806DDCB8 38A00000 */ li          r5, 0
/* 806DDCBC 90010014 */ stw         r0, 0x14(r1)
/* 806DDCC0 93E1000C */ stw         r31, 0xc(r1)
/* 806DDCC4 7C9F2378 */ mr          r31, r4
/* 806DDCC8 93C10008 */ stw         r30, 8(r1)
/* 806DDCCC 7C7E1B78 */ mr          r30, r3
/* 806DDCD0 4814131D */ bl          unk_8081efec
/* 806DDCD4 3C80808C */ lis         r4, lbl_808c61e8@ha
/* 806DDCD8 386000B0 */ li          r3, 0xb0
/* 806DDCDC 388461E8 */ addi        r4, r4, lbl_808c61e8@l
/* 806DDCE0 909E0000 */ stw         r4, 0(r30)
/* 806DDCE4 809F0000 */ lwz         r4, 0(r31)
/* 806DDCE8 A8040028 */ lha         r0, 0x28(r4)
/* 806DDCEC 981E00B4 */ stb         r0, 0xb4(r30)
/* 806DDCF0 4BB4C0DD */ bl          __nw__FUl
/* 806DDCF4 2C030000 */ cmpwi       r3, 0
/* 806DDCF8 41820008 */ beq-        lbl_806ddd00
/* 806DDCFC 48030ABD */ bl          unk_8070e7b8
lbl_806ddd00:
/* 806DDD00 907E00B0 */ stw         r3, 0xb0(r30)
/* 806DDD04 7FC3F378 */ mr          r3, r30
/* 806DDD08 83E1000C */ lwz         r31, 0xc(r1)
/* 806DDD0C 83C10008 */ lwz         r30, 8(r1)
/* 806DDD10 80010014 */ lwz         r0, 0x14(r1)
/* 806DDD14 7C0803A6 */ mtlr        r0
/* 806DDD18 38210010 */ addi        r1, r1, 0x10
/* 806DDD1C 4E800020 */ blr         