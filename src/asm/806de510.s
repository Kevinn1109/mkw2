nofralloc
/* 806DE510 3D00808A */ lis         r8, lbl_808a0498@ha
/* 806DE514 38C0001E */ li          r6, 0x1e
/* 806DE518 39080498 */ addi        r8, r8, lbl_808a0498@l
/* 806DE51C 38E00000 */ li          r7, 0
/* 806DE520 C0680018 */ lfs         f3, 0x18(r8)
/* 806DE524 38A0000A */ li          r5, 0xa
/* 806DE528 C048001C */ lfs         f2, 0x1c(r8)
/* 806DE52C 38800028 */ li          r4, 0x28
/* 806DE530 C0280020 */ lfs         f1, 0x20(r8)
/* 806DE534 3800003C */ li          r0, 0x3c
/* 806DE538 C0080024 */ lfs         f0, 0x24(r8)
/* 806DE53C 90E300DC */ stw         r7, 0xdc(r3)
/* 806DE540 B0C300D8 */ sth         r6, 0xd8(r3)
/* 806DE544 90A300E4 */ stw         r5, 0xe4(r3)
/* 806DE548 90C300E8 */ stw         r6, 0xe8(r3)
/* 806DE54C 908300EC */ stw         r4, 0xec(r3)
/* 806DE550 900300F0 */ stw         r0, 0xf0(r3)
/* 806DE554 D06300F8 */ stfs        f3, 0xf8(r3)
/* 806DE558 D04300FC */ stfs        f2, 0xfc(r3)
/* 806DE55C D02300E0 */ stfs        f1, 0xe0(r3)
/* 806DE560 D00300F4 */ stfs        f0, 0xf4(r3)
/* 806DE564 4E800020 */ blr         