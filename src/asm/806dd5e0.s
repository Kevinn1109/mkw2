nofralloc
/* 806DD5E0 9421FFC0 */ stwu        r1, -0x40(r1)
/* 806DD5E4 7C0802A6 */ mflr        r0
/* 806DD5E8 90010044 */ stw         r0, 0x44(r1)
/* 806DD5EC 93E1003C */ stw         r31, 0x3c(r1)
/* 806DD5F0 3FE0808A */ lis         r31, lbl_808a03e8@ha
/* 806DD5F4 3BFF03E8 */ addi        r31, r31, lbl_808a03e8@l
/* 806DD5F8 93C10038 */ stw         r30, 0x38(r1)
/* 806DD5FC 7C7E1B78 */ mr          r30, r3
/* 806DD600 80630020 */ lwz         r3, 0x20(r3)
/* 806DD604 81830000 */ lwz         r12, 0(r3)
/* 806DD608 818C0014 */ lwz         r12, 0x14(r12)
/* 806DD60C 7D8903A6 */ mtctr       r12
/* 806DD610 4E800421 */ bctrl       
/* 806DD614 801E00B4 */ lwz         r0, 0xb4(r30)
/* 806DD618 2C000003 */ cmpwi       r0, 3
/* 806DD61C 418200F0 */ beq-        lbl_806dd70c
/* 806DD620 809E0020 */ lwz         r4, 0x20(r30)
/* 806DD624 2C000001 */ cmpwi       r0, 1
/* 806DD628 80640024 */ lwz         r3, 0x24(r4)
/* 806DD62C 80040028 */ lwz         r0, 0x28(r4)
/* 806DD630 90010024 */ stw         r0, 0x24(r1)
/* 806DD634 90610020 */ stw         r3, 0x20(r1)
/* 806DD638 8004002C */ lwz         r0, 0x2c(r4)
/* 806DD63C 90010028 */ stw         r0, 0x28(r1)
/* 806DD640 4082002C */ bne-        lbl_806dd66c
/* 806DD644 C03F0010 */ lfs         f1, 0x10(r31)
/* 806DD648 38610020 */ addi        r3, r1, 0x20
/* 806DD64C 38810014 */ addi        r4, r1, 0x14
/* 806DD650 4BFD62B1 */ bl          unk_806b3900
/* 806DD654 C0410014 */ lfs         f2, 0x14(r1)
/* 806DD658 C0210018 */ lfs         f1, 0x18(r1)
/* 806DD65C C001001C */ lfs         f0, 0x1c(r1)
/* 806DD660 D0410020 */ stfs        f2, 0x20(r1)
/* 806DD664 D0210024 */ stfs        f1, 0x24(r1)
/* 806DD668 D0010028 */ stfs        f0, 0x28(r1)
lbl_806dd66c:
/* 806DD66C C0210024 */ lfs         f1, 0x24(r1)
/* 806DD670 C01F0024 */ lfs         f0, 0x24(r31)
/* 806DD674 FC200A10 */ fabs        f1, f1
/* 806DD678 FC010040 */ fcmpo       cr0, f1, f0
/* 806DD67C 4081000C */ ble-        lbl_806dd688
/* 806DD680 C01F0014 */ lfs         f0, 0x14(r31)
/* 806DD684 D0010024 */ stfs        f0, 0x24(r1)
lbl_806dd688:
/* 806DD688 C03E00C4 */ lfs         f1, 0xc4(r30)
/* 806DD68C 38610008 */ addi        r3, r1, 8
/* 806DD690 389E00B8 */ addi        r4, r30, 0xb8
/* 806DD694 38A10020 */ addi        r5, r1, 0x20
/* 806DD698 48000139 */ bl          unk_806dd7d0
/* 806DD69C C0010008 */ lfs         f0, 8(r1)
/* 806DD6A0 D01E00B8 */ stfs        f0, 0xb8(r30)
/* 806DD6A4 EC400032 */ fmuls       f2, f0, f0
/* 806DD6A8 C01F0028 */ lfs         f0, 0x28(r31)
/* 806DD6AC C021000C */ lfs         f1, 0xc(r1)
/* 806DD6B0 D03E00BC */ stfs        f1, 0xbc(r30)
/* 806DD6B4 EC210072 */ fmuls       f1, f1, f1
/* 806DD6B8 C0610010 */ lfs         f3, 0x10(r1)
/* 806DD6BC D07E00C0 */ stfs        f3, 0xc0(r30)
/* 806DD6C0 EC6300F2 */ fmuls       f3, f3, f3
/* 806DD6C4 EC22082A */ fadds       f1, f2, f1
/* 806DD6C8 EC23082A */ fadds       f1, f3, f1
/* 806DD6CC FC010040 */ fcmpo       cr0, f1, f0
/* 806DD6D0 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 806DD6D4 7C000026 */ mfcr        r0
/* 806DD6D8 54001FFF */ rlwinm.     r0, r0, 3, 0x1f, 0x1f
/* 806DD6DC 4182001C */ beq-        lbl_806dd6f8
/* 806DD6E0 C03F0000 */ lfs         f1, 0(r31)
/* 806DD6E4 C01F002C */ lfs         f0, 0x2c(r31)
/* 806DD6E8 D03E00B8 */ stfs        f1, 0xb8(r30)
/* 806DD6EC D03E00BC */ stfs        f1, 0xbc(r30)
/* 806DD6F0 D01E00C0 */ stfs        f0, 0xc0(r30)
/* 806DD6F4 4800000C */ b           lbl_806dd700
lbl_806dd6f8:
/* 806DD6F8 387E00B8 */ addi        r3, r30, 0xb8
/* 806DD6FC 4BB66471 */ bl          normalise2__Q23EGG8Vector3fFv
lbl_806dd700:
/* 806DD700 7FC3F378 */ mr          r3, r30
/* 806DD704 389E00B8 */ addi        r4, r30, 0xb8
/* 806DD708 481441A9 */ bl          unk_808218b0
lbl_806dd70c:
/* 806DD70C 807E00CC */ lwz         r3, 0xcc(r30)
/* 806DD710 3C004330 */ lis         r0, 0x4330
/* 806DD714 809E0020 */ lwz         r4, 0x20(r30)
/* 806DD718 6C638000 */ xoris       r3, r3, 0x8000
/* 806DD71C 90610034 */ stw         r3, 0x34(r1)
/* 806DD720 C83F0008 */ lfd         f1, 8(r31)
/* 806DD724 90010030 */ stw         r0, 0x30(r1)
/* 806DD728 A07E002C */ lhz         r3, 0x2c(r30)
/* 806DD72C C8010030 */ lfd         f0, 0x30(r1)
/* 806DD730 C05F0030 */ lfs         f2, 0x30(r31)
/* 806DD734 60600001 */ ori         r0, r3, 1
/* 806DD738 EC600828 */ fsubs       f3, f0, f1
/* 806DD73C C03E00C8 */ lfs         f1, 0xc8(r30)
/* 806DD740 C01F0034 */ lfs         f0, 0x34(r31)
/* 806DD744 C0840020 */ lfs         f4, 0x20(r4)
/* 806DD748 EC4200F2 */ fmuls       f2, f2, f3
/* 806DD74C C064001C */ lfs         f3, 0x1c(r4)
/* 806DD750 C0A40018 */ lfs         f5, 0x18(r4)
/* 806DD754 D0BE0030 */ stfs        f5, 0x30(r30)
/* 806DD758 EC220824 */ fdivs       f1, f2, f1
/* 806DD75C B01E002C */ sth         r0, 0x2c(r30)
/* 806DD760 D07E0034 */ stfs        f3, 0x34(r30)
/* 806DD764 D09E0038 */ stfs        f4, 0x38(r30)
/* 806DD768 EC200072 */ fmuls       f1, f0, f1
/* 806DD76C 4B9A79A5 */ bl          SinFIdx__Q24nw4r4mathFf
/* 806DD770 C01E00B0 */ lfs         f0, 0xb0(r30)
/* 806DD774 801E00B4 */ lwz         r0, 0xb4(r30)
/* 806DD778 EC200072 */ fmuls       f1, f0, f1
/* 806DD77C C01E0034 */ lfs         f0, 0x34(r30)
/* 806DD780 A09E002C */ lhz         r4, 0x2c(r30)
/* 806DD784 2C000002 */ cmpwi       r0, 2
/* 806DD788 807E00CC */ lwz         r3, 0xcc(r30)
/* 806DD78C EC01002A */ fadds       f0, f1, f0
/* 806DD790 60840001 */ ori         r4, r4, 1
/* 806DD794 38030001 */ addi        r0, r3, 1
/* 806DD798 B09E002C */ sth         r4, 0x2c(r30)
/* 806DD79C D01E0034 */ stfs        f0, 0x34(r30)
/* 806DD7A0 901E00CC */ stw         r0, 0xcc(r30)
/* 806DD7A4 40820014 */ bne-        lbl_806dd7b8
/* 806DD7A8 C03F0000 */ lfs         f1, 0(r31)
/* 806DD7AC 7FC3F378 */ mr          r3, r30
/* 806DD7B0 38800289 */ li          r4, 0x289
/* 806DD7B4 48142D69 */ bl          unk_8082051c
lbl_806dd7b8:
/* 806DD7B8 80010044 */ lwz         r0, 0x44(r1)
/* 806DD7BC 83E1003C */ lwz         r31, 0x3c(r1)
/* 806DD7C0 83C10038 */ lwz         r30, 0x38(r1)
/* 806DD7C4 7C0803A6 */ mtlr        r0
/* 806DD7C8 38210040 */ addi        r1, r1, 0x40
/* 806DD7CC 4E800020 */ blr         