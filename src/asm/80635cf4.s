nofralloc
/* 80635CF4 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80635CF8 7C0802A6 */ mflr        r0
/* 80635CFC 90010014 */ stw         r0, 0x14(r1)
/* 80635D00 38000000 */ li          r0, 0
/* 80635D04 93E1000C */ stw         r31, 0xc(r1)
/* 80635D08 7C7F1B78 */ mr          r31, r3
/* 80635D0C 93C10008 */ stw         r30, 8(r1)
/* 80635D10 80830000 */ lwz         r4, 0(r3)
/* 80635D14 90030024 */ stw         r0, 0x24(r3)
/* 80635D18 2C040000 */ cmpwi       r4, 0
/* 80635D1C 41820010 */ beq-        lbl_80635d2c
/* 80635D20 7C832378 */ mr          r3, r4
/* 80635D24 4BFED1A5 */ bl          unk_80622ec8
/* 80635D28 907F0024 */ stw         r3, 0x24(r31)
lbl_80635d2c:
/* 80635D2C 807F0090 */ lwz         r3, 0x90(r31)
/* 80635D30 4BFEB675 */ bl          unk_806213a4
/* 80635D34 2C030000 */ cmpwi       r3, 0
/* 80635D38 41820010 */ beq-        lbl_80635d48
/* 80635D3C 801F0024 */ lwz         r0, 0x24(r31)
/* 80635D40 60000002 */ ori         r0, r0, 2
/* 80635D44 901F0024 */ stw         r0, 0x24(r31)
lbl_80635d48:
/* 80635D48 3C608038 */ lis         r3, spInstance__Q26System8RKSystem@ha
/* 80635D4C 801F0024 */ lwz         r0, 0x24(r31)
/* 80635D50 80635FC8 */ lwz         r3, spInstance__Q26System8RKSystem@l(r3)
/* 80635D54 540007FE */ clrlwi      r0, r0, 0x1f
/* 80635D58 80630054 */ lwz         r3, 0x54(r3)
/* 80635D5C 681E0001 */ xori        r30, r0, 1
/* 80635D60 80630024 */ lwz         r3, 0x24(r3)
/* 80635D64 81830000 */ lwz         r12, 0(r3)
/* 80635D68 818C000C */ lwz         r12, 0xc(r12)
/* 80635D6C 7D8903A6 */ mtctr       r12
/* 80635D70 4E800421 */ bctrl       
/* 80635D74 20830001 */ subfic      r4, r3, 1
/* 80635D78 3803FFFF */ addi        r0, r3, -1
/* 80635D7C 7C830378 */ or          r3, r4, r0
/* 80635D80 801F0030 */ lwz         r0, 0x30(r31)
/* 80635D84 54640FFE */ srwi        r4, r3, 0x1f
/* 80635D88 68840001 */ xori        r4, r4, 1
/* 80635D8C 3C60809C */ lis         r3, lbl_809bd6f8@ha
/* 80635D90 7FC62038 */ and         r6, r30, r4
/* 80635D94 7C000034 */ cntlzw      r0, r0
/* 80635D98 7CA600D0 */ neg         r5, r6
/* 80635D9C 8063D6F8 */ lwz         r3, lbl_809bd6f8@l(r3)
/* 80635DA0 7CA53378 */ or          r5, r5, r6
/* 80635DA4 5404D97E */ srwi        r4, r0, 5
/* 80635DA8 54A50FFE */ srwi        r5, r5, 0x1f
/* 80635DAC 8803004D */ lbz         r0, 0x4d(r3)
/* 80635DB0 7CA52038 */ and         r5, r5, r4
/* 80635DB4 7C8500D0 */ neg         r4, r5
/* 80635DB8 7C842B78 */ or          r4, r4, r5
/* 80635DBC 54840FFE */ srwi        r4, r4, 0x1f
/* 80635DC0 7C040040 */ cmplw       r4, r0
/* 80635DC4 41820008 */ beq-        lbl_80635dcc
/* 80635DC8 9883004D */ stb         r4, 0x4d(r3)
lbl_80635dcc:
/* 80635DCC 801F0024 */ lwz         r0, 0x24(r31)
/* 80635DD0 540007BD */ rlwinm.     r0, r0, 0, 0x1e, 0x1e
/* 80635DD4 4182001C */ beq-        lbl_80635df0
/* 80635DD8 807F000C */ lwz         r3, 0xc(r31)
/* 80635DDC 4BFFEDA5 */ bl          Section_getPriority
/* 80635DE0 2C030005 */ cmpwi       r3, 5
/* 80635DE4 4082000C */ bne-        lbl_80635df0
/* 80635DE8 38000005 */ li          r0, 5
/* 80635DEC 901F000C */ stw         r0, 0xc(r31)
lbl_80635df0:
/* 80635DF0 80010014 */ lwz         r0, 0x14(r1)
/* 80635DF4 83E1000C */ lwz         r31, 0xc(r1)
/* 80635DF8 83C10008 */ lwz         r30, 8(r1)
/* 80635DFC 7C0803A6 */ mtlr        r0
/* 80635E00 38210010 */ addi        r1, r1, 0x10
/* 80635E04 4E800020 */ blr         