nofralloc
/* 80602C60 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80602C64 7C0802A6 */ mflr        r0
/* 80602C68 90010024 */ stw         r0, 0x24(r1)
/* 80602C6C 93E1001C */ stw         r31, 0x1c(r1)
/* 80602C70 7C7F1B78 */ mr          r31, r3
/* 80602C74 80030010 */ lwz         r0, 0x10(r3)
/* 80602C78 2C000000 */ cmpwi       r0, 0
/* 80602C7C 40820010 */ bne-        lbl_80602c8c
/* 80602C80 3C808089 */ lis         r4, lbl_80896828@ha
/* 80602C84 C0046828 */ lfs         f0, lbl_80896828@l(r4)
/* 80602C88 4800000C */ b           lbl_80602c94
lbl_80602c8c:
/* 80602C8C 3C808089 */ lis         r4, lbl_80896824@ha
/* 80602C90 C0046824 */ lfs         f0, lbl_80896824@l(r4)
lbl_80602c94:
/* 80602C94 3C80808C */ lis         r4, lbl_808ba624@ha
/* 80602C98 D001000C */ stfs        f0, 0xc(r1)
/* 80602C9C 3884A624 */ addi        r4, r4, lbl_808ba624@l
/* 80602CA0 38630024 */ addi        r3, r3, 0x24
/* 80602CA4 90810008 */ stw         r4, 8(r1)
/* 80602CA8 38810008 */ addi        r4, r1, 8
/* 80602CAC 4BFBFE25 */ bl          transform__Q22UI12ControlGroupFRQ32UI12ControlGroup7Functor
/* 80602CB0 38600006 */ li          r3, 6
/* 80602CB4 3800FFFF */ li          r0, -1
/* 80602CB8 907F0008 */ stw         r3, 8(r31)
/* 80602CBC 7FE3FB78 */ mr          r3, r31
/* 80602CC0 901F001C */ stw         r0, 0x1c(r31)
/* 80602CC4 819F0000 */ lwz         r12, 0(r31)
/* 80602CC8 818C0044 */ lwz         r12, 0x44(r12)
/* 80602CCC 7D8903A6 */ mtctr       r12
/* 80602CD0 4E800421 */ bctrl       
/* 80602CD4 80010024 */ lwz         r0, 0x24(r1)
/* 80602CD8 83E1001C */ lwz         r31, 0x1c(r1)
/* 80602CDC 7C0803A6 */ mtlr        r0
/* 80602CE0 38210020 */ addi        r1, r1, 0x20
/* 80602CE4 4E800020 */ blr         