nofralloc
/* 805242D8 9421FFE0 */ stwu        r1, -0x20(r1)
/* 805242DC 7C0802A6 */ mflr        r0
/* 805242E0 90010024 */ stw         r0, 0x24(r1)
/* 805242E4 BF61000C */ stmw        r27, 0xc(r1)
/* 805242E8 7C7E1B78 */ mr          r30, r3
/* 805242EC 3BE00000 */ li          r31, 0
/* 805242F0 3B600000 */ li          r27, 0
lbl_805242f4:
/* 805242F4 5760063E */ clrlwi      r0, r27, 0x18
/* 805242F8 1C000920 */ mulli       r0, r0, 0x920
/* 805242FC 7C7E0214 */ add         r3, r30, r0
/* 80524300 88031770 */ lbz         r0, 0x1770(r3)
/* 80524304 38831720 */ addi        r4, r3, 0x1720
/* 80524308 2C000000 */ cmpwi       r0, 0
/* 8052430C 4182003C */ beq-        lbl_80524348
/* 80524310 57E0063E */ clrlwi      r0, r31, 0x18
/* 80524314 38A00000 */ li          r5, 0
/* 80524318 1FA000EC */ mulli       r29, r0, 0xec
/* 8052431C 7C7EEA14 */ add         r3, r30, r29
/* 80524320 3B830004 */ addi        r28, r3, 4
/* 80524324 7F83E378 */ mr          r3, r28
/* 80524328 4BFFD22D */ bl          setController__Q26System4KPadFPQ26System14KPadControllerPQ26System14KPadController
/* 8052432C 7C9EEA14 */ add         r4, r30, r29
/* 80524330 387C00C8 */ addi        r3, r28, 0xc8
/* 80524334 80040008 */ lwz         r0, 8(r4)
/* 80524338 90040010 */ stw         r0, 0x10(r4)
/* 8052433C 80840008 */ lwz         r4, 8(r4)
/* 80524340 4BFFE025 */ bl          init__Q26System18KPadControllerInfoFPQ26System14KPadController
/* 80524344 3BFF0001 */ addi        r31, r31, 1
lbl_80524348:
/* 80524348 3B7B0001 */ addi        r27, r27, 1
/* 8052434C 281B0004 */ cmplwi      r27, 4
/* 80524350 4180FFA4 */ blt+        lbl_805242f4
/* 80524354 57E0063E */ clrlwi      r0, r31, 0x18
/* 80524358 28000004 */ cmplwi      r0, 4
/* 8052435C 40800074 */ bge-        lbl_805243d0
/* 80524360 3B600000 */ li          r27, 0
lbl_80524364:
/* 80524364 5760063E */ clrlwi      r0, r27, 0x18
/* 80524368 1C0000B0 */ mulli       r0, r0, 0xb0
/* 8052436C 7C7E0214 */ add         r3, r30, r0
/* 80524370 88033BF0 */ lbz         r0, 0x3bf0(r3)
/* 80524374 38833BA0 */ addi        r4, r3, 0x3ba0
/* 80524378 2C000000 */ cmpwi       r0, 0
/* 8052437C 41820048 */ beq-        lbl_805243c4
/* 80524380 57E0063E */ clrlwi      r0, r31, 0x18
/* 80524384 38A00000 */ li          r5, 0
/* 80524388 1F8000EC */ mulli       r28, r0, 0xec
/* 8052438C 7C7EE214 */ add         r3, r30, r28
/* 80524390 3BA30004 */ addi        r29, r3, 4
/* 80524394 7FA3EB78 */ mr          r3, r29
/* 80524398 4BFFD1BD */ bl          setController__Q26System4KPadFPQ26System14KPadControllerPQ26System14KPadController
/* 8052439C 7C9EE214 */ add         r4, r30, r28
/* 805243A0 387D00C8 */ addi        r3, r29, 0xc8
/* 805243A4 80040008 */ lwz         r0, 8(r4)
/* 805243A8 90040010 */ stw         r0, 0x10(r4)
/* 805243AC 80840008 */ lwz         r4, 8(r4)
/* 805243B0 4BFFDFB5 */ bl          init__Q26System18KPadControllerInfoFPQ26System14KPadController
/* 805243B4 3BFF0001 */ addi        r31, r31, 1
/* 805243B8 57E0063E */ clrlwi      r0, r31, 0x18
/* 805243BC 28000004 */ cmplwi      r0, 4
/* 805243C0 40800010 */ bge-        lbl_805243d0
lbl_805243c4:
/* 805243C4 3B7B0001 */ addi        r27, r27, 1
/* 805243C8 281B0004 */ cmplwi      r27, 4
/* 805243CC 4180FF98 */ blt+        lbl_80524364
lbl_805243d0:
/* 805243D0 7FFBFB78 */ mr          r27, r31
/* 805243D4 48000040 */ b           lbl_80524414
lbl_805243d8:
/* 805243D8 5760063E */ clrlwi      r0, r27, 0x18
/* 805243DC 389E1690 */ addi        r4, r30, 0x1690
/* 805243E0 1F8000EC */ mulli       r28, r0, 0xec
/* 805243E4 38A00000 */ li          r5, 0
/* 805243E8 7C7EE214 */ add         r3, r30, r28
/* 805243EC 3BA30004 */ addi        r29, r3, 4
/* 805243F0 7FA3EB78 */ mr          r3, r29
/* 805243F4 4BFFD161 */ bl          setController__Q26System4KPadFPQ26System14KPadControllerPQ26System14KPadController
/* 805243F8 7C9EE214 */ add         r4, r30, r28
/* 805243FC 387D00C8 */ addi        r3, r29, 0xc8
/* 80524400 80040008 */ lwz         r0, 8(r4)
/* 80524404 90040010 */ stw         r0, 0x10(r4)
/* 80524408 80840008 */ lwz         r4, 8(r4)
/* 8052440C 4BFFDF59 */ bl          init__Q26System18KPadControllerInfoFPQ26System14KPadController
/* 80524410 3B7B0001 */ addi        r27, r27, 1
lbl_80524414:
/* 80524414 5760063E */ clrlwi      r0, r27, 0x18
/* 80524418 28000004 */ cmplwi      r0, 4
/* 8052441C 4180FFBC */ blt+        lbl_805243d8
/* 80524420 7FE3FB78 */ mr          r3, r31
/* 80524424 BB61000C */ lmw         r27, 0xc(r1)
/* 80524428 80010024 */ lwz         r0, 0x24(r1)
/* 8052442C 7C0803A6 */ mtlr        r0
/* 80524430 38210020 */ addi        r1, r1, 0x20
/* 80524434 4E800020 */ blr         