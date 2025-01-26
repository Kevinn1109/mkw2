nofralloc
/* 80622B4C 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80622B50 7C0802A6 */ mflr        r0
/* 80622B54 90010014 */ stw         r0, 0x14(r1)
/* 80622B58 93E1000C */ stw         r31, 0xc(r1)
/* 80622B5C 7C7F1B78 */ mr          r31, r3
/* 80622B60 80030400 */ lwz         r0, 0x400(r3)
/* 80622B64 2C000000 */ cmpwi       r0, 0
/* 80622B68 4182000C */ beq-        lbl_80622b74
/* 80622B6C 7C030378 */ mr          r3, r0
/* 80622B70 4BFDA8E5 */ bl          unk_805fd454
lbl_80622b74:
/* 80622B74 807F037C */ lwz         r3, 0x37c(r31)
/* 80622B78 2C030000 */ cmpwi       r3, 0
/* 80622B7C 40810018 */ ble-        lbl_80622b94
/* 80622B80 3803FFFF */ addi        r0, r3, -1
/* 80622B84 5400103A */ slwi        r0, r0, 2
/* 80622B88 7C7F0214 */ add         r3, r31, r0
/* 80622B8C 80630354 */ lwz         r3, 0x354(r3)
/* 80622B90 4BFDF7FD */ bl          unk_8060238c
lbl_80622b94:
/* 80622B94 807F037C */ lwz         r3, 0x37c(r31)
/* 80622B98 2C030000 */ cmpwi       r3, 0
/* 80622B9C 40810044 */ ble-        lbl_80622be0
/* 80622BA0 3803FFFF */ addi        r0, r3, -1
/* 80622BA4 3C60809C */ lis         r3, lbl_809c1e38@ha
/* 80622BA8 5400103A */ slwi        r0, r0, 2
/* 80622BAC 80831E38 */ lwz         r4, lbl_809c1e38@l(r3)
/* 80622BB0 7C7F0214 */ add         r3, r31, r0
/* 80622BB4 80630354 */ lwz         r3, 0x354(r3)
/* 80622BB8 3BE40034 */ addi        r31, r4, 0x34
/* 80622BBC 80630038 */ lwz         r3, 0x38(r3)
/* 80622BC0 81830000 */ lwz         r12, 0(r3)
/* 80622BC4 818C0030 */ lwz         r12, 0x30(r12)
/* 80622BC8 7D8903A6 */ mtctr       r12
/* 80622BCC 4E800421 */ bctrl       
/* 80622BD0 7C641B78 */ mr          r4, r3
/* 80622BD4 7FE3FB78 */ mr          r3, r31
/* 80622BD8 4BFF913D */ bl          unk_8061bd14
/* 80622BDC 48000018 */ b           lbl_80622bf4
lbl_80622be0:
/* 80622BE0 3C60809C */ lis         r3, lbl_809c1e38@ha
/* 80622BE4 38800000 */ li          r4, 0
/* 80622BE8 80631E38 */ lwz         r3, lbl_809c1e38@l(r3)
/* 80622BEC 38630034 */ addi        r3, r3, 0x34
/* 80622BF0 4BFF9125 */ bl          unk_8061bd14
lbl_80622bf4:
/* 80622BF4 80010014 */ lwz         r0, 0x14(r1)
/* 80622BF8 83E1000C */ lwz         r31, 0xc(r1)
/* 80622BFC 7C0803A6 */ mtlr        r0
/* 80622C00 38210010 */ addi        r1, r1, 0x10
/* 80622C04 4E800020 */ blr         