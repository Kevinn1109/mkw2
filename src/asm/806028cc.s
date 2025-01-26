nofralloc
/* 806028CC 9421FFE0 */ stwu        r1, -0x20(r1)
/* 806028D0 7C0802A6 */ mflr        r0
/* 806028D4 3C808089 */ lis         r4, lbl_80896820@ha
/* 806028D8 3CA0808C */ lis         r5, lbl_808ba630@ha
/* 806028DC 90010024 */ stw         r0, 0x24(r1)
/* 806028E0 38A5A630 */ addi        r5, r5, lbl_808ba630@l
/* 806028E4 C0046820 */ lfs         f0, lbl_80896820@l(r4)
/* 806028E8 38810008 */ addi        r4, r1, 8
/* 806028EC 93E1001C */ stw         r31, 0x1c(r1)
/* 806028F0 7C7F1B78 */ mr          r31, r3
/* 806028F4 38630024 */ addi        r3, r3, 0x24
/* 806028F8 90A10008 */ stw         r5, 8(r1)
/* 806028FC D001000C */ stfs        f0, 0xc(r1)
/* 80602900 4BFC01D1 */ bl          transform__Q22UI12ControlGroupFRQ32UI12ControlGroup7Functor
/* 80602904 C001000C */ lfs         f0, 0xc(r1)
/* 80602908 D01F0014 */ stfs        f0, 0x14(r31)
/* 8060290C 83E1001C */ lwz         r31, 0x1c(r1)
/* 80602910 80010024 */ lwz         r0, 0x24(r1)
/* 80602914 7C0803A6 */ mtlr        r0
/* 80602918 38210020 */ addi        r1, r1, 0x20
/* 8060291C 4E800020 */ blr         