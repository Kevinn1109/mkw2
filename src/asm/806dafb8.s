nofralloc
/* 806DAFB8 9421FEF0 */ stwu        r1, -0x110(r1)
/* 806DAFBC 7C0802A6 */ mflr        r0
/* 806DAFC0 90010114 */ stw         r0, 0x114(r1)
/* 806DAFC4 93E1010C */ stw         r31, 0x10c(r1)
/* 806DAFC8 7C7F1B78 */ mr          r31, r3
/* 806DAFCC 48146675 */ bl          unk_80821640
/* 806DAFD0 807F0058 */ lwz         r3, 0x58(r31)
/* 806DAFD4 3D00802A */ lis         r8, lbl_802a4100@ha
/* 806DAFD8 801F005C */ lwz         r0, 0x5c(r31)
/* 806DAFDC 38E84100 */ addi        r7, r8, lbl_802a4100@l
/* 806DAFE0 900100DC */ stw         r0, 0xdc(r1)
/* 806DAFE4 3CC0808C */ lis         r6, lbl_808c5c7c@ha
/* 806DAFE8 C0A65C7C */ lfs         f5, lbl_808c5c7c@l(r6)
/* 806DAFEC 3C80809C */ lis         r4, lbl_809c2278@ha
/* 806DAFF0 906100D8 */ stw         r3, 0xd8(r1)
/* 806DAFF4 3CA0808C */ lis         r5, lbl_808c5c78@ha
/* 806DAFF8 C0642278 */ lfs         f3, lbl_809c2278@l(r4)
/* 806DAFFC 386100A8 */ addi        r3, r1, 0xa8
/* 806DB000 80DF0060 */ lwz         r6, 0x60(r31)
/* 806DB004 801F0064 */ lwz         r0, 0x64(r31)
/* 806DB008 900100E4 */ stw         r0, 0xe4(r1)
/* 806DB00C C0855C78 */ lfs         f4, lbl_808c5c78@l(r5)
/* 806DB010 90C100E0 */ stw         r6, 0xe0(r1)
/* 806DB014 C0484100 */ lfs         f2, lbl_802a4100@l(r8)
/* 806DB018 809F0068 */ lwz         r4, 0x68(r31)
/* 806DB01C 801F006C */ lwz         r0, 0x6c(r31)
/* 806DB020 900100EC */ stw         r0, 0xec(r1)
/* 806DB024 C0270004 */ lfs         f1, 4(r7)
/* 806DB028 908100E8 */ stw         r4, 0xe8(r1)
/* 806DB02C C0070008 */ lfs         f0, 8(r7)
/* 806DB030 809F0070 */ lwz         r4, 0x70(r31)
/* 806DB034 801F0074 */ lwz         r0, 0x74(r31)
/* 806DB038 900100F4 */ stw         r0, 0xf4(r1)
/* 806DB03C 908100F0 */ stw         r4, 0xf0(r1)
/* 806DB040 809F0078 */ lwz         r4, 0x78(r31)
/* 806DB044 801F007C */ lwz         r0, 0x7c(r31)
/* 806DB048 900100FC */ stw         r0, 0xfc(r1)
/* 806DB04C 908100F8 */ stw         r4, 0xf8(r1)
/* 806DB050 809F0080 */ lwz         r4, 0x80(r31)
/* 806DB054 801F0084 */ lwz         r0, 0x84(r31)
/* 806DB058 90010104 */ stw         r0, 0x104(r1)
/* 806DB05C 90810100 */ stw         r4, 0x100(r1)
/* 806DB060 D04100E4 */ stfs        f2, 0xe4(r1)
/* 806DB064 D02100F4 */ stfs        f1, 0xf4(r1)
/* 806DB068 D0010104 */ stfs        f0, 0x104(r1)
/* 806DB06C D0610008 */ stfs        f3, 8(r1)
/* 806DB070 D081000C */ stfs        f4, 0xc(r1)
/* 806DB074 D0A10010 */ stfs        f5, 0x10(r1)
/* 806DB078 4BB54A4D */ bl          makeIdentity__Q23EGG9Matrix34fFv
/* 806DB07C C0410008 */ lfs         f2, 8(r1)
/* 806DB080 38610078 */ addi        r3, r1, 0x78
/* 806DB084 C021000C */ lfs         f1, 0xc(r1)
/* 806DB088 C0010010 */ lfs         f0, 0x10(r1)
/* 806DB08C D04100B4 */ stfs        f2, 0xb4(r1)
/* 806DB090 D02100C4 */ stfs        f1, 0xc4(r1)
/* 806DB094 D00100D4 */ stfs        f0, 0xd4(r1)
/* 806DB098 4BB54A2D */ bl          makeIdentity__Q23EGG9Matrix34fFv
/* 806DB09C C01F0030 */ lfs         f0, 0x30(r31)
/* 806DB0A0 386100D8 */ addi        r3, r1, 0xd8
/* 806DB0A4 D0010084 */ stfs        f0, 0x84(r1)
/* 806DB0A8 388100A8 */ addi        r4, r1, 0xa8
/* 806DB0AC 38A10048 */ addi        r5, r1, 0x48
/* 806DB0B0 C01F0034 */ lfs         f0, 0x34(r31)
/* 806DB0B4 D0010094 */ stfs        f0, 0x94(r1)
/* 806DB0B8 C01F0038 */ lfs         f0, 0x38(r31)
/* 806DB0BC D00100A4 */ stfs        f0, 0xa4(r1)
/* 806DB0C0 4BB55351 */ bl          multiplyTo__Q23EGG9Matrix34fCFRCQ23EGG9Matrix34fRQ23EGG9Matrix34f
/* 806DB0C4 38610078 */ addi        r3, r1, 0x78
/* 806DB0C8 38810048 */ addi        r4, r1, 0x48
/* 806DB0CC 38A10018 */ addi        r5, r1, 0x18
/* 806DB0D0 4BB55341 */ bl          multiplyTo__Q23EGG9Matrix34fCFRCQ23EGG9Matrix34fRQ23EGG9Matrix34f
/* 806DB0D4 819F0000 */ lwz         r12, 0(r31)
/* 806DB0D8 7FE3FB78 */ mr          r3, r31
/* 806DB0DC 818C00B4 */ lwz         r12, 0xb4(r12)
/* 806DB0E0 7D8903A6 */ mtctr       r12
/* 806DB0E4 4E800421 */ bctrl       
/* 806DB0E8 81830000 */ lwz         r12, 0(r3)
/* 806DB0EC 38810018 */ addi        r4, r1, 0x18
/* 806DB0F0 38BF003C */ addi        r5, r31, 0x3c
/* 806DB0F4 818C000C */ lwz         r12, 0xc(r12)
/* 806DB0F8 7D8903A6 */ mtctr       r12
/* 806DB0FC 4E800421 */ bctrl       
/* 806DB100 80010114 */ lwz         r0, 0x114(r1)
/* 806DB104 83E1010C */ lwz         r31, 0x10c(r1)
/* 806DB108 7C0803A6 */ mtlr        r0
/* 806DB10C 38210110 */ addi        r1, r1, 0x110
/* 806DB110 4E800020 */ blr         