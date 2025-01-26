nofralloc
/* 80598BEC 9421FF40 */ stwu        r1, -0xc0(r1)
/* 80598BF0 7C0802A6 */ mflr        r0
/* 80598BF4 900100C4 */ stw         r0, 0xc4(r1)
/* 80598BF8 DBE100B0 */ stfd        f31, 0xb0(r1)
/* 80598BFC F3E100B8 */ psq_st      f31, 0xb8(r1), 0, 0
/* 80598C00 93E100AC */ stw         r31, 0xac(r1)
/* 80598C04 7C7F1B78 */ mr          r31, r3
/* 80598C08 93C100A8 */ stw         r30, 0xa8(r1)
/* 80598C0C 93A100A4 */ stw         r29, 0xa4(r1)
/* 80598C10 8803008C */ lbz         r0, 0x8c(r3)
/* 80598C14 2C000000 */ cmpwi       r0, 0
/* 80598C18 418203AC */ beq-        lbl_80598fc4
/* 80598C1C 80830090 */ lwz         r4, 0x90(r3)
/* 80598C20 80C40014 */ lwz         r6, 0x14(r4)
/* 80598C24 83C4001C */ lwz         r30, 0x1c(r4)
/* 80598C28 80A60020 */ lwz         r5, 0x20(r6)
/* 80598C2C 80860024 */ lwz         r4, 0x24(r6)
/* 80598C30 80060028 */ lwz         r0, 0x28(r6)
/* 80598C34 90A1008C */ stw         r5, 0x8c(r1)
/* 80598C38 90810090 */ stw         r4, 0x90(r1)
/* 80598C3C 90010094 */ stw         r0, 0x94(r1)
/* 80598C40 4BFF7CCD */ bl          various_stuff_get_kart_parts_disp_params
/* 80598C44 1C1E0014 */ mulli       r0, r30, 0x14
/* 80598C48 38810074 */ addi        r4, r1, 0x74
/* 80598C4C 7FC30214 */ add         r30, r3, r0
/* 80598C50 7FE3FB78 */ mr          r3, r31
/* 80598C54 4BFF7FF1 */ bl          PlayerPointers_getPlayerMatCol0
/* 80598C58 7FE3FB78 */ mr          r3, r31
/* 80598C5C 4BFF8861 */ bl          getScale__Q24Kart15KartObjectProxyFv
/* 80598C60 809F0090 */ lwz         r4, 0x90(r31)
/* 80598C64 C0230004 */ lfs         f1, 4(r3)
/* 80598C68 C01E00B4 */ lfs         f0, 0xb4(r30)
/* 80598C6C 80040018 */ lwz         r0, 0x18(r4)
/* 80598C70 EFE00072 */ fmuls       f31, f0, f1
/* 80598C74 C05E00B0 */ lfs         f2, 0xb0(r30)
/* 80598C78 2C000000 */ cmpwi       r0, 0
/* 80598C7C C03E00AC */ lfs         f1, 0xac(r30)
/* 80598C80 40820010 */ bne-        lbl_80598c90
/* 80598C84 C01E00A8 */ lfs         f0, 0xa8(r30)
/* 80598C88 FC000050 */ fneg        f0, f0
/* 80598C8C 48000008 */ b           lbl_80598c94
lbl_80598c90:
/* 80598C90 C01E00A8 */ lfs         f0, 0xa8(r30)
lbl_80598c94:
/* 80598C94 D001002C */ stfs        f0, 0x2c(r1)
/* 80598C98 7FE3FB78 */ mr          r3, r31
/* 80598C9C D0210030 */ stfs        f1, 0x30(r1)
/* 80598CA0 D0410034 */ stfs        f2, 0x34(r1)
/* 80598CA4 4BFF8819 */ bl          getScale__Q24Kart15KartObjectProxyFv
/* 80598CA8 C021002C */ lfs         f1, 0x2c(r1)
/* 80598CAC C0030000 */ lfs         f0, 0(r3)
/* 80598CB0 C0410030 */ lfs         f2, 0x30(r1)
/* 80598CB4 EC010032 */ fmuls       f0, f1, f0
/* 80598CB8 C0210034 */ lfs         f1, 0x34(r1)
/* 80598CBC D0010068 */ stfs        f0, 0x68(r1)
/* 80598CC0 C0030004 */ lfs         f0, 4(r3)
/* 80598CC4 EC020032 */ fmuls       f0, f2, f0
/* 80598CC8 D001006C */ stfs        f0, 0x6c(r1)
/* 80598CCC C0030008 */ lfs         f0, 8(r3)
/* 80598CD0 EC010032 */ fmuls       f0, f1, f0
/* 80598CD4 D0010070 */ stfs        f0, 0x70(r1)
/* 80598CD8 807F0090 */ lwz         r3, 0x90(r31)
/* 80598CDC 80030018 */ lwz         r0, 0x18(r3)
/* 80598CE0 2C000000 */ cmpwi       r0, 0
/* 80598CE4 40820078 */ bne-        lbl_80598d5c
/* 80598CE8 7FE3FB78 */ mr          r3, r31
/* 80598CEC 4BFF758D */ bl          unk_80590278
/* 80598CF0 7C641B78 */ mr          r4, r3
/* 80598CF4 38610020 */ addi        r3, r1, 0x20
/* 80598CF8 38A10068 */ addi        r5, r1, 0x68
/* 80598CFC 4BC976FD */ bl          multVector__Q23EGG9Matrix34fCFRCQ23EGG8Vector3f
/* 80598D00 FCC0F850 */ fneg        f6, f31
/* 80598D04 C0410074 */ lfs         f2, 0x74(r1)
/* 80598D08 C0210078 */ lfs         f1, 0x78(r1)
/* 80598D0C C001007C */ lfs         f0, 0x7c(r1)
/* 80598D10 ECA600B2 */ fmuls       f5, f6, f2
/* 80598D14 C081008C */ lfs         f4, 0x8c(r1)
/* 80598D18 EC660072 */ fmuls       f3, f6, f1
/* 80598D1C C0410090 */ lfs         f2, 0x90(r1)
/* 80598D20 EC260032 */ fmuls       f1, f6, f0
/* 80598D24 C0010094 */ lfs         f0, 0x94(r1)
/* 80598D28 EC84282A */ fadds       f4, f4, f5
/* 80598D2C C0A10020 */ lfs         f5, 0x20(r1)
/* 80598D30 EC42182A */ fadds       f2, f2, f3
/* 80598D34 C0610024 */ lfs         f3, 0x24(r1)
/* 80598D38 EC00082A */ fadds       f0, f0, f1
/* 80598D3C C0210028 */ lfs         f1, 0x28(r1)
/* 80598D40 D0A10080 */ stfs        f5, 0x80(r1)
/* 80598D44 D0610084 */ stfs        f3, 0x84(r1)
/* 80598D48 D0210088 */ stfs        f1, 0x88(r1)
/* 80598D4C D081008C */ stfs        f4, 0x8c(r1)
/* 80598D50 D0410090 */ stfs        f2, 0x90(r1)
/* 80598D54 D0010094 */ stfs        f0, 0x94(r1)
/* 80598D58 48000070 */ b           lbl_80598dc8
lbl_80598d5c:
/* 80598D5C 7FE3FB78 */ mr          r3, r31
/* 80598D60 4BFF7519 */ bl          unk_80590278
/* 80598D64 7C641B78 */ mr          r4, r3
/* 80598D68 38610014 */ addi        r3, r1, 0x14
/* 80598D6C 38A10068 */ addi        r5, r1, 0x68
/* 80598D70 4BC97689 */ bl          multVector__Q23EGG9Matrix34fCFRCQ23EGG8Vector3f
/* 80598D74 C0410074 */ lfs         f2, 0x74(r1)
/* 80598D78 C0210078 */ lfs         f1, 0x78(r1)
/* 80598D7C ECBF00B2 */ fmuls       f5, f31, f2
/* 80598D80 C001007C */ lfs         f0, 0x7c(r1)
/* 80598D84 EC7F0072 */ fmuls       f3, f31, f1
/* 80598D88 C081008C */ lfs         f4, 0x8c(r1)
/* 80598D8C EC3F0032 */ fmuls       f1, f31, f0
/* 80598D90 C0410090 */ lfs         f2, 0x90(r1)
/* 80598D94 EC84282A */ fadds       f4, f4, f5
/* 80598D98 C0010094 */ lfs         f0, 0x94(r1)
/* 80598D9C EC42182A */ fadds       f2, f2, f3
/* 80598DA0 C0A10014 */ lfs         f5, 0x14(r1)
/* 80598DA4 EC00082A */ fadds       f0, f0, f1
/* 80598DA8 C0610018 */ lfs         f3, 0x18(r1)
/* 80598DAC C021001C */ lfs         f1, 0x1c(r1)
/* 80598DB0 D0A10080 */ stfs        f5, 0x80(r1)
/* 80598DB4 D0610084 */ stfs        f3, 0x84(r1)
/* 80598DB8 D0210088 */ stfs        f1, 0x88(r1)
/* 80598DBC D081008C */ stfs        f4, 0x8c(r1)
/* 80598DC0 D0410090 */ stfs        f2, 0x90(r1)
/* 80598DC4 D0010094 */ stfs        f0, 0x94(r1)
lbl_80598dc8:
/* 80598DC8 C0A10080 */ lfs         f5, 0x80(r1)
/* 80598DCC 3861005C */ addi        r3, r1, 0x5c
/* 80598DD0 C0810084 */ lfs         f4, 0x84(r1)
/* 80598DD4 C0610088 */ lfs         f3, 0x88(r1)
/* 80598DD8 C041008C */ lfs         f2, 0x8c(r1)
/* 80598DDC C0210090 */ lfs         f1, 0x90(r1)
/* 80598DE0 C0010094 */ lfs         f0, 0x94(r1)
/* 80598DE4 EC451028 */ fsubs       f2, f5, f2
/* 80598DE8 D0BF0028 */ stfs        f5, 0x28(r31)
/* 80598DEC EC240828 */ fsubs       f1, f4, f1
/* 80598DF0 EC030028 */ fsubs       f0, f3, f0
/* 80598DF4 D09F0038 */ stfs        f4, 0x38(r31)
/* 80598DF8 D07F0048 */ stfs        f3, 0x48(r31)
/* 80598DFC D041005C */ stfs        f2, 0x5c(r1)
/* 80598E00 D0210060 */ stfs        f1, 0x60(r1)
/* 80598E04 D0010064 */ stfs        f0, 0x64(r1)
/* 80598E08 4BCAACD5 */ bl          normalise__Q23EGG8Vector3fFv
/* 80598E0C FFE00890 */ fmr         f31, f1
/* 80598E10 7FE3FB78 */ mr          r3, r31
/* 80598E14 38810044 */ addi        r4, r1, 0x44
/* 80598E18 4BFF7E7D */ bl          PlayerPointers_getBodyFront
/* 80598E1C C0E1005C */ lfs         f7, 0x5c(r1)
/* 80598E20 38610050 */ addi        r3, r1, 0x50
/* 80598E24 C0010048 */ lfs         f0, 0x48(r1)
/* 80598E28 C0410064 */ lfs         f2, 0x64(r1)
/* 80598E2C C0810044 */ lfs         f4, 0x44(r1)
/* 80598E30 ECC70032 */ fmuls       f6, f7, f0
/* 80598E34 C0A10060 */ lfs         f5, 0x60(r1)
/* 80598E38 EC020032 */ fmuls       f0, f2, f0
/* 80598E3C EC620132 */ fmuls       f3, f2, f4
/* 80598E40 C021004C */ lfs         f1, 0x4c(r1)
/* 80598E44 EC850132 */ fmuls       f4, f5, f4
/* 80598E48 EC470072 */ fmuls       f2, f7, f1
/* 80598E4C EC250072 */ fmuls       f1, f5, f1
/* 80598E50 EC862028 */ fsubs       f4, f6, f4
/* 80598E54 EC431028 */ fsubs       f2, f3, f2
/* 80598E58 EC010028 */ fsubs       f0, f1, f0
/* 80598E5C D0810058 */ stfs        f4, 0x58(r1)
/* 80598E60 D0010050 */ stfs        f0, 0x50(r1)
/* 80598E64 D0410054 */ stfs        f2, 0x54(r1)
/* 80598E68 4BCAAC75 */ bl          normalise__Q23EGG8Vector3fFv
/* 80598E6C C0E10050 */ lfs         f7, 0x50(r1)
/* 80598E70 38610044 */ addi        r3, r1, 0x44
/* 80598E74 C0010060 */ lfs         f0, 0x60(r1)
/* 80598E78 C0410058 */ lfs         f2, 0x58(r1)
/* 80598E7C C081005C */ lfs         f4, 0x5c(r1)
/* 80598E80 ECC70032 */ fmuls       f6, f7, f0
/* 80598E84 C0A10054 */ lfs         f5, 0x54(r1)
/* 80598E88 EC020032 */ fmuls       f0, f2, f0
/* 80598E8C EC620132 */ fmuls       f3, f2, f4
/* 80598E90 C0210064 */ lfs         f1, 0x64(r1)
/* 80598E94 EC850132 */ fmuls       f4, f5, f4
/* 80598E98 EC470072 */ fmuls       f2, f7, f1
/* 80598E9C EC250072 */ fmuls       f1, f5, f1
/* 80598EA0 EC862028 */ fsubs       f4, f6, f4
/* 80598EA4 EC431028 */ fsubs       f2, f3, f2
/* 80598EA8 EC010028 */ fsubs       f0, f1, f0
/* 80598EAC D081004C */ stfs        f4, 0x4c(r1)
/* 80598EB0 D0010044 */ stfs        f0, 0x44(r1)
/* 80598EB4 D0410048 */ stfs        f2, 0x48(r1)
/* 80598EB8 4BCAAC25 */ bl          normalise__Q23EGG8Vector3fFv
/* 80598EBC C0010050 */ lfs         f0, 0x50(r1)
/* 80598EC0 D01F001C */ stfs        f0, 0x1c(r31)
/* 80598EC4 807F0090 */ lwz         r3, 0x90(r31)
/* 80598EC8 C0010054 */ lfs         f0, 0x54(r1)
/* 80598ECC D01F002C */ stfs        f0, 0x2c(r31)
/* 80598ED0 C0010058 */ lfs         f0, 0x58(r1)
/* 80598ED4 D01F003C */ stfs        f0, 0x3c(r31)
/* 80598ED8 C001005C */ lfs         f0, 0x5c(r1)
/* 80598EDC D01F0020 */ stfs        f0, 0x20(r31)
/* 80598EE0 C0010060 */ lfs         f0, 0x60(r1)
/* 80598EE4 D01F0030 */ stfs        f0, 0x30(r31)
/* 80598EE8 C0010064 */ lfs         f0, 0x64(r1)
/* 80598EEC D01F0040 */ stfs        f0, 0x40(r31)
/* 80598EF0 C0010044 */ lfs         f0, 0x44(r1)
/* 80598EF4 D01F0024 */ stfs        f0, 0x24(r31)
/* 80598EF8 C0010048 */ lfs         f0, 0x48(r1)
/* 80598EFC D01F0034 */ stfs        f0, 0x34(r31)
/* 80598F00 C001004C */ lfs         f0, 0x4c(r1)
/* 80598F04 D01F0044 */ stfs        f0, 0x44(r31)
/* 80598F08 80030018 */ lwz         r0, 0x18(r3)
/* 80598F0C 2C000000 */ cmpwi       r0, 0
/* 80598F10 4082003C */ bne-        lbl_80598f4c
/* 80598F14 3C608089 */ lis         r3, lbl_80891f60@ha
/* 80598F18 3C808089 */ lis         r4, lbl_80891f64@ha
/* 80598F1C C0231F60 */ lfs         f1, lbl_80891f60@l(r3)
/* 80598F20 387F004C */ addi        r3, r31, 0x4c
/* 80598F24 C0041F64 */ lfs         f0, lbl_80891f64@l(r4)
/* 80598F28 38810008 */ addi        r4, r1, 8
/* 80598F2C D0210008 */ stfs        f1, 8(r1)
/* 80598F30 D001000C */ stfs        f0, 0xc(r1)
/* 80598F34 D0210010 */ stfs        f1, 0x10(r1)
/* 80598F38 4BC97061 */ bl          makeR__Q23EGG9Matrix34fFRCQ23EGG8Vector3f
/* 80598F3C 387F001C */ addi        r3, r31, 0x1c
/* 80598F40 389F004C */ addi        r4, r31, 0x4c
/* 80598F44 7C651B78 */ mr          r5, r3
/* 80598F48 4BC974C9 */ bl          multiplyTo__Q23EGG9Matrix34fCFRCQ23EGG9Matrix34fRQ23EGG9Matrix34f
lbl_80598f4c:
/* 80598F4C 7FE3FB78 */ mr          r3, r31
/* 80598F50 4BFF856D */ bl          getScale__Q24Kart15KartObjectProxyFv
/* 80598F54 80A30000 */ lwz         r5, 0(r3)
/* 80598F58 38810038 */ addi        r4, r1, 0x38
/* 80598F5C 80030004 */ lwz         r0, 4(r3)
/* 80598F60 9001003C */ stw         r0, 0x3c(r1)
/* 80598F64 90A10038 */ stw         r5, 0x38(r1)
/* 80598F68 80030008 */ lwz         r0, 8(r3)
/* 80598F6C 90010040 */ stw         r0, 0x40(r1)
/* 80598F70 C01E00B8 */ lfs         f0, 0xb8(r30)
/* 80598F74 EC1F0032 */ fmuls       f0, f31, f0
/* 80598F78 D001003C */ stfs        f0, 0x3c(r1)
/* 80598F7C 807F007C */ lwz         r3, 0x7c(r31)
/* 80598F80 81830000 */ lwz         r12, 0(r3)
/* 80598F84 818C0014 */ lwz         r12, 0x14(r12)
/* 80598F88 7D8903A6 */ mtctr       r12
/* 80598F8C 4E800421 */ bctrl       
/* 80598F90 83BF007C */ lwz         r29, 0x7c(r31)
/* 80598F94 3BC00000 */ li          r30, 0
lbl_80598f98:
/* 80598F98 807D0014 */ lwz         r3, 0x14(r29)
/* 80598F9C 80630000 */ lwz         r3, 0(r3)
/* 80598FA0 2C030000 */ cmpwi       r3, 0
/* 80598FA4 41820010 */ beq-        lbl_80598fb4
/* 80598FA8 38BF001C */ addi        r5, r31, 0x1c
/* 80598FAC 38800000 */ li          r4, 0
/* 80598FB0 4BAD4BE1 */ bl          SetMtx
lbl_80598fb4:
/* 80598FB4 3BDE0001 */ addi        r30, r30, 1
/* 80598FB8 3BBD0004 */ addi        r29, r29, 4
/* 80598FBC 2C1E0002 */ cmpwi       r30, 2
/* 80598FC0 4180FFD8 */ blt+        lbl_80598f98
lbl_80598fc4:
/* 80598FC4 E3E100B8 */ psq_l       f31, 0xb8(r1), 0, 0
/* 80598FC8 800100C4 */ lwz         r0, 0xc4(r1)
/* 80598FCC CBE100B0 */ lfd         f31, 0xb0(r1)
/* 80598FD0 83E100AC */ lwz         r31, 0xac(r1)
/* 80598FD4 83C100A8 */ lwz         r30, 0xa8(r1)
/* 80598FD8 83A100A4 */ lwz         r29, 0xa4(r1)
/* 80598FDC 7C0803A6 */ mtlr        r0
/* 80598FE0 382100C0 */ addi        r1, r1, 0xc0
/* 80598FE4 4E800020 */ blr         