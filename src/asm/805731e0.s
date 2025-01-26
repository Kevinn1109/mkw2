nofralloc
/* 805731E0 9421FFF0 */ stwu        r1, -0x10(r1)
/* 805731E4 7C0802A6 */ mflr        r0
/* 805731E8 38630004 */ addi        r3, r3, 4
/* 805731EC 90010014 */ stw         r0, 0x14(r1)
/* 805731F0 4801D86D */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 805731F4 3C80809C */ lis         r4, lbl_809c3618@ha
/* 805731F8 5460063E */ clrlwi      r0, r3, 0x18
/* 805731FC 80643618 */ lwz         r3, lbl_809c3618@l(r4)
/* 80573200 1C000248 */ mulli       r0, r0, 0x248
/* 80573204 80630014 */ lwz         r3, 0x14(r3)
/* 80573208 7C630214 */ add         r3, r3, r0
/* 8057320C 48225441 */ bl          ItemHolderPlayer_activateMushroom
/* 80573210 80010014 */ lwz         r0, 0x14(r1)
/* 80573214 3860FFFF */ li          r3, -1
/* 80573218 7C0803A6 */ mtlr        r0
/* 8057321C 38210010 */ addi        r1, r1, 0x10
/* 80573220 4E800020 */ blr         