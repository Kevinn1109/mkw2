nofralloc
/* 80621D84 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80621D88 7C0802A6 */ mflr        r0
/* 80621D8C 2C030000 */ cmpwi       r3, 0
/* 80621D90 90010014 */ stw         r0, 0x14(r1)
/* 80621D94 93E1000C */ stw         r31, 0xc(r1)
/* 80621D98 7C9F2378 */ mr          r31, r4
/* 80621D9C 93C10008 */ stw         r30, 8(r1)
/* 80621DA0 7C7E1B78 */ mr          r30, r3
/* 80621DA4 41820040 */ beq-        lbl_80621de4
/* 80621DA8 806303E4 */ lwz         r3, 0x3e4(r3)
/* 80621DAC 4BC08069 */ bl          __dl__FPv
/* 80621DB0 807E0400 */ lwz         r3, 0x400(r30)
/* 80621DB4 38800001 */ li          r4, 1
/* 80621DB8 4BFDAFD9 */ bl          unk_805fcd90
/* 80621DBC 807E0404 */ lwz         r3, 0x404(r30)
/* 80621DC0 38800001 */ li          r4, 1
/* 80621DC4 4BFB027D */ bl          unk_805d2040
/* 80621DC8 387E0390 */ addi        r3, r30, 0x390
/* 80621DCC 3880FFFF */ li          r4, -1
/* 80621DD0 4BA608D1 */ bl          unk_800826a0
/* 80621DD4 2C1F0000 */ cmpwi       r31, 0
/* 80621DD8 4081000C */ ble-        lbl_80621de4
/* 80621DDC 7FC3F378 */ mr          r3, r30
/* 80621DE0 4BC08035 */ bl          __dl__FPv
lbl_80621de4:
/* 80621DE4 7FC3F378 */ mr          r3, r30
/* 80621DE8 83E1000C */ lwz         r31, 0xc(r1)
/* 80621DEC 83C10008 */ lwz         r30, 8(r1)
/* 80621DF0 80010014 */ lwz         r0, 0x14(r1)
/* 80621DF4 7C0803A6 */ mtlr        r0
/* 80621DF8 38210010 */ addi        r1, r1, 0x10
/* 80621DFC 4E800020 */ blr         