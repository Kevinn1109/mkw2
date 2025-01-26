nofralloc
/* 8078DE60 9421FF80 */ stwu        r1, -0x80(r1)
/* 8078DE64 7C0802A6 */ mflr        r0
/* 8078DE68 3CA0809C */ lis         r5, lbl_809c19b8@ha
/* 8078DE6C 90010084 */ stw         r0, 0x84(r1)
/* 8078DE70 BEA10054 */ stmw        r21, 0x54(r1)
/* 8078DE74 5496103A */ slwi        r22, r4, 2
/* 8078DE78 7C7D1B78 */ mr          r29, r3
/* 8078DE7C 80A519B8 */ lwz         r5, lbl_809c19b8@l(r5)
/* 8078DE80 80A50018 */ lwz         r5, 0x18(r5)
/* 8078DE84 7CA5B02E */ lwzx        r5, r5, r22
/* 8078DE88 A0050334 */ lhz         r0, 0x334(r5)
/* 8078DE8C 541EF7FE */ rlwinm      r30, r0, 0x1e, 0x1f, 0x1f
/* 8078DE90 4BE2B439 */ bl          unk_805b92c8
/* 8078DE94 7FFDB214 */ add         r31, r29, r22
/* 8078DE98 7FC30034 */ cntlzw      r3, r30
/* 8078DE9C 801F0074 */ lwz         r0, 0x74(r31)
/* 8078DEA0 5463D97E */ srwi        r3, r3, 5
/* 8078DEA4 7C001800 */ cmpw        r0, r3
/* 8078DEA8 4182012C */ beq-        lbl_8078dfd4
/* 8078DEAC 2C1E0000 */ cmpwi       r30, 0
/* 8078DEB0 4182002C */ beq-        lbl_8078dedc
/* 8078DEB4 3CC0808A */ lis         r6, lbl_808a4b60@ha
/* 8078DEB8 8CA64B60 */ lbzu        r5, lbl_808a4b60@l(r6)
/* 8078DEBC 98A10048 */ stb         r5, 0x48(r1)
/* 8078DEC0 88860001 */ lbz         r4, 1(r6)
/* 8078DEC4 88660002 */ lbz         r3, 2(r6)
/* 8078DEC8 88060003 */ lbz         r0, 3(r6)
/* 8078DECC 98810049 */ stb         r4, 0x49(r1)
/* 8078DED0 9861004A */ stb         r3, 0x4a(r1)
/* 8078DED4 9801004B */ stb         r0, 0x4b(r1)
/* 8078DED8 48000028 */ b           lbl_8078df00
lbl_8078dedc:
/* 8078DEDC 3CC0808A */ lis         r6, lbl_808a4b5c@ha
/* 8078DEE0 8CA64B5C */ lbzu        r5, lbl_808a4b5c@l(r6)
/* 8078DEE4 98A10048 */ stb         r5, 0x48(r1)
/* 8078DEE8 88860001 */ lbz         r4, 1(r6)
/* 8078DEEC 88660002 */ lbz         r3, 2(r6)
/* 8078DEF0 88060003 */ lbz         r0, 3(r6)
/* 8078DEF4 98810049 */ stb         r4, 0x49(r1)
/* 8078DEF8 9861004A */ stb         r3, 0x4a(r1)
/* 8078DEFC 9801004B */ stb         r0, 0x4b(r1)
lbl_8078df00:
/* 8078DF00 3EC0808D */ lis         r22, lbl_808d1860@ha
/* 8078DF04 83810048 */ lwz         r28, 0x48(r1)
/* 8078DF08 3AD61860 */ addi        r22, r22, lbl_808d1860@l
/* 8078DF0C 3AA00000 */ li          r21, 0
/* 8078DF10 3F00808B */ lis         r24, lbl_808b7118@ha
/* 8078DF14 3F20808B */ lis         r25, lbl_808b70fc@ha
/* 8078DF18 3F40808B */ lis         r26, lbl_808b4818@ha
/* 8078DF1C 3F60808D */ lis         r27, lbl_808d18cc@ha
/* 8078DF20 4800009C */ b           lbl_8078dfbc
lbl_8078df24:
/* 8078DF24 801D000C */ lwz         r0, 0xc(r29)
/* 8078DF28 3861000C */ addi        r3, r1, 0xc
/* 8078DF2C 9001000C */ stw         r0, 0xc(r1)
/* 8078DF30 80960000 */ lwz         r4, 0(r22)
/* 8078DF34 4B8C09BD */ bl          unk_8004e8f0
/* 8078DF38 2C030000 */ cmpwi       r3, 0
/* 8078DF3C 7C771B78 */ mr          r23, r3
/* 8078DF40 40820020 */ bne-        lbl_8078df60
/* 8078DF44 38787118 */ addi        r3, r24, lbl_808b7118@l
/* 8078DF48 38B970FC */ addi        r5, r25, lbl_808b70fc@l
/* 8078DF4C 38DA4818 */ addi        r6, r26, lbl_808b4818@l
/* 8078DF50 38FB18CC */ addi        r7, r27, lbl_808d18cc@l
/* 8078DF54 3880026D */ li          r4, 0x26d
/* 8078DF58 4CC63182 */ crclr       cr1eq
/* 8078DF5C 4B898055 */ bl          Panic
lbl_8078df60:
/* 8078DF60 809D0010 */ lwz         r4, 0x10(r29)
/* 8078DF64 38610014 */ addi        r3, r1, 0x14
/* 8078DF68 80B7000C */ lwz         r5, 0xc(r23)
/* 8078DF6C 80040004 */ lwz         r0, 4(r4)
/* 8078DF70 2C000001 */ cmpwi       r0, 1
/* 8078DF74 4082000C */ bne-        lbl_8078df80
/* 8078DF78 80840000 */ lwz         r4, 0(r4)
/* 8078DF7C 48000008 */ b           lbl_8078df84
lbl_8078df80:
/* 8078DF80 38800000 */ li          r4, 0
lbl_8078df84:
/* 8078DF84 4B8E512D */ bl          unk_800730b0
/* 8078DF88 38610014 */ addi        r3, r1, 0x14
/* 8078DF8C 4B8E5035 */ bl          unk_80072fc0
/* 8078DF90 90610010 */ stw         r3, 0x10(r1)
/* 8078DF94 38610010 */ addi        r3, r1, 0x10
/* 8078DF98 38A10008 */ addi        r5, r1, 8
/* 8078DF9C 38800001 */ li          r4, 1
/* 8078DFA0 93810008 */ stw         r28, 8(r1)
/* 8078DFA4 4B8C2EFD */ bl          unk_80050ea0
/* 8078DFA8 38610010 */ addi        r3, r1, 0x10
/* 8078DFAC 38800000 */ li          r4, 0
/* 8078DFB0 4B8C24C1 */ bl          unk_80050470
/* 8078DFB4 3AD60004 */ addi        r22, r22, 4
/* 8078DFB8 3AB50001 */ addi        r21, r21, 1
lbl_8078dfbc:
/* 8078DFBC A01D0070 */ lhz         r0, 0x70(r29)
/* 8078DFC0 7C150040 */ cmplw       r21, r0
/* 8078DFC4 4180FF60 */ blt+        lbl_8078df24
/* 8078DFC8 7FC00034 */ cntlzw      r0, r30
/* 8078DFCC 5400D97E */ srwi        r0, r0, 5
/* 8078DFD0 901F0074 */ stw         r0, 0x74(r31)
lbl_8078dfd4:
/* 8078DFD4 BAA10054 */ lmw         r21, 0x54(r1)
/* 8078DFD8 80010084 */ lwz         r0, 0x84(r1)
/* 8078DFDC 7C0803A6 */ mtlr        r0
/* 8078DFE0 38210080 */ addi        r1, r1, 0x80
/* 8078DFE4 4E800020 */ blr         