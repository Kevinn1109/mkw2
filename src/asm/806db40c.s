nofralloc
/* 806DB40C 9421FFD0 */ stwu        r1, -0x30(r1)
/* 806DB410 7C0802A6 */ mflr        r0
/* 806DB414 90010034 */ stw         r0, 0x34(r1)
/* 806DB418 DBE10020 */ stfd        f31, 0x20(r1)
/* 806DB41C F3E10028 */ psq_st      f31, 0x28(r1), 0, 0
/* 806DB420 93E1001C */ stw         r31, 0x1c(r1)
/* 806DB424 93C10018 */ stw         r30, 0x18(r1)
/* 806DB428 7C7E1B78 */ mr          r30, r3
/* 806DB42C 48146215 */ bl          unk_80821640
/* 806DB430 38610008 */ addi        r3, r1, 8
/* 806DB434 389E0058 */ addi        r4, r30, 0x58
/* 806DB438 38A00002 */ li          r5, 2
/* 806DB43C 4BE5C745 */ bl          unk_80537b80
/* 806DB440 C0010008 */ lfs         f0, 8(r1)
/* 806DB444 3FE0808A */ lis         r31, lbl_808a037c@ha
/* 806DB448 D01E00DC */ stfs        f0, 0xdc(r30)
/* 806DB44C 38800000 */ li          r4, 0
/* 806DB450 807E0020 */ lwz         r3, 0x20(r30)
/* 806DB454 C001000C */ lfs         f0, 0xc(r1)
/* 806DB458 D01E00E0 */ stfs        f0, 0xe0(r30)
/* 806DB45C C03F037C */ lfs         f1, lbl_808a037c@l(r31)
/* 806DB460 C0010010 */ lfs         f0, 0x10(r1)
/* 806DB464 D01E00E4 */ stfs        f0, 0xe4(r30)
/* 806DB468 81830000 */ lwz         r12, 0(r3)
/* 806DB46C 818C0010 */ lwz         r12, 0x10(r12)
/* 806DB470 7D8903A6 */ mtctr       r12
/* 806DB474 4E800421 */ bctrl       
/* 806DB478 807E0020 */ lwz         r3, 0x20(r30)
/* 806DB47C C03F037C */ lfs         f1, lbl_808a037c@l(r31)
/* 806DB480 81830000 */ lwz         r12, 0(r3)
/* 806DB484 818C0018 */ lwz         r12, 0x18(r12)
/* 806DB488 7D8903A6 */ mtctr       r12
/* 806DB48C 4E800421 */ bctrl       
/* 806DB490 7FC3F378 */ mr          r3, r30
/* 806DB494 38800000 */ li          r4, 0
/* 806DB498 48145021 */ bl          unk_808204b8
/* 806DB49C C03F037C */ lfs         f1, lbl_808a037c@l(r31)
/* 806DB4A0 38000000 */ li          r0, 0
/* 806DB4A4 C09E00DC */ lfs         f4, 0xdc(r30)
/* 806DB4A8 38800000 */ li          r4, 0
/* 806DB4AC C07E00E0 */ lfs         f3, 0xe0(r30)
/* 806DB4B0 C01E00E4 */ lfs         f0, 0xe4(r30)
/* 806DB4B4 D03E010C */ stfs        f1, 0x10c(r30)
/* 806DB4B8 80BE0020 */ lwz         r5, 0x20(r30)
/* 806DB4BC 981E0136 */ stb         r0, 0x136(r30)
/* 806DB4C0 807E0008 */ lwz         r3, 8(r30)
/* 806DB4C4 901E0138 */ stw         r0, 0x138(r30)
/* 806DB4C8 C05E00D8 */ lfs         f2, 0xd8(r30)
/* 806DB4CC 981E013C */ stb         r0, 0x13c(r30)
/* 806DB4D0 901E0140 */ stw         r0, 0x140(r30)
/* 806DB4D4 981E0144 */ stb         r0, 0x144(r30)
/* 806DB4D8 901E0148 */ stw         r0, 0x148(r30)
/* 806DB4DC D03E0128 */ stfs        f1, 0x128(r30)
/* 806DB4E0 901E0108 */ stw         r0, 0x108(r30)
/* 806DB4E4 D09E00EC */ stfs        f4, 0xec(r30)
/* 806DB4E8 D07E00F0 */ stfs        f3, 0xf0(r30)
/* 806DB4EC D01E00F4 */ stfs        f0, 0xf4(r30)
/* 806DB4F0 C0050024 */ lfs         f0, 0x24(r5)
/* 806DB4F4 D01E00F8 */ stfs        f0, 0xf8(r30)
/* 806DB4F8 C0050028 */ lfs         f0, 0x28(r5)
/* 806DB4FC D01E00FC */ stfs        f0, 0xfc(r30)
/* 806DB500 C005002C */ lfs         f0, 0x2c(r5)
/* 806DB504 D01E0100 */ stfs        f0, 0x100(r30)
/* 806DB508 80630028 */ lwz         r3, 0x28(r3)
/* 806DB50C 4BE7BEC1 */ bl          unk_805573cc
/* 806DB510 807E0008 */ lwz         r3, 8(r30)
/* 806DB514 38800000 */ li          r4, 0
/* 806DB518 C3FE0128 */ lfs         f31, 0x128(r30)
/* 806DB51C 80630028 */ lwz         r3, 0x28(r3)
/* 806DB520 4BE7BE21 */ bl          unk_80557340
/* 806DB524 81830000 */ lwz         r12, 0(r3)
/* 806DB528 FC20F890 */ fmr         f1, f31
/* 806DB52C 818C0014 */ lwz         r12, 0x14(r12)
/* 806DB530 7D8903A6 */ mtctr       r12
/* 806DB534 4E800421 */ bctrl       
/* 806DB538 807E0008 */ lwz         r3, 8(r30)
/* 806DB53C 38800000 */ li          r4, 0
/* 806DB540 80630028 */ lwz         r3, 0x28(r3)
/* 806DB544 4BE7BDFD */ bl          unk_80557340
/* 806DB548 81830000 */ lwz         r12, 0(r3)
/* 806DB54C 818C0008 */ lwz         r12, 8(r12)
/* 806DB550 7D8903A6 */ mtctr       r12
/* 806DB554 4E800421 */ bctrl       
/* 806DB558 D03E00E8 */ stfs        f1, 0xe8(r30)
/* 806DB55C 38800000 */ li          r4, 0
/* 806DB560 807E0008 */ lwz         r3, 8(r30)
/* 806DB564 C3FE0128 */ lfs         f31, 0x128(r30)
/* 806DB568 80630028 */ lwz         r3, 0x28(r3)
/* 806DB56C 4BE7BDD5 */ bl          unk_80557340
/* 806DB570 81830000 */ lwz         r12, 0(r3)
/* 806DB574 FC20F890 */ fmr         f1, f31
/* 806DB578 818C0014 */ lwz         r12, 0x14(r12)
/* 806DB57C 7D8903A6 */ mtctr       r12
/* 806DB580 4E800421 */ bctrl       
/* 806DB584 38000001 */ li          r0, 1
/* 806DB588 901E00B8 */ stw         r0, 0xb8(r30)
/* 806DB58C E3E10028 */ psq_l       f31, 0x28(r1), 0, 0
/* 806DB590 CBE10020 */ lfd         f31, 0x20(r1)
/* 806DB594 83E1001C */ lwz         r31, 0x1c(r1)
/* 806DB598 83C10018 */ lwz         r30, 0x18(r1)
/* 806DB59C 80010034 */ lwz         r0, 0x34(r1)
/* 806DB5A0 7C0803A6 */ mtlr        r0
/* 806DB5A4 38210030 */ addi        r1, r1, 0x30
/* 806DB5A8 4E800020 */ blr         