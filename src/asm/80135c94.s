nofralloc
/* 80135C94 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80135C98 7C0802A6 */ mflr        r0
/* 80135C9C 90010024 */ stw         r0, 0x24(r1)
/* 80135CA0 38000010 */ li          r0, 0x10
/* 80135CA4 93E1001C */ stw         r31, 0x1c(r1)
/* 80135CA8 7C7F1B78 */ mr          r31, r3
/* 80135CAC 93C10018 */ stw         r30, 0x18(r1)
/* 80135CB0 93A10014 */ stw         r29, 0x14(r1)
/* 80135CB4 7C9D2378 */ mr          r29, r4
/* 80135CB8 98010009 */ stb         r0, 9(r1)
/* 80135CBC 88A4000E */ lbz         r5, 0xe(r4)
/* 80135CC0 88030015 */ lbz         r0, 0x15(r3)
/* 80135CC4 98A30014 */ stb         r5, 0x14(r3)
/* 80135CC8 2C000000 */ cmpwi       r0, 0
/* 80135CCC 8804000F */ lbz         r0, 0xf(r4)
/* 80135CD0 9803001B */ stb         r0, 0x1b(r3)
/* 80135CD4 41820098 */ beq-        lbl_80135d6c
/* 80135CD8 880D99F0 */ lbz         r0, lbl_803865f0
/* 80135CDC 38600000 */ li          r3, 0
/* 80135CE0 98610009 */ stb         r3, 9(r1)
/* 80135CE4 28000005 */ cmplwi      r0, 5
/* 80135CE8 41800014 */ blt-        lbl_80135cfc
/* 80135CEC 3C808028 */ lis         r4, lbl_80282ab0@ha
/* 80135CF0 38600504 */ li          r3, 0x504
/* 80135CF4 38842AB0 */ addi        r4, r4, lbl_80282ab0@l
/* 80135CF8 4BFFBA49 */ bl          LogMsg_0
lbl_80135cfc:
/* 80135CFC 881F0016 */ lbz         r0, 0x16(r31)
/* 80135D00 280000FF */ cmplwi      r0, 0xff
/* 80135D04 40820054 */ bne-        lbl_80135d58
/* 80135D08 A09F000E */ lhz         r4, 0xe(r31)
/* 80135D0C 387F0008 */ addi        r3, r31, 8
/* 80135D10 38A10008 */ addi        r5, r1, 8
/* 80135D14 48011C49 */ bl          HID_HostAddDev
/* 80135D18 5460063F */ clrlwi.     r0, r3, 0x18
/* 80135D1C 98610009 */ stb         r3, 9(r1)
/* 80135D20 40820038 */ bne-        lbl_80135d58
/* 80135D24 88810008 */ lbz         r4, 8(r1)
/* 80135D28 7FE3FB78 */ mr          r3, r31
/* 80135D2C A0BF000E */ lhz         r5, 0xe(r31)
/* 80135D30 38C00000 */ li          r6, 0
/* 80135D34 88FF0013 */ lbz         r7, 0x13(r31)
/* 80135D38 891F0015 */ lbz         r8, 0x15(r31)
/* 80135D3C 48001D31 */ bl          bta_hh_add_device_to_list
/* 80135D40 3C608033 */ lis         r3, lbl_80336048@ha
/* 80135D44 88010008 */ lbz         r0, 8(r1)
/* 80135D48 38636048 */ addi        r3, r3, lbl_80336048@l
/* 80135D4C 889F0012 */ lbz         r4, 0x12(r31)
/* 80135D50 7C630214 */ add         r3, r3, r0
/* 80135D54 98830214 */ stb         r4, 0x214(r3)
lbl_80135d58:
/* 80135D58 7FE3FB78 */ mr          r3, r31
/* 80135D5C 38A10009 */ addi        r5, r1, 9
/* 80135D60 38801707 */ li          r4, 0x1707
/* 80135D64 480015F9 */ bl          bta_hh_sm_execute
/* 80135D68 480000A4 */ b           lbl_80135e0c
lbl_80135d6c:
/* 80135D6C 3FC08033 */ lis         r30, lbl_80336048@ha
/* 80135D70 3BDE6048 */ addi        r30, r30, lbl_80336048@l
/* 80135D74 801E0228 */ lwz         r0, 0x228(r30)
/* 80135D78 2C000000 */ cmpwi       r0, 0
/* 80135D7C 40820074 */ bne-        lbl_80135df0
/* 80135D80 806D8C40 */ lwz         r3, lbl_80385840
/* 80135D84 A0630008 */ lhz         r3, 8(r3)
/* 80135D88 4BFF8E2D */ bl          GKI_getbuf
/* 80135D8C 907E0228 */ stw         r3, 0x228(r30)
/* 80135D90 3CC08013 */ lis         r6, bta_hh_sdp_cback@ha
/* 80135D94 80AD8C40 */ lwz         r5, lbl_80385840
/* 80135D98 7C641B78 */ mr          r4, r3
/* 80135D9C 93FE0210 */ stw         r31, 0x210(r30)
/* 80135DA0 387D0008 */ addi        r3, r29, 8
/* 80135DA4 38C65B60 */ addi        r6, r6, bta_hh_sdp_cback@l
/* 80135DA8 A0A50008 */ lhz         r5, 8(r5)
/* 80135DAC 480114F5 */ bl          HID_HostGetSDPRecord
/* 80135DB0 5465063F */ clrlwi.     r5, r3, 0x18
/* 80135DB4 98610009 */ stb         r3, 9(r1)
/* 80135DB8 41820038 */ beq-        lbl_80135df0
/* 80135DBC 880D99F0 */ lbz         r0, lbl_803865f0
/* 80135DC0 28000005 */ cmplwi      r0, 5
/* 80135DC4 41800014 */ blt-        lbl_80135dd8
/* 80135DC8 3C808028 */ lis         r4, lbl_80282ae0@ha
/* 80135DCC 38600504 */ li          r3, 0x504
/* 80135DD0 38842AE0 */ addi        r4, r4, lbl_80282ae0@l
/* 80135DD4 4BFFB985 */ bl          LogMsg_1
lbl_80135dd8:
/* 80135DD8 38000007 */ li          r0, 7
/* 80135DDC 3C608033 */ lis         r3, lbl_80336048@ha
/* 80135DE0 38636048 */ addi        r3, r3, lbl_80336048@l
/* 80135DE4 98010009 */ stb         r0, 9(r1)
/* 80135DE8 38630228 */ addi        r3, r3, 0x228
/* 80135DEC 4BFFC6F1 */ bl          utl_freebuf
lbl_80135df0:
/* 80135DF0 88010009 */ lbz         r0, 9(r1)
/* 80135DF4 2C000000 */ cmpwi       r0, 0
/* 80135DF8 41820014 */ beq-        lbl_80135e0c
/* 80135DFC 7FE3FB78 */ mr          r3, r31
/* 80135E00 38A10009 */ addi        r5, r1, 9
/* 80135E04 38801707 */ li          r4, 0x1707
/* 80135E08 48001555 */ bl          bta_hh_sm_execute
lbl_80135e0c:
/* 80135E0C 80010024 */ lwz         r0, 0x24(r1)
/* 80135E10 83E1001C */ lwz         r31, 0x1c(r1)
/* 80135E14 83C10018 */ lwz         r30, 0x18(r1)
/* 80135E18 83A10014 */ lwz         r29, 0x14(r1)
/* 80135E1C 7C0803A6 */ mtlr        r0
/* 80135E20 38210020 */ addi        r1, r1, 0x20
/* 80135E24 4E800020 */ blr         