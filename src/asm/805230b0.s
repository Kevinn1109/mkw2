nofralloc
/* 805230B0 3CA08089 */ lis         r5, lbl_8088fcb0@ha
/* 805230B4 3C80809C */ lis         r4, lbl_809bd700@ha
/* 805230B8 38A5FCB0 */ addi        r5, r5, lbl_8088fcb0@l
/* 805230BC 3C60809C */ lis         r3, lbl_809bd704@ha
/* 805230C0 C0450000 */ lfs         f2, 0(r5)
/* 805230C4 C0250050 */ lfs         f1, 0x50(r5)
/* 805230C8 C0050054 */ lfs         f0, 0x54(r5)
/* 805230CC EC220824 */ fdivs       f1, f2, f1
/* 805230D0 D024D700 */ stfs        f1, lbl_809bd700@l(r4)
/* 805230D4 EC020024 */ fdivs       f0, f2, f0
/* 805230D8 D003D704 */ stfs        f0, lbl_809bd704@l(r3)
/* 805230DC 4E800020 */ blr         