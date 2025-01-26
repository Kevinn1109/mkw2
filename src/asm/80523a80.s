nofralloc
/* 80523A80 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80523A84 7C0802A6 */ mflr        r0
/* 80523A88 90010024 */ stw         r0, 0x24(r1)
/* 80523A8C 80050004 */ lwz         r0, 4(r5)
/* 80523A90 BF61000C */ stmw        r27, 0xc(r1)
/* 80523A94 7C7B1B78 */ mr          r27, r3
/* 80523A98 2C000000 */ cmpwi       r0, 0
/* 80523A9C 7C9C2378 */ mr          r28, r4
/* 80523AA0 7CBD2B78 */ mr          r29, r5
/* 80523AA4 7CDE3378 */ mr          r30, r6
/* 80523AA8 4182001C */ beq-        lbl_80523ac4
/* 80523AAC 7C030378 */ mr          r3, r0
/* 80523AB0 81830000 */ lwz         r12, 0(r3)
/* 80523AB4 818C0010 */ lwz         r12, 0x10(r12)
/* 80523AB8 7D8903A6 */ mtctr       r12
/* 80523ABC 4E800421 */ bctrl       
/* 80523AC0 48000008 */ b           lbl_80523ac8
lbl_80523ac4:
/* 80523AC4 3860FFFF */ li          r3, -1
lbl_80523ac8:
/* 80523AC8 28030002 */ cmplwi      r3, 2
/* 80523ACC 3BE00003 */ li          r31, 3
/* 80523AD0 40810014 */ ble-        lbl_80523ae4
/* 80523AD4 2C030003 */ cmpwi       r3, 3
/* 80523AD8 40820010 */ bne-        lbl_80523ae8
/* 80523ADC 3BE00001 */ li          r31, 1
/* 80523AE0 48000008 */ b           lbl_80523ae8
lbl_80523ae4:
/* 80523AE4 3BE00000 */ li          r31, 0
lbl_80523ae8:
/* 80523AE8 807D0008 */ lwz         r3, 8(r29)
/* 80523AEC 2C030000 */ cmpwi       r3, 0
/* 80523AF0 41820018 */ beq-        lbl_80523b08
/* 80523AF4 81830000 */ lwz         r12, 0(r3)
/* 80523AF8 818C0034 */ lwz         r12, 0x34(r12)
/* 80523AFC 7D8903A6 */ mtctr       r12
/* 80523B00 4E800421 */ bctrl       
/* 80523B04 48000008 */ b           lbl_80523b0c
lbl_80523b08:
/* 80523B08 3860FFFF */ li          r3, -1
lbl_80523b0c:
/* 80523B0C 2C1F0000 */ cmpwi       r31, 0
/* 80523B10 38A00000 */ li          r5, 0
/* 80523B14 41820010 */ beq-        lbl_80523b24
/* 80523B18 2C1F0001 */ cmpwi       r31, 1
/* 80523B1C 41820050 */ beq-        lbl_80523b6c
/* 80523B20 48000090 */ b           lbl_80523bb0
lbl_80523b24:
/* 80523B24 5460063E */ clrlwi      r0, r3, 0x18
/* 80523B28 1C000920 */ mulli       r0, r0, 0x920
/* 80523B2C 7C7B0214 */ add         r3, r27, r0
/* 80523B30 88031770 */ lbz         r0, 0x1770(r3)
/* 80523B34 38831720 */ addi        r4, r3, 0x1720
/* 80523B38 2C000000 */ cmpwi       r0, 0
/* 80523B3C 41820074 */ beq-        lbl_80523bb0
/* 80523B40 2C1E0000 */ cmpwi       r30, 0
/* 80523B44 40820010 */ bne-        lbl_80523b54
/* 80523B48 7F83E378 */ mr          r3, r28
/* 80523B4C 38A00000 */ li          r5, 0
/* 80523B50 4BFFDA05 */ bl          setController__Q26System4KPadFPQ26System14KPadControllerPQ26System14KPadController
lbl_80523b54:
/* 80523B54 809C0004 */ lwz         r4, 4(r28)
/* 80523B58 387C00C8 */ addi        r3, r28, 0xc8
/* 80523B5C 909C000C */ stw         r4, 0xc(r28)
/* 80523B60 4BFFE805 */ bl          init__Q26System18KPadControllerInfoFPQ26System14KPadController
/* 80523B64 38A00001 */ li          r5, 1
/* 80523B68 48000048 */ b           lbl_80523bb0
lbl_80523b6c:
/* 80523B6C 5460063E */ clrlwi      r0, r3, 0x18
/* 80523B70 1C0000B0 */ mulli       r0, r0, 0xb0
/* 80523B74 7C7B0214 */ add         r3, r27, r0
/* 80523B78 88033BF0 */ lbz         r0, 0x3bf0(r3)
/* 80523B7C 38833BA0 */ addi        r4, r3, 0x3ba0
/* 80523B80 2C000000 */ cmpwi       r0, 0
/* 80523B84 4182002C */ beq-        lbl_80523bb0
/* 80523B88 2C1E0000 */ cmpwi       r30, 0
/* 80523B8C 40820010 */ bne-        lbl_80523b9c
/* 80523B90 7F83E378 */ mr          r3, r28
/* 80523B94 38A00000 */ li          r5, 0
/* 80523B98 4BFFD9BD */ bl          setController__Q26System4KPadFPQ26System14KPadControllerPQ26System14KPadController
lbl_80523b9c:
/* 80523B9C 809C0004 */ lwz         r4, 4(r28)
/* 80523BA0 387C00C8 */ addi        r3, r28, 0xc8
/* 80523BA4 909C000C */ stw         r4, 0xc(r28)
/* 80523BA8 4BFFE7BD */ bl          init__Q26System18KPadControllerInfoFPQ26System14KPadController
/* 80523BAC 38A00001 */ li          r5, 1
lbl_80523bb0:
/* 80523BB0 BB61000C */ lmw         r27, 0xc(r1)
/* 80523BB4 7CA32B78 */ mr          r3, r5
/* 80523BB8 80010024 */ lwz         r0, 0x24(r1)
/* 80523BBC 7C0803A6 */ mtlr        r0
/* 80523BC0 38210020 */ addi        r1, r1, 0x20
/* 80523BC4 4E800020 */ blr         