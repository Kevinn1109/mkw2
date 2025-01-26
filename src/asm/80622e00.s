nofralloc
/* 80622E00 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80622E04 7C0802A6 */ mflr        r0
/* 80622E08 90010014 */ stw         r0, 0x14(r1)
/* 80622E0C 5480103A */ slwi        r0, r4, 2
/* 80622E10 7CA42B78 */ mr          r4, r5
/* 80622E14 93E1000C */ stw         r31, 0xc(r1)
/* 80622E18 7CA30214 */ add         r5, r3, r0
/* 80622E1C 93C10008 */ stw         r30, 8(r1)
/* 80622E20 80C3037C */ lwz         r6, 0x37c(r3)
/* 80622E24 83C50008 */ lwz         r30, 8(r5)
/* 80622E28 54C0103A */ slwi        r0, r6, 2
/* 80622E2C 7FE30214 */ add         r31, r3, r0
/* 80622E30 93DF0354 */ stw         r30, 0x354(r31)
/* 80622E34 80A3037C */ lwz         r5, 0x37c(r3)
/* 80622E38 38050001 */ addi        r0, r5, 1
/* 80622E3C 9003037C */ stw         r0, 0x37c(r3)
/* 80622E40 7FC3F378 */ mr          r3, r30
/* 80622E44 4BFDF609 */ bl          setAnimationDirection__Q22UI4PageFl
/* 80622E48 7FC3F378 */ mr          r3, r30
/* 80622E4C 4BFDECA1 */ bl          Page_activate
/* 80622E50 807F0354 */ lwz         r3, 0x354(r31)
/* 80622E54 83E1000C */ lwz         r31, 0xc(r1)
/* 80622E58 83C10008 */ lwz         r30, 8(r1)
/* 80622E5C 80010014 */ lwz         r0, 0x14(r1)
/* 80622E60 7C0803A6 */ mtlr        r0
/* 80622E64 38210010 */ addi        r1, r1, 0x10
/* 80622E68 4E800020 */ blr         