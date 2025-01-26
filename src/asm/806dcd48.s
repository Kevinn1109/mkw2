nofralloc
/* 806DCD48 9421FFC0 */ stwu        r1, -0x40(r1)
/* 806DCD4C 7C0802A6 */ mflr        r0
/* 806DCD50 90010044 */ stw         r0, 0x44(r1)
/* 806DCD54 DBE10038 */ stfd        f31, 0x38(r1)
/* 806DCD58 FFE00890 */ fmr         f31, f1
/* 806DCD5C 93E10034 */ stw         r31, 0x34(r1)
/* 806DCD60 7C9F2378 */ mr          r31, r4
/* 806DCD64 7CA42B78 */ mr          r4, r5
/* 806DCD68 93C10030 */ stw         r30, 0x30(r1)
/* 806DCD6C 7C7E1B78 */ mr          r30, r3
/* 806DCD70 7FE5FB78 */ mr          r5, r31
/* 806DCD74 38610020 */ addi        r3, r1, 0x20
/* 806DCD78 4BE37AF5 */ bl          VEC3_sub
/* 806DCD7C FC20F890 */ fmr         f1, f31
/* 806DCD80 38610014 */ addi        r3, r1, 0x14
/* 806DCD84 38810020 */ addi        r4, r1, 0x20
/* 806DCD88 4BE37A89 */ bl          Vec3_scale
/* 806DCD8C 7FE4FB78 */ mr          r4, r31
/* 806DCD90 38610008 */ addi        r3, r1, 8
/* 806DCD94 38A10014 */ addi        r5, r1, 0x14
/* 806DCD98 4BE37AA1 */ bl          Vec3_add
/* 806DCD9C 80610008 */ lwz         r3, 8(r1)
/* 806DCDA0 8001000C */ lwz         r0, 0xc(r1)
/* 806DCDA4 901E0004 */ stw         r0, 4(r30)
/* 806DCDA8 907E0000 */ stw         r3, 0(r30)
/* 806DCDAC 80010010 */ lwz         r0, 0x10(r1)
/* 806DCDB0 901E0008 */ stw         r0, 8(r30)
/* 806DCDB4 CBE10038 */ lfd         f31, 0x38(r1)
/* 806DCDB8 83E10034 */ lwz         r31, 0x34(r1)
/* 806DCDBC 83C10030 */ lwz         r30, 0x30(r1)
/* 806DCDC0 80010044 */ lwz         r0, 0x44(r1)
/* 806DCDC4 7C0803A6 */ mtlr        r0
/* 806DCDC8 38210040 */ addi        r1, r1, 0x40
/* 806DCDCC 4E800020 */ blr         