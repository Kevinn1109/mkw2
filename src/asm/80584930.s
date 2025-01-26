nofralloc
/* 80584930 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80584934 7C0802A6 */ mflr        r0
/* 80584938 90010014 */ stw         r0, 0x14(r1)
/* 8058493C 93E1000C */ stw         r31, 0xc(r1)
/* 80584940 7C7F1B78 */ mr          r31, r3
/* 80584944 4BFFF701 */ bl          PlayerSub10_setInitialPhysicsValues
/* 80584948 7FE3FB78 */ mr          r3, r31
/* 8058494C 4800C4DD */ bl          unk_80590e28
/* 80584950 7FE3FB78 */ mr          r3, r31
/* 80584954 4800C109 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80584958 3C80809C */ lis         r4, lbl_809c3618@ha
/* 8058495C 5460063E */ clrlwi      r0, r3, 0x18
/* 80584960 80643618 */ lwz         r3, lbl_809c3618@l(r4)
/* 80584964 1C000248 */ mulli       r0, r0, 0x248
/* 80584968 38800000 */ li          r4, 0
/* 8058496C 80630014 */ lwz         r3, 0x14(r3)
/* 80584970 7C630214 */ add         r3, r3, r0
/* 80584974 48213ED5 */ bl          unk_80798848
/* 80584978 80010014 */ lwz         r0, 0x14(r1)
/* 8058497C 83E1000C */ lwz         r31, 0xc(r1)
/* 80584980 7C0803A6 */ mtlr        r0
/* 80584984 38210010 */ addi        r1, r1, 0x10
/* 80584988 4E800020 */ blr         