nofralloc
/* 806DCC9C 9421FFE0 */ stwu        r1, -0x20(r1)
/* 806DCCA0 7C0802A6 */ mflr        r0
/* 806DCCA4 90010024 */ stw         r0, 0x24(r1)
/* 806DCCA8 93E1001C */ stw         r31, 0x1c(r1)
/* 806DCCAC 3FE0808A */ lis         r31, lbl_808a0378@ha
/* 806DCCB0 3BFF0378 */ addi        r31, r31, lbl_808a0378@l
/* 806DCCB4 93C10018 */ stw         r30, 0x18(r1)
/* 806DCCB8 7C7E1B78 */ mr          r30, r3
/* 806DCCBC 38610008 */ addi        r3, r1, 8
/* 806DCCC0 389E0110 */ addi        r4, r30, 0x110
/* 806DCCC4 38BE011C */ addi        r5, r30, 0x11c
/* 806DCCC8 48000081 */ bl          unk_806dcd48
/* 806DCCCC C0010008 */ lfs         f0, 8(r1)
/* 806DCCD0 D01E0110 */ stfs        f0, 0x110(r30)
/* 806DCCD4 EC400032 */ fmuls       f2, f0, f0
/* 806DCCD8 C01F003C */ lfs         f0, 0x3c(r31)
/* 806DCCDC C021000C */ lfs         f1, 0xc(r1)
/* 806DCCE0 D03E0114 */ stfs        f1, 0x114(r30)
/* 806DCCE4 EC210072 */ fmuls       f1, f1, f1
/* 806DCCE8 C0610010 */ lfs         f3, 0x10(r1)
/* 806DCCEC D07E0118 */ stfs        f3, 0x118(r30)
/* 806DCCF0 EC6300F2 */ fmuls       f3, f3, f3
/* 806DCCF4 EC22082A */ fadds       f1, f2, f1
/* 806DCCF8 EC23082A */ fadds       f1, f3, f1
/* 806DCCFC FC010040 */ fcmpo       cr0, f1, f0
/* 806DCD00 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 806DCD04 7C000026 */ mfcr        r0
/* 806DCD08 54001FFF */ rlwinm.     r0, r0, 3, 0x1f, 0x1f
/* 806DCD0C 4182001C */ beq-        lbl_806dcd28
/* 806DCD10 C03F0004 */ lfs         f1, 4(r31)
/* 806DCD14 C01F0020 */ lfs         f0, 0x20(r31)
/* 806DCD18 D03E0110 */ stfs        f1, 0x110(r30)
/* 806DCD1C D01E0114 */ stfs        f0, 0x114(r30)
/* 806DCD20 D03E0118 */ stfs        f1, 0x118(r30)
/* 806DCD24 4800000C */ b           lbl_806dcd30
lbl_806dcd28:
/* 806DCD28 387E0110 */ addi        r3, r30, 0x110
/* 806DCD2C 4BB66E41 */ bl          normalise2__Q23EGG8Vector3fFv
lbl_806dcd30:
/* 806DCD30 80010024 */ lwz         r0, 0x24(r1)
/* 806DCD34 83E1001C */ lwz         r31, 0x1c(r1)
/* 806DCD38 83C10018 */ lwz         r30, 0x18(r1)
/* 806DCD3C 7C0803A6 */ mtlr        r0
/* 806DCD40 38210020 */ addi        r1, r1, 0x20
/* 806DCD44 4E800020 */ blr         