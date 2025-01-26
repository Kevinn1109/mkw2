nofralloc
/* 806DD934 9421FFF0 */ stwu        r1, -0x10(r1)
/* 806DD938 7C0802A6 */ mflr        r0
/* 806DD93C 90010014 */ stw         r0, 0x14(r1)
/* 806DD940 93E1000C */ stw         r31, 0xc(r1)
/* 806DD944 7C7F1B78 */ mr          r31, r3
/* 806DD948 481416A5 */ bl          unk_8081efec
/* 806DD94C 3C80808C */ lis         r4, lbl_808c6008@ha
/* 806DD950 7FE3FB78 */ mr          r3, r31
/* 806DD954 38846008 */ addi        r4, r4, lbl_808c6008@l
/* 806DD958 909F0000 */ stw         r4, 0(r31)
/* 806DD95C 819F0000 */ lwz         r12, 0(r31)
/* 806DD960 818C0024 */ lwz         r12, 0x24(r12)
/* 806DD964 7D8903A6 */ mtctr       r12
/* 806DD968 4E800421 */ bctrl       
/* 806DD96C 3C80809C */ lis         r4, lbl_809c2690@ha
/* 806DD970 7C601B78 */ mr          r0, r3
/* 806DD974 80642690 */ lwz         r3, lbl_809c2690@l(r4)
/* 806DD978 5404043E */ clrlwi      r4, r0, 0x10
/* 806DD97C 48022791 */ bl          unk_8070010c
/* 806DD980 7FE3FB78 */ mr          r3, r31
/* 806DD984 83E1000C */ lwz         r31, 0xc(r1)
/* 806DD988 80010014 */ lwz         r0, 0x14(r1)
/* 806DD98C 7C0803A6 */ mtlr        r0
/* 806DD990 38210010 */ addi        r1, r1, 0x10
/* 806DD994 4E800020 */ blr         