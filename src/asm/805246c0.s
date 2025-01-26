nofralloc
/* 805246C0 9421FFF0 */ stwu        r1, -0x10(r1)
/* 805246C4 7C0802A6 */ mflr        r0
/* 805246C8 3CA08089 */ lis         r5, lbl_8088fd2c@ha
/* 805246CC 3C80809C */ lis         r4, spInstance__Q26System15ResourceManager@ha
/* 805246D0 90010014 */ stw         r0, 0x14(r1)
/* 805246D4 38A5FD2C */ addi        r5, r5, lbl_8088fd2c@l
/* 805246D8 38C00000 */ li          r6, 0
/* 805246DC 93E1000C */ stw         r31, 0xc(r1)
/* 805246E0 7C7F1B78 */ mr          r31, r3
/* 805246E4 8064D738 */ lwz         r3, spInstance__Q26System15ResourceManager@l(r4)
/* 805246E8 38800000 */ li          r4, 0
/* 805246EC 4801CB11 */ bl          getFile__Q26System15ResourceManagerFlPCcPUl
/* 805246F0 2C030000 */ cmpwi       r3, 0
/* 805246F4 41820010 */ beq-        lbl_80524704
/* 805246F8 7C641B78 */ mr          r4, r3
/* 805246FC 387F4100 */ addi        r3, r31, 0x4100
/* 80524700 480009C9 */ bl          RumbleSettings_load
lbl_80524704:
/* 80524704 80010014 */ lwz         r0, 0x14(r1)
/* 80524708 83E1000C */ lwz         r31, 0xc(r1)
/* 8052470C 7C0803A6 */ mtlr        r0
/* 80524710 38210010 */ addi        r1, r1, 0x10
/* 80524714 4E800020 */ blr         