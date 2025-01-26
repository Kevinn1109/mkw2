nofralloc
/* 8057EA94 3C80808B */ lis         r4, lbl_808b5b1c@ha
/* 8057EA98 C0230014 */ lfs         f1, 0x14(r3)
/* 8057EA9C C0045B1C */ lfs         f0, lbl_808b5b1c@l(r4)
/* 8057EAA0 C0430020 */ lfs         f2, 0x20(r3)
/* 8057EAA4 EC000072 */ fmuls       f0, f0, f1
/* 8057EAA8 FC020040 */ fcmpo       cr0, f2, f0
/* 8057EAAC 7C600026 */ mfcr        r3
/* 8057EAB0 546317FE */ rlwinm      r3, r3, 2, 0x1f, 0x1f
/* 8057EAB4 4E800020 */ blr         