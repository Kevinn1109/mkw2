nofralloc
/* 80622DA0 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80622DA4 7C0802A6 */ mflr        r0
/* 80622DA8 5485103A */ slwi        r5, r4, 2
/* 80622DAC 90010014 */ stw         r0, 0x14(r1)
/* 80622DB0 7CC32A14 */ add         r6, r3, r5
/* 80622DB4 93E1000C */ stw         r31, 0xc(r1)
/* 80622DB8 8003037C */ lwz         r0, 0x37c(r3)
/* 80622DBC 80830004 */ lwz         r4, 4(r3)
/* 80622DC0 5400103A */ slwi        r0, r0, 2
/* 80622DC4 83E60008 */ lwz         r31, 8(r6)
/* 80622DC8 7CA30214 */ add         r5, r3, r0
/* 80622DCC 93E50354 */ stw         r31, 0x354(r5)
/* 80622DD0 80A3037C */ lwz         r5, 0x37c(r3)
/* 80622DD4 38050001 */ addi        r0, r5, 1
/* 80622DD8 9003037C */ stw         r0, 0x37c(r3)
/* 80622DDC 7FE3FB78 */ mr          r3, r31
/* 80622DE0 4BFDF66D */ bl          setAnimationDirection__Q22UI4PageFl
/* 80622DE4 7FE3FB78 */ mr          r3, r31
/* 80622DE8 4BFDED05 */ bl          Page_activate
/* 80622DEC 80010014 */ lwz         r0, 0x14(r1)
/* 80622DF0 83E1000C */ lwz         r31, 0xc(r1)
/* 80622DF4 7C0803A6 */ mtlr        r0
/* 80622DF8 38210010 */ addi        r1, r1, 0x10
/* 80622DFC 4E800020 */ blr         