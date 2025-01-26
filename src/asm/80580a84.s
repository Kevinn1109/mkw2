nofralloc
/* 80580A84 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80580A88 7C0802A6 */ mflr        r0
/* 80580A8C 90010014 */ stw         r0, 0x14(r1)
/* 80580A90 93E1000C */ stw         r31, 0xc(r1)
/* 80580A94 7C9F2378 */ mr          r31, r4
/* 80580A98 93C10008 */ stw         r30, 8(r1)
/* 80580A9C 7C7E1B78 */ mr          r30, r3
/* 80580AA0 80A30000 */ lwz         r5, 0(r3)
/* 80580AA4 80850004 */ lwz         r4, 4(r5)
/* 80580AA8 8004000C */ lwz         r0, 0xc(r4)
/* 80580AAC 5400066E */ rlwinm      r0, r0, 0, 0x19, 0x17
/* 80580AB0 9004000C */ stw         r0, 0xc(r4)
/* 80580AB4 4800FCE1 */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 80580AB8 81830000 */ lwz         r12, 0(r3)
/* 80580ABC 3C808089 */ lis         r4, lbl_80891a00@ha
/* 80580AC0 C0241A00 */ lfs         f1, lbl_80891a00@l(r4)
/* 80580AC4 38800116 */ li          r4, 0x116
/* 80580AC8 818C00E0 */ lwz         r12, 0xe0(r12)
/* 80580ACC 7D8903A6 */ mtctr       r12
/* 80580AD0 4E800421 */ bctrl       
/* 80580AD4 38000000 */ li          r0, 0
/* 80580AD8 B01E018C */ sth         r0, 0x18c(r30)
/* 80580ADC 807E0260 */ lwz         r3, 0x260(r30)
/* 80580AE0 38800000 */ li          r4, 0
/* 80580AE4 4BFEA685 */ bl          unk_8056b168
/* 80580AE8 2C1F0000 */ cmpwi       r31, 0
/* 80580AEC 41820010 */ beq-        lbl_80580afc
/* 80580AF0 3C608089 */ lis         r3, lbl_80891a04@ha
/* 80580AF4 C0031A04 */ lfs         f0, lbl_80891a04@l(r3)
/* 80580AF8 D01E0178 */ stfs        f0, 0x178(r30)
lbl_80580afc:
/* 80580AFC 80010014 */ lwz         r0, 0x14(r1)
/* 80580B00 83E1000C */ lwz         r31, 0xc(r1)
/* 80580B04 83C10008 */ lwz         r30, 8(r1)
/* 80580B08 7C0803A6 */ mtlr        r0
/* 80580B0C 38210010 */ addi        r1, r1, 0x10
/* 80580B10 4E800020 */ blr         