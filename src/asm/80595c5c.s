nofralloc
/* 80595C5C 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80595C60 7C0802A6 */ mflr        r0
/* 80595C64 90010014 */ stw         r0, 0x14(r1)
/* 80595C68 93E1000C */ stw         r31, 0xc(r1)
/* 80595C6C 7C9F2378 */ mr          r31, r4
/* 80595C70 80630018 */ lwz         r3, 0x18(r3)
/* 80595C74 4BFFAB09 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80595C78 3C80808B */ lis         r4, lbl_808b64f8@ha
/* 80595C7C 57E01838 */ slwi        r0, r31, 3
/* 80595C80 388464F8 */ addi        r4, r4, lbl_808b64f8@l
/* 80595C84 7C840214 */ add         r4, r4, r0
/* 80595C88 A8840004 */ lha         r4, 4(r4)
/* 80595C8C 4BFEC4A1 */ bl          PlayerSub10_applyStartBoost
/* 80595C90 80010014 */ lwz         r0, 0x14(r1)
/* 80595C94 83E1000C */ lwz         r31, 0xc(r1)
/* 80595C98 7C0803A6 */ mtlr        r0
/* 80595C9C 38210010 */ addi        r1, r1, 0x10
/* 80595CA0 4E800020 */ blr         