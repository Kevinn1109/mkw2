nofralloc
/* 80601C64 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80601C68 7C0802A6 */ mflr        r0
/* 80601C6C 90010014 */ stw         r0, 0x14(r1)
/* 80601C70 93E1000C */ stw         r31, 0xc(r1)
/* 80601C74 7C7F1B78 */ mr          r31, r3
/* 80601C78 80830008 */ lwz         r4, 8(r3)
/* 80601C7C 3804FFFE */ addi        r0, r4, -2
/* 80601C80 28000001 */ cmplwi      r0, 1
/* 80601C84 40810018 */ ble-        lbl_80601c9c
/* 80601C88 2C040005 */ cmpwi       r4, 5
/* 80601C8C 41820010 */ beq-        lbl_80601c9c
/* 80601C90 2C040004 */ cmpwi       r4, 4
/* 80601C94 41820020 */ beq-        lbl_80601cb4
/* 80601C98 48000078 */ b           lbl_80601d10
lbl_80601c9c:
/* 80601C9C 80630038 */ lwz         r3, 0x38(r3)
/* 80601CA0 81830000 */ lwz         r12, 0(r3)
/* 80601CA4 818C002C */ lwz         r12, 0x2c(r12)
/* 80601CA8 7D8903A6 */ mtctr       r12
/* 80601CAC 4E800421 */ bctrl       
/* 80601CB0 48000060 */ b           lbl_80601d10
lbl_80601cb4:
/* 80601CB4 80630038 */ lwz         r3, 0x38(r3)
/* 80601CB8 81830000 */ lwz         r12, 0(r3)
/* 80601CBC 818C002C */ lwz         r12, 0x2c(r12)
/* 80601CC0 7D8903A6 */ mtctr       r12
/* 80601CC4 4E800421 */ bctrl       
/* 80601CC8 3C608038 */ lis         r3, spInstance__Q26System8RKSystem@ha
/* 80601CCC 80635FC8 */ lwz         r3, spInstance__Q26System8RKSystem@l(r3)
/* 80601CD0 80630054 */ lwz         r3, 0x54(r3)
/* 80601CD4 80630024 */ lwz         r3, 0x24(r3)
/* 80601CD8 81830000 */ lwz         r12, 0(r3)
/* 80601CDC 818C000C */ lwz         r12, 0xc(r12)
/* 80601CE0 7D8903A6 */ mtctr       r12
/* 80601CE4 4E800421 */ bctrl       
/* 80601CE8 20830001 */ subfic      r4, r3, 1
/* 80601CEC 3803FFFF */ addi        r0, r3, -1
/* 80601CF0 7C800378 */ or          r0, r4, r0
/* 80601CF4 54000FFF */ rlwinm.     r0, r0, 1, 0x1f, 0x1f
/* 80601CF8 40820018 */ bne-        lbl_80601d10
/* 80601CFC 807F0038 */ lwz         r3, 0x38(r31)
/* 80601D00 81830000 */ lwz         r12, 0(r3)
/* 80601D04 818C0018 */ lwz         r12, 0x18(r12)
/* 80601D08 7D8903A6 */ mtctr       r12
/* 80601D0C 4E800421 */ bctrl       
lbl_80601d10:
/* 80601D10 80010014 */ lwz         r0, 0x14(r1)
/* 80601D14 83E1000C */ lwz         r31, 0xc(r1)
/* 80601D18 7C0803A6 */ mtlr        r0
/* 80601D1C 38210010 */ addi        r1, r1, 0x10
/* 80601D20 4E800020 */ blr         