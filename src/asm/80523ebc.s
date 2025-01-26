nofralloc
/* 80523EBC 9421FFD0 */ stwu        r1, -0x30(r1)
/* 80523EC0 7C0802A6 */ mflr        r0
/* 80523EC4 90010034 */ stw         r0, 0x34(r1)
/* 80523EC8 BF210014 */ stmw        r25, 0x14(r1)
/* 80523ECC 1FC400EC */ mulli       r30, r4, 0xec
/* 80523ED0 7C791B78 */ mr          r25, r3
/* 80523ED4 7C9A2378 */ mr          r26, r4
/* 80523ED8 7C63F214 */ add         r3, r3, r30
/* 80523EDC 7CBB2B78 */ mr          r27, r5
/* 80523EE0 3BA00000 */ li          r29, 0
/* 80523EE4 80630008 */ lwz         r3, 8(r3)
/* 80523EE8 2C030000 */ cmpwi       r3, 0
/* 80523EEC 41820018 */ beq-        lbl_80523f04
/* 80523EF0 81830000 */ lwz         r12, 0(r3)
/* 80523EF4 818C0010 */ lwz         r12, 0x10(r12)
/* 80523EF8 7D8903A6 */ mtctr       r12
/* 80523EFC 4E800421 */ bctrl       
/* 80523F00 48000008 */ b           lbl_80523f08
lbl_80523f04:
/* 80523F04 3860FFFF */ li          r3, -1
lbl_80523f08:
/* 80523F08 2C03FFFF */ cmpwi       r3, -1
/* 80523F0C 408201C4 */ bne-        lbl_805240d0
/* 80523F10 3B800000 */ li          r28, 0
lbl_80523f14:
/* 80523F14 5780063E */ clrlwi      r0, r28, 0x18
/* 80523F18 38800000 */ li          r4, 0
/* 80523F1C 1C000920 */ mulli       r0, r0, 0x920
/* 80523F20 38A00000 */ li          r5, 0
/* 80523F24 7C790214 */ add         r3, r25, r0
/* 80523F28 3BE31720 */ addi        r31, r3, 0x1720
/* 80523F2C 4800002C */ b           lbl_80523f58
lbl_80523f30:
/* 80523F30 54A0063E */ clrlwi      r0, r5, 0x18
/* 80523F34 7C1A0040 */ cmplw       r26, r0
/* 80523F38 4182001C */ beq-        lbl_80523f54
/* 80523F3C 1C0000EC */ mulli       r0, r0, 0xec
/* 80523F40 7C790214 */ add         r3, r25, r0
/* 80523F44 80030008 */ lwz         r0, 8(r3)
/* 80523F48 7C00F840 */ cmplw       r0, r31
/* 80523F4C 40820008 */ bne-        lbl_80523f54
/* 80523F50 38800001 */ li          r4, 1
lbl_80523f54:
/* 80523F54 38A50001 */ addi        r5, r5, 1
lbl_80523f58:
/* 80523F58 54A0063E */ clrlwi      r0, r5, 0x18
/* 80523F5C 28000004 */ cmplwi      r0, 4
/* 80523F60 4080000C */ bge-        lbl_80523f6c
/* 80523F64 2C040000 */ cmpwi       r4, 0
/* 80523F68 4182FFC8 */ beq+        lbl_80523f30
lbl_80523f6c:
/* 80523F6C 2C040000 */ cmpwi       r4, 0
/* 80523F70 4082007C */ bne-        lbl_80523fec
/* 80523F74 819F0000 */ lwz         r12, 0(r31)
/* 80523F78 7FE3FB78 */ mr          r3, r31
/* 80523F7C 818C0010 */ lwz         r12, 0x10(r12)
/* 80523F80 7D8903A6 */ mtctr       r12
/* 80523F84 4E800421 */ bctrl       
/* 80523F88 2C030004 */ cmpwi       r3, 4
/* 80523F8C 41820060 */ beq-        lbl_80523fec
/* 80523F90 A07F0020 */ lhz         r3, 0x20(r31)
/* 80523F94 A01F0060 */ lhz         r0, 0x60(r31)
/* 80523F98 7C600078 */ andc        r0, r3, r0
/* 80523F9C 540007FF */ clrlwi.     r0, r0, 0x1f
/* 80523FA0 4182004C */ beq-        lbl_80523fec
/* 80523FA4 881F0050 */ lbz         r0, 0x50(r31)
/* 80523FA8 3BA00001 */ li          r29, 1
/* 80523FAC 2C000000 */ cmpwi       r0, 0
/* 80523FB0 41820048 */ beq-        lbl_80523ff8
/* 80523FB4 2C1B0000 */ cmpwi       r27, 0
/* 80523FB8 40820018 */ bne-        lbl_80523fd0
/* 80523FBC 7C79F214 */ add         r3, r25, r30
/* 80523FC0 7FE4FB78 */ mr          r4, r31
/* 80523FC4 38630004 */ addi        r3, r3, 4
/* 80523FC8 38A00000 */ li          r5, 0
/* 80523FCC 4BFFD589 */ bl          setController__Q26System4KPadFPQ26System14KPadControllerPQ26System14KPadController
lbl_80523fd0:
/* 80523FD0 7C99F214 */ add         r4, r25, r30
/* 80523FD4 80040008 */ lwz         r0, 8(r4)
/* 80523FD8 386400CC */ addi        r3, r4, 0xcc
/* 80523FDC 90040010 */ stw         r0, 0x10(r4)
/* 80523FE0 80840008 */ lwz         r4, 8(r4)
/* 80523FE4 4BFFE381 */ bl          init__Q26System18KPadControllerInfoFPQ26System14KPadController
/* 80523FE8 48000010 */ b           lbl_80523ff8
lbl_80523fec:
/* 80523FEC 3B9C0001 */ addi        r28, r28, 1
/* 80523FF0 281C0004 */ cmplwi      r28, 4
/* 80523FF4 4180FF20 */ blt+        lbl_80523f14
lbl_80523ff8:
/* 80523FF8 2C1D0000 */ cmpwi       r29, 0
/* 80523FFC 408200D8 */ bne-        lbl_805240d4
/* 80524000 38000004 */ li          r0, 4
/* 80524004 38A00000 */ li          r5, 0
/* 80524008 7C0903A6 */ mtctr       r0
lbl_8052400c:
/* 8052400C 54A0063E */ clrlwi      r0, r5, 0x18
/* 80524010 38C00000 */ li          r6, 0
/* 80524014 1C0000B0 */ mulli       r0, r0, 0xb0
/* 80524018 38E00000 */ li          r7, 0
/* 8052401C 7C790214 */ add         r3, r25, r0
/* 80524020 38833BA0 */ addi        r4, r3, 0x3ba0
/* 80524024 4800002C */ b           lbl_80524050
lbl_80524028:
/* 80524028 54E0063E */ clrlwi      r0, r7, 0x18
/* 8052402C 7C1A0040 */ cmplw       r26, r0
/* 80524030 4182001C */ beq-        lbl_8052404c
/* 80524034 1C0000EC */ mulli       r0, r0, 0xec
/* 80524038 7C790214 */ add         r3, r25, r0
/* 8052403C 80030008 */ lwz         r0, 8(r3)
/* 80524040 7C002040 */ cmplw       r0, r4
/* 80524044 40820008 */ bne-        lbl_8052404c
/* 80524048 38C00001 */ li          r6, 1
lbl_8052404c:
/* 8052404C 38E70001 */ addi        r7, r7, 1
lbl_80524050:
/* 80524050 54E0063E */ clrlwi      r0, r7, 0x18
/* 80524054 28000004 */ cmplwi      r0, 4
/* 80524058 4080000C */ bge-        lbl_80524064
/* 8052405C 2C060000 */ cmpwi       r6, 0
/* 80524060 4182FFC8 */ beq+        lbl_80524028
lbl_80524064:
/* 80524064 2C060000 */ cmpwi       r6, 0
/* 80524068 4082005C */ bne-        lbl_805240c4
/* 8052406C A0640020 */ lhz         r3, 0x20(r4)
/* 80524070 A0040060 */ lhz         r0, 0x60(r4)
/* 80524074 7C600078 */ andc        r0, r3, r0
/* 80524078 540007FF */ clrlwi.     r0, r0, 0x1f
/* 8052407C 41820048 */ beq-        lbl_805240c4
/* 80524080 88040050 */ lbz         r0, 0x50(r4)
/* 80524084 3BA00001 */ li          r29, 1
/* 80524088 2C000000 */ cmpwi       r0, 0
/* 8052408C 41820048 */ beq-        lbl_805240d4
/* 80524090 2C1B0000 */ cmpwi       r27, 0
/* 80524094 40820014 */ bne-        lbl_805240a8
/* 80524098 7C79F214 */ add         r3, r25, r30
/* 8052409C 38A00000 */ li          r5, 0
/* 805240A0 38630004 */ addi        r3, r3, 4
/* 805240A4 4BFFD4B1 */ bl          setController__Q26System4KPadFPQ26System14KPadControllerPQ26System14KPadController
lbl_805240a8:
/* 805240A8 7C99F214 */ add         r4, r25, r30
/* 805240AC 80040008 */ lwz         r0, 8(r4)
/* 805240B0 386400CC */ addi        r3, r4, 0xcc
/* 805240B4 90040010 */ stw         r0, 0x10(r4)
/* 805240B8 80840008 */ lwz         r4, 8(r4)
/* 805240BC 4BFFE2A9 */ bl          init__Q26System18KPadControllerInfoFPQ26System14KPadController
/* 805240C0 48000014 */ b           lbl_805240d4
lbl_805240c4:
/* 805240C4 38A50001 */ addi        r5, r5, 1
/* 805240C8 4200FF44 */ bdnz        lbl_8052400c
/* 805240CC 48000008 */ b           lbl_805240d4
lbl_805240d0:
/* 805240D0 3BA00001 */ li          r29, 1
lbl_805240d4:
/* 805240D4 7FA3EB78 */ mr          r3, r29
/* 805240D8 BB210014 */ lmw         r25, 0x14(r1)
/* 805240DC 80010034 */ lwz         r0, 0x34(r1)
/* 805240E0 7C0803A6 */ mtlr        r0
/* 805240E4 38210030 */ addi        r1, r1, 0x30
/* 805240E8 4E800020 */ blr         