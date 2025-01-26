nofralloc
/* 806DB5B0 9421FFC0 */ stwu        r1, -0x40(r1)
/* 806DB5B4 7C0802A6 */ mflr        r0
/* 806DB5B8 90010044 */ stw         r0, 0x44(r1)
/* 806DB5BC DBE10030 */ stfd        f31, 0x30(r1)
/* 806DB5C0 F3E10038 */ psq_st      f31, 0x38(r1), 0, 0
/* 806DB5C4 3CC04330 */ lis         r6, 0x4330
/* 806DB5C8 3C80808A */ lis         r4, lbl_808a03a8@ha
/* 806DB5CC 3CA0808A */ lis         r5, lbl_808a03a0@ha
/* 806DB5D0 93E1002C */ stw         r31, 0x2c(r1)
/* 806DB5D4 7C7F1B78 */ mr          r31, r3
/* 806DB5D8 C84403A8 */ lfd         f2, lbl_808a03a8@l(r4)
/* 806DB5DC 38800000 */ li          r4, 0
/* 806DB5E0 93C10028 */ stw         r30, 0x28(r1)
/* 806DB5E4 80030108 */ lwz         r0, 0x108(r3)
/* 806DB5E8 9001000C */ stw         r0, 0xc(r1)
/* 806DB5EC 88030136 */ lbz         r0, 0x136(r3)
/* 806DB5F0 90C10008 */ stw         r6, 8(r1)
/* 806DB5F4 C00300D8 */ lfs         f0, 0xd8(r3)
/* 806DB5F8 2C000000 */ cmpwi       r0, 0
/* 806DB5FC C8210008 */ lfd         f1, 8(r1)
/* 806DB600 90C10018 */ stw         r6, 0x18(r1)
/* 806DB604 EC611028 */ fsubs       f3, f1, f2
/* 806DB608 C04300E8 */ lfs         f2, 0xe8(r3)
/* 806DB60C C82503A0 */ lfd         f1, lbl_808a03a0@l(r5)
/* 806DB610 EC630032 */ fmuls       f3, f3, f0
/* 806DB614 D0630128 */ stfs        f3, 0x128(r3)
/* 806DB618 EC031024 */ fdivs       f0, f3, f2
/* 806DB61C FC00001E */ fctiwz      f0, f0
/* 806DB620 D8010010 */ stfd        f0, 0x10(r1)
/* 806DB624 80010014 */ lwz         r0, 0x14(r1)
/* 806DB628 6C008000 */ xoris       r0, r0, 0x8000
/* 806DB62C 9001001C */ stw         r0, 0x1c(r1)
/* 806DB630 C8010018 */ lfd         f0, 0x18(r1)
/* 806DB634 EC000828 */ fsubs       f0, f0, f1
/* 806DB638 EC020032 */ fmuls       f0, f2, f0
/* 806DB63C EC030028 */ fsubs       f0, f3, f0
/* 806DB640 D0030128 */ stfs        f0, 0x128(r3)
/* 806DB644 4082001C */ bne-        lbl_806db660
/* 806DB648 8803013C */ lbz         r0, 0x13c(r3)
/* 806DB64C 2C000000 */ cmpwi       r0, 0
/* 806DB650 40820010 */ bne-        lbl_806db660
/* 806DB654 88030144 */ lbz         r0, 0x144(r3)
/* 806DB658 2C000000 */ cmpwi       r0, 0
/* 806DB65C 41820008 */ beq-        lbl_806db664
lbl_806db660:
/* 806DB660 38800001 */ li          r4, 1
lbl_806db664:
/* 806DB664 2C040000 */ cmpwi       r4, 0
/* 806DB668 4082002C */ bne-        lbl_806db694
/* 806DB66C 80A30008 */ lwz         r5, 8(r3)
/* 806DB670 38800000 */ li          r4, 0
/* 806DB674 C3E30128 */ lfs         f31, 0x128(r3)
/* 806DB678 80650028 */ lwz         r3, 0x28(r5)
/* 806DB67C 4BE7BCC5 */ bl          unk_80557340
/* 806DB680 81830000 */ lwz         r12, 0(r3)
/* 806DB684 FC20F890 */ fmr         f1, f31
/* 806DB688 818C0014 */ lwz         r12, 0x14(r12)
/* 806DB68C 7D8903A6 */ mtctr       r12
/* 806DB690 4E800421 */ bctrl       
lbl_806db694:
/* 806DB694 801F00B8 */ lwz         r0, 0xb8(r31)
/* 806DB698 2C000000 */ cmpwi       r0, 0
/* 806DB69C 41800054 */ blt-        lbl_806db6f0
/* 806DB6A0 3880FFFF */ li          r4, -1
/* 806DB6A4 38A00000 */ li          r5, 0
/* 806DB6A8 B01F00B4 */ sth         r0, 0xb4(r31)
/* 806DB6AC 54000BFC */ rlwinm      r0, r0, 1, 0xf, 0x1e
/* 806DB6B0 807F00C4 */ lwz         r3, 0xc4(r31)
/* 806DB6B4 909F00B8 */ stw         r4, 0xb8(r31)
/* 806DB6B8 809F00C8 */ lwz         r4, 0xc8(r31)
/* 806DB6BC 90BF00BC */ stw         r5, 0xbc(r31)
/* 806DB6C0 7C03022E */ lhzx        r0, r3, r0
/* 806DB6C4 1C00001C */ mulli       r0, r0, 0x1c
/* 806DB6C8 7FC40214 */ add         r30, r4, r0
/* 806DB6CC 387E0004 */ addi        r3, r30, 4
/* 806DB6D0 4B945D15 */ bl          unk_800213e4
/* 806DB6D4 2C030000 */ cmpwi       r3, 0
/* 806DB6D8 41820040 */ beq-        lbl_806db718
/* 806DB6DC 807F00CC */ lwz         r3, 0xcc(r31)
/* 806DB6E0 399E0004 */ addi        r12, r30, 4
/* 806DB6E4 4B945D6D */ bl          __ptmf_scall
/* 806DB6E8 60000000 */ nop         
/* 806DB6EC 4800002C */ b           lbl_806db718
lbl_806db6f0:
/* 806DB6F0 807F00BC */ lwz         r3, 0xbc(r31)
/* 806DB6F4 A01F00B4 */ lhz         r0, 0xb4(r31)
/* 806DB6F8 38630001 */ addi        r3, r3, 1
/* 806DB6FC 907F00BC */ stw         r3, 0xbc(r31)
/* 806DB700 807F00C4 */ lwz         r3, 0xc4(r31)
/* 806DB704 5400083C */ slwi        r0, r0, 1
/* 806DB708 809F00C8 */ lwz         r4, 0xc8(r31)
/* 806DB70C 7C03022E */ lhzx        r0, r3, r0
/* 806DB710 1C00001C */ mulli       r0, r0, 0x1c
/* 806DB714 7FC40214 */ add         r30, r4, r0
lbl_806db718:
/* 806DB718 387E0010 */ addi        r3, r30, 0x10
/* 806DB71C 4B945CC9 */ bl          unk_800213e4
/* 806DB720 2C030000 */ cmpwi       r3, 0
/* 806DB724 41820014 */ beq-        lbl_806db738
/* 806DB728 807F00CC */ lwz         r3, 0xcc(r31)
/* 806DB72C 399E0010 */ addi        r12, r30, 0x10
/* 806DB730 4B945D21 */ bl          __ptmf_scall
/* 806DB734 60000000 */ nop         
lbl_806db738:
/* 806DB738 807F0108 */ lwz         r3, 0x108(r31)
/* 806DB73C 38030001 */ addi        r0, r3, 1
/* 806DB740 901F0108 */ stw         r0, 0x108(r31)
/* 806DB744 E3E10038 */ psq_l       f31, 0x38(r1), 0, 0
/* 806DB748 CBE10030 */ lfd         f31, 0x30(r1)
/* 806DB74C 83E1002C */ lwz         r31, 0x2c(r1)
/* 806DB750 83C10028 */ lwz         r30, 0x28(r1)
/* 806DB754 80010044 */ lwz         r0, 0x44(r1)
/* 806DB758 7C0803A6 */ mtlr        r0
/* 806DB75C 38210040 */ addi        r1, r1, 0x40
/* 806DB760 4E800020 */ blr         