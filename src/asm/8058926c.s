nofralloc
/* 8058926C 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80589270 7C0802A6 */ mflr        r0
/* 80589274 90010014 */ stw         r0, 0x14(r1)
/* 80589278 93E1000C */ stw         r31, 0xc(r1)
/* 8058927C 93C10008 */ stw         r30, 8(r1)
/* 80589280 7C7E1B78 */ mr          r30, r3
/* 80589284 480077D9 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80589288 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 8058928C 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 80589290 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 80589294 80630068 */ lwz         r3, 0x68(r3)
/* 80589298 7C63002E */ lwzx        r3, r3, r0
/* 8058929C 4811ED05 */ bl          unk_806a7fa0
/* 805892A0 7FC3F378 */ mr          r3, r30
/* 805892A4 38800007 */ li          r4, 7
/* 805892A8 48007509 */ bl          unk_805907b0
/* 805892AC 7FC3F378 */ mr          r3, r30
/* 805892B0 480074E5 */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 805892B4 81830000 */ lwz         r12, 0(r3)
/* 805892B8 3FE08089 */ lis         r31, lbl_80891a00@ha
/* 805892BC C03F1A00 */ lfs         f1, lbl_80891a00@l(r31)
/* 805892C0 388001A8 */ li          r4, 0x1a8
/* 805892C4 818C00E0 */ lwz         r12, 0xe0(r12)
/* 805892C8 7D8903A6 */ mtctr       r12
/* 805892CC 4E800421 */ bctrl       
/* 805892D0 7FC3F378 */ mr          r3, r30
/* 805892D4 480074C1 */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 805892D8 81830000 */ lwz         r12, 0(r3)
/* 805892DC 388001A9 */ li          r4, 0x1a9
/* 805892E0 C03F1A00 */ lfs         f1, lbl_80891a00@l(r31)
/* 805892E4 818C00E0 */ lwz         r12, 0xe0(r12)
/* 805892E8 7D8903A6 */ mtctr       r12
/* 805892EC 4E800421 */ bctrl       
/* 805892F0 80010014 */ lwz         r0, 0x14(r1)
/* 805892F4 83E1000C */ lwz         r31, 0xc(r1)
/* 805892F8 83C10008 */ lwz         r30, 8(r1)
/* 805892FC 7C0803A6 */ mtlr        r0
/* 80589300 38210010 */ addi        r1, r1, 0x10
/* 80589304 4E800020 */ blr         