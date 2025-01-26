nofralloc
/* 806DBA98 9421FFA0 */ stwu        r1, -0x60(r1)
/* 806DBA9C 7C0802A6 */ mflr        r0
/* 806DBAA0 90010064 */ stw         r0, 0x64(r1)
/* 806DBAA4 39610060 */ addi        r11, r1, 0x60
/* 806DBAA8 4B945AF9 */ bl          _savegpr_27
/* 806DBAAC 88030136 */ lbz         r0, 0x136(r3)
/* 806DBAB0 3FE0808A */ lis         r31, lbl_808a0378@ha
/* 806DBAB4 7C7C1B78 */ mr          r28, r3
/* 806DBAB8 7C9D2378 */ mr          r29, r4
/* 806DBABC 2C000000 */ cmpwi       r0, 0
/* 806DBAC0 7CBE2B78 */ mr          r30, r5
/* 806DBAC4 3BFF0378 */ addi        r31, r31, lbl_808a0378@l
/* 806DBAC8 3B600001 */ li          r27, 1
/* 806DBACC 40820014 */ bne-        lbl_806dbae0
/* 806DBAD0 8803013C */ lbz         r0, 0x13c(r3)
/* 806DBAD4 2C000000 */ cmpwi       r0, 0
/* 806DBAD8 40820008 */ bne-        lbl_806dbae0
/* 806DBADC 3B600000 */ li          r27, 0
lbl_806dbae0:
/* 806DBAE0 2C060003 */ cmpwi       r6, 3
/* 806DBAE4 41820020 */ beq-        lbl_806dbb04
/* 806DBAE8 2C060004 */ cmpwi       r6, 4
/* 806DBAEC 418201D8 */ beq-        lbl_806dbcc4
/* 806DBAF0 2C060005 */ cmpwi       r6, 5
/* 806DBAF4 41820390 */ beq-        lbl_806dbe84
/* 806DBAF8 2C060006 */ cmpwi       r6, 6
/* 806DBAFC 41820548 */ beq-        lbl_806dc044
/* 806DBB00 48000700 */ b           lbl_806dc200
lbl_806dbb04:
/* 806DBB04 2C040000 */ cmpwi       r4, 0
/* 806DBB08 41820010 */ beq-        lbl_806dbb18
/* 806DBB0C 7F83E378 */ mr          r3, r28
/* 806DBB10 38840050 */ addi        r4, r4, 0x50
/* 806DBB14 48001615 */ bl          unk_806dd128
lbl_806dbb18:
/* 806DBB18 881C0136 */ lbz         r0, 0x136(r28)
/* 806DBB1C 2C000000 */ cmpwi       r0, 0
/* 806DBB20 408206E0 */ bne-        lbl_806dc200
/* 806DBB24 2C1D0000 */ cmpwi       r29, 0
/* 806DBB28 4182014C */ beq-        lbl_806dbc74
/* 806DBB2C 801D0078 */ lwz         r0, 0x78(r29)
/* 806DBB30 54000421 */ rlwinm.     r0, r0, 0, 0x10, 0x10
/* 806DBB34 4082000C */ bne-        lbl_806dbb40
/* 806DBB38 8B7D006C */ lbz         r27, 0x6c(r29)
/* 806DBB3C 48000008 */ b           lbl_806dbb44
lbl_806dbb40:
/* 806DBB40 3B60000C */ li          r27, 0xc
lbl_806dbb44:
/* 806DBB44 819C0000 */ lwz         r12, 0(r28)
/* 806DBB48 7F83E378 */ mr          r3, r28
/* 806DBB4C 818C0090 */ lwz         r12, 0x90(r12)
/* 806DBB50 7D8903A6 */ mtctr       r12
/* 806DBB54 4E800421 */ bctrl       
/* 806DBB58 C03F0004 */ lfs         f1, 4(r31)
/* 806DBB5C 7F83E378 */ mr          r3, r28
/* 806DBB60 3880022A */ li          r4, 0x22a
/* 806DBB64 48144999 */ bl          unk_808204fc
/* 806DBB68 C01F0020 */ lfs         f0, 0x20(r31)
/* 806DBB6C 38FF0000 */ addi        r7, r31, 0
/* 806DBB70 39400000 */ li          r10, 0
/* 806DBB74 38000001 */ li          r0, 1
/* 806DBB78 981C0136 */ stb         r0, 0x136(r28)
/* 806DBB7C 387C0030 */ addi        r3, r28, 0x30
/* 806DBB80 893F0000 */ lbz         r9, 0(r31)
/* 806DBB84 389C00EC */ addi        r4, r28, 0xec
/* 806DBB88 D01C012C */ stfs        f0, 0x12c(r28)
/* 806DBB8C 38A10014 */ addi        r5, r1, 0x14
/* 806DBB90 89070001 */ lbz         r8, 1(r7)
/* 806DBB94 D01C0130 */ stfs        f0, 0x130(r28)
/* 806DBB98 88C70002 */ lbz         r6, 2(r7)
/* 806DBB9C B15C0134 */ sth         r10, 0x134(r28)
/* 806DBBA0 88070003 */ lbz         r0, 3(r7)
/* 806DBBA4 915C0138 */ stw         r10, 0x138(r28)
/* 806DBBA8 C03F0038 */ lfs         f1, 0x38(r31)
/* 806DBBAC 99210014 */ stb         r9, 0x14(r1)
/* 806DBBB0 99010015 */ stb         r8, 0x15(r1)
/* 806DBBB4 98C10016 */ stb         r6, 0x16(r1)
/* 806DBBB8 98010017 */ stb         r0, 0x17(r1)
/* 806DBBBC 4BFD9E7D */ bl          unk_806b5a38
/* 806DBBC0 881C0104 */ lbz         r0, 0x104(r28)
/* 806DBBC4 2C000000 */ cmpwi       r0, 0
/* 806DBBC8 41820034 */ beq-        lbl_806dbbfc
/* 806DBBCC 3C80808C */ lis         r4, lbl_808c5d9c@ha
/* 806DBBD0 3861003C */ addi        r3, r1, 0x3c
/* 806DBBD4 C0245D9C */ lfs         f1, lbl_808c5d9c@l(r4)
/* 806DBBD8 389C00EC */ addi        r4, r28, 0xec
/* 806DBBDC 4BE38C35 */ bl          Vec3_scale
/* 806DBBE0 3C60809C */ lis         r3, lbl_809c3618@ha
/* 806DBBE4 7F67DB78 */ mr          r7, r27
/* 806DBBE8 80633618 */ lwz         r3, lbl_809c3618@l(r3)
/* 806DBBEC 38BC0030 */ addi        r5, r28, 0x30
/* 806DBBF0 38C1003C */ addi        r6, r1, 0x3c
/* 806DBBF4 38800003 */ li          r4, 3
/* 806DBBF8 480BE3C5 */ bl          unk_80799fbc
lbl_806dbbfc:
/* 806DBBFC 819C0000 */ lwz         r12, 0(r28)
/* 806DBC00 7F83E378 */ mr          r3, r28
/* 806DBC04 818C0024 */ lwz         r12, 0x24(r12)
/* 806DBC08 7D8903A6 */ mtctr       r12
/* 806DBC0C 4E800421 */ bctrl       
/* 806DBC10 3C80809C */ lis         r4, spInstance__Q26System10RaceConfig@ha
/* 806DBC14 3CA0809C */ lis         r5, spInstance__Q26System11RaceManager@ha
/* 806DBC18 80C4D728 */ lwz         r6, spInstance__Q26System10RaceConfig@l(r4)
/* 806DBC1C 5464043E */ clrlwi      r4, r3, 0x10
/* 806DBC20 8065D730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r5)
/* 806DBC24 80060B70 */ lwz         r0, 0xb70(r6)
/* 806DBC28 2C000004 */ cmpwi       r0, 4
/* 806DBC2C 408205D4 */ bne-        lbl_806dc200
/* 806DBC30 A0060B9E */ lhz         r0, 0xb9e(r6)
/* 806DBC34 2C000005 */ cmpwi       r0, 5
/* 806DBC38 408205C8 */ bne-        lbl_806dc200
/* 806DBC3C 2C040001 */ cmpwi       r4, 1
/* 806DBC40 83830010 */ lwz         r28, 0x10(r3)
/* 806DBC44 41800020 */ blt-        lbl_806dbc64
/* 806DBC48 819C0000 */ lwz         r12, 0(r28)
/* 806DBC4C 7F83E378 */ mr          r3, r28
/* 806DBC50 818C0038 */ lwz         r12, 0x38(r12)
/* 806DBC54 7D8903A6 */ mtctr       r12
/* 806DBC58 4E800421 */ bctrl       
/* 806DBC5C 2C030000 */ cmpwi       r3, 0
/* 806DBC60 418205A0 */ beq-        lbl_806dc200
lbl_806dbc64:
/* 806DBC64 807C0008 */ lwz         r3, 8(r28)
/* 806DBC68 38030001 */ addi        r0, r3, 1
/* 806DBC6C 901C0008 */ stw         r0, 8(r28)
/* 806DBC70 48000590 */ b           lbl_806dc200
lbl_806dbc74:
/* 806DBC74 2C1B0000 */ cmpwi       r27, 0
/* 806DBC78 40820588 */ bne-        lbl_806dc200
/* 806DBC7C 819C0000 */ lwz         r12, 0(r28)
/* 806DBC80 7F83E378 */ mr          r3, r28
/* 806DBC84 818C0090 */ lwz         r12, 0x90(r12)
/* 806DBC88 7D8903A6 */ mtctr       r12
/* 806DBC8C 4E800421 */ bctrl       
/* 806DBC90 C03F0004 */ lfs         f1, 4(r31)
/* 806DBC94 7F83E378 */ mr          r3, r28
/* 806DBC98 3880022A */ li          r4, 0x22a
/* 806DBC9C 48144861 */ bl          unk_808204fc
/* 806DBCA0 C01F0020 */ lfs         f0, 0x20(r31)
/* 806DBCA4 38600000 */ li          r3, 0
/* 806DBCA8 38000001 */ li          r0, 1
/* 806DBCAC D01C012C */ stfs        f0, 0x12c(r28)
/* 806DBCB0 D01C0130 */ stfs        f0, 0x130(r28)
/* 806DBCB4 B07C0134 */ sth         r3, 0x134(r28)
/* 806DBCB8 981C0136 */ stb         r0, 0x136(r28)
/* 806DBCBC 907C0138 */ stw         r3, 0x138(r28)
/* 806DBCC0 48000540 */ b           lbl_806dc200
lbl_806dbcc4:
/* 806DBCC4 2C040000 */ cmpwi       r4, 0
/* 806DBCC8 41820010 */ beq-        lbl_806dbcd8
/* 806DBCCC 7F83E378 */ mr          r3, r28
/* 806DBCD0 38840050 */ addi        r4, r4, 0x50
/* 806DBCD4 48001455 */ bl          unk_806dd128
lbl_806dbcd8:
/* 806DBCD8 881C0136 */ lbz         r0, 0x136(r28)
/* 806DBCDC 2C000000 */ cmpwi       r0, 0
/* 806DBCE0 40820520 */ bne-        lbl_806dc200
/* 806DBCE4 2C1D0000 */ cmpwi       r29, 0
/* 806DBCE8 4182014C */ beq-        lbl_806dbe34
/* 806DBCEC 801D0078 */ lwz         r0, 0x78(r29)
/* 806DBCF0 54000421 */ rlwinm.     r0, r0, 0, 0x10, 0x10
/* 806DBCF4 4082000C */ bne-        lbl_806dbd00
/* 806DBCF8 8B7D006C */ lbz         r27, 0x6c(r29)
/* 806DBCFC 48000008 */ b           lbl_806dbd04
lbl_806dbd00:
/* 806DBD00 3B60000C */ li          r27, 0xc
lbl_806dbd04:
/* 806DBD04 819C0000 */ lwz         r12, 0(r28)
/* 806DBD08 7F83E378 */ mr          r3, r28
/* 806DBD0C 818C0090 */ lwz         r12, 0x90(r12)
/* 806DBD10 7D8903A6 */ mtctr       r12
/* 806DBD14 4E800421 */ bctrl       
/* 806DBD18 C03F0004 */ lfs         f1, 4(r31)
/* 806DBD1C 7F83E378 */ mr          r3, r28
/* 806DBD20 3880022A */ li          r4, 0x22a
/* 806DBD24 481447D9 */ bl          unk_808204fc
/* 806DBD28 C01F0020 */ lfs         f0, 0x20(r31)
/* 806DBD2C 38FF0000 */ addi        r7, r31, 0
/* 806DBD30 39400000 */ li          r10, 0
/* 806DBD34 38000001 */ li          r0, 1
/* 806DBD38 981C0136 */ stb         r0, 0x136(r28)
/* 806DBD3C 387C0030 */ addi        r3, r28, 0x30
/* 806DBD40 893F0000 */ lbz         r9, 0(r31)
/* 806DBD44 389C00EC */ addi        r4, r28, 0xec
/* 806DBD48 D01C012C */ stfs        f0, 0x12c(r28)
/* 806DBD4C 38A10010 */ addi        r5, r1, 0x10
/* 806DBD50 89070001 */ lbz         r8, 1(r7)
/* 806DBD54 D01C0130 */ stfs        f0, 0x130(r28)
/* 806DBD58 88C70002 */ lbz         r6, 2(r7)
/* 806DBD5C B15C0134 */ sth         r10, 0x134(r28)
/* 806DBD60 88070003 */ lbz         r0, 3(r7)
/* 806DBD64 915C0138 */ stw         r10, 0x138(r28)
/* 806DBD68 C03F0038 */ lfs         f1, 0x38(r31)
/* 806DBD6C 99210010 */ stb         r9, 0x10(r1)
/* 806DBD70 99010011 */ stb         r8, 0x11(r1)
/* 806DBD74 98C10012 */ stb         r6, 0x12(r1)
/* 806DBD78 98010013 */ stb         r0, 0x13(r1)
/* 806DBD7C 4BFD9CBD */ bl          unk_806b5a38
/* 806DBD80 881C0104 */ lbz         r0, 0x104(r28)
/* 806DBD84 2C000000 */ cmpwi       r0, 0
/* 806DBD88 41820034 */ beq-        lbl_806dbdbc
/* 806DBD8C 3C80808C */ lis         r4, lbl_808c5d9c@ha
/* 806DBD90 38610030 */ addi        r3, r1, 0x30
/* 806DBD94 C0245D9C */ lfs         f1, lbl_808c5d9c@l(r4)
/* 806DBD98 389C00EC */ addi        r4, r28, 0xec
/* 806DBD9C 4BE38A75 */ bl          Vec3_scale
/* 806DBDA0 3C60809C */ lis         r3, lbl_809c3618@ha
/* 806DBDA4 7F67DB78 */ mr          r7, r27
/* 806DBDA8 80633618 */ lwz         r3, lbl_809c3618@l(r3)
/* 806DBDAC 38BC0030 */ addi        r5, r28, 0x30
/* 806DBDB0 38C10030 */ addi        r6, r1, 0x30
/* 806DBDB4 38800003 */ li          r4, 3
/* 806DBDB8 480BE205 */ bl          unk_80799fbc
lbl_806dbdbc:
/* 806DBDBC 819C0000 */ lwz         r12, 0(r28)
/* 806DBDC0 7F83E378 */ mr          r3, r28
/* 806DBDC4 818C0024 */ lwz         r12, 0x24(r12)
/* 806DBDC8 7D8903A6 */ mtctr       r12
/* 806DBDCC 4E800421 */ bctrl       
/* 806DBDD0 3C80809C */ lis         r4, spInstance__Q26System10RaceConfig@ha
/* 806DBDD4 3CA0809C */ lis         r5, spInstance__Q26System11RaceManager@ha
/* 806DBDD8 80C4D728 */ lwz         r6, spInstance__Q26System10RaceConfig@l(r4)
/* 806DBDDC 5464043E */ clrlwi      r4, r3, 0x10
/* 806DBDE0 8065D730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r5)
/* 806DBDE4 80060B70 */ lwz         r0, 0xb70(r6)
/* 806DBDE8 2C000004 */ cmpwi       r0, 4
/* 806DBDEC 40820414 */ bne-        lbl_806dc200
/* 806DBDF0 A0060B9E */ lhz         r0, 0xb9e(r6)
/* 806DBDF4 2C000005 */ cmpwi       r0, 5
/* 806DBDF8 40820408 */ bne-        lbl_806dc200
/* 806DBDFC 2C040001 */ cmpwi       r4, 1
/* 806DBE00 83830010 */ lwz         r28, 0x10(r3)
/* 806DBE04 41800020 */ blt-        lbl_806dbe24
/* 806DBE08 819C0000 */ lwz         r12, 0(r28)
/* 806DBE0C 7F83E378 */ mr          r3, r28
/* 806DBE10 818C0038 */ lwz         r12, 0x38(r12)
/* 806DBE14 7D8903A6 */ mtctr       r12
/* 806DBE18 4E800421 */ bctrl       
/* 806DBE1C 2C030000 */ cmpwi       r3, 0
/* 806DBE20 418203E0 */ beq-        lbl_806dc200
lbl_806dbe24:
/* 806DBE24 807C0008 */ lwz         r3, 8(r28)
/* 806DBE28 38030001 */ addi        r0, r3, 1
/* 806DBE2C 901C0008 */ stw         r0, 8(r28)
/* 806DBE30 480003D0 */ b           lbl_806dc200
lbl_806dbe34:
/* 806DBE34 2C1B0000 */ cmpwi       r27, 0
/* 806DBE38 408203C8 */ bne-        lbl_806dc200
/* 806DBE3C 819C0000 */ lwz         r12, 0(r28)
/* 806DBE40 7F83E378 */ mr          r3, r28
/* 806DBE44 818C0090 */ lwz         r12, 0x90(r12)
/* 806DBE48 7D8903A6 */ mtctr       r12
/* 806DBE4C 4E800421 */ bctrl       
/* 806DBE50 C03F0004 */ lfs         f1, 4(r31)
/* 806DBE54 7F83E378 */ mr          r3, r28
/* 806DBE58 3880022A */ li          r4, 0x22a
/* 806DBE5C 481446A1 */ bl          unk_808204fc
/* 806DBE60 C01F0020 */ lfs         f0, 0x20(r31)
/* 806DBE64 38600000 */ li          r3, 0
/* 806DBE68 38000001 */ li          r0, 1
/* 806DBE6C D01C012C */ stfs        f0, 0x12c(r28)
/* 806DBE70 D01C0130 */ stfs        f0, 0x130(r28)
/* 806DBE74 B07C0134 */ sth         r3, 0x134(r28)
/* 806DBE78 981C0136 */ stb         r0, 0x136(r28)
/* 806DBE7C 907C0138 */ stw         r3, 0x138(r28)
/* 806DBE80 48000380 */ b           lbl_806dc200
lbl_806dbe84:
/* 806DBE84 2C040000 */ cmpwi       r4, 0
/* 806DBE88 41820010 */ beq-        lbl_806dbe98
/* 806DBE8C 7F83E378 */ mr          r3, r28
/* 806DBE90 38840050 */ addi        r4, r4, 0x50
/* 806DBE94 48001295 */ bl          unk_806dd128
lbl_806dbe98:
/* 806DBE98 881C0136 */ lbz         r0, 0x136(r28)
/* 806DBE9C 2C000000 */ cmpwi       r0, 0
/* 806DBEA0 40820360 */ bne-        lbl_806dc200
/* 806DBEA4 2C1D0000 */ cmpwi       r29, 0
/* 806DBEA8 4182014C */ beq-        lbl_806dbff4
/* 806DBEAC 801D0078 */ lwz         r0, 0x78(r29)
/* 806DBEB0 54000421 */ rlwinm.     r0, r0, 0, 0x10, 0x10
/* 806DBEB4 4082000C */ bne-        lbl_806dbec0
/* 806DBEB8 8B7D006C */ lbz         r27, 0x6c(r29)
/* 806DBEBC 48000008 */ b           lbl_806dbec4
lbl_806dbec0:
/* 806DBEC0 3B60000C */ li          r27, 0xc
lbl_806dbec4:
/* 806DBEC4 819C0000 */ lwz         r12, 0(r28)
/* 806DBEC8 7F83E378 */ mr          r3, r28
/* 806DBECC 818C0090 */ lwz         r12, 0x90(r12)
/* 806DBED0 7D8903A6 */ mtctr       r12
/* 806DBED4 4E800421 */ bctrl       
/* 806DBED8 C03F0004 */ lfs         f1, 4(r31)
/* 806DBEDC 7F83E378 */ mr          r3, r28
/* 806DBEE0 3880022A */ li          r4, 0x22a
/* 806DBEE4 48144619 */ bl          unk_808204fc
/* 806DBEE8 C01F0020 */ lfs         f0, 0x20(r31)
/* 806DBEEC 38FF0000 */ addi        r7, r31, 0
/* 806DBEF0 39400000 */ li          r10, 0
/* 806DBEF4 38000001 */ li          r0, 1
/* 806DBEF8 981C0136 */ stb         r0, 0x136(r28)
/* 806DBEFC 387C0030 */ addi        r3, r28, 0x30
/* 806DBF00 893F0000 */ lbz         r9, 0(r31)
/* 806DBF04 389C00EC */ addi        r4, r28, 0xec
/* 806DBF08 D01C012C */ stfs        f0, 0x12c(r28)
/* 806DBF0C 38A1000C */ addi        r5, r1, 0xc
/* 806DBF10 89070001 */ lbz         r8, 1(r7)
/* 806DBF14 D01C0130 */ stfs        f0, 0x130(r28)
/* 806DBF18 88C70002 */ lbz         r6, 2(r7)
/* 806DBF1C B15C0134 */ sth         r10, 0x134(r28)
/* 806DBF20 88070003 */ lbz         r0, 3(r7)
/* 806DBF24 915C0138 */ stw         r10, 0x138(r28)
/* 806DBF28 C03F0038 */ lfs         f1, 0x38(r31)
/* 806DBF2C 9921000C */ stb         r9, 0xc(r1)
/* 806DBF30 9901000D */ stb         r8, 0xd(r1)
/* 806DBF34 98C1000E */ stb         r6, 0xe(r1)
/* 806DBF38 9801000F */ stb         r0, 0xf(r1)
/* 806DBF3C 4BFD9AFD */ bl          unk_806b5a38
/* 806DBF40 881C0104 */ lbz         r0, 0x104(r28)
/* 806DBF44 2C000000 */ cmpwi       r0, 0
/* 806DBF48 41820034 */ beq-        lbl_806dbf7c
/* 806DBF4C 3C80808C */ lis         r4, lbl_808c5d9c@ha
/* 806DBF50 38610024 */ addi        r3, r1, 0x24
/* 806DBF54 C0245D9C */ lfs         f1, lbl_808c5d9c@l(r4)
/* 806DBF58 389C00EC */ addi        r4, r28, 0xec
/* 806DBF5C 4BE388B5 */ bl          Vec3_scale
/* 806DBF60 3C60809C */ lis         r3, lbl_809c3618@ha
/* 806DBF64 7F67DB78 */ mr          r7, r27
/* 806DBF68 80633618 */ lwz         r3, lbl_809c3618@l(r3)
/* 806DBF6C 38BC0030 */ addi        r5, r28, 0x30
/* 806DBF70 38C10024 */ addi        r6, r1, 0x24
/* 806DBF74 38800003 */ li          r4, 3
/* 806DBF78 480BE045 */ bl          unk_80799fbc
lbl_806dbf7c:
/* 806DBF7C 819C0000 */ lwz         r12, 0(r28)
/* 806DBF80 7F83E378 */ mr          r3, r28
/* 806DBF84 818C0024 */ lwz         r12, 0x24(r12)
/* 806DBF88 7D8903A6 */ mtctr       r12
/* 806DBF8C 4E800421 */ bctrl       
/* 806DBF90 3C80809C */ lis         r4, spInstance__Q26System10RaceConfig@ha
/* 806DBF94 3CA0809C */ lis         r5, spInstance__Q26System11RaceManager@ha
/* 806DBF98 80C4D728 */ lwz         r6, spInstance__Q26System10RaceConfig@l(r4)
/* 806DBF9C 5464043E */ clrlwi      r4, r3, 0x10
/* 806DBFA0 8065D730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r5)
/* 806DBFA4 80060B70 */ lwz         r0, 0xb70(r6)
/* 806DBFA8 2C000004 */ cmpwi       r0, 4
/* 806DBFAC 40820254 */ bne-        lbl_806dc200
/* 806DBFB0 A0060B9E */ lhz         r0, 0xb9e(r6)
/* 806DBFB4 2C000005 */ cmpwi       r0, 5
/* 806DBFB8 40820248 */ bne-        lbl_806dc200
/* 806DBFBC 2C040001 */ cmpwi       r4, 1
/* 806DBFC0 83830010 */ lwz         r28, 0x10(r3)
/* 806DBFC4 41800020 */ blt-        lbl_806dbfe4
/* 806DBFC8 819C0000 */ lwz         r12, 0(r28)
/* 806DBFCC 7F83E378 */ mr          r3, r28
/* 806DBFD0 818C0038 */ lwz         r12, 0x38(r12)
/* 806DBFD4 7D8903A6 */ mtctr       r12
/* 806DBFD8 4E800421 */ bctrl       
/* 806DBFDC 2C030000 */ cmpwi       r3, 0
/* 806DBFE0 41820220 */ beq-        lbl_806dc200
lbl_806dbfe4:
/* 806DBFE4 807C0008 */ lwz         r3, 8(r28)
/* 806DBFE8 38030001 */ addi        r0, r3, 1
/* 806DBFEC 901C0008 */ stw         r0, 8(r28)
/* 806DBFF0 48000210 */ b           lbl_806dc200
lbl_806dbff4:
/* 806DBFF4 2C1B0000 */ cmpwi       r27, 0
/* 806DBFF8 40820208 */ bne-        lbl_806dc200
/* 806DBFFC 819C0000 */ lwz         r12, 0(r28)
/* 806DC000 7F83E378 */ mr          r3, r28
/* 806DC004 818C0090 */ lwz         r12, 0x90(r12)
/* 806DC008 7D8903A6 */ mtctr       r12
/* 806DC00C 4E800421 */ bctrl       
/* 806DC010 C03F0004 */ lfs         f1, 4(r31)
/* 806DC014 7F83E378 */ mr          r3, r28
/* 806DC018 3880022A */ li          r4, 0x22a
/* 806DC01C 481444E1 */ bl          unk_808204fc
/* 806DC020 C01F0020 */ lfs         f0, 0x20(r31)
/* 806DC024 38600000 */ li          r3, 0
/* 806DC028 38000001 */ li          r0, 1
/* 806DC02C D01C012C */ stfs        f0, 0x12c(r28)
/* 806DC030 D01C0130 */ stfs        f0, 0x130(r28)
/* 806DC034 B07C0134 */ sth         r3, 0x134(r28)
/* 806DC038 981C0136 */ stb         r0, 0x136(r28)
/* 806DC03C 907C0138 */ stw         r3, 0x138(r28)
/* 806DC040 480001C0 */ b           lbl_806dc200
lbl_806dc044:
/* 806DC044 2C040000 */ cmpwi       r4, 0
/* 806DC048 41820010 */ beq-        lbl_806dc058
/* 806DC04C 7F83E378 */ mr          r3, r28
/* 806DC050 38840050 */ addi        r4, r4, 0x50
/* 806DC054 480010D5 */ bl          unk_806dd128
lbl_806dc058:
/* 806DC058 881C0136 */ lbz         r0, 0x136(r28)
/* 806DC05C 2C000000 */ cmpwi       r0, 0
/* 806DC060 408201A0 */ bne-        lbl_806dc200
/* 806DC064 2C1D0000 */ cmpwi       r29, 0
/* 806DC068 4182014C */ beq-        lbl_806dc1b4
/* 806DC06C 801D0078 */ lwz         r0, 0x78(r29)
/* 806DC070 54000421 */ rlwinm.     r0, r0, 0, 0x10, 0x10
/* 806DC074 4082000C */ bne-        lbl_806dc080
/* 806DC078 8B7D006C */ lbz         r27, 0x6c(r29)
/* 806DC07C 48000008 */ b           lbl_806dc084
lbl_806dc080:
/* 806DC080 3B60000C */ li          r27, 0xc
lbl_806dc084:
/* 806DC084 819C0000 */ lwz         r12, 0(r28)
/* 806DC088 7F83E378 */ mr          r3, r28
/* 806DC08C 818C0090 */ lwz         r12, 0x90(r12)
/* 806DC090 7D8903A6 */ mtctr       r12
/* 806DC094 4E800421 */ bctrl       
/* 806DC098 C03F0004 */ lfs         f1, 4(r31)
/* 806DC09C 7F83E378 */ mr          r3, r28
/* 806DC0A0 3880022A */ li          r4, 0x22a
/* 806DC0A4 48144459 */ bl          unk_808204fc
/* 806DC0A8 C01F0020 */ lfs         f0, 0x20(r31)
/* 806DC0AC 38FF0000 */ addi        r7, r31, 0
/* 806DC0B0 39400000 */ li          r10, 0
/* 806DC0B4 38000001 */ li          r0, 1
/* 806DC0B8 981C0136 */ stb         r0, 0x136(r28)
/* 806DC0BC 387C0030 */ addi        r3, r28, 0x30
/* 806DC0C0 893F0000 */ lbz         r9, 0(r31)
/* 806DC0C4 389C00EC */ addi        r4, r28, 0xec
/* 806DC0C8 D01C012C */ stfs        f0, 0x12c(r28)
/* 806DC0CC 38A10008 */ addi        r5, r1, 8
/* 806DC0D0 89070001 */ lbz         r8, 1(r7)
/* 806DC0D4 D01C0130 */ stfs        f0, 0x130(r28)
/* 806DC0D8 88C70002 */ lbz         r6, 2(r7)
/* 806DC0DC B15C0134 */ sth         r10, 0x134(r28)
/* 806DC0E0 88070003 */ lbz         r0, 3(r7)
/* 806DC0E4 915C0138 */ stw         r10, 0x138(r28)
/* 806DC0E8 C03F0038 */ lfs         f1, 0x38(r31)
/* 806DC0EC 99210008 */ stb         r9, 8(r1)
/* 806DC0F0 99010009 */ stb         r8, 9(r1)
/* 806DC0F4 98C1000A */ stb         r6, 0xa(r1)
/* 806DC0F8 9801000B */ stb         r0, 0xb(r1)
/* 806DC0FC 4BFD993D */ bl          unk_806b5a38
/* 806DC100 881C0104 */ lbz         r0, 0x104(r28)
/* 806DC104 2C000000 */ cmpwi       r0, 0
/* 806DC108 41820034 */ beq-        lbl_806dc13c
/* 806DC10C 3C80808C */ lis         r4, lbl_808c5d9c@ha
/* 806DC110 38610018 */ addi        r3, r1, 0x18
/* 806DC114 C0245D9C */ lfs         f1, lbl_808c5d9c@l(r4)
/* 806DC118 389C00EC */ addi        r4, r28, 0xec
/* 806DC11C 4BE386F5 */ bl          Vec3_scale
/* 806DC120 3C60809C */ lis         r3, lbl_809c3618@ha
/* 806DC124 7F67DB78 */ mr          r7, r27
/* 806DC128 80633618 */ lwz         r3, lbl_809c3618@l(r3)
/* 806DC12C 38BC0030 */ addi        r5, r28, 0x30
/* 806DC130 38C10018 */ addi        r6, r1, 0x18
/* 806DC134 38800003 */ li          r4, 3
/* 806DC138 480BDE85 */ bl          unk_80799fbc
lbl_806dc13c:
/* 806DC13C 819C0000 */ lwz         r12, 0(r28)
/* 806DC140 7F83E378 */ mr          r3, r28
/* 806DC144 818C0024 */ lwz         r12, 0x24(r12)
/* 806DC148 7D8903A6 */ mtctr       r12
/* 806DC14C 4E800421 */ bctrl       
/* 806DC150 3C80809C */ lis         r4, spInstance__Q26System10RaceConfig@ha
/* 806DC154 3CA0809C */ lis         r5, spInstance__Q26System11RaceManager@ha
/* 806DC158 80C4D728 */ lwz         r6, spInstance__Q26System10RaceConfig@l(r4)
/* 806DC15C 5464043E */ clrlwi      r4, r3, 0x10
/* 806DC160 8065D730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r5)
/* 806DC164 80060B70 */ lwz         r0, 0xb70(r6)
/* 806DC168 2C000004 */ cmpwi       r0, 4
/* 806DC16C 40820094 */ bne-        lbl_806dc200
/* 806DC170 A0060B9E */ lhz         r0, 0xb9e(r6)
/* 806DC174 2C000005 */ cmpwi       r0, 5
/* 806DC178 40820088 */ bne-        lbl_806dc200
/* 806DC17C 2C040001 */ cmpwi       r4, 1
/* 806DC180 83830010 */ lwz         r28, 0x10(r3)
/* 806DC184 41800020 */ blt-        lbl_806dc1a4
/* 806DC188 819C0000 */ lwz         r12, 0(r28)
/* 806DC18C 7F83E378 */ mr          r3, r28
/* 806DC190 818C0038 */ lwz         r12, 0x38(r12)
/* 806DC194 7D8903A6 */ mtctr       r12
/* 806DC198 4E800421 */ bctrl       
/* 806DC19C 2C030000 */ cmpwi       r3, 0
/* 806DC1A0 41820060 */ beq-        lbl_806dc200
lbl_806dc1a4:
/* 806DC1A4 807C0008 */ lwz         r3, 8(r28)
/* 806DC1A8 38030001 */ addi        r0, r3, 1
/* 806DC1AC 901C0008 */ stw         r0, 8(r28)
/* 806DC1B0 48000050 */ b           lbl_806dc200
lbl_806dc1b4:
/* 806DC1B4 2C1B0000 */ cmpwi       r27, 0
/* 806DC1B8 40820048 */ bne-        lbl_806dc200
/* 806DC1BC 819C0000 */ lwz         r12, 0(r28)
/* 806DC1C0 7F83E378 */ mr          r3, r28
/* 806DC1C4 818C0090 */ lwz         r12, 0x90(r12)
/* 806DC1C8 7D8903A6 */ mtctr       r12
/* 806DC1CC 4E800421 */ bctrl       
/* 806DC1D0 C03F0004 */ lfs         f1, 4(r31)
/* 806DC1D4 7F83E378 */ mr          r3, r28
/* 806DC1D8 3880022A */ li          r4, 0x22a
/* 806DC1DC 48144321 */ bl          unk_808204fc
/* 806DC1E0 C01F0020 */ lfs         f0, 0x20(r31)
/* 806DC1E4 38600000 */ li          r3, 0
/* 806DC1E8 38000001 */ li          r0, 1
/* 806DC1EC D01C012C */ stfs        f0, 0x12c(r28)
/* 806DC1F0 D01C0130 */ stfs        f0, 0x130(r28)
/* 806DC1F4 B07C0134 */ sth         r3, 0x134(r28)
/* 806DC1F8 981C0136 */ stb         r0, 0x136(r28)
/* 806DC1FC 907C0138 */ stw         r3, 0x138(r28)
lbl_806dc200:
/* 806DC200 39610060 */ addi        r11, r1, 0x60
/* 806DC204 7FC3F378 */ mr          r3, r30
/* 806DC208 4B9453E5 */ bl          _restgpr_27
/* 806DC20C 80010064 */ lwz         r0, 0x64(r1)
/* 806DC210 7C0803A6 */ mtlr        r0
/* 806DC214 38210060 */ addi        r1, r1, 0x60
/* 806DC218 4E800020 */ blr         