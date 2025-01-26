nofralloc
/* 80523990 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80523994 7C0802A6 */ mflr        r0
/* 80523998 2C050000 */ cmpwi       r5, 0
/* 8052399C 39000000 */ li          r8, 0
/* 805239A0 90010014 */ stw         r0, 0x14(r1)
/* 805239A4 93E1000C */ stw         r31, 0xc(r1)
/* 805239A8 7C9F2378 */ mr          r31, r4
/* 805239AC 41820010 */ beq-        lbl_805239bc
/* 805239B0 2C050001 */ cmpwi       r5, 1
/* 805239B4 4182004C */ beq-        lbl_80523a00
/* 805239B8 48000088 */ b           lbl_80523a40
lbl_805239bc:
/* 805239BC 1C060920 */ mulli       r0, r6, 0x920
/* 805239C0 7C630214 */ add         r3, r3, r0
/* 805239C4 88031770 */ lbz         r0, 0x1770(r3)
/* 805239C8 38831720 */ addi        r4, r3, 0x1720
/* 805239CC 2C000000 */ cmpwi       r0, 0
/* 805239D0 41820070 */ beq-        lbl_80523a40
/* 805239D4 2C070000 */ cmpwi       r7, 0
/* 805239D8 40820010 */ bne-        lbl_805239e8
/* 805239DC 7FE3FB78 */ mr          r3, r31
/* 805239E0 38A00000 */ li          r5, 0
/* 805239E4 4BFFDB71 */ bl          setController__Q26System4KPadFPQ26System14KPadControllerPQ26System14KPadController
lbl_805239e8:
/* 805239E8 809F0004 */ lwz         r4, 4(r31)
/* 805239EC 387F00C8 */ addi        r3, r31, 0xc8
/* 805239F0 909F000C */ stw         r4, 0xc(r31)
/* 805239F4 4BFFE971 */ bl          init__Q26System18KPadControllerInfoFPQ26System14KPadController
/* 805239F8 39000001 */ li          r8, 1
/* 805239FC 48000044 */ b           lbl_80523a40
lbl_80523a00:
/* 80523A00 1C0600B0 */ mulli       r0, r6, 0xb0
/* 80523A04 7C630214 */ add         r3, r3, r0
/* 80523A08 88033BF0 */ lbz         r0, 0x3bf0(r3)
/* 80523A0C 38833BA0 */ addi        r4, r3, 0x3ba0
/* 80523A10 2C000000 */ cmpwi       r0, 0
/* 80523A14 4182002C */ beq-        lbl_80523a40
/* 80523A18 2C070000 */ cmpwi       r7, 0
/* 80523A1C 40820010 */ bne-        lbl_80523a2c
/* 80523A20 7FE3FB78 */ mr          r3, r31
/* 80523A24 38A00000 */ li          r5, 0
/* 80523A28 4BFFDB2D */ bl          setController__Q26System4KPadFPQ26System14KPadControllerPQ26System14KPadController
lbl_80523a2c:
/* 80523A2C 809F0004 */ lwz         r4, 4(r31)
/* 80523A30 387F00C8 */ addi        r3, r31, 0xc8
/* 80523A34 909F000C */ stw         r4, 0xc(r31)
/* 80523A38 4BFFE92D */ bl          init__Q26System18KPadControllerInfoFPQ26System14KPadController
/* 80523A3C 39000001 */ li          r8, 1
lbl_80523a40:
/* 80523A40 83E1000C */ lwz         r31, 0xc(r1)
/* 80523A44 7D034378 */ mr          r3, r8
/* 80523A48 80010014 */ lwz         r0, 0x14(r1)
/* 80523A4C 7C0803A6 */ mtlr        r0
/* 80523A50 38210010 */ addi        r1, r1, 0x10
/* 80523A54 4E800020 */ blr         