nofralloc
/* 805237AC 9421FFF0 */ stwu        r1, -0x10(r1)
/* 805237B0 7C0802A6 */ mflr        r0
/* 805237B4 90010014 */ stw         r0, 0x14(r1)
/* 805237B8 93E1000C */ stw         r31, 0xc(r1)
/* 805237BC 7C7F1B78 */ mr          r31, r3
/* 805237C0 38634120 */ addi        r3, r3, 0x4120
/* 805237C4 4BC8BC89 */ bl          PADRead
/* 805237C8 387F4120 */ addi        r3, r31, 0x4120
/* 805237CC 38800002 */ li          r4, 2
/* 805237D0 4BC8B00D */ bl          PADClampCircle2
/* 805237D4 80010014 */ lwz         r0, 0x14(r1)
/* 805237D8 83E1000C */ lwz         r31, 0xc(r1)
/* 805237DC 7C0803A6 */ mtlr        r0
/* 805237E0 38210010 */ addi        r1, r1, 0x10
/* 805237E4 4E800020 */ blr         