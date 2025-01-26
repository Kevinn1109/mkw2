nofralloc
/* 806024B0 9421FFE0 */ stwu        r1, -0x20(r1)
/* 806024B4 7C0802A6 */ mflr        r0
/* 806024B8 3CC0809C */ lis         r6, lbl_809c1e38@ha
/* 806024BC 90010024 */ stw         r0, 0x24(r1)
/* 806024C0 DBE10018 */ stfd        f31, 0x18(r1)
/* 806024C4 FFE00890 */ fmr         f31, f1
/* 806024C8 93E10014 */ stw         r31, 0x14(r1)
/* 806024CC 7CBF2B78 */ mr          r31, r5
/* 806024D0 93C10010 */ stw         r30, 0x10(r1)
/* 806024D4 7C7E1B78 */ mr          r30, r3
/* 806024D8 80661E38 */ lwz         r3, lbl_809c1e38@l(r6)
/* 806024DC 48033561 */ bl          SectionManager_setNextSection
/* 806024E0 2C1FFFFF */ cmpwi       r31, -1
/* 806024E4 41820008 */ beq-        lbl_806024ec
/* 806024E8 93FE0010 */ stw         r31, 0x10(r30)
lbl_806024ec:
/* 806024EC FC00F81E */ fctiwz      f0, f31
/* 806024F0 38000001 */ li          r0, 1
/* 806024F4 D3FE0018 */ stfs        f31, 0x18(r30)
/* 806024F8 3C60809C */ lis         r3, lbl_809c1e38@ha
/* 806024FC 38A000FF */ li          r5, 0xff
/* 80602500 981E000C */ stb         r0, 0xc(r30)
/* 80602504 D8010008 */ stfd        f0, 8(r1)
/* 80602508 80631E38 */ lwz         r3, lbl_809c1e38@l(r3)
/* 8060250C 8081000C */ lwz         r4, 0xc(r1)
/* 80602510 480335B9 */ bl          SectionManager_startChangeSection
/* 80602514 80010024 */ lwz         r0, 0x24(r1)
/* 80602518 CBE10018 */ lfd         f31, 0x18(r1)
/* 8060251C 83E10014 */ lwz         r31, 0x14(r1)
/* 80602520 83C10010 */ lwz         r30, 0x10(r1)
/* 80602524 7C0803A6 */ mtlr        r0
/* 80602528 38210020 */ addi        r1, r1, 0x20
/* 8060252C 4E800020 */ blr         