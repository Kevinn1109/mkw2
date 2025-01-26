nofralloc
/* 806DC9D8 9421FFC0 */ stwu        r1, -0x40(r1)
/* 806DC9DC 7C0802A6 */ mflr        r0
/* 806DC9E0 90010044 */ stw         r0, 0x44(r1)
/* 806DC9E4 93E1003C */ stw         r31, 0x3c(r1)
/* 806DC9E8 93C10038 */ stw         r30, 0x38(r1)
/* 806DC9EC 93A10034 */ stw         r29, 0x34(r1)
/* 806DC9F0 3FA0808A */ lis         r29, lbl_808a0378@ha
/* 806DC9F4 3BBD0378 */ addi        r29, r29, lbl_808a0378@l
/* 806DC9F8 93810030 */ stw         r28, 0x30(r1)
/* 806DC9FC 7C7C1B78 */ mr          r28, r3
/* 806DCA00 480003DD */ bl          unk_806dcddc
/* 806DCA04 801C0148 */ lwz         r0, 0x148(r28)
/* 806DCA08 3FC04330 */ lis         r30, 0x4330
/* 806DCA0C 93C10020 */ stw         r30, 0x20(r1)
/* 806DCA10 3FE0808C */ lis         r31, lbl_808c5d98@ha
/* 806DCA14 6C008000 */ xoris       r0, r0, 0x8000
/* 806DCA18 C83D0028 */ lfd         f1, 0x28(r29)
/* 806DCA1C 90010024 */ stw         r0, 0x24(r1)
/* 806DCA20 C07D0044 */ lfs         f3, 0x44(r29)
/* 806DCA24 C8010020 */ lfd         f0, 0x20(r1)
/* 806DCA28 C05D0048 */ lfs         f2, 0x48(r29)
/* 806DCA2C EC800828 */ fsubs       f4, f0, f1
/* 806DCA30 C03F5D98 */ lfs         f1, lbl_808c5d98@l(r31)
/* 806DCA34 C01D004C */ lfs         f0, 0x4c(r29)
/* 806DCA38 EC220072 */ fmuls       f1, f2, f1
/* 806DCA3C EC430132 */ fmuls       f2, f3, f4
/* 806DCA40 EC220824 */ fdivs       f1, f2, f1
/* 806DCA44 EC200072 */ fmuls       f1, f0, f1
/* 806DCA48 4B9A86C9 */ bl          SinFIdx__Q24nw4r4mathFf
/* 806DCA4C 801C0148 */ lwz         r0, 0x148(r28)
/* 806DCA50 3C60808C */ lis         r3, lbl_808c5d88@ha
/* 806DCA54 C0035D88 */ lfs         f0, lbl_808c5d88@l(r3)
/* 806DCA58 6C008000 */ xoris       r0, r0, 0x8000
/* 806DCA5C 9001002C */ stw         r0, 0x2c(r1)
/* 806DCA60 EC400072 */ fmuls       f2, f0, f1
/* 806DCA64 C83D0028 */ lfd         f1, 0x28(r29)
/* 806DCA68 93C10028 */ stw         r30, 0x28(r1)
/* 806DCA6C C8010028 */ lfd         f0, 0x28(r1)
/* 806DCA70 D05C012C */ stfs        f2, 0x12c(r28)
/* 806DCA74 EC200828 */ fsubs       f1, f0, f1
/* 806DCA78 C01F5D98 */ lfs         f0, lbl_808c5d98@l(r31)
/* 806DCA7C FC010040 */ fcmpo       cr0, f1, f0
/* 806DCA80 40810060 */ ble-        lbl_806dcae0
/* 806DCA84 C01D0020 */ lfs         f0, 0x20(r29)
/* 806DCA88 FC020040 */ fcmpo       cr0, f2, f0
/* 806DCA8C 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 806DCA90 40820050 */ bne-        lbl_806dcae0
/* 806DCA94 38000000 */ li          r0, 0
/* 806DCA98 981C0144 */ stb         r0, 0x144(r28)
/* 806DCA9C 7F83E378 */ mr          r3, r28
/* 806DCAA0 901C0148 */ stw         r0, 0x148(r28)
/* 806DCAA4 819C0000 */ lwz         r12, 0(r28)
/* 806DCAA8 818C0094 */ lwz         r12, 0x94(r12)
/* 806DCAAC 7D8903A6 */ mtctr       r12
/* 806DCAB0 4E800421 */ bctrl       
/* 806DCAB4 A01C002C */ lhz         r0, 0x2c(r28)
/* 806DCAB8 C01D0020 */ lfs         f0, 0x20(r29)
/* 806DCABC 60000008 */ ori         r0, r0, 8
/* 806DCAC0 D0010014 */ stfs        f0, 0x14(r1)
/* 806DCAC4 D0010018 */ stfs        f0, 0x18(r1)
/* 806DCAC8 D001001C */ stfs        f0, 0x1c(r1)
/* 806DCACC B01C002C */ sth         r0, 0x2c(r28)
/* 806DCAD0 D01C003C */ stfs        f0, 0x3c(r28)
/* 806DCAD4 D01C0040 */ stfs        f0, 0x40(r28)
/* 806DCAD8 D01C0044 */ stfs        f0, 0x44(r28)
/* 806DCADC 4800005C */ b           lbl_806dcb38
lbl_806dcae0:
/* 806DCAE0 C05C0130 */ lfs         f2, 0x130(r28)
/* 806DCAE4 C03D0050 */ lfs         f1, 0x50(r29)
/* 806DCAE8 C01D0020 */ lfs         f0, 0x20(r29)
/* 806DCAEC EC22082A */ fadds       f1, f2, f1
/* 806DCAF0 D03C0130 */ stfs        f1, 0x130(r28)
/* 806DCAF4 FC010040 */ fcmpo       cr0, f1, f0
/* 806DCAF8 40810008 */ ble-        lbl_806dcb00
/* 806DCAFC D01C0130 */ stfs        f0, 0x130(r28)
lbl_806dcb00:
/* 806DCB00 A01C002C */ lhz         r0, 0x2c(r28)
/* 806DCB04 C03C0130 */ lfs         f1, 0x130(r28)
/* 806DCB08 C01C012C */ lfs         f0, 0x12c(r28)
/* 806DCB0C 60040008 */ ori         r4, r0, 8
/* 806DCB10 807C0148 */ lwz         r3, 0x148(r28)
/* 806DCB14 D0210008 */ stfs        f1, 8(r1)
/* 806DCB18 38030001 */ addi        r0, r3, 1
/* 806DCB1C D001000C */ stfs        f0, 0xc(r1)
/* 806DCB20 D0210010 */ stfs        f1, 0x10(r1)
/* 806DCB24 B09C002C */ sth         r4, 0x2c(r28)
/* 806DCB28 D03C003C */ stfs        f1, 0x3c(r28)
/* 806DCB2C D01C0040 */ stfs        f0, 0x40(r28)
/* 806DCB30 D03C0044 */ stfs        f1, 0x44(r28)
/* 806DCB34 901C0148 */ stw         r0, 0x148(r28)
lbl_806dcb38:
/* 806DCB38 80010044 */ lwz         r0, 0x44(r1)
/* 806DCB3C 83E1003C */ lwz         r31, 0x3c(r1)
/* 806DCB40 83C10038 */ lwz         r30, 0x38(r1)
/* 806DCB44 83A10034 */ lwz         r29, 0x34(r1)
/* 806DCB48 83810030 */ lwz         r28, 0x30(r1)
/* 806DCB4C 7C0803A6 */ mtlr        r0
/* 806DCB50 38210040 */ addi        r1, r1, 0x40
/* 806DCB54 4E800020 */ blr         