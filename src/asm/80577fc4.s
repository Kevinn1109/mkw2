nofralloc
/* 80577FC4 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80577FC8 7C0802A6 */ mflr        r0
/* 80577FCC 90010024 */ stw         r0, 0x24(r1)
/* 80577FD0 93E1001C */ stw         r31, 0x1c(r1)
/* 80577FD4 7C7F1B78 */ mr          r31, r3
/* 80577FD8 93C10018 */ stw         r30, 0x18(r1)
/* 80577FDC 93A10014 */ stw         r29, 0x14(r1)
/* 80577FE0 3FA08089 */ lis         r29, lbl_80891a00@ha
/* 80577FE4 3BBD1A00 */ addi        r29, r29, lbl_80891a00@l
/* 80577FE8 93810010 */ stw         r28, 0x10(r1)
/* 80577FEC 480181A1 */ bl          __ct__Q24Kart15KartObjectProxyFv
/* 80577FF0 C03D0004 */ lfs         f1, 4(r29)
/* 80577FF4 3C60808B */ lis         r3, lbl_808b5f60@ha
/* 80577FF8 3BC00000 */ li          r30, 0
/* 80577FFC C01D000C */ lfs         f0, 0xc(r29)
/* 80578000 3C80808B */ lis         r4, lbl_808b5fd8@ha
/* 80578004 38635F60 */ addi        r3, r3, lbl_808b5f60@l
/* 80578008 38845FD8 */ addi        r4, r4, lbl_808b5fd8@l
/* 8057800C 3B9F0130 */ addi        r28, r31, 0x130
/* 80578010 907F000C */ stw         r3, 0xc(r31)
/* 80578014 7F83E378 */ mr          r3, r28
/* 80578018 909F0108 */ stw         r4, 0x108(r31)
/* 8057801C B3DF0118 */ sth         r30, 0x118(r31)
/* 80578020 B3DF010C */ sth         r30, 0x10c(r31)
/* 80578024 B3DF010E */ sth         r30, 0x10e(r31)
/* 80578028 B3DF0110 */ sth         r30, 0x110(r31)
/* 8057802C B3DF0112 */ sth         r30, 0x112(r31)
/* 80578030 B3DF0114 */ sth         r30, 0x114(r31)
/* 80578034 B3DF0116 */ sth         r30, 0x116(r31)
/* 80578038 D03F011C */ stfs        f1, 0x11c(r31)
/* 8057803C D03F0120 */ stfs        f1, 0x120(r31)
/* 80578040 D01F0128 */ stfs        f0, 0x128(r31)
/* 80578044 48018149 */ bl          __ct__Q24Kart15KartObjectProxyFv
/* 80578048 C01D0004 */ lfs         f0, 4(r29)
/* 8057804C 3C60808B */ lis         r3, lbl_808b5fcc@ha
/* 80578050 C03D0000 */ lfs         f1, 0(r29)
/* 80578054 38635FCC */ addi        r3, r3, lbl_808b5fcc@l
/* 80578058 3BBF0264 */ addi        r29, r31, 0x264
/* 8057805C 907C000C */ stw         r3, 0xc(r28)
/* 80578060 7FA3EB78 */ mr          r3, r29
/* 80578064 D03C0010 */ stfs        f1, 0x10(r28)
/* 80578068 D01F0164 */ stfs        f0, 0x164(r31)
/* 8057806C D01F0168 */ stfs        f0, 0x168(r31)
/* 80578070 D01F016C */ stfs        f0, 0x16c(r31)
/* 80578074 D01F0170 */ stfs        f0, 0x170(r31)
/* 80578078 D01F0174 */ stfs        f0, 0x174(r31)
/* 8057807C D01F0178 */ stfs        f0, 0x178(r31)
/* 80578080 D01F0184 */ stfs        f0, 0x184(r31)
/* 80578084 93DF0250 */ stw         r30, 0x250(r31)
/* 80578088 B3DF0254 */ sth         r30, 0x254(r31)
/* 8057808C 48018101 */ bl          __ct__Q24Kart15KartObjectProxyFv
/* 80578090 3C80808B */ lis         r4, lbl_808b5fe4@ha
/* 80578094 3C60808B */ lis         r3, lbl_808b5cd4@ha
/* 80578098 38845FE4 */ addi        r4, r4, lbl_808b5fe4@l
/* 8057809C 909D000C */ stw         r4, 0xc(r29)
/* 805780A0 3CA0809C */ lis         r5, spInstance__Q26System10RaceConfig@ha
/* 805780A4 38635CD4 */ addi        r3, r3, lbl_808b5cd4@l
/* 805780A8 8085D728 */ lwz         r4, spInstance__Q26System10RaceConfig@l(r5)
/* 805780AC 80040B6C */ lwz         r0, 0xb6c(r4)
/* 805780B0 5400103A */ slwi        r0, r0, 2
/* 805780B4 7C03042E */ lfsx        f0, r3, r0
/* 805780B8 D01F0010 */ stfs        f0, 0x10(r31)
/* 805780BC 8065D728 */ lwz         r3, spInstance__Q26System10RaceConfig@l(r5)
/* 805780C0 80630B70 */ lwz         r3, 0xb70(r3)
/* 805780C4 3803FFFD */ addi        r0, r3, -3
/* 805780C8 28000007 */ cmplwi      r0, 7
/* 805780CC 41810018 */ bgt-        lbl_805780e4
/* 805780D0 38600001 */ li          r3, 1
/* 805780D4 7C600030 */ slw         r0, r3, r0
/* 805780D8 700000C1 */ andi.       r0, r0, 0xc1
/* 805780DC 41820008 */ beq-        lbl_805780e4
/* 805780E0 7C7E1B78 */ mr          r30, r3
lbl_805780e4:
/* 805780E4 2C1E0000 */ cmpwi       r30, 0
/* 805780E8 41820010 */ beq-        lbl_805780f8
/* 805780EC 3C60808B */ lis         r3, lbl_808b5ce0@ha
/* 805780F0 C0035CE0 */ lfs         f0, lbl_808b5ce0@l(r3)
/* 805780F4 D01F0010 */ stfs        f0, 0x10(r31)
lbl_805780f8:
/* 805780F8 7FE3FB78 */ mr          r3, r31
/* 805780FC 83E1001C */ lwz         r31, 0x1c(r1)
/* 80578100 83C10018 */ lwz         r30, 0x18(r1)
/* 80578104 83A10014 */ lwz         r29, 0x14(r1)
/* 80578108 83810010 */ lwz         r28, 0x10(r1)
/* 8057810C 80010024 */ lwz         r0, 0x24(r1)
/* 80578110 7C0803A6 */ mtlr        r0
/* 80578114 38210020 */ addi        r1, r1, 0x20
/* 80578118 4E800020 */ blr         