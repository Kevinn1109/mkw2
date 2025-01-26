nofralloc
/* 805805EC 9421FFF0 */ stwu        r1, -0x10(r1)
/* 805805F0 7C0802A6 */ mflr        r0
/* 805805F4 90010014 */ stw         r0, 0x14(r1)
/* 805805F8 93E1000C */ stw         r31, 0xc(r1)
/* 805805FC 7C7F1B78 */ mr          r31, r3
/* 80580600 4801045D */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80580604 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 80580608 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 8058060C 80A421D0 */ lwz         r5, lbl_809c21d0@l(r4)
/* 80580610 39000000 */ li          r8, 0
/* 80580614 7FE3FB78 */ mr          r3, r31
/* 80580618 38800264 */ li          r4, 0x264
/* 8058061C 80E50068 */ lwz         r7, 0x68(r5)
/* 80580620 38A00000 */ li          r5, 0
/* 80580624 38C00001 */ li          r6, 1
/* 80580628 7CE7002E */ lwzx        r7, r7, r0
/* 8058062C 91070050 */ stw         r8, 0x50(r7)
/* 80580630 48000149 */ bl          PlayerSub10_applyLightningEffect
/* 80580634 80010014 */ lwz         r0, 0x14(r1)
/* 80580638 83E1000C */ lwz         r31, 0xc(r1)
/* 8058063C 7C0803A6 */ mtlr        r0
/* 80580640 38210010 */ addi        r1, r1, 0x10
/* 80580644 4E800020 */ blr         