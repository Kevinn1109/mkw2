nofralloc
/* 806DD278 9421FFE0 */ stwu        r1, -0x20(r1)
/* 806DD27C 7C0802A6 */ mflr        r0
/* 806DD280 3CA0808A */ lis         r5, lbl_808a0390@ha
/* 806DD284 38E00000 */ li          r7, 0
/* 806DD288 90010024 */ stw         r0, 0x24(r1)
/* 806DD28C 38000000 */ li          r0, 0
/* 806DD290 38810010 */ addi        r4, r1, 0x10
/* 806DD294 84C50390 */ lwzu        r6, lbl_808a0390@l(r5)
/* 806DD298 90C10010 */ stw         r6, 0x10(r1)
/* 806DD29C 38C00002 */ li          r6, 2
/* 806DD2A0 81050004 */ lwz         r8, 4(r5)
/* 806DD2A4 38A10008 */ addi        r5, r1, 8
/* 806DD2A8 90010008 */ stw         r0, 8(r1)
/* 806DD2AC 91010014 */ stw         r8, 0x14(r1)
/* 806DD2B0 9001000C */ stw         r0, 0xc(r1)
/* 806DD2B4 48143C05 */ bl          unk_80820eb8
/* 806DD2B8 80010024 */ lwz         r0, 0x24(r1)
/* 806DD2BC 7C0803A6 */ mtlr        r0
/* 806DD2C0 38210020 */ addi        r1, r1, 0x20
/* 806DD2C4 4E800020 */ blr         