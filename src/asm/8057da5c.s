nofralloc
/* 8057DA5C 9421FFC0 */ stwu        r1, -0x40(r1)
/* 8057DA60 7C0802A6 */ mflr        r0
/* 8057DA64 90010044 */ stw         r0, 0x44(r1)
/* 8057DA68 93E1003C */ stw         r31, 0x3c(r1)
/* 8057DA6C 7C7F1B78 */ mr          r31, r3
/* 8057DA70 93C10038 */ stw         r30, 0x38(r1)
/* 8057DA74 80830000 */ lwz         r4, 0(r3)
/* 8057DA78 80840004 */ lwz         r4, 4(r4)
/* 8057DA7C 80040004 */ lwz         r0, 4(r4)
/* 8057DA80 64000008 */ oris        r0, r0, 8
/* 8057DA84 90040004 */ stw         r0, 4(r4)
/* 8057DA88 80830000 */ lwz         r4, 0(r3)
/* 8057DA8C 80840004 */ lwz         r4, 4(r4)
/* 8057DA90 80040004 */ lwz         r0, 4(r4)
/* 8057DA94 54000776 */ rlwinm      r0, r0, 0, 0x1d, 0x1b
/* 8057DA98 90040004 */ stw         r0, 4(r4)
/* 8057DA9C 8183000C */ lwz         r12, 0xc(r3)
/* 8057DAA0 818C0034 */ lwz         r12, 0x34(r12)
/* 8057DAA4 7D8903A6 */ mtctr       r12
/* 8057DAA8 4E800421 */ bctrl       
/* 8057DAAC 7FE3FB78 */ mr          r3, r31
/* 8057DAB0 4801291D */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057DAB4 3C80802A */ lis         r4, RKSystem_ey@ha
/* 8057DAB8 38BF00D4 */ addi        r5, r31, 0xd4
/* 8057DABC 38844130 */ addi        r4, r4, RKSystem_ey@l
/* 8057DAC0 386300F0 */ addi        r3, r3, 0xf0
/* 8057DAC4 4BCBC80D */ bl          rotateVector__Q23EGG5QuatfFRCQ23EGG8Vector3fRQ23EGG8Vector3f
/* 8057DAC8 7FE3FB78 */ mr          r3, r31
/* 8057DACC 48012901 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057DAD0 3C80802A */ lis         r4, lbl_802a4148@ha
/* 8057DAD4 38BF00E0 */ addi        r5, r31, 0xe0
/* 8057DAD8 38844148 */ addi        r4, r4, lbl_802a4148@l
/* 8057DADC 386300F0 */ addi        r3, r3, 0xf0
/* 8057DAE0 4BCBC7F1 */ bl          rotateVector__Q23EGG5QuatfFRCQ23EGG8Vector3fRQ23EGG8Vector3f
/* 8057DAE4 3FC08089 */ lis         r30, lbl_80891a00@ha
/* 8057DAE8 38000000 */ li          r0, 0
/* 8057DAEC C01E1A00 */ lfs         f0, lbl_80891a00@l(r30)
/* 8057DAF0 7FE3FB78 */ mr          r3, r31
/* 8057DAF4 B01F00FC */ sth         r0, 0xfc(r31)
/* 8057DAF8 B01F0100 */ sth         r0, 0x100(r31)
/* 8057DAFC B01F00FE */ sth         r0, 0xfe(r31)
/* 8057DB00 901F00CC */ stw         r0, 0xcc(r31)
/* 8057DB04 901F00D0 */ stw         r0, 0xd0(r31)
/* 8057DB08 D01F022C */ stfs        f0, 0x22c(r31)
/* 8057DB0C 480128C1 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057DB10 C0030148 */ lfs         f0, 0x148(r3)
/* 8057DB14 7FE3FB78 */ mr          r3, r31
/* 8057DB18 D01F0230 */ stfs        f0, 0x230(r31)
/* 8057DB1C 809F0284 */ lwz         r4, 0x284(r31)
/* 8057DB20 C01E1A00 */ lfs         f0, lbl_80891a00@l(r30)
/* 8057DB24 C0240000 */ lfs         f1, 0(r4)
/* 8057DB28 D03F0228 */ stfs        f1, 0x228(r31)
/* 8057DB2C D01F0104 */ stfs        f0, 0x104(r31)
/* 8057DB30 4801289D */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057DB34 80030078 */ lwz         r0, 0x78(r3)
/* 8057DB38 90010024 */ stw         r0, 0x24(r1)
/* 8057DB3C 80830074 */ lwz         r4, 0x74(r3)
/* 8057DB40 8003007C */ lwz         r0, 0x7c(r3)
/* 8057DB44 7FE3FB78 */ mr          r3, r31
/* 8057DB48 C01E1A00 */ lfs         f0, lbl_80891a00@l(r30)
/* 8057DB4C 90810020 */ stw         r4, 0x20(r1)
/* 8057DB50 90010028 */ stw         r0, 0x28(r1)
/* 8057DB54 D0010024 */ stfs        f0, 0x24(r1)
/* 8057DB58 48012875 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057DB5C C0010020 */ lfs         f0, 0x20(r1)
/* 8057DB60 D0030074 */ stfs        f0, 0x74(r3)
/* 8057DB64 C0010024 */ lfs         f0, 0x24(r1)
/* 8057DB68 D0030078 */ stfs        f0, 0x78(r3)
/* 8057DB6C C0010028 */ lfs         f0, 0x28(r1)
/* 8057DB70 D003007C */ stfs        f0, 0x7c(r3)
/* 8057DB74 7FE3FB78 */ mr          r3, r31
/* 8057DB78 C01E1A00 */ lfs         f0, lbl_80891a00@l(r30)
/* 8057DB7C C03F0228 */ lfs         f1, 0x228(r31)
/* 8057DB80 D0010008 */ stfs        f0, 8(r1)
/* 8057DB84 D021000C */ stfs        f1, 0xc(r1)
/* 8057DB88 D0010010 */ stfs        f0, 0x10(r1)
/* 8057DB8C 48012841 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057DB90 C0430074 */ lfs         f2, 0x74(r3)
/* 8057DB94 C0010008 */ lfs         f0, 8(r1)
/* 8057DB98 C021000C */ lfs         f1, 0xc(r1)
/* 8057DB9C EC42002A */ fadds       f2, f2, f0
/* 8057DBA0 C0010010 */ lfs         f0, 0x10(r1)
/* 8057DBA4 D0430074 */ stfs        f2, 0x74(r3)
/* 8057DBA8 C0430078 */ lfs         f2, 0x78(r3)
/* 8057DBAC EC22082A */ fadds       f1, f2, f1
/* 8057DBB0 D0230078 */ stfs        f1, 0x78(r3)
/* 8057DBB4 C023007C */ lfs         f1, 0x7c(r3)
/* 8057DBB8 EC01002A */ fadds       f0, f1, f0
/* 8057DBBC D003007C */ stfs        f0, 0x7c(r3)
/* 8057DBC0 7FE3FB78 */ mr          r3, r31
/* 8057DBC4 48012809 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057DBC8 80030114 */ lwz         r0, 0x114(r3)
/* 8057DBCC 90010018 */ stw         r0, 0x18(r1)
/* 8057DBD0 80830110 */ lwz         r4, 0x110(r3)
/* 8057DBD4 80030118 */ lwz         r0, 0x118(r3)
/* 8057DBD8 7FE3FB78 */ mr          r3, r31
/* 8057DBDC C01E1A00 */ lfs         f0, lbl_80891a00@l(r30)
/* 8057DBE0 90810014 */ stw         r4, 0x14(r1)
/* 8057DBE4 9001001C */ stw         r0, 0x1c(r1)
/* 8057DBE8 D0010018 */ stfs        f0, 0x18(r1)
/* 8057DBEC 480127E1 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057DBF0 C0010014 */ lfs         f0, 0x14(r1)
/* 8057DBF4 D0030110 */ stfs        f0, 0x110(r3)
/* 8057DBF8 C0010018 */ lfs         f0, 0x18(r1)
/* 8057DBFC D0030114 */ stfs        f0, 0x114(r3)
/* 8057DC00 C001001C */ lfs         f0, 0x1c(r1)
/* 8057DC04 D0030118 */ stfs        f0, 0x118(r3)
/* 8057DC08 7FE3FB78 */ mr          r3, r31
/* 8057DC0C 48012B89 */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 8057DC10 81830000 */ lwz         r12, 0(r3)
/* 8057DC14 38800197 */ li          r4, 0x197
/* 8057DC18 C03E1A00 */ lfs         f1, lbl_80891a00@l(r30)
/* 8057DC1C 818C00E0 */ lwz         r12, 0xe0(r12)
/* 8057DC20 7D8903A6 */ mtctr       r12
/* 8057DC24 4E800421 */ bctrl       
/* 8057DC28 80010044 */ lwz         r0, 0x44(r1)
/* 8057DC2C 83E1003C */ lwz         r31, 0x3c(r1)
/* 8057DC30 83C10038 */ lwz         r30, 0x38(r1)
/* 8057DC34 7C0803A6 */ mtlr        r0
/* 8057DC38 38210040 */ addi        r1, r1, 0x40
/* 8057DC3C 4E800020 */ blr         