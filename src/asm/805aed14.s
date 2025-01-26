nofralloc
/* 805AED14 89840000 */ lbz         r12, 0(r4)
/* 805AED18 3D008089 */ lis         r8, lbl_80892540@ha
/* 805AED1C 88C50000 */ lbz         r6, 0(r5)
/* 805AED20 9421FFC0 */ stwu        r1, -0x40(r1)
/* 805AED24 7CCC3050 */ subf        r6, r12, r6
/* 805AED28 89640001 */ lbz         r11, 1(r4)
/* 805AED2C 93E1003C */ stw         r31, 0x3c(r1)
/* 805AED30 3FE04330 */ lis         r31, 0x4330
/* 805AED34 6CC78000 */ xoris       r7, r6, 0x8000
/* 805AED38 88050001 */ lbz         r0, 1(r5)
/* 805AED3C 93E10008 */ stw         r31, 8(r1)
/* 805AED40 7C0B0050 */ subf        r0, r11, r0
/* 805AED44 C8A82540 */ lfd         f5, lbl_80892540@l(r8)
/* 805AED48 6C068000 */ xoris       r6, r0, 0x8000
/* 805AED4C 90E1000C */ stw         r7, 0xc(r1)
/* 805AED50 89440002 */ lbz         r10, 2(r4)
/* 805AED54 C8010008 */ lfd         f0, 8(r1)
/* 805AED58 89240003 */ lbz         r9, 3(r4)
/* 805AED5C EC402828 */ fsubs       f2, f0, f5
/* 805AED60 88850002 */ lbz         r4, 2(r5)
/* 805AED64 88050003 */ lbz         r0, 3(r5)
/* 805AED68 7C8A2050 */ subf        r4, r10, r4
/* 805AED6C 93E10010 */ stw         r31, 0x10(r1)
/* 805AED70 7C090050 */ subf        r0, r9, r0
/* 805AED74 90C10014 */ stw         r6, 0x14(r1)
/* 805AED78 EC4100B2 */ fmuls       f2, f1, f2
/* 805AED7C 6C848000 */ xoris       r4, r4, 0x8000
/* 805AED80 6C008000 */ xoris       r0, r0, 0x8000
/* 805AED84 C8010010 */ lfd         f0, 0x10(r1)
/* 805AED88 FC80101E */ fctiwz      f4, f2
/* 805AED8C 9081000C */ stw         r4, 0xc(r1)
/* 805AED90 EC602828 */ fsubs       f3, f0, f5
/* 805AED94 90010014 */ stw         r0, 0x14(r1)
/* 805AED98 C8410008 */ lfd         f2, 8(r1)
/* 805AED9C C8010010 */ lfd         f0, 0x10(r1)
/* 805AEDA0 EC6100F2 */ fmuls       f3, f1, f3
/* 805AEDA4 EC422828 */ fsubs       f2, f2, f5
/* 805AEDA8 D8810018 */ stfd        f4, 0x18(r1)
/* 805AEDAC EC002828 */ fsubs       f0, f0, f5
/* 805AEDB0 FC60181E */ fctiwz      f3, f3
/* 805AEDB4 8001001C */ lwz         r0, 0x1c(r1)
/* 805AEDB8 EC4100B2 */ fmuls       f2, f1, f2
/* 805AEDBC EC010032 */ fmuls       f0, f1, f0
/* 805AEDC0 D8610020 */ stfd        f3, 0x20(r1)
/* 805AEDC4 7CCC0214 */ add         r6, r12, r0
/* 805AEDC8 FC20101E */ fctiwz      f1, f2
/* 805AEDCC 80010024 */ lwz         r0, 0x24(r1)
/* 805AEDD0 FC00001E */ fctiwz      f0, f0
/* 805AEDD4 D8210028 */ stfd        f1, 0x28(r1)
/* 805AEDD8 7CAB0214 */ add         r5, r11, r0
/* 805AEDDC D8010030 */ stfd        f0, 0x30(r1)
/* 805AEDE0 8081002C */ lwz         r4, 0x2c(r1)
/* 805AEDE4 99830000 */ stb         r12, 0(r3)
/* 805AEDE8 80010034 */ lwz         r0, 0x34(r1)
/* 805AEDEC 7C8A2214 */ add         r4, r10, r4
/* 805AEDF0 99630001 */ stb         r11, 1(r3)
/* 805AEDF4 7C090214 */ add         r0, r9, r0
/* 805AEDF8 98C30000 */ stb         r6, 0(r3)
/* 805AEDFC 98A30001 */ stb         r5, 1(r3)
/* 805AEE00 98830002 */ stb         r4, 2(r3)
/* 805AEE04 98030003 */ stb         r0, 3(r3)
/* 805AEE08 83E1003C */ lwz         r31, 0x3c(r1)
/* 805AEE0C 38210040 */ addi        r1, r1, 0x40
/* 805AEE10 4E800020 */ blr         