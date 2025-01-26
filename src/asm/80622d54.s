nofralloc
/* 80622D54 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80622D58 7C0802A6 */ mflr        r0
/* 80622D5C 7C651B78 */ mr          r5, r3
/* 80622D60 7C832378 */ mr          r3, r4
/* 80622D64 90010014 */ stw         r0, 0x14(r1)
/* 80622D68 5480103A */ slwi        r0, r4, 2
/* 80622D6C 93E1000C */ stw         r31, 0xc(r1)
/* 80622D70 7FE50214 */ add         r31, r5, r0
/* 80622D74 80850000 */ lwz         r4, 0(r5)
/* 80622D78 48011CED */ bl          createSystemPage
/* 80622D7C 2C030000 */ cmpwi       r3, 0
/* 80622D80 907F0380 */ stw         r3, 0x380(r31)
/* 80622D84 41820008 */ beq-        lbl_80622d8c
/* 80622D88 4BFE00CD */ bl          SystemPage_init
lbl_80622d8c:
/* 80622D8C 80010014 */ lwz         r0, 0x14(r1)
/* 80622D90 83E1000C */ lwz         r31, 0xc(r1)
/* 80622D94 7C0803A6 */ mtlr        r0
/* 80622D98 38210010 */ addi        r1, r1, 0x10
/* 80622D9C 4E800020 */ blr         