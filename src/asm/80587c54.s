nofralloc
/* 80587C54 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80587C58 7C0802A6 */ mflr        r0
/* 80587C5C 90010014 */ stw         r0, 0x14(r1)
/* 80587C60 93E1000C */ stw         r31, 0xc(r1)
/* 80587C64 7C7F1B78 */ mr          r31, r3
/* 80587C68 4BFF0635 */ bl          PlayerSub10_resetHard
/* 80587C6C 7FE3FB78 */ mr          r3, r31
/* 80587C70 48008DA1 */ bl          PlayerPointers_getVehicleType
/* 80587C74 28030001 */ cmplwi      r3, 1
/* 80587C78 41820010 */ beq-        lbl_80587c88
/* 80587C7C 28030002 */ cmplwi      r3, 2
/* 80587C80 41820018 */ beq-        lbl_80587c98
/* 80587C84 48000024 */ b           lbl_80587ca8
lbl_80587c88:
/* 80587C88 3C60808B */ lis         r3, lbl_808b5a48@ha
/* 80587C8C 38635A48 */ addi        r3, r3, lbl_808b5a48@l
/* 80587C90 907F02C0 */ stw         r3, 0x2c0(r31)
/* 80587C94 48000014 */ b           lbl_80587ca8
lbl_80587c98:
/* 80587C98 3C60808B */ lis         r3, lbl_808b5a48@ha
/* 80587C9C 38635A48 */ addi        r3, r3, lbl_808b5a48@l
/* 80587CA0 38030030 */ addi        r0, r3, 0x30
/* 80587CA4 901F02C0 */ stw         r0, 0x2c0(r31)
lbl_80587ca8:
/* 80587CA8 3C60809C */ lis         r3, spInstance__Q26System11RaceManager@ha
/* 80587CAC 38800002 */ li          r4, 2
/* 80587CB0 8063D730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r3)
/* 80587CB4 4BFAE57D */ bl          Raceinfo_isAtLeastStage
/* 80587CB8 2C030000 */ cmpwi       r3, 0
/* 80587CBC 4082001C */ bne-        lbl_80587cd8
/* 80587CC0 807F02C0 */ lwz         r3, 0x2c0(r31)
/* 80587CC4 C0030018 */ lfs         f0, 0x18(r3)
/* 80587CC8 D01F029C */ stfs        f0, 0x29c(r31)
/* 80587CCC C003001C */ lfs         f0, 0x1c(r3)
/* 80587CD0 D01F0298 */ stfs        f0, 0x298(r31)
/* 80587CD4 48000018 */ b           lbl_80587cec
lbl_80587cd8:
/* 80587CD8 807F02C0 */ lwz         r3, 0x2c0(r31)
/* 80587CDC C0030004 */ lfs         f0, 4(r3)
/* 80587CE0 D01F029C */ stfs        f0, 0x29c(r31)
/* 80587CE4 C0030008 */ lfs         f0, 8(r3)
/* 80587CE8 D01F0298 */ stfs        f0, 0x298(r31)
lbl_80587cec:
/* 80587CEC 80010014 */ lwz         r0, 0x14(r1)
/* 80587CF0 83E1000C */ lwz         r31, 0xc(r1)
/* 80587CF4 7C0803A6 */ mtlr        r0
/* 80587CF8 38210010 */ addi        r1, r1, 0x10
/* 80587CFC 4E800020 */ blr         