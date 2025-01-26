nofralloc
/* 8051FBE0 A0650006 */ lhz         r3, 6(r5)
/* 8051FBE4 38C00000 */ li          r6, 0
/* 8051FBE8 70600900 */ andi.       r0, r3, 0x900
/* 8051FBEC 41820008 */ beq-        lbl_8051fbf4
/* 8051FBF0 60C60001 */ ori         r6, r6, 1
lbl_8051fbf4:
/* 8051FBF4 5460056D */ rlwinm.     r0, r3, 0, 0x15, 0x16
/* 8051FBF8 4182000C */ beq-        lbl_8051fc04
/* 8051FBFC 60C00002 */ ori         r0, r6, 2
/* 8051FC00 5406043E */ clrlwi      r6, r0, 0x10
lbl_8051fc04:
/* 8051FC04 546006F7 */ rlwinm.     r0, r3, 0, 0x1b, 0x1b
/* 8051FC08 4182000C */ beq-        lbl_8051fc14
/* 8051FC0C 60C00004 */ ori         r0, r6, 4
/* 8051FC10 5406043E */ clrlwi      r6, r0, 0x10
lbl_8051fc14:
/* 8051FC14 546007BD */ rlwinm.     r0, r3, 0, 0x1e, 0x1e
/* 8051FC18 4182000C */ beq-        lbl_8051fc24
/* 8051FC1C 60C00008 */ ori         r0, r6, 8
/* 8051FC20 5406043E */ clrlwi      r6, r0, 0x10
lbl_8051fc24:
/* 8051FC24 546007FF */ clrlwi.     r0, r3, 0x1f
/* 8051FC28 4182000C */ beq-        lbl_8051fc34
/* 8051FC2C 60C00010 */ ori         r0, r6, 0x10
/* 8051FC30 5406043E */ clrlwi      r6, r0, 0x10
lbl_8051fc34:
/* 8051FC34 54600739 */ rlwinm.     r0, r3, 0, 0x1c, 0x1c
/* 8051FC38 4182000C */ beq-        lbl_8051fc44
/* 8051FC3C 60C00020 */ ori         r0, r6, 0x20
/* 8051FC40 5406043E */ clrlwi      r6, r0, 0x10
lbl_8051fc44:
/* 8051FC44 5460077B */ rlwinm.     r0, r3, 0, 0x1d, 0x1d
/* 8051FC48 4182000C */ beq-        lbl_8051fc54
/* 8051FC4C 60C00040 */ ori         r0, r6, 0x40
/* 8051FC50 5406043E */ clrlwi      r6, r0, 0x10
lbl_8051fc54:
/* 8051FC54 54600421 */ rlwinm.     r0, r3, 0, 0x10, 0x10
/* 8051FC58 4182000C */ beq-        lbl_8051fc64
/* 8051FC5C 60C00080 */ ori         r0, r6, 0x80
/* 8051FC60 5406043E */ clrlwi      r6, r0, 0x10
lbl_8051fc64:
/* 8051FC64 546004E7 */ rlwinm.     r0, r3, 0, 0x13, 0x13
/* 8051FC68 4182000C */ beq-        lbl_8051fc74
/* 8051FC6C 60C00100 */ ori         r0, r6, 0x100
/* 8051FC70 5406043E */ clrlwi      r6, r0, 0x10
lbl_8051fc74:
/* 8051FC74 B0C40004 */ sth         r6, 4(r4)
/* 8051FC78 A0050006 */ lhz         r0, 6(r5)
/* 8051FC7C B0040006 */ sth         r0, 6(r4)
/* 8051FC80 4E800020 */ blr         