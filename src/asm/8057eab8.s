nofralloc
/* 8057EAB8 9421FFE0 */ stwu        r1, -0x20(r1)
/* 8057EABC 7C0802A6 */ mflr        r0
/* 8057EAC0 90010024 */ stw         r0, 0x24(r1)
/* 8057EAC4 DBE10010 */ stfd        f31, 0x10(r1)
/* 8057EAC8 F3E10018 */ psq_st      f31, 0x18(r1), 0, 0
/* 8057EACC 93E1000C */ stw         r31, 0xc(r1)
/* 8057EAD0 3FE0808B */ lis         r31, lbl_808b58f0@ha
/* 8057EAD4 3BFF58F0 */ addi        r31, r31, lbl_808b58f0@l
/* 8057EAD8 93C10008 */ stw         r30, 8(r1)
/* 8057EADC 7C7E1B78 */ mr          r30, r3
/* 8057EAE0 80830000 */ lwz         r4, 0(r3)
/* 8057EAE4 A81F0078 */ lha         r0, 0x78(r31)
/* 8057EAE8 80840004 */ lwz         r4, 4(r4)
/* 8057EAEC 8084001C */ lwz         r4, 0x1c(r4)
/* 8057EAF0 7C040040 */ cmplw       r4, r0
/* 8057EAF4 41810114 */ bgt-        lbl_8057ec08
/* 8057EAF8 48011F19 */ bl          PlayerPointers_getVehicleType
/* 8057EAFC 28030002 */ cmplwi      r3, 2
/* 8057EB00 418200E0 */ beq-        lbl_8057ebe0
/* 8057EB04 7FC3F378 */ mr          r3, r30
/* 8057EB08 48011D6D */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 8057EB0C 801E00CC */ lwz         r0, 0xcc(r30)
/* 8057EB10 C3E30064 */ lfs         f31, 0x64(r3)
/* 8057EB14 2C00FFFF */ cmpwi       r0, -1
/* 8057EB18 40820060 */ bne-        lbl_8057eb78
/* 8057EB1C C03E009C */ lfs         f1, 0x9c(r30)
/* 8057EB20 FC01F840 */ fcmpo       cr0, f1, f31
/* 8057EB24 40810020 */ ble-        lbl_8057eb44
/* 8057EB28 C01F0098 */ lfs         f0, 0x98(r31)
/* 8057EB2C EC010028 */ fsubs       f0, f1, f0
/* 8057EB30 D01E009C */ stfs        f0, 0x9c(r30)
/* 8057EB34 FC00F840 */ fcmpo       cr0, f0, f31
/* 8057EB38 408000A8 */ bge-        lbl_8057ebe0
/* 8057EB3C D3FE009C */ stfs        f31, 0x9c(r30)
/* 8057EB40 480000A0 */ b           lbl_8057ebe0
lbl_8057eb44:
/* 8057EB44 4080009C */ bge-        lbl_8057ebe0
/* 8057EB48 7FC3F378 */ mr          r3, r30
/* 8057EB4C 48011D29 */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 8057EB50 C0430058 */ lfs         f2, 0x58(r3)
/* 8057EB54 C03F0060 */ lfs         f1, 0x60(r31)
/* 8057EB58 C01E009C */ lfs         f0, 0x9c(r30)
/* 8057EB5C EC2100B2 */ fmuls       f1, f1, f2
/* 8057EB60 EC00082A */ fadds       f0, f0, f1
/* 8057EB64 D01E009C */ stfs        f0, 0x9c(r30)
/* 8057EB68 FC00F840 */ fcmpo       cr0, f0, f31
/* 8057EB6C 40810074 */ ble-        lbl_8057ebe0
/* 8057EB70 D3FE009C */ stfs        f31, 0x9c(r30)
/* 8057EB74 4800006C */ b           lbl_8057ebe0
lbl_8057eb78:
/* 8057EB78 2C000001 */ cmpwi       r0, 1
/* 8057EB7C 40820064 */ bne-        lbl_8057ebe0
/* 8057EB80 FC20F850 */ fneg        f1, f31
/* 8057EB84 C05E009C */ lfs         f2, 0x9c(r30)
/* 8057EB88 FC020840 */ fcmpo       cr0, f2, f1
/* 8057EB8C 40800020 */ bge-        lbl_8057ebac
/* 8057EB90 C01F0098 */ lfs         f0, 0x98(r31)
/* 8057EB94 EC02002A */ fadds       f0, f2, f0
/* 8057EB98 D01E009C */ stfs        f0, 0x9c(r30)
/* 8057EB9C FC000840 */ fcmpo       cr0, f0, f1
/* 8057EBA0 40810040 */ ble-        lbl_8057ebe0
/* 8057EBA4 D03E009C */ stfs        f1, 0x9c(r30)
/* 8057EBA8 48000038 */ b           lbl_8057ebe0
lbl_8057ebac:
/* 8057EBAC 40810034 */ ble-        lbl_8057ebe0
/* 8057EBB0 7FC3F378 */ mr          r3, r30
/* 8057EBB4 48011CC1 */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 8057EBB8 C0630058 */ lfs         f3, 0x58(r3)
/* 8057EBBC FC00F850 */ fneg        f0, f31
/* 8057EBC0 C05F0060 */ lfs         f2, 0x60(r31)
/* 8057EBC4 C03E009C */ lfs         f1, 0x9c(r30)
/* 8057EBC8 EC4200F2 */ fmuls       f2, f2, f3
/* 8057EBCC EC211028 */ fsubs       f1, f1, f2
/* 8057EBD0 D03E009C */ stfs        f1, 0x9c(r30)
/* 8057EBD4 FC010040 */ fcmpo       cr0, f1, f0
/* 8057EBD8 40800008 */ bge-        lbl_8057ebe0
/* 8057EBDC D01E009C */ stfs        f0, 0x9c(r30)
lbl_8057ebe0:
/* 8057EBE0 3C60809C */ lis         r3, lbl_809c18f8@ha
/* 8057EBE4 806318F8 */ lwz         r3, lbl_809c18f8@l(r3)
/* 8057EBE8 80030028 */ lwz         r0, 0x28(r3)
/* 8057EBEC 540007BD */ rlwinm.     r0, r0, 0, 0x1e, 0x1e
/* 8057EBF0 40820018 */ bne-        lbl_8057ec08
/* 8057EBF4 819E000C */ lwz         r12, 0xc(r30)
/* 8057EBF8 7FC3F378 */ mr          r3, r30
/* 8057EBFC 818C0064 */ lwz         r12, 0x64(r12)
/* 8057EC00 7D8903A6 */ mtctr       r12
/* 8057EC04 4E800421 */ bctrl       
lbl_8057ec08:
/* 8057EC08 E3E10018 */ psq_l       f31, 0x18(r1), 0, 0
/* 8057EC0C 80010024 */ lwz         r0, 0x24(r1)
/* 8057EC10 CBE10010 */ lfd         f31, 0x10(r1)
/* 8057EC14 83E1000C */ lwz         r31, 0xc(r1)
/* 8057EC18 83C10008 */ lwz         r30, 8(r1)
/* 8057EC1C 7C0803A6 */ mtlr        r0
/* 8057EC20 38210020 */ addi        r1, r1, 0x20
/* 8057EC24 4E800020 */ blr         