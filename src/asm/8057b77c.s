nofralloc
/* 8057B77C 9421FFE0 */ stwu        r1, -0x20(r1)
/* 8057B780 7C0802A6 */ mflr        r0
/* 8057B784 90010024 */ stw         r0, 0x24(r1)
/* 8057B788 DBE10010 */ stfd        f31, 0x10(r1)
/* 8057B78C F3E10018 */ psq_st      f31, 0x18(r1), 0, 0
/* 8057B790 3CA08089 */ lis         r5, lbl_80891a04@ha
/* 8057B794 C3E51A04 */ lfs         f31, lbl_80891a04@l(r5)
/* 8057B798 93E1000C */ stw         r31, 0xc(r1)
/* 8057B79C 7C9F2378 */ mr          r31, r4
/* 8057B7A0 93C10008 */ stw         r30, 8(r1)
/* 8057B7A4 7C7E1B78 */ mr          r30, r3
/* 8057B7A8 8183000C */ lwz         r12, 0xc(r3)
/* 8057B7AC 818C0068 */ lwz         r12, 0x68(r12)
/* 8057B7B0 7D8903A6 */ mtctr       r12
/* 8057B7B4 4E800421 */ bctrl       
/* 8057B7B8 807E0000 */ lwz         r3, 0(r30)
/* 8057B7BC 38800001 */ li          r4, 1
/* 8057B7C0 80630004 */ lwz         r3, 4(r3)
/* 8057B7C4 80630008 */ lwz         r3, 8(r3)
/* 8057B7C8 546004E7 */ rlwinm.     r0, r3, 0, 0x13, 0x13
/* 8057B7CC 4082000C */ bne-        lbl_8057b7d8
/* 8057B7D0 5460056B */ rlwinm.     r0, r3, 0, 0x15, 0x15
/* 8057B7D4 41820008 */ beq-        lbl_8057b7dc
lbl_8057b7d8:
/* 8057B7D8 38800000 */ li          r4, 0
lbl_8057b7dc:
/* 8057B7DC 2C040000 */ cmpwi       r4, 0
/* 8057B7E0 41820068 */ beq-        lbl_8057b848
/* 8057B7E4 C07E0074 */ lfs         f3, 0x74(r30)
/* 8057B7E8 3C608089 */ lis         r3, lbl_80891a00@ha
/* 8057B7EC C05F0000 */ lfs         f2, 0(r31)
/* 8057B7F0 C03E0078 */ lfs         f1, 0x78(r30)
/* 8057B7F4 C01F0004 */ lfs         f0, 4(r31)
/* 8057B7F8 EC4300B2 */ fmuls       f2, f3, f2
/* 8057B7FC C09E007C */ lfs         f4, 0x7c(r30)
/* 8057B800 EC010032 */ fmuls       f0, f1, f0
/* 8057B804 C07F0008 */ lfs         f3, 8(r31)
/* 8057B808 C0231A00 */ lfs         f1, lbl_80891a00@l(r3)
/* 8057B80C EC6400F2 */ fmuls       f3, f4, f3
/* 8057B810 EC02002A */ fadds       f0, f2, f0
/* 8057B814 EC43002A */ fadds       f2, f3, f0
/* 8057B818 FC020840 */ fcmpo       cr0, f2, f1
/* 8057B81C 40800020 */ bge-        lbl_8057b83c
/* 8057B820 3C608089 */ lis         r3, lbl_80891a04@ha
/* 8057B824 C0031A04 */ lfs         f0, lbl_80891a04@l(r3)
/* 8057B828 EC40102A */ fadds       f2, f0, f2
/* 8057B82C FC011040 */ fcmpo       cr0, f1, f2
/* 8057B830 40810008 */ ble-        lbl_8057b838
/* 8057B834 48000008 */ b           lbl_8057b83c
lbl_8057b838:
/* 8057B838 FC001040 */ fcmpo       cr0, f0, f2
lbl_8057b83c:
/* 8057B83C C01E0020 */ lfs         f0, 0x20(r30)
/* 8057B840 EC0007F2 */ fmuls       f0, f0, f31
/* 8057B844 D01E0020 */ stfs        f0, 0x20(r30)
lbl_8057b848:
/* 8057B848 E3E10018 */ psq_l       f31, 0x18(r1), 0, 0
/* 8057B84C 80010024 */ lwz         r0, 0x24(r1)
/* 8057B850 CBE10010 */ lfd         f31, 0x10(r1)
/* 8057B854 83E1000C */ lwz         r31, 0xc(r1)
/* 8057B858 83C10008 */ lwz         r30, 8(r1)
/* 8057B85C 7C0803A6 */ mtlr        r0
/* 8057B860 38210020 */ addi        r1, r1, 0x20
/* 8057B864 4E800020 */ blr         