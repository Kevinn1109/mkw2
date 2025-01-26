nofralloc
/* 806DE458 9421FFF0 */ stwu        r1, -0x10(r1)
/* 806DE45C 7C0802A6 */ mflr        r0
/* 806DE460 90010014 */ stw         r0, 0x14(r1)
/* 806DE464 93E1000C */ stw         r31, 0xc(r1)
/* 806DE468 7C7F1B78 */ mr          r31, r3
/* 806DE46C 80630020 */ lwz         r3, 0x20(r3)
/* 806DE470 81830000 */ lwz         r12, 0(r3)
/* 806DE474 818C0014 */ lwz         r12, 0x14(r12)
/* 806DE478 7D8903A6 */ mtctr       r12
/* 806DE47C 4E800421 */ bctrl       
/* 806DE480 2C030001 */ cmpwi       r3, 1
/* 806DE484 4082004C */ bne-        lbl_806de4d0
/* 806DE488 807F0020 */ lwz         r3, 0x20(r31)
/* 806DE48C 3C80808A */ lis         r4, lbl_808a0498@ha
/* 806DE490 C0240498 */ lfs         f1, lbl_808a0498@l(r4)
/* 806DE494 81830000 */ lwz         r12, 0(r3)
/* 806DE498 818C001C */ lwz         r12, 0x1c(r12)
/* 806DE49C 7D8903A6 */ mtctr       r12
/* 806DE4A0 4E800421 */ bctrl       
/* 806DE4A4 807F0020 */ lwz         r3, 0x20(r31)
/* 806DE4A8 A8030046 */ lha         r0, 0x46(r3)
/* 806DE4AC 80630008 */ lwz         r3, 8(r3)
/* 806DE4B0 54002036 */ slwi        r0, r0, 4
/* 806DE4B4 7C630214 */ add         r3, r3, r0
/* 806DE4B8 A063000C */ lhz         r3, 0xc(r3)
/* 806DE4BC 2C030000 */ cmpwi       r3, 0
/* 806DE4C0 41820010 */ beq-        lbl_806de4d0
/* 806DE4C4 38000000 */ li          r0, 0
/* 806DE4C8 907F00DC */ stw         r3, 0xdc(r31)
/* 806DE4CC 901F00B8 */ stw         r0, 0xb8(r31)
lbl_806de4d0:
/* 806DE4D0 80010014 */ lwz         r0, 0x14(r1)
/* 806DE4D4 83E1000C */ lwz         r31, 0xc(r1)
/* 806DE4D8 7C0803A6 */ mtlr        r0
/* 806DE4DC 38210010 */ addi        r1, r1, 0x10
/* 806DE4E0 4E800020 */ blr         