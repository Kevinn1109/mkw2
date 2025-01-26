nofralloc
/* 806DC5E0 9421FFB0 */ stwu        r1, -0x50(r1)
/* 806DC5E4 7C0802A6 */ mflr        r0
/* 806DC5E8 90010054 */ stw         r0, 0x54(r1)
/* 806DC5EC DBE10040 */ stfd        f31, 0x40(r1)
/* 806DC5F0 F3E10048 */ psq_st      f31, 0x48(r1), 0, 0
/* 806DC5F4 93E1003C */ stw         r31, 0x3c(r1)
/* 806DC5F8 3FE0808A */ lis         r31, lbl_808a0378@ha
/* 806DC5FC 3BFF0378 */ addi        r31, r31, lbl_808a0378@l
/* 806DC600 93C10038 */ stw         r30, 0x38(r1)
/* 806DC604 3FC0808C */ lis         r30, lbl_808c5d70@ha
/* 806DC608 3BDE5D70 */ addi        r30, r30, lbl_808c5d70@l
/* 806DC60C 93A10034 */ stw         r29, 0x34(r1)
/* 806DC610 7C7D1B78 */ mr          r29, r3
/* 806DC614 480007C9 */ bl          unk_806dcddc
/* 806DC618 C05E0018 */ lfs         f2, 0x18(r30)
/* 806DC61C C01F0040 */ lfs         f0, 0x40(r31)
/* 806DC620 C03F0020 */ lfs         f1, 0x20(r31)
/* 806DC624 FC020040 */ fcmpo       cr0, f2, f0
/* 806DC628 EFE20828 */ fsubs       f31, f2, f1
/* 806DC62C 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 806DC630 40820014 */ bne-        lbl_806dc644
/* 806DC634 C01D012C */ lfs         f0, 0x12c(r29)
/* 806DC638 FC000840 */ fcmpo       cr0, f0, f1
/* 806DC63C 40800008 */ bge-        lbl_806dc644
/* 806DC640 FFE00890 */ fmr         f31, f1
lbl_806dc644:
/* 806DC644 807D0138 */ lwz         r3, 0x138(r29)
/* 806DC648 3C004330 */ lis         r0, 0x4330
/* 806DC64C 90010020 */ stw         r0, 0x20(r1)
/* 806DC650 6C608000 */ xoris       r0, r3, 0x8000
/* 806DC654 C83F0028 */ lfd         f1, 0x28(r31)
/* 806DC658 90010024 */ stw         r0, 0x24(r1)
/* 806DC65C C07F0044 */ lfs         f3, 0x44(r31)
/* 806DC660 C8010020 */ lfd         f0, 0x20(r1)
/* 806DC664 C05F0048 */ lfs         f2, 0x48(r31)
/* 806DC668 EC800828 */ fsubs       f4, f0, f1
/* 806DC66C C03E0020 */ lfs         f1, 0x20(r30)
/* 806DC670 C01F004C */ lfs         f0, 0x4c(r31)
/* 806DC674 EC220072 */ fmuls       f1, f2, f1
/* 806DC678 EC430132 */ fmuls       f2, f3, f4
/* 806DC67C EC220824 */ fdivs       f1, f2, f1
/* 806DC680 EC200072 */ fmuls       f1, f0, f1
/* 806DC684 4B9A8A8D */ bl          SinFIdx__Q24nw4r4mathFf
/* 806DC688 EC1F0072 */ fmuls       f0, f31, f1
/* 806DC68C C05F0020 */ lfs         f2, 0x20(r31)
/* 806DC690 EC22002A */ fadds       f1, f2, f0
/* 806DC694 D03D012C */ stfs        f1, 0x12c(r29)
/* 806DC698 C01E001C */ lfs         f0, 0x1c(r30)
/* 806DC69C FC010040 */ fcmpo       cr0, f1, f0
/* 806DC6A0 40800058 */ bge-        lbl_806dc6f8
/* 806DC6A4 80BD0138 */ lwz         r5, 0x138(r29)
/* 806DC6A8 38800000 */ li          r4, 0
/* 806DC6AC 38600001 */ li          r3, 1
/* 806DC6B0 A01D002C */ lhz         r0, 0x2c(r29)
/* 806DC6B4 D01D012C */ stfs        f0, 0x12c(r29)
/* 806DC6B8 60000008 */ ori         r0, r0, 8
/* 806DC6BC B0BD0134 */ sth         r5, 0x134(r29)
/* 806DC6C0 989D0136 */ stb         r4, 0x136(r29)
/* 806DC6C4 909D0138 */ stw         r4, 0x138(r29)
/* 806DC6C8 987D013C */ stb         r3, 0x13c(r29)
/* 806DC6CC 909D0140 */ stw         r4, 0x140(r29)
/* 806DC6D0 C03E0024 */ lfs         f1, 0x24(r30)
/* 806DC6D4 C01E001C */ lfs         f0, 0x1c(r30)
/* 806DC6D8 D0210014 */ stfs        f1, 0x14(r1)
/* 806DC6DC D0010018 */ stfs        f0, 0x18(r1)
/* 806DC6E0 D021001C */ stfs        f1, 0x1c(r1)
/* 806DC6E4 B01D002C */ sth         r0, 0x2c(r29)
/* 806DC6E8 D03D003C */ stfs        f1, 0x3c(r29)
/* 806DC6EC D01D0040 */ stfs        f0, 0x40(r29)
/* 806DC6F0 D03D0044 */ stfs        f1, 0x44(r29)
/* 806DC6F4 48000064 */ b           lbl_806dc758
lbl_806dc6f8:
/* 806DC6F8 FC011040 */ fcmpo       cr0, f1, f2
/* 806DC6FC 40800024 */ bge-        lbl_806dc720
/* 806DC700 C03D0130 */ lfs         f1, 0x130(r29)
/* 806DC704 C01F0050 */ lfs         f0, 0x50(r31)
/* 806DC708 EC21002A */ fadds       f1, f1, f0
/* 806DC70C D03D0130 */ stfs        f1, 0x130(r29)
/* 806DC710 C01E0024 */ lfs         f0, 0x24(r30)
/* 806DC714 FC010040 */ fcmpo       cr0, f1, f0
/* 806DC718 40810008 */ ble-        lbl_806dc720
/* 806DC71C D01D0130 */ stfs        f0, 0x130(r29)
lbl_806dc720:
/* 806DC720 A01D002C */ lhz         r0, 0x2c(r29)
/* 806DC724 C03D0130 */ lfs         f1, 0x130(r29)
/* 806DC728 C01D012C */ lfs         f0, 0x12c(r29)
/* 806DC72C 60040008 */ ori         r4, r0, 8
/* 806DC730 807D0138 */ lwz         r3, 0x138(r29)
/* 806DC734 D0210008 */ stfs        f1, 8(r1)
/* 806DC738 38030001 */ addi        r0, r3, 1
/* 806DC73C D001000C */ stfs        f0, 0xc(r1)
/* 806DC740 D0210010 */ stfs        f1, 0x10(r1)
/* 806DC744 B09D002C */ sth         r4, 0x2c(r29)
/* 806DC748 D03D003C */ stfs        f1, 0x3c(r29)
/* 806DC74C D01D0040 */ stfs        f0, 0x40(r29)
/* 806DC750 D03D0044 */ stfs        f1, 0x44(r29)
/* 806DC754 901D0138 */ stw         r0, 0x138(r29)
lbl_806dc758:
/* 806DC758 E3E10048 */ psq_l       f31, 0x48(r1), 0, 0
/* 806DC75C 80010054 */ lwz         r0, 0x54(r1)
/* 806DC760 CBE10040 */ lfd         f31, 0x40(r1)
/* 806DC764 83E1003C */ lwz         r31, 0x3c(r1)
/* 806DC768 83C10038 */ lwz         r30, 0x38(r1)
/* 806DC76C 83A10034 */ lwz         r29, 0x34(r1)
/* 806DC770 7C0803A6 */ mtlr        r0
/* 806DC774 38210050 */ addi        r1, r1, 0x50
/* 806DC778 4E800020 */ blr         