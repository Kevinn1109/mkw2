nofralloc
/* 80580B14 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80580B18 7C0802A6 */ mflr        r0
/* 80580B1C 90010024 */ stw         r0, 0x24(r1)
/* 80580B20 DBE10010 */ stfd        f31, 0x10(r1)
/* 80580B24 F3E10018 */ psq_st      f31, 0x18(r1), 0, 0
/* 80580B28 3C80808B */ lis         r4, lbl_808b59c4@ha
/* 80580B2C 93E1000C */ stw         r31, 0xc(r1)
/* 80580B30 7C7F1B78 */ mr          r31, r3
/* 80580B34 80A30000 */ lwz         r5, 0(r3)
/* 80580B38 80A50004 */ lwz         r5, 4(r5)
/* 80580B3C 8005000C */ lwz         r0, 0xc(r5)
/* 80580B40 60008000 */ ori         r0, r0, 0x8000
/* 80580B44 9005000C */ stw         r0, 0xc(r5)
/* 80580B48 A80459C4 */ lha         r0, lbl_808b59c4@l(r4)
/* 80580B4C B0030194 */ sth         r0, 0x194(r3)
/* 80580B50 4800FF0D */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80580B54 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 80580B58 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 80580B5C 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 80580B60 80630068 */ lwz         r3, 0x68(r3)
/* 80580B64 7C63002E */ lwzx        r3, r3, r0
/* 80580B68 4812A041 */ bl          unk_806aaba8
/* 80580B6C 7FE3FB78 */ mr          r3, r31
/* 80580B70 38800002 */ li          r4, 2
/* 80580B74 4800FC3D */ bl          unk_805907b0
/* 80580B78 7FE3FB78 */ mr          r3, r31
/* 80580B7C 4800FCF9 */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 80580B80 C3E30184 */ lfs         f31, 0x184(r3)
/* 80580B84 7FE3FB78 */ mr          r3, r31
/* 80580B88 4800FBDD */ bl          kartPhysicsEngine__Q24Kart15KartObjectProxyFv
/* 80580B8C FC20F890 */ fmr         f1, f31
/* 80580B90 480177A9 */ bl          unk_80598338
/* 80580B94 7FE3FB78 */ mr          r3, r31
/* 80580B98 4800FBFD */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 80580B9C 81830000 */ lwz         r12, 0(r3)
/* 80580BA0 3C808089 */ lis         r4, lbl_80891a00@ha
/* 80580BA4 C0241A00 */ lfs         f1, lbl_80891a00@l(r4)
/* 80580BA8 38800111 */ li          r4, 0x111
/* 80580BAC 818C00E0 */ lwz         r12, 0xe0(r12)
/* 80580BB0 7D8903A6 */ mtctr       r12
/* 80580BB4 4E800421 */ bctrl       
/* 80580BB8 7FE3FB78 */ mr          r3, r31
/* 80580BBC 4800FBD9 */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 80580BC0 880300E0 */ lbz         r0, 0xe0(r3)
/* 80580BC4 2C000000 */ cmpwi       r0, 0
/* 80580BC8 41820014 */ beq-        lbl_80580bdc
/* 80580BCC 3C60809C */ lis         r3, lbl_809c27f0@ha
/* 80580BD0 38800000 */ li          r4, 0
/* 80580BD4 806327F0 */ lwz         r3, lbl_809c27f0@l(r3)
/* 80580BD8 4818F2D9 */ bl          unk_8070feb0
lbl_80580bdc:
/* 80580BDC 809F0000 */ lwz         r4, 0(r31)
/* 80580BE0 80640004 */ lwz         r3, 4(r4)
/* 80580BE4 8003000C */ lwz         r0, 0xc(r3)
/* 80580BE8 54000631 */ rlwinm.     r0, r0, 0, 0x18, 0x18
/* 80580BEC 4182004C */ beq-        lbl_80580c38
/* 80580BF0 80840004 */ lwz         r4, 4(r4)
/* 80580BF4 7FE3FB78 */ mr          r3, r31
/* 80580BF8 8004000C */ lwz         r0, 0xc(r4)
/* 80580BFC 5400066E */ rlwinm      r0, r0, 0, 0x19, 0x17
/* 80580C00 9004000C */ stw         r0, 0xc(r4)
/* 80580C04 4800FB91 */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 80580C08 81830000 */ lwz         r12, 0(r3)
/* 80580C0C 3C808089 */ lis         r4, lbl_80891a00@ha
/* 80580C10 C0241A00 */ lfs         f1, lbl_80891a00@l(r4)
/* 80580C14 38800116 */ li          r4, 0x116
/* 80580C18 818C00E0 */ lwz         r12, 0xe0(r12)
/* 80580C1C 7D8903A6 */ mtctr       r12
/* 80580C20 4E800421 */ bctrl       
/* 80580C24 38000000 */ li          r0, 0
/* 80580C28 B01F018C */ sth         r0, 0x18c(r31)
/* 80580C2C 807F0260 */ lwz         r3, 0x260(r31)
/* 80580C30 38800000 */ li          r4, 0
/* 80580C34 4BFEA535 */ bl          unk_8056b168
lbl_80580c38:
/* 80580C38 809F0000 */ lwz         r4, 0(r31)
/* 80580C3C 80640004 */ lwz         r3, 4(r4)
/* 80580C40 8003000C */ lwz         r0, 0xc(r3)
/* 80580C44 540003DF */ rlwinm.     r0, r0, 0, 0xf, 0xf
/* 80580C48 41820040 */ beq-        lbl_80580c88
/* 80580C4C 80840004 */ lwz         r4, 4(r4)
/* 80580C50 7FE3FB78 */ mr          r3, r31
/* 80580C54 8004000C */ lwz         r0, 0xc(r4)
/* 80580C58 5400041A */ rlwinm      r0, r0, 0, 0x10, 0xd
/* 80580C5C 9004000C */ stw         r0, 0xc(r4)
/* 80580C60 4800FB35 */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 80580C64 81830000 */ lwz         r12, 0(r3)
/* 80580C68 3C808089 */ lis         r4, lbl_80891a00@ha
/* 80580C6C C0241A00 */ lfs         f1, lbl_80891a00@l(r4)
/* 80580C70 388001A5 */ li          r4, 0x1a5
/* 80580C74 818C00E0 */ lwz         r12, 0xe0(r12)
/* 80580C78 7D8903A6 */ mtctr       r12
/* 80580C7C 4E800421 */ bctrl       
/* 80580C80 807F0260 */ lwz         r3, 0x260(r31)
/* 80580C84 4BFEA411 */ bl          unk_8056b094
lbl_80580c88:
/* 80580C88 7FE3FB78 */ mr          r3, r31
/* 80580C8C 38800014 */ li          r4, 0x14
/* 80580C90 48010B31 */ bl          unk_805917c0
/* 80580C94 3C808089 */ lis         r4, lbl_80891a04@ha
/* 80580C98 7FE3FB78 */ mr          r3, r31
/* 80580C9C C0241A04 */ lfs         f1, lbl_80891a04@l(r4)
/* 80580CA0 3880001B */ li          r4, 0x1b
/* 80580CA4 38A00001 */ li          r5, 1
/* 80580CA8 4800F775 */ bl          unk_8059041c
/* 80580CAC 807F0260 */ lwz         r3, 0x260(r31)
/* 80580CB0 38800001 */ li          r4, 1
/* 80580CB4 4BFEA301 */ bl          unk_8056afb4
/* 80580CB8 38000000 */ li          r0, 0
/* 80580CBC 981F0196 */ stb         r0, 0x196(r31)
/* 80580CC0 E3E10018 */ psq_l       f31, 0x18(r1), 0, 0
/* 80580CC4 CBE10010 */ lfd         f31, 0x10(r1)
/* 80580CC8 83E1000C */ lwz         r31, 0xc(r1)
/* 80580CCC 80010024 */ lwz         r0, 0x24(r1)
/* 80580CD0 7C0803A6 */ mtlr        r0
/* 80580CD4 38210020 */ addi        r1, r1, 0x20
/* 80580CD8 4E800020 */ blr         