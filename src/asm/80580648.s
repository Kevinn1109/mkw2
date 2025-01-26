nofralloc
/* 80580648 9421FFF0 */ stwu        r1, -0x10(r1)
/* 8058064C 7C0802A6 */ mflr        r0
/* 80580650 90010014 */ stw         r0, 0x14(r1)
/* 80580654 93E1000C */ stw         r31, 0xc(r1)
/* 80580658 7C7F1B78 */ mr          r31, r3
/* 8058065C 48010401 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80580660 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 80580664 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 80580668 80A421D0 */ lwz         r5, lbl_809c21d0@l(r4)
/* 8058066C 39000000 */ li          r8, 0
/* 80580670 7FE3FB78 */ mr          r3, r31
/* 80580674 38800264 */ li          r4, 0x264
/* 80580678 80E50068 */ lwz         r7, 0x68(r5)
/* 8058067C 38A00000 */ li          r5, 0
/* 80580680 38C00001 */ li          r6, 1
/* 80580684 7CE7002E */ lwzx        r7, r7, r0
/* 80580688 91070050 */ stw         r8, 0x50(r7)
/* 8058068C 480000ED */ bl          PlayerSub10_applyLightningEffect
/* 80580690 80010014 */ lwz         r0, 0x14(r1)
/* 80580694 83E1000C */ lwz         r31, 0xc(r1)
/* 80580698 7C0803A6 */ mtlr        r0
/* 8058069C 38210010 */ addi        r1, r1, 0x10
/* 805806A0 4E800020 */ blr         