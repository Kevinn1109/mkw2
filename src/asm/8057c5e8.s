nofralloc
/* 8057C5E8 9421FFE0 */ stwu        r1, -0x20(r1)
/* 8057C5EC 7C0802A6 */ mflr        r0
/* 8057C5F0 90010024 */ stw         r0, 0x24(r1)
/* 8057C5F4 DBE10010 */ stfd        f31, 0x10(r1)
/* 8057C5F8 F3E10018 */ psq_st      f31, 0x18(r1), 0, 0
/* 8057C5FC 93E1000C */ stw         r31, 0xc(r1)
/* 8057C600 93C10008 */ stw         r30, 8(r1)
/* 8057C604 7C7E1B78 */ mr          r30, r3
/* 8057C608 80830000 */ lwz         r4, 0(r3)
/* 8057C60C 80A40004 */ lwz         r5, 4(r4)
/* 8057C610 80850004 */ lwz         r4, 4(r5)
/* 8057C614 548002D6 */ rlwinm      r0, r4, 0, 0xb, 0xb
/* 8057C618 50800739 */ rlwimi.     r0, r4, 0, 0x1c, 0x1c
/* 8057C61C 40820060 */ bne-        lbl_8057c67c
/* 8057C620 80050014 */ lwz         r0, 0x14(r5)
/* 8057C624 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 8057C628 40820054 */ bne-        lbl_8057c67c
/* 8057C62C C003015C */ lfs         f0, 0x15c(r3)
/* 8057C630 FFE00210 */ fabs        f31, f0
/* 8057C634 4801478D */ bl          getSpeedRatioCapped__Q24Kart15KartObjectProxyFv
/* 8057C638 3FE08089 */ lis         r31, lbl_80891a04@ha
/* 8057C63C EC3F0072 */ fmuls       f1, f31, f1
/* 8057C640 C01F1A04 */ lfs         f0, lbl_80891a04@l(r31)
/* 8057C644 7FC3F378 */ mr          r3, r30
/* 8057C648 EFE00828 */ fsubs       f31, f0, f1
/* 8057C64C 48014229 */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 8057C650 C023001C */ lfs         f1, 0x1c(r3)
/* 8057C654 7FC3F378 */ mr          r3, r30
/* 8057C658 C01F1A04 */ lfs         f0, lbl_80891a04@l(r31)
/* 8057C65C EC000828 */ fsubs       f0, f0, f1
/* 8057C660 EFE007F2 */ fmuls       f31, f0, f31
/* 8057C664 48014211 */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 8057C668 C023001C */ lfs         f1, 0x1c(r3)
/* 8057C66C C01E0020 */ lfs         f0, 0x20(r30)
/* 8057C670 EC21F82A */ fadds       f1, f1, f31
/* 8057C674 EC000072 */ fmuls       f0, f0, f1
/* 8057C678 D01E0020 */ stfs        f0, 0x20(r30)
lbl_8057c67c:
/* 8057C67C E3E10018 */ psq_l       f31, 0x18(r1), 0, 0
/* 8057C680 80010024 */ lwz         r0, 0x24(r1)
/* 8057C684 CBE10010 */ lfd         f31, 0x10(r1)
/* 8057C688 83E1000C */ lwz         r31, 0xc(r1)
/* 8057C68C 83C10008 */ lwz         r30, 8(r1)
/* 8057C690 7C0803A6 */ mtlr        r0
/* 8057C694 38210020 */ addi        r1, r1, 0x20
/* 8057C698 4E800020 */ blr         