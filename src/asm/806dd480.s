nofralloc
/* 806DD480 9421FFE0 */ stwu        r1, -0x20(r1)
/* 806DD484 7C0802A6 */ mflr        r0
/* 806DD488 38800000 */ li          r4, 0
/* 806DD48C 90010024 */ stw         r0, 0x24(r1)
/* 806DD490 93E1001C */ stw         r31, 0x1c(r1)
/* 806DD494 3FE0808A */ lis         r31, lbl_808a03e8@ha
/* 806DD498 3BFF03E8 */ addi        r31, r31, lbl_808a03e8@l
/* 806DD49C 93C10018 */ stw         r30, 0x18(r1)
/* 806DD4A0 7C7E1B78 */ mr          r30, r3
/* 806DD4A4 C03F0000 */ lfs         f1, 0(r31)
/* 806DD4A8 80630020 */ lwz         r3, 0x20(r3)
/* 806DD4AC 81830000 */ lwz         r12, 0(r3)
/* 806DD4B0 818C0010 */ lwz         r12, 0x10(r12)
/* 806DD4B4 7D8903A6 */ mtctr       r12
/* 806DD4B8 4E800421 */ bctrl       
/* 806DD4BC 807E0020 */ lwz         r3, 0x20(r30)
/* 806DD4C0 38000001 */ li          r0, 1
/* 806DD4C4 98030017 */ stb         r0, 0x17(r3)
/* 806DD4C8 809E0020 */ lwz         r4, 0x20(r30)
/* 806DD4CC A01E002C */ lhz         r0, 0x2c(r30)
/* 806DD4D0 C0040020 */ lfs         f0, 0x20(r4)
/* 806DD4D4 C024001C */ lfs         f1, 0x1c(r4)
/* 806DD4D8 60030001 */ ori         r3, r0, 1
/* 806DD4DC C0440018 */ lfs         f2, 0x18(r4)
/* 806DD4E0 D05E0030 */ stfs        f2, 0x30(r30)
/* 806DD4E4 801E00B4 */ lwz         r0, 0xb4(r30)
/* 806DD4E8 B07E002C */ sth         r3, 0x2c(r30)
/* 806DD4EC 2C000001 */ cmpwi       r0, 1
/* 806DD4F0 D03E0034 */ stfs        f1, 0x34(r30)
/* 806DD4F4 D01E0038 */ stfs        f0, 0x38(r30)
/* 806DD4F8 C0040024 */ lfs         f0, 0x24(r4)
/* 806DD4FC D01E00B8 */ stfs        f0, 0xb8(r30)
/* 806DD500 C0040028 */ lfs         f0, 0x28(r4)
/* 806DD504 D01E00BC */ stfs        f0, 0xbc(r30)
/* 806DD508 C004002C */ lfs         f0, 0x2c(r4)
/* 806DD50C D01E00C0 */ stfs        f0, 0xc0(r30)
/* 806DD510 4082002C */ bne-        lbl_806dd53c
/* 806DD514 C03F0010 */ lfs         f1, 0x10(r31)
/* 806DD518 387E00B8 */ addi        r3, r30, 0xb8
/* 806DD51C 38810008 */ addi        r4, r1, 8
/* 806DD520 4BFD63E1 */ bl          unk_806b3900
/* 806DD524 C0010008 */ lfs         f0, 8(r1)
/* 806DD528 D01E00B8 */ stfs        f0, 0xb8(r30)
/* 806DD52C C001000C */ lfs         f0, 0xc(r1)
/* 806DD530 D01E00BC */ stfs        f0, 0xbc(r30)
/* 806DD534 C0010010 */ lfs         f0, 0x10(r1)
/* 806DD538 D01E00C0 */ stfs        f0, 0xc0(r30)
lbl_806dd53c:
/* 806DD53C 807E00B4 */ lwz         r3, 0xb4(r30)
/* 806DD540 38000000 */ li          r0, 0
/* 806DD544 C03F0014 */ lfs         f1, 0x14(r31)
/* 806DD548 C01F0000 */ lfs         f0, 0(r31)
/* 806DD54C 2C030000 */ cmpwi       r3, 0
/* 806DD550 D03E00C4 */ stfs        f1, 0xc4(r30)
/* 806DD554 901E00CC */ stw         r0, 0xcc(r30)
/* 806DD558 D01E00D0 */ stfs        f0, 0xd0(r30)
/* 806DD55C 41820020 */ beq-        lbl_806dd57c
/* 806DD560 2C030001 */ cmpwi       r3, 1
/* 806DD564 41820024 */ beq-        lbl_806dd588
/* 806DD568 2C030002 */ cmpwi       r3, 2
/* 806DD56C 41820028 */ beq-        lbl_806dd594
/* 806DD570 2C030003 */ cmpwi       r3, 3
/* 806DD574 4182002C */ beq-        lbl_806dd5a0
/* 806DD578 48000030 */ b           lbl_806dd5a8
lbl_806dd57c:
/* 806DD57C C01F0018 */ lfs         f0, 0x18(r31)
/* 806DD580 D01E00C8 */ stfs        f0, 0xc8(r30)
/* 806DD584 48000024 */ b           lbl_806dd5a8
lbl_806dd588:
/* 806DD588 C01F001C */ lfs         f0, 0x1c(r31)
/* 806DD58C D01E00C8 */ stfs        f0, 0xc8(r30)
/* 806DD590 48000018 */ b           lbl_806dd5a8
lbl_806dd594:
/* 806DD594 C01F0018 */ lfs         f0, 0x18(r31)
/* 806DD598 D01E00C8 */ stfs        f0, 0xc8(r30)
/* 806DD59C 4800000C */ b           lbl_806dd5a8
lbl_806dd5a0:
/* 806DD5A0 C01F0020 */ lfs         f0, 0x20(r31)
/* 806DD5A4 D01E00C8 */ stfs        f0, 0xc8(r30)
lbl_806dd5a8:
/* 806DD5A8 807E00B4 */ lwz         r3, 0xb4(r30)
/* 806DD5AC 3803FFFF */ addi        r0, r3, -1
/* 806DD5B0 28000001 */ cmplwi      r0, 1
/* 806DD5B4 41810010 */ bgt-        lbl_806dd5c4
/* 806DD5B8 7FC3F378 */ mr          r3, r30
/* 806DD5BC 38800000 */ li          r4, 0
/* 806DD5C0 48142EF9 */ bl          unk_808204b8
lbl_806dd5c4:
/* 806DD5C4 80010024 */ lwz         r0, 0x24(r1)
/* 806DD5C8 83E1001C */ lwz         r31, 0x1c(r1)
/* 806DD5CC 83C10018 */ lwz         r30, 0x18(r1)
/* 806DD5D0 7C0803A6 */ mtlr        r0
/* 806DD5D4 38210020 */ addi        r1, r1, 0x20
/* 806DD5D8 4E800020 */ blr         