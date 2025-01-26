nofralloc
/* 80634DC4 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80634DC8 7C0802A6 */ mflr        r0
/* 80634DCC 2C030000 */ cmpwi       r3, 0
/* 80634DD0 90010014 */ stw         r0, 0x14(r1)
/* 80634DD4 93E1000C */ stw         r31, 0xc(r1)
/* 80634DD8 7C9F2378 */ mr          r31, r4
/* 80634DDC 93C10008 */ stw         r30, 8(r1)
/* 80634DE0 7C7E1B78 */ mr          r30, r3
/* 80634DE4 41820044 */ beq-        lbl_80634e28
/* 80634DE8 80630098 */ lwz         r3, 0x98(r3)
/* 80634DEC 38800001 */ li          r4, 1
/* 80634DF0 4BFAE209 */ bl          SM98_destroy
/* 80634DF4 807E0090 */ lwz         r3, 0x90(r30)
/* 80634DF8 38800001 */ li          r4, 1
/* 80634DFC 4BFEBC91 */ bl          SaveGhostManager_destroy
/* 80634E00 807E0094 */ lwz         r3, 0x94(r30)
/* 80634E04 38800001 */ li          r4, 1
/* 80634E08 48002BC1 */ bl          SystemMessageGroup_destroy
/* 80634E0C 387E0034 */ addi        r3, r30, 0x34
/* 80634E10 3880FFFF */ li          r4, -1
/* 80634E14 4BFE6069 */ bl          SM34_destroy
/* 80634E18 2C1F0000 */ cmpwi       r31, 0
/* 80634E1C 4081000C */ ble-        lbl_80634e28
/* 80634E20 7FC3F378 */ mr          r3, r30
/* 80634E24 4BBF4FF1 */ bl          __dl__FPv
lbl_80634e28:
/* 80634E28 7FC3F378 */ mr          r3, r30
/* 80634E2C 83E1000C */ lwz         r31, 0xc(r1)
/* 80634E30 83C10008 */ lwz         r30, 8(r1)
/* 80634E34 80010014 */ lwz         r0, 0x14(r1)
/* 80634E38 7C0803A6 */ mtlr        r0
/* 80634E3C 38210010 */ addi        r1, r1, 0x10
/* 80634E40 4E800020 */ blr         