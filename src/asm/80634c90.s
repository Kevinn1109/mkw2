nofralloc
/* 80634C90 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80634C94 7C0802A6 */ mflr        r0
/* 80634C98 3860009C */ li          r3, 0x9c
/* 80634C9C 90010014 */ stw         r0, 0x14(r1)
/* 80634CA0 4BBF512D */ bl          __nw__FUl
/* 80634CA4 2C030000 */ cmpwi       r3, 0
/* 80634CA8 41820008 */ beq-        lbl_80634cb0
/* 80634CAC 48000095 */ bl          SectionManager_construct
lbl_80634cb0:
/* 80634CB0 3C80809C */ lis         r4, lbl_809c1e38@ha
/* 80634CB4 90641E38 */ stw         r3, lbl_809c1e38@l(r4)
/* 80634CB8 80010014 */ lwz         r0, 0x14(r1)
/* 80634CBC 7C0803A6 */ mtlr        r0
/* 80634CC0 38210010 */ addi        r1, r1, 0x10
/* 80634CC4 4E800020 */ blr         