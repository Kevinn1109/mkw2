nofralloc
/* 80135ABC 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80135AC0 7C0802A6 */ mflr        r0
/* 80135AC4 90010024 */ stw         r0, 0x24(r1)
/* 80135AC8 38000000 */ li          r0, 0
/* 80135ACC 93E1001C */ stw         r31, 0x1c(r1)
/* 80135AD0 93C10018 */ stw         r30, 0x18(r1)
/* 80135AD4 98010008 */ stb         r0, 8(r1)
/* 80135AD8 48011DA1 */ bl          HID_HostDeregister
/* 80135ADC 5460063F */ clrlwi.     r0, r3, 0x18
/* 80135AE0 4182000C */ beq-        lbl_80135aec
/* 80135AE4 38000006 */ li          r0, 6
/* 80135AE8 98010008 */ stb         r0, 8(r1)
lbl_80135aec:
/* 80135AEC 3FE08033 */ lis         r31, lbl_80336048@ha
/* 80135AF0 3BC00000 */ li          r30, 0
/* 80135AF4 3BFF6048 */ addi        r31, r31, lbl_80336048@l
lbl_80135af8:
/* 80135AF8 57C02CF4 */ rlwinm      r0, r30, 5, 0x13, 0x1a
/* 80135AFC 7C7F0214 */ add         r3, r31, r0
/* 80135B00 38630014 */ addi        r3, r3, 0x14
/* 80135B04 4BFFC9D9 */ bl          utl_freebuf
/* 80135B08 3BDE0001 */ addi        r30, r30, 1
/* 80135B0C 281E0010 */ cmplwi      r30, 0x10
/* 80135B10 4180FFE8 */ blt+        lbl_80135af8
/* 80135B14 3FE08033 */ lis         r31, lbl_80336048@ha
/* 80135B18 3BFF6048 */ addi        r31, r31, lbl_80336048@l
/* 80135B1C 387F0228 */ addi        r3, r31, 0x228
/* 80135B20 4BFFC9BD */ bl          utl_freebuf
/* 80135B24 819F0224 */ lwz         r12, 0x224(r31)
/* 80135B28 38810008 */ addi        r4, r1, 8
/* 80135B2C 38600001 */ li          r3, 1
/* 80135B30 7D8903A6 */ mtctr       r12
/* 80135B34 4E800421 */ bctrl       
/* 80135B38 7FE3FB78 */ mr          r3, r31
/* 80135B3C 38800000 */ li          r4, 0
/* 80135B40 38A00230 */ li          r5, 0x230
/* 80135B44 4BED04F5 */ bl          memset
/* 80135B48 80010024 */ lwz         r0, 0x24(r1)
/* 80135B4C 83E1001C */ lwz         r31, 0x1c(r1)
/* 80135B50 83C10018 */ lwz         r30, 0x18(r1)
/* 80135B54 7C0803A6 */ mtlr        r0
/* 80135B58 38210020 */ addi        r1, r1, 0x20
/* 80135B5C 4E800020 */ blr         