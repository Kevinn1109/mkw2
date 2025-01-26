nofralloc
/* 806DD7D0 9421FFC0 */ stwu        r1, -0x40(r1)
/* 806DD7D4 7C0802A6 */ mflr        r0
/* 806DD7D8 90010044 */ stw         r0, 0x44(r1)
/* 806DD7DC DBE10038 */ stfd        f31, 0x38(r1)
/* 806DD7E0 FFE00890 */ fmr         f31, f1
/* 806DD7E4 93E10034 */ stw         r31, 0x34(r1)
/* 806DD7E8 7C9F2378 */ mr          r31, r4
/* 806DD7EC 7CA42B78 */ mr          r4, r5
/* 806DD7F0 93C10030 */ stw         r30, 0x30(r1)
/* 806DD7F4 7C7E1B78 */ mr          r30, r3
/* 806DD7F8 7FE5FB78 */ mr          r5, r31
/* 806DD7FC 38610020 */ addi        r3, r1, 0x20
/* 806DD800 4BE3706D */ bl          VEC3_sub
/* 806DD804 FC20F890 */ fmr         f1, f31
/* 806DD808 38610014 */ addi        r3, r1, 0x14
/* 806DD80C 38810020 */ addi        r4, r1, 0x20
/* 806DD810 4BE37001 */ bl          Vec3_scale
/* 806DD814 7FE4FB78 */ mr          r4, r31
/* 806DD818 38610008 */ addi        r3, r1, 8
/* 806DD81C 38A10014 */ addi        r5, r1, 0x14
/* 806DD820 4BE37019 */ bl          Vec3_add
/* 806DD824 80610008 */ lwz         r3, 8(r1)
/* 806DD828 8001000C */ lwz         r0, 0xc(r1)
/* 806DD82C 901E0004 */ stw         r0, 4(r30)
/* 806DD830 907E0000 */ stw         r3, 0(r30)
/* 806DD834 80010010 */ lwz         r0, 0x10(r1)
/* 806DD838 901E0008 */ stw         r0, 8(r30)
/* 806DD83C CBE10038 */ lfd         f31, 0x38(r1)
/* 806DD840 83E10034 */ lwz         r31, 0x34(r1)
/* 806DD844 83C10030 */ lwz         r30, 0x30(r1)
/* 806DD848 80010044 */ lwz         r0, 0x44(r1)
/* 806DD84C 7C0803A6 */ mtlr        r0
/* 806DD850 38210040 */ addi        r1, r1, 0x40
/* 806DD854 4E800020 */ blr         