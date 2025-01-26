nofralloc
/* 806DD038 9421FFD0 */ stwu        r1, -0x30(r1)
/* 806DD03C 7C0802A6 */ mflr        r0
/* 806DD040 90010034 */ stw         r0, 0x34(r1)
/* 806DD044 DBE10020 */ stfd        f31, 0x20(r1)
/* 806DD048 F3E10028 */ psq_st      f31, 0x28(r1), 0, 0
/* 806DD04C 80030108 */ lwz         r0, 0x108(r3)
/* 806DD050 3CC04330 */ lis         r6, 0x4330
/* 806DD054 9001000C */ stw         r0, 0xc(r1)
/* 806DD058 3CE0808A */ lis         r7, lbl_808a03a8@ha
/* 806DD05C 88030136 */ lbz         r0, 0x136(r3)
/* 806DD060 3CA0808A */ lis         r5, lbl_808a03a0@ha
/* 806DD064 90C10008 */ stw         r6, 8(r1)
/* 806DD068 38800000 */ li          r4, 0
/* 806DD06C C84703A8 */ lfd         f2, lbl_808a03a8@l(r7)
/* 806DD070 2C000000 */ cmpwi       r0, 0
/* 806DD074 C8210008 */ lfd         f1, 8(r1)
/* 806DD078 C00300D8 */ lfs         f0, 0xd8(r3)
/* 806DD07C EC611028 */ fsubs       f3, f1, f2
/* 806DD080 C04300E8 */ lfs         f2, 0xe8(r3)
/* 806DD084 90C10018 */ stw         r6, 0x18(r1)
/* 806DD088 C82503A0 */ lfd         f1, lbl_808a03a0@l(r5)
/* 806DD08C EC630032 */ fmuls       f3, f3, f0
/* 806DD090 D0630128 */ stfs        f3, 0x128(r3)
/* 806DD094 EC031024 */ fdivs       f0, f3, f2
/* 806DD098 FC00001E */ fctiwz      f0, f0
/* 806DD09C D8010010 */ stfd        f0, 0x10(r1)
/* 806DD0A0 80010014 */ lwz         r0, 0x14(r1)
/* 806DD0A4 6C008000 */ xoris       r0, r0, 0x8000
/* 806DD0A8 9001001C */ stw         r0, 0x1c(r1)
/* 806DD0AC C8010018 */ lfd         f0, 0x18(r1)
/* 806DD0B0 EC000828 */ fsubs       f0, f0, f1
/* 806DD0B4 EC020032 */ fmuls       f0, f2, f0
/* 806DD0B8 EC030028 */ fsubs       f0, f3, f0
/* 806DD0BC D0030128 */ stfs        f0, 0x128(r3)
/* 806DD0C0 4082001C */ bne-        lbl_806dd0dc
/* 806DD0C4 8803013C */ lbz         r0, 0x13c(r3)
/* 806DD0C8 2C000000 */ cmpwi       r0, 0
/* 806DD0CC 40820010 */ bne-        lbl_806dd0dc
/* 806DD0D0 88030144 */ lbz         r0, 0x144(r3)
/* 806DD0D4 2C000000 */ cmpwi       r0, 0
/* 806DD0D8 41820008 */ beq-        lbl_806dd0e0
lbl_806dd0dc:
/* 806DD0DC 38800001 */ li          r4, 1
lbl_806dd0e0:
/* 806DD0E0 2C040000 */ cmpwi       r4, 0
/* 806DD0E4 4082002C */ bne-        lbl_806dd110
/* 806DD0E8 80A30008 */ lwz         r5, 8(r3)
/* 806DD0EC 38800000 */ li          r4, 0
/* 806DD0F0 C3E30128 */ lfs         f31, 0x128(r3)
/* 806DD0F4 80650028 */ lwz         r3, 0x28(r5)
/* 806DD0F8 4BE7A249 */ bl          unk_80557340
/* 806DD0FC 81830000 */ lwz         r12, 0(r3)
/* 806DD100 FC20F890 */ fmr         f1, f31
/* 806DD104 818C0014 */ lwz         r12, 0x14(r12)
/* 806DD108 7D8903A6 */ mtctr       r12
/* 806DD10C 4E800421 */ bctrl       
lbl_806dd110:
/* 806DD110 E3E10028 */ psq_l       f31, 0x28(r1), 0, 0
/* 806DD114 80010034 */ lwz         r0, 0x34(r1)
/* 806DD118 CBE10020 */ lfd         f31, 0x20(r1)
/* 806DD11C 7C0803A6 */ mtlr        r0
/* 806DD120 38210030 */ addi        r1, r1, 0x30
/* 806DD124 4E800020 */ blr         