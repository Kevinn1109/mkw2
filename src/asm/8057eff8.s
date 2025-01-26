nofralloc
/* 8057EFF8 3C80808B */ lis         r4, lbl_808b5b1c@ha
/* 8057EFFC C0230014 */ lfs         f1, 0x14(r3)
/* 8057F000 C0045B1C */ lfs         f0, lbl_808b5b1c@l(r4)
/* 8057F004 C0430020 */ lfs         f2, 0x20(r3)
/* 8057F008 EC000072 */ fmuls       f0, f0, f1
/* 8057F00C FC020040 */ fcmpo       cr0, f2, f0
/* 8057F010 4080000C */ bge-        lbl_8057f01c
/* 8057F014 38600000 */ li          r3, 0
/* 8057F018 4E800020 */ blr         
lbl_8057f01c:
/* 8057F01C 806300CC */ lwz         r3, 0xcc(r3)
/* 8057F020 4E800020 */ blr         