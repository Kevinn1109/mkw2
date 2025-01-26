nofralloc
/* 80622C68 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80622C6C 7C0802A6 */ mflr        r0
/* 80622C70 90010014 */ stw         r0, 0x14(r1)
/* 80622C74 93E1000C */ stw         r31, 0xc(r1)
/* 80622C78 7C7F1B78 */ mr          r31, r3
/* 80622C7C 80030400 */ lwz         r0, 0x400(r3)
/* 80622C80 2C000000 */ cmpwi       r0, 0
/* 80622C84 40820020 */ bne-        lbl_80622ca4
/* 80622C88 38600100 */ li          r3, 0x100
/* 80622C8C 4BC07141 */ bl          __nw__FUl
/* 80622C90 2C030000 */ cmpwi       r3, 0
/* 80622C94 41820008 */ beq-        lbl_80622c9c
/* 80622C98 4BFDA0A9 */ bl          unk_805fcd40
lbl_80622c9c:
/* 80622C9C 907F0400 */ stw         r3, 0x400(r31)
/* 80622CA0 4BFDA149 */ bl          thunk_unk_80529c40
lbl_80622ca4:
/* 80622CA4 80010014 */ lwz         r0, 0x14(r1)
/* 80622CA8 83E1000C */ lwz         r31, 0xc(r1)
/* 80622CAC 7C0803A6 */ mtlr        r0
/* 80622CB0 38210010 */ addi        r1, r1, 0x10
/* 80622CB4 4E800020 */ blr         