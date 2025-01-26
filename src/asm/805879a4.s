nofralloc
/* 805879A4 9421FFC0 */ stwu        r1, -0x40(r1)
/* 805879A8 7C0802A6 */ mflr        r0
/* 805879AC 90010044 */ stw         r0, 0x44(r1)
/* 805879B0 DBE10030 */ stfd        f31, 0x30(r1)
/* 805879B4 F3E10038 */ psq_st      f31, 0x38(r1), 0, 0
/* 805879B8 DBC10020 */ stfd        f30, 0x20(r1)
/* 805879BC F3C10028 */ psq_st      f30, 0x28(r1), 0, 0
/* 805879C0 DBA10010 */ stfd        f29, 0x10(r1)
/* 805879C4 F3A10018 */ psq_st      f29, 0x18(r1), 0, 0
/* 805879C8 FFE00890 */ fmr         f31, f1
/* 805879CC C0840000 */ lfs         f4, 0(r4)
/* 805879D0 C0650000 */ lfs         f3, 0(r5)
/* 805879D4 C0440004 */ lfs         f2, 4(r4)
/* 805879D8 EC2400F2 */ fmuls       f1, f4, f3
/* 805879DC C0050004 */ lfs         f0, 4(r5)
/* 805879E0 C0640008 */ lfs         f3, 8(r4)
/* 805879E4 EC020032 */ fmuls       f0, f2, f0
/* 805879E8 C0450008 */ lfs         f2, 8(r5)
/* 805879EC 93E1000C */ stw         r31, 0xc(r1)
/* 805879F0 3FE08089 */ lis         r31, lbl_80891a00@ha
/* 805879F4 EC4300B2 */ fmuls       f2, f3, f2
/* 805879F8 EC21002A */ fadds       f1, f1, f0
/* 805879FC 3BFF1A00 */ addi        r31, r31, lbl_80891a00@l
/* 80587A00 C0A4000C */ lfs         f5, 0xc(r4)
/* 80587A04 C085000C */ lfs         f4, 0xc(r5)
/* 80587A08 EC22082A */ fadds       f1, f2, f1
/* 80587A0C C01F000C */ lfs         f0, 0xc(r31)
/* 80587A10 EC650132 */ fmuls       f3, f5, f4
/* 80587A14 C3BF0040 */ lfs         f29, 0x40(r31)
/* 80587A18 EFC3082A */ fadds       f30, f3, f1
/* 80587A1C FC00F040 */ fcmpo       cr0, f0, f30
/* 80587A20 4081000C */ ble-        lbl_80587a2c
/* 80587A24 FFC00090 */ fmr         f30, f0
/* 80587A28 48000014 */ b           lbl_80587a3c
lbl_80587a2c:
/* 80587A2C C01F0004 */ lfs         f0, 4(r31)
/* 80587A30 FC00F040 */ fcmpo       cr0, f0, f30
/* 80587A34 40800008 */ bge-        lbl_80587a3c
/* 80587A38 FFC00090 */ fmr         f30, f0
lbl_80587a3c:
/* 80587A3C C01F0004 */ lfs         f0, 4(r31)
/* 80587A40 38000000 */ li          r0, 0
/* 80587A44 FC1E0040 */ fcmpo       cr0, f30, f0
/* 80587A48 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 80587A4C 40820018 */ bne-        lbl_80587a64
/* 80587A50 C01F000C */ lfs         f0, 0xc(r31)
/* 80587A54 FC1E0040 */ fcmpo       cr0, f30, f0
/* 80587A58 4C411382 */ cror        cr0eq, cr0gt, cr0eq
/* 80587A5C 40820008 */ bne-        lbl_80587a64
/* 80587A60 38000001 */ li          r0, 1
lbl_80587a64:
/* 80587A64 2C000000 */ cmpwi       r0, 0
/* 80587A68 40820020 */ bne-        lbl_80587a88
/* 80587A6C 3C60808B */ lis         r3, lbl_808b587c@ha
/* 80587A70 3CA0808B */ lis         r5, lbl_808b5854@ha
/* 80587A74 3863587C */ addi        r3, r3, lbl_808b587c@l
/* 80587A78 388000F2 */ li          r4, 0xf2
/* 80587A7C 38A55854 */ addi        r5, r5, lbl_808b5854@l
/* 80587A80 4CC63182 */ crclr       cr1eq
/* 80587A84 4BA9E5CD */ bl          VWarning
lbl_80587a88:
/* 80587A88 C01F0004 */ lfs         f0, 4(r31)
/* 80587A8C 38000000 */ li          r0, 0
/* 80587A90 FC1E0040 */ fcmpo       cr0, f30, f0
/* 80587A94 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 80587A98 40820018 */ bne-        lbl_80587ab0
/* 80587A9C C01F000C */ lfs         f0, 0xc(r31)
/* 80587AA0 FC1E0040 */ fcmpo       cr0, f30, f0
/* 80587AA4 4C411382 */ cror        cr0eq, cr0gt, cr0eq
/* 80587AA8 40820008 */ bne-        lbl_80587ab0
/* 80587AAC 38000001 */ li          r0, 1
lbl_80587ab0:
/* 80587AB0 2C000000 */ cmpwi       r0, 0
/* 80587AB4 40820020 */ bne-        lbl_80587ad4
/* 80587AB8 3C60808B */ lis         r3, lbl_808b5844@ha
/* 80587ABC 3CA0808B */ lis         r5, lbl_808b5818@ha
/* 80587AC0 38635844 */ addi        r3, r3, lbl_808b5844@l
/* 80587AC4 388000F3 */ li          r4, 0xf3
/* 80587AC8 38A55818 */ addi        r5, r5, lbl_808b5818@l
/* 80587ACC 4CC63182 */ crclr       cr1eq
/* 80587AD0 4BA9E4E1 */ bl          Panic
lbl_80587ad4:
/* 80587AD4 FC20F090 */ fmr         f1, f30
/* 80587AD8 4BA94105 */ bl          acos
/* 80587ADC FC200818 */ frsp        f1, f1
/* 80587AE0 C01F0000 */ lfs         f0, 0(r31)
/* 80587AE4 FC010040 */ fcmpo       cr0, f1, f0
/* 80587AE8 40810008 */ ble-        lbl_80587af0
/* 80587AEC EFBF0824 */ fdivs       f29, f31, f1
lbl_80587af0:
/* 80587AF0 C01F0040 */ lfs         f0, 0x40(r31)
/* 80587AF4 FC1D0040 */ fcmpo       cr0, f29, f0
/* 80587AF8 40810008 */ ble-        lbl_80587b00
/* 80587AFC FFA00090 */ fmr         f29, f0
lbl_80587b00:
/* 80587B00 FC20E890 */ fmr         f1, f29
/* 80587B04 E3E10038 */ psq_l       f31, 0x38(r1), 0, 0
/* 80587B08 CBE10030 */ lfd         f31, 0x30(r1)
/* 80587B0C E3C10028 */ psq_l       f30, 0x28(r1), 0, 0
/* 80587B10 CBC10020 */ lfd         f30, 0x20(r1)
/* 80587B14 E3A10018 */ psq_l       f29, 0x18(r1), 0, 0
/* 80587B18 CBA10010 */ lfd         f29, 0x10(r1)
/* 80587B1C 83E1000C */ lwz         r31, 0xc(r1)
/* 80587B20 80010044 */ lwz         r0, 0x44(r1)
/* 80587B24 7C0803A6 */ mtlr        r0
/* 80587B28 38210040 */ addi        r1, r1, 0x40
/* 80587B2C 4E800020 */ blr         