nofralloc
/* 80634CC8 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80634CCC 7C0802A6 */ mflr        r0
/* 80634CD0 3C60809C */ lis         r3, lbl_809c1e38@ha
/* 80634CD4 90010014 */ stw         r0, 0x14(r1)
/* 80634CD8 93E1000C */ stw         r31, 0xc(r1)
/* 80634CDC 83E31E38 */ lwz         r31, lbl_809c1e38@l(r3)
/* 80634CE0 2C1F0000 */ cmpwi       r31, 0
/* 80634CE4 4182003C */ beq-        lbl_80634d20
/* 80634CE8 807F0098 */ lwz         r3, 0x98(r31)
/* 80634CEC 38800001 */ li          r4, 1
/* 80634CF0 4BFAE309 */ bl          SM98_destroy
/* 80634CF4 807F0090 */ lwz         r3, 0x90(r31)
/* 80634CF8 38800001 */ li          r4, 1
/* 80634CFC 4BFEBD91 */ bl          SaveGhostManager_destroy
/* 80634D00 807F0094 */ lwz         r3, 0x94(r31)
/* 80634D04 38800001 */ li          r4, 1
/* 80634D08 48002CC1 */ bl          SystemMessageGroup_destroy
/* 80634D0C 387F0034 */ addi        r3, r31, 0x34
/* 80634D10 3880FFFF */ li          r4, -1
/* 80634D14 4BFE6169 */ bl          SM34_destroy
/* 80634D18 7FE3FB78 */ mr          r3, r31
/* 80634D1C 4BBF50F9 */ bl          __dl__FPv
lbl_80634d20:
/* 80634D20 3C60809C */ lis         r3, lbl_809c1e38@ha
/* 80634D24 38000000 */ li          r0, 0
/* 80634D28 90031E38 */ stw         r0, lbl_809c1e38@l(r3)
/* 80634D2C 83E1000C */ lwz         r31, 0xc(r1)
/* 80634D30 80010014 */ lwz         r0, 0x14(r1)
/* 80634D34 7C0803A6 */ mtlr        r0
/* 80634D38 38210010 */ addi        r1, r1, 0x10
/* 80634D3C 4E800020 */ blr         