nofralloc
/* 80601A60 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80601A64 7C0802A6 */ mflr        r0
/* 80601A68 90010024 */ stw         r0, 0x24(r1)
/* 80601A6C 93E1001C */ stw         r31, 0x1c(r1)
/* 80601A70 7C7F1B78 */ mr          r31, r3
/* 80601A74 90830004 */ stw         r4, 4(r3)
/* 80601A78 81830000 */ lwz         r12, 0(r3)
/* 80601A7C 818C0028 */ lwz         r12, 0x28(r12)
/* 80601A80 7D8903A6 */ mtctr       r12
/* 80601A84 4E800421 */ bctrl       
/* 80601A88 387F0024 */ addi        r3, r31, 0x24
/* 80601A8C 4BFC0DDD */ bl          init__Q22UI12ControlGroupFv
/* 80601A90 3C608089 */ lis         r3, lbl_80896820@ha
/* 80601A94 3C80808C */ lis         r4, lbl_808ba630@ha
/* 80601A98 C0036820 */ lfs         f0, lbl_80896820@l(r3)
/* 80601A9C 3884A630 */ addi        r4, r4, lbl_808ba630@l
/* 80601AA0 90810008 */ stw         r4, 8(r1)
/* 80601AA4 387F0024 */ addi        r3, r31, 0x24
/* 80601AA8 38810008 */ addi        r4, r1, 8
/* 80601AAC D001000C */ stfs        f0, 0xc(r1)
/* 80601AB0 4BFC1021 */ bl          transform__Q22UI12ControlGroupFRQ32UI12ControlGroup7Functor
/* 80601AB4 C001000C */ lfs         f0, 0xc(r1)
/* 80601AB8 38000001 */ li          r0, 1
/* 80601ABC D01F0014 */ stfs        f0, 0x14(r31)
/* 80601AC0 901F0008 */ stw         r0, 8(r31)
/* 80601AC4 83E1001C */ lwz         r31, 0x1c(r1)
/* 80601AC8 80010024 */ lwz         r0, 0x24(r1)
/* 80601ACC 7C0803A6 */ mtlr        r0
/* 80601AD0 38210020 */ addi        r1, r1, 0x20
/* 80601AD4 4E800020 */ blr         