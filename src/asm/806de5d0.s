nofralloc
/* 806DE5D0 9421FFF0 */ stwu        r1, -0x10(r1)
/* 806DE5D4 7C0802A6 */ mflr        r0
/* 806DE5D8 3C80808A */ lis         r4, lbl_808a04a4@ha
/* 806DE5DC 38C00001 */ li          r6, 1
/* 806DE5E0 90010014 */ stw         r0, 0x14(r1)
/* 806DE5E4 38000000 */ li          r0, 0
/* 806DE5E8 38A10008 */ addi        r5, r1, 8
/* 806DE5EC 38E00000 */ li          r7, 0
/* 806DE5F0 90010008 */ stw         r0, 8(r1)
/* 806DE5F4 800404A4 */ lwz         r0, lbl_808a04a4@l(r4)
/* 806DE5F8 3881000C */ addi        r4, r1, 0xc
/* 806DE5FC 9001000C */ stw         r0, 0xc(r1)
/* 806DE600 481428B9 */ bl          unk_80820eb8
/* 806DE604 80010014 */ lwz         r0, 0x14(r1)
/* 806DE608 7C0803A6 */ mtlr        r0
/* 806DE60C 38210010 */ addi        r1, r1, 0x10
/* 806DE610 4E800020 */ blr         