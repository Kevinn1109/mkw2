nofralloc
/* 806DD9D8 9421FFF0 */ stwu        r1, -0x10(r1)
/* 806DD9DC 7C0802A6 */ mflr        r0
/* 806DD9E0 3C60808A */ lis         r3, lbl_808a0458@ha
/* 806DD9E4 90010014 */ stw         r0, 0x14(r1)
/* 806DD9E8 C0030458 */ lfs         f0, lbl_808a0458@l(r3)
/* 806DD9EC 93E1000C */ stw         r31, 0xc(r1)
/* 806DD9F0 7CBF2B78 */ mr          r31, r5
/* 806DD9F4 D0070008 */ stfs        f0, 8(r7)
/* 806DD9F8 D0070004 */ stfs        f0, 4(r7)
/* 806DD9FC D0070000 */ stfs        f0, 0(r7)
/* 806DDA00 80640000 */ lwz         r3, 0(r4)
/* 806DDA04 80630004 */ lwz         r3, 4(r3)
/* 806DDA08 80030004 */ lwz         r0, 4(r3)
/* 806DDA0C 5400035B */ rlwinm.     r0, r0, 0, 0xd, 0xd
/* 806DDA10 41820028 */ beq-        lbl_806dda38
/* 806DDA14 7C832378 */ mr          r3, r4
/* 806DDA18 4BEB3045 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 806DDA1C 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 806DDA20 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 806DDA24 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 806DDA28 80630068 */ lwz         r3, 0x68(r3)
/* 806DDA2C 7C63002E */ lwzx        r3, r3, r0
/* 806DDA30 4BFCD90D */ bl          unk_806ab33c
/* 806DDA34 48000008 */ b           lbl_806dda3c
lbl_806dda38:
/* 806DDA38 3BE00000 */ li          r31, 0
lbl_806dda3c:
/* 806DDA3C 7FE3FB78 */ mr          r3, r31
/* 806DDA40 83E1000C */ lwz         r31, 0xc(r1)
/* 806DDA44 80010014 */ lwz         r0, 0x14(r1)
/* 806DDA48 7C0803A6 */ mtlr        r0
/* 806DDA4C 38210010 */ addi        r1, r1, 0x10
/* 806DDA50 4E800020 */ blr         