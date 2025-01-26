nofralloc
/* 80579F6C 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80579F70 7C0802A6 */ mflr        r0
/* 80579F74 3CA08089 */ lis         r5, lbl_80891a00@ha
/* 80579F78 90010014 */ stw         r0, 0x14(r1)
/* 80579F7C 38000000 */ li          r0, 0
/* 80579F80 C0051A00 */ lfs         f0, lbl_80891a00@l(r5)
/* 80579F84 93E1000C */ stw         r31, 0xc(r1)
/* 80579F88 7C9F2378 */ mr          r31, r4
/* 80579F8C 80C30000 */ lwz         r6, 0(r3)
/* 80579F90 80A60004 */ lwz         r5, 4(r6)
/* 80579F94 8085000C */ lwz         r4, 0xc(r5)
/* 80579F98 60840004 */ ori         r4, r4, 4
/* 80579F9C 9085000C */ stw         r4, 0xc(r5)
/* 80579FA0 B003023C */ sth         r0, 0x23c(r3)
/* 80579FA4 D0030240 */ stfs        f0, 0x240(r3)
/* 80579FA8 48016AB5 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80579FAC 3C80809C */ lis         r4, lbl_809c3618@ha
/* 80579FB0 5460063E */ clrlwi      r0, r3, 0x18
/* 80579FB4 80643618 */ lwz         r3, lbl_809c3618@l(r4)
/* 80579FB8 1C000248 */ mulli       r0, r0, 0x248
/* 80579FBC 7FE5FB78 */ mr          r5, r31
/* 80579FC0 80630014 */ lwz         r3, 0x14(r3)
/* 80579FC4 38800001 */ li          r4, 1
/* 80579FC8 7C630214 */ add         r3, r3, r0
/* 80579FCC 4821EB5D */ bl          unk_80798b28
/* 80579FD0 80010014 */ lwz         r0, 0x14(r1)
/* 80579FD4 83E1000C */ lwz         r31, 0xc(r1)
/* 80579FD8 7C0803A6 */ mtlr        r0
/* 80579FDC 38210010 */ addi        r1, r1, 0x10
/* 80579FE0 4E800020 */ blr         