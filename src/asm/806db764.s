nofralloc
/* 806DB764 9421FFC0 */ stwu        r1, -0x40(r1)
/* 806DB768 7C0802A6 */ mflr        r0
/* 806DB76C 2C060003 */ cmpwi       r6, 3
/* 806DB770 90010044 */ stw         r0, 0x44(r1)
/* 806DB774 93E1003C */ stw         r31, 0x3c(r1)
/* 806DB778 3FE0808A */ lis         r31, lbl_808a0378@ha
/* 806DB77C 3BFF0378 */ addi        r31, r31, lbl_808a0378@l
/* 806DB780 93C10038 */ stw         r30, 0x38(r1)
/* 806DB784 7CBE2B78 */ mr          r30, r5
/* 806DB788 93A10034 */ stw         r29, 0x34(r1)
/* 806DB78C 7C7D1B78 */ mr          r29, r3
/* 806DB790 93810030 */ stw         r28, 0x30(r1)
/* 806DB794 7C9C2378 */ mr          r28, r4
/* 806DB798 41820010 */ beq-        lbl_806db7a8
/* 806DB79C 2C060005 */ cmpwi       r6, 5
/* 806DB7A0 41820170 */ beq-        lbl_806db910
/* 806DB7A4 480002D0 */ b           lbl_806dba74
lbl_806db7a8:
/* 806DB7A8 7F83E378 */ mr          r3, r28
/* 806DB7AC 4BEB555D */ bl          playerPointers_getSpeed
/* 806DB7B0 7C641B78 */ mr          r4, r3
/* 806DB7B4 7FA3EB78 */ mr          r3, r29
/* 806DB7B8 48001971 */ bl          unk_806dd128
/* 806DB7BC 881D0136 */ lbz         r0, 0x136(r29)
/* 806DB7C0 2C000000 */ cmpwi       r0, 0
/* 806DB7C4 408202B0 */ bne-        lbl_806dba74
/* 806DB7C8 7F83E378 */ mr          r3, r28
/* 806DB7CC 38800000 */ li          r4, 0
/* 806DB7D0 4BEB4CA9 */ bl          unk_80590478
/* 806DB7D4 7F83E378 */ mr          r3, r28
/* 806DB7D8 4BEB5285 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 806DB7DC 819D0000 */ lwz         r12, 0(r29)
/* 806DB7E0 7C7C1B78 */ mr          r28, r3
/* 806DB7E4 7FA3EB78 */ mr          r3, r29
/* 806DB7E8 818C0090 */ lwz         r12, 0x90(r12)
/* 806DB7EC 7D8903A6 */ mtctr       r12
/* 806DB7F0 4E800421 */ bctrl       
/* 806DB7F4 C03F0004 */ lfs         f1, 4(r31)
/* 806DB7F8 7FA3EB78 */ mr          r3, r29
/* 806DB7FC 3880022A */ li          r4, 0x22a
/* 806DB800 48144CFD */ bl          unk_808204fc
/* 806DB804 C01F0020 */ lfs         f0, 0x20(r31)
/* 806DB808 38FF0000 */ addi        r7, r31, 0
/* 806DB80C 39400000 */ li          r10, 0
/* 806DB810 38000001 */ li          r0, 1
/* 806DB814 981D0136 */ stb         r0, 0x136(r29)
/* 806DB818 387D0030 */ addi        r3, r29, 0x30
/* 806DB81C 893F0000 */ lbz         r9, 0(r31)
/* 806DB820 389D00EC */ addi        r4, r29, 0xec
/* 806DB824 D01D012C */ stfs        f0, 0x12c(r29)
/* 806DB828 38A1000C */ addi        r5, r1, 0xc
/* 806DB82C 89070001 */ lbz         r8, 1(r7)
/* 806DB830 D01D0130 */ stfs        f0, 0x130(r29)
/* 806DB834 88C70002 */ lbz         r6, 2(r7)
/* 806DB838 B15D0134 */ sth         r10, 0x134(r29)
/* 806DB83C 88070003 */ lbz         r0, 3(r7)
/* 806DB840 915D0138 */ stw         r10, 0x138(r29)
/* 806DB844 C03F0038 */ lfs         f1, 0x38(r31)
/* 806DB848 9921000C */ stb         r9, 0xc(r1)
/* 806DB84C 9901000D */ stb         r8, 0xd(r1)
/* 806DB850 98C1000E */ stb         r6, 0xe(r1)
/* 806DB854 9801000F */ stb         r0, 0xf(r1)
/* 806DB858 4BFDA1E1 */ bl          unk_806b5a38
/* 806DB85C 881D0104 */ lbz         r0, 0x104(r29)
/* 806DB860 2C000000 */ cmpwi       r0, 0
/* 806DB864 41820034 */ beq-        lbl_806db898
/* 806DB868 3C80808C */ lis         r4, lbl_808c5d9c@ha
/* 806DB86C 3861001C */ addi        r3, r1, 0x1c
/* 806DB870 C0245D9C */ lfs         f1, lbl_808c5d9c@l(r4)
/* 806DB874 389D00EC */ addi        r4, r29, 0xec
/* 806DB878 4BE38F99 */ bl          Vec3_scale
/* 806DB87C 3C60809C */ lis         r3, lbl_809c3618@ha
/* 806DB880 38BD0030 */ addi        r5, r29, 0x30
/* 806DB884 80633618 */ lwz         r3, lbl_809c3618@l(r3)
/* 806DB888 38C1001C */ addi        r6, r1, 0x1c
/* 806DB88C 5787063E */ clrlwi      r7, r28, 0x18
/* 806DB890 38800003 */ li          r4, 3
/* 806DB894 480BE729 */ bl          unk_80799fbc
lbl_806db898:
/* 806DB898 819D0000 */ lwz         r12, 0(r29)
/* 806DB89C 7FA3EB78 */ mr          r3, r29
/* 806DB8A0 818C0024 */ lwz         r12, 0x24(r12)
/* 806DB8A4 7D8903A6 */ mtctr       r12
/* 806DB8A8 4E800421 */ bctrl       
/* 806DB8AC 3C80809C */ lis         r4, spInstance__Q26System10RaceConfig@ha
/* 806DB8B0 3CA0809C */ lis         r5, spInstance__Q26System11RaceManager@ha
/* 806DB8B4 80C4D728 */ lwz         r6, spInstance__Q26System10RaceConfig@l(r4)
/* 806DB8B8 5464043E */ clrlwi      r4, r3, 0x10
/* 806DB8BC 8065D730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r5)
/* 806DB8C0 80060B70 */ lwz         r0, 0xb70(r6)
/* 806DB8C4 2C000004 */ cmpwi       r0, 4
/* 806DB8C8 408201AC */ bne-        lbl_806dba74
/* 806DB8CC A0060B9E */ lhz         r0, 0xb9e(r6)
/* 806DB8D0 2C000005 */ cmpwi       r0, 5
/* 806DB8D4 408201A0 */ bne-        lbl_806dba74
/* 806DB8D8 2C040001 */ cmpwi       r4, 1
/* 806DB8DC 83830010 */ lwz         r28, 0x10(r3)
/* 806DB8E0 41800020 */ blt-        lbl_806db900
/* 806DB8E4 819C0000 */ lwz         r12, 0(r28)
/* 806DB8E8 7F83E378 */ mr          r3, r28
/* 806DB8EC 818C0038 */ lwz         r12, 0x38(r12)
/* 806DB8F0 7D8903A6 */ mtctr       r12
/* 806DB8F4 4E800421 */ bctrl       
/* 806DB8F8 2C030000 */ cmpwi       r3, 0
/* 806DB8FC 41820178 */ beq-        lbl_806dba74
lbl_806db900:
/* 806DB900 807C0008 */ lwz         r3, 8(r28)
/* 806DB904 38030001 */ addi        r0, r3, 1
/* 806DB908 901C0008 */ stw         r0, 8(r28)
/* 806DB90C 48000168 */ b           lbl_806dba74
lbl_806db910:
/* 806DB910 7F83E378 */ mr          r3, r28
/* 806DB914 4BEB53F5 */ bl          playerPointers_getSpeed
/* 806DB918 7C641B78 */ mr          r4, r3
/* 806DB91C 7FA3EB78 */ mr          r3, r29
/* 806DB920 48001809 */ bl          unk_806dd128
/* 806DB924 881D0136 */ lbz         r0, 0x136(r29)
/* 806DB928 2C000000 */ cmpwi       r0, 0
/* 806DB92C 40820148 */ bne-        lbl_806dba74
/* 806DB930 7F83E378 */ mr          r3, r28
/* 806DB934 38800000 */ li          r4, 0
/* 806DB938 4BEB4B41 */ bl          unk_80590478
/* 806DB93C 7F83E378 */ mr          r3, r28
/* 806DB940 4BEB511D */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 806DB944 819D0000 */ lwz         r12, 0(r29)
/* 806DB948 7C7C1B78 */ mr          r28, r3
/* 806DB94C 7FA3EB78 */ mr          r3, r29
/* 806DB950 818C0090 */ lwz         r12, 0x90(r12)
/* 806DB954 7D8903A6 */ mtctr       r12
/* 806DB958 4E800421 */ bctrl       
/* 806DB95C C03F0004 */ lfs         f1, 4(r31)
/* 806DB960 7FA3EB78 */ mr          r3, r29
/* 806DB964 3880022A */ li          r4, 0x22a
/* 806DB968 48144B95 */ bl          unk_808204fc
/* 806DB96C C01F0020 */ lfs         f0, 0x20(r31)
/* 806DB970 38FF0000 */ addi        r7, r31, 0
/* 806DB974 39400000 */ li          r10, 0
/* 806DB978 38000001 */ li          r0, 1
/* 806DB97C 981D0136 */ stb         r0, 0x136(r29)
/* 806DB980 387D0030 */ addi        r3, r29, 0x30
/* 806DB984 893F0000 */ lbz         r9, 0(r31)
/* 806DB988 389D00EC */ addi        r4, r29, 0xec
/* 806DB98C D01D012C */ stfs        f0, 0x12c(r29)
/* 806DB990 38A10008 */ addi        r5, r1, 8
/* 806DB994 89070001 */ lbz         r8, 1(r7)
/* 806DB998 D01D0130 */ stfs        f0, 0x130(r29)
/* 806DB99C 88C70002 */ lbz         r6, 2(r7)
/* 806DB9A0 B15D0134 */ sth         r10, 0x134(r29)
/* 806DB9A4 88070003 */ lbz         r0, 3(r7)
/* 806DB9A8 915D0138 */ stw         r10, 0x138(r29)
/* 806DB9AC C03F0038 */ lfs         f1, 0x38(r31)
/* 806DB9B0 99210008 */ stb         r9, 8(r1)
/* 806DB9B4 99010009 */ stb         r8, 9(r1)
/* 806DB9B8 98C1000A */ stb         r6, 0xa(r1)
/* 806DB9BC 9801000B */ stb         r0, 0xb(r1)
/* 806DB9C0 4BFDA079 */ bl          unk_806b5a38
/* 806DB9C4 881D0104 */ lbz         r0, 0x104(r29)
/* 806DB9C8 2C000000 */ cmpwi       r0, 0
/* 806DB9CC 41820034 */ beq-        lbl_806dba00
/* 806DB9D0 3C80808C */ lis         r4, lbl_808c5d9c@ha
/* 806DB9D4 38610010 */ addi        r3, r1, 0x10
/* 806DB9D8 C0245D9C */ lfs         f1, lbl_808c5d9c@l(r4)
/* 806DB9DC 389D00EC */ addi        r4, r29, 0xec
/* 806DB9E0 4BE38E31 */ bl          Vec3_scale
/* 806DB9E4 3C60809C */ lis         r3, lbl_809c3618@ha
/* 806DB9E8 38BD0030 */ addi        r5, r29, 0x30
/* 806DB9EC 80633618 */ lwz         r3, lbl_809c3618@l(r3)
/* 806DB9F0 38C10010 */ addi        r6, r1, 0x10
/* 806DB9F4 5787063E */ clrlwi      r7, r28, 0x18
/* 806DB9F8 38800003 */ li          r4, 3
/* 806DB9FC 480BE5C1 */ bl          unk_80799fbc
lbl_806dba00:
/* 806DBA00 819D0000 */ lwz         r12, 0(r29)
/* 806DBA04 7FA3EB78 */ mr          r3, r29
/* 806DBA08 818C0024 */ lwz         r12, 0x24(r12)
/* 806DBA0C 7D8903A6 */ mtctr       r12
/* 806DBA10 4E800421 */ bctrl       
/* 806DBA14 3C80809C */ lis         r4, spInstance__Q26System10RaceConfig@ha
/* 806DBA18 3CA0809C */ lis         r5, spInstance__Q26System11RaceManager@ha
/* 806DBA1C 80C4D728 */ lwz         r6, spInstance__Q26System10RaceConfig@l(r4)
/* 806DBA20 5464043E */ clrlwi      r4, r3, 0x10
/* 806DBA24 8065D730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r5)
/* 806DBA28 80060B70 */ lwz         r0, 0xb70(r6)
/* 806DBA2C 2C000004 */ cmpwi       r0, 4
/* 806DBA30 40820044 */ bne-        lbl_806dba74
/* 806DBA34 A0060B9E */ lhz         r0, 0xb9e(r6)
/* 806DBA38 2C000005 */ cmpwi       r0, 5
/* 806DBA3C 40820038 */ bne-        lbl_806dba74
/* 806DBA40 2C040001 */ cmpwi       r4, 1
/* 806DBA44 83830010 */ lwz         r28, 0x10(r3)
/* 806DBA48 41800020 */ blt-        lbl_806dba68
/* 806DBA4C 819C0000 */ lwz         r12, 0(r28)
/* 806DBA50 7F83E378 */ mr          r3, r28
/* 806DBA54 818C0038 */ lwz         r12, 0x38(r12)
/* 806DBA58 7D8903A6 */ mtctr       r12
/* 806DBA5C 4E800421 */ bctrl       
/* 806DBA60 2C030000 */ cmpwi       r3, 0
/* 806DBA64 41820010 */ beq-        lbl_806dba74
lbl_806dba68:
/* 806DBA68 807C0008 */ lwz         r3, 8(r28)
/* 806DBA6C 38030001 */ addi        r0, r3, 1
/* 806DBA70 901C0008 */ stw         r0, 8(r28)
lbl_806dba74:
/* 806DBA74 7FC3F378 */ mr          r3, r30
/* 806DBA78 83E1003C */ lwz         r31, 0x3c(r1)
/* 806DBA7C 83C10038 */ lwz         r30, 0x38(r1)
/* 806DBA80 83A10034 */ lwz         r29, 0x34(r1)
/* 806DBA84 83810030 */ lwz         r28, 0x30(r1)
/* 806DBA88 80010044 */ lwz         r0, 0x44(r1)
/* 806DBA8C 7C0803A6 */ mtlr        r0
/* 806DBA90 38210040 */ addi        r1, r1, 0x40
/* 806DBA94 4E800020 */ blr         