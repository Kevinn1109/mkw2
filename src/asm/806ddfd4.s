nofralloc
/* 806DDFD4 3D20808A */ lis         r9, lbl_808a0498@ha
/* 806DDFD8 3900001E */ li          r8, 0x1e
/* 806DDFDC 39290498 */ addi        r9, r9, lbl_808a0498@l
/* 806DDFE0 38800000 */ li          r4, 0
/* 806DDFE4 C0490020 */ lfs         f2, 0x20(r9)
/* 806DDFE8 38E0000A */ li          r7, 0xa
/* 806DDFEC C0890018 */ lfs         f4, 0x18(r9)
/* 806DDFF0 38C00028 */ li          r6, 0x28
/* 806DDFF4 C069001C */ lfs         f3, 0x1c(r9)
/* 806DDFF8 3800003C */ li          r0, 0x3c
/* 806DDFFC C0090024 */ lfs         f0, 0x24(r9)
/* 806DE000 908300DC */ stw         r4, 0xdc(r3)
/* 806DE004 38800000 */ li          r4, 0
/* 806DE008 80A30008 */ lwz         r5, 8(r3)
/* 806DE00C B10300D8 */ sth         r8, 0xd8(r3)
/* 806DE010 C0290000 */ lfs         f1, 0(r9)
/* 806DE014 90E300E4 */ stw         r7, 0xe4(r3)
/* 806DE018 910300E8 */ stw         r8, 0xe8(r3)
/* 806DE01C 90C300EC */ stw         r6, 0xec(r3)
/* 806DE020 900300F0 */ stw         r0, 0xf0(r3)
/* 806DE024 D08300F8 */ stfs        f4, 0xf8(r3)
/* 806DE028 D06300FC */ stfs        f3, 0xfc(r3)
/* 806DE02C D04300E0 */ stfs        f2, 0xe0(r3)
/* 806DE030 D00300F4 */ stfs        f0, 0xf4(r3)
/* 806DE034 80650028 */ lwz         r3, 0x28(r5)
/* 806DE038 4BE79394 */ b           unk_805573cc