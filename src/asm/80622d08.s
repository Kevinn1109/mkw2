nofralloc
/* 80622D08 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80622D0C 7C0802A6 */ mflr        r0
/* 80622D10 90010014 */ stw         r0, 0x14(r1)
/* 80622D14 5480103A */ slwi        r0, r4, 2
/* 80622D18 93E1000C */ stw         r31, 0xc(r1)
/* 80622D1C 7FE30214 */ add         r31, r3, r0
/* 80622D20 93C10008 */ stw         r30, 8(r1)
/* 80622D24 7C9E2378 */ mr          r30, r4
/* 80622D28 7FC3F378 */ mr          r3, r30
/* 80622D2C 48000665 */ bl          Section_createPage
/* 80622D30 907F0008 */ stw         r3, 8(r31)
/* 80622D34 7FC4F378 */ mr          r4, r30
/* 80622D38 4BFDED29 */ bl          Page_init
/* 80622D3C 80010014 */ lwz         r0, 0x14(r1)
/* 80622D40 83E1000C */ lwz         r31, 0xc(r1)
/* 80622D44 83C10008 */ lwz         r30, 8(r1)
/* 80622D48 7C0803A6 */ mtlr        r0
/* 80622D4C 38210010 */ addi        r1, r1, 0x10
/* 80622D50 4E800020 */ blr         