nofralloc
/* 8057EC28 9421FFE0 */ stwu        r1, -0x20(r1)
/* 8057EC2C 7C0802A6 */ mflr        r0
/* 8057EC30 90010024 */ stw         r0, 0x24(r1)
/* 8057EC34 DBE10010 */ stfd        f31, 0x10(r1)
/* 8057EC38 F3E10018 */ psq_st      f31, 0x18(r1), 0, 0
/* 8057EC3C 38A00000 */ li          r5, 0
/* 8057EC40 93E1000C */ stw         r31, 0xc(r1)
/* 8057EC44 7C7F1B78 */ mr          r31, r3
/* 8057EC48 90A300CC */ stw         r5, 0xcc(r3)
/* 8057EC4C 80830000 */ lwz         r4, 0(r3)
/* 8057EC50 90A300D0 */ stw         r5, 0xd0(r3)
/* 8057EC54 80840004 */ lwz         r4, 4(r4)
/* 8057EC58 80040004 */ lwz         r0, 4(r4)
/* 8057EC5C 54000356 */ rlwinm      r0, r0, 0, 0xd, 0xb
/* 8057EC60 90040004 */ stw         r0, 4(r4)
/* 8057EC64 80830000 */ lwz         r4, 0(r3)
/* 8057EC68 80840004 */ lwz         r4, 4(r4)
/* 8057EC6C 80040004 */ lwz         r0, 4(r4)
/* 8057EC70 54000776 */ rlwinm      r0, r0, 0, 0x1d, 0x1b
/* 8057EC74 90040004 */ stw         r0, 4(r4)
/* 8057EC78 B0A300FC */ sth         r5, 0xfc(r3)
/* 8057EC7C B0A30100 */ sth         r5, 0x100(r3)
/* 8057EC80 B0A300FE */ sth         r5, 0xfe(r3)
/* 8057EC84 48011BF1 */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 8057EC88 C3E30068 */ lfs         f31, 0x68(r3)
/* 8057EC8C 7FE3FB78 */ mr          r3, r31
/* 8057EC90 48012091 */ bl          kartAction__Q24Kart15KartObjectProxyFv
/* 8057EC94 A00300CC */ lhz         r0, 0xcc(r3)
/* 8057EC98 54000739 */ rlwinm.     r0, r0, 0, 0x1c, 0x1c
/* 8057EC9C 41820018 */ beq-        lbl_8057ecb4
/* 8057ECA0 3C608089 */ lis         r3, lbl_80891ac0@ha
/* 8057ECA4 C03F0020 */ lfs         f1, 0x20(r31)
/* 8057ECA8 C0031AC0 */ lfs         f0, lbl_80891ac0@l(r3)
/* 8057ECAC FC010040 */ fcmpo       cr0, f1, f0
/* 8057ECB0 41810054 */ bgt-        lbl_8057ed04
lbl_8057ecb4:
/* 8057ECB4 3C608089 */ lis         r3, lbl_80891a00@ha
/* 8057ECB8 C01F009C */ lfs         f0, 0x9c(r31)
/* 8057ECBC C0231A00 */ lfs         f1, lbl_80891a00@l(r3)
/* 8057ECC0 FC000840 */ fcmpo       cr0, f0, f1
/* 8057ECC4 40810018 */ ble-        lbl_8057ecdc
/* 8057ECC8 EC00F828 */ fsubs       f0, f0, f31
/* 8057ECCC D01F009C */ stfs        f0, 0x9c(r31)
/* 8057ECD0 FC000840 */ fcmpo       cr0, f0, f1
/* 8057ECD4 40800008 */ bge-        lbl_8057ecdc
/* 8057ECD8 D03F009C */ stfs        f1, 0x9c(r31)
lbl_8057ecdc:
/* 8057ECDC 3C608089 */ lis         r3, lbl_80891a00@ha
/* 8057ECE0 C01F009C */ lfs         f0, 0x9c(r31)
/* 8057ECE4 C0231A00 */ lfs         f1, lbl_80891a00@l(r3)
/* 8057ECE8 FC000840 */ fcmpo       cr0, f0, f1
/* 8057ECEC 40800018 */ bge-        lbl_8057ed04
/* 8057ECF0 EC00F82A */ fadds       f0, f0, f31
/* 8057ECF4 D01F009C */ stfs        f0, 0x9c(r31)
/* 8057ECF8 FC000840 */ fcmpo       cr0, f0, f1
/* 8057ECFC 40810008 */ ble-        lbl_8057ed04
/* 8057ED00 D03F009C */ stfs        f1, 0x9c(r31)
lbl_8057ed04:
/* 8057ED04 E3E10018 */ psq_l       f31, 0x18(r1), 0, 0
/* 8057ED08 80010024 */ lwz         r0, 0x24(r1)
/* 8057ED0C CBE10010 */ lfd         f31, 0x10(r1)
/* 8057ED10 83E1000C */ lwz         r31, 0xc(r1)
/* 8057ED14 7C0803A6 */ mtlr        r0
/* 8057ED18 38210020 */ addi        r1, r1, 0x20
/* 8057ED1C 4E800020 */ blr         