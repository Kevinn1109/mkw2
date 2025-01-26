nofralloc
/* 805AEEC4 9421FF80 */ stwu        r1, -0x80(r1)
/* 805AEEC8 7C0802A6 */ mflr        r0
/* 805AEECC 90010084 */ stw         r0, 0x84(r1)
/* 805AEED0 93E1007C */ stw         r31, 0x7c(r1)
/* 805AEED4 93C10078 */ stw         r30, 0x78(r1)
/* 805AEED8 40860024 */ bne-        cr1, lbl_805aeefc
/* 805AEEDC D8210028 */ stfd        f1, 0x28(r1)
/* 805AEEE0 D8410030 */ stfd        f2, 0x30(r1)
/* 805AEEE4 D8610038 */ stfd        f3, 0x38(r1)
/* 805AEEE8 D8810040 */ stfd        f4, 0x40(r1)
/* 805AEEEC D8A10048 */ stfd        f5, 0x48(r1)
/* 805AEEF0 D8C10050 */ stfd        f6, 0x50(r1)
/* 805AEEF4 D8E10058 */ stfd        f7, 0x58(r1)
/* 805AEEF8 D9010060 */ stfd        f8, 0x60(r1)
lbl_805aeefc:
/* 805AEEFC 9081000C */ stw         r4, 0xc(r1)
/* 805AEF00 39610088 */ addi        r11, r1, 0x88
/* 805AEF04 38010008 */ addi        r0, r1, 8
/* 805AEF08 3D800100 */ lis         r12, 0x100
/* 805AEF0C 90A10010 */ stw         r5, 0x10(r1)
/* 805AEF10 3BC10068 */ addi        r30, r1, 0x68
/* 805AEF14 3FE0809C */ lis         r31, lbl_809c19f0@ha
/* 805AEF18 7C651B78 */ mr          r5, r3
/* 805AEF1C 90610008 */ stw         r3, 8(r1)
/* 805AEF20 387F19F0 */ addi        r3, r31, lbl_809c19f0@l
/* 805AEF24 38800100 */ li          r4, 0x100
/* 805AEF28 90C10014 */ stw         r6, 0x14(r1)
/* 805AEF2C 7FC6F378 */ mr          r6, r30
/* 805AEF30 90E10018 */ stw         r7, 0x18(r1)
/* 805AEF34 9101001C */ stw         r8, 0x1c(r1)
/* 805AEF38 91210020 */ stw         r9, 0x20(r1)
/* 805AEF3C 91410024 */ stw         r10, 0x24(r1)
/* 805AEF40 91810068 */ stw         r12, 0x68(r1)
/* 805AEF44 9161006C */ stw         r11, 0x6c(r1)
/* 805AEF48 90010070 */ stw         r0, 0x70(r1)
/* 805AEF4C 4BA628E1 */ bl          vsnprintf
/* 805AEF50 387F19F0 */ addi        r3, r31, lbl_809c19f0@l
/* 805AEF54 83E1007C */ lwz         r31, 0x7c(r1)
/* 805AEF58 83C10078 */ lwz         r30, 0x78(r1)
/* 805AEF5C 80010084 */ lwz         r0, 0x84(r1)
/* 805AEF60 7C0803A6 */ mtlr        r0
/* 805AEF64 38210080 */ addi        r1, r1, 0x80
/* 805AEF68 4E800020 */ blr         