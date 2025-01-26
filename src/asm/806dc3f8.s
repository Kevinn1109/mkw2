nofralloc
/* 806DC3F8 9421FFF0 */ stwu        r1, -0x10(r1)
/* 806DC3FC 7C0802A6 */ mflr        r0
/* 806DC400 90010014 */ stw         r0, 0x14(r1)
/* 806DC404 93E1000C */ stw         r31, 0xc(r1)
/* 806DC408 7C7F1B78 */ mr          r31, r3
/* 806DC40C 480009D1 */ bl          unk_806dcddc
/* 806DC410 881F0136 */ lbz         r0, 0x136(r31)
/* 806DC414 2C000000 */ cmpwi       r0, 0
/* 806DC418 4182000C */ beq-        lbl_806dc424
/* 806DC41C 7FE3FB78 */ mr          r3, r31
/* 806DC420 480001C1 */ bl          unk_806dc5e0
lbl_806dc424:
/* 806DC424 881F013C */ lbz         r0, 0x13c(r31)
/* 806DC428 2C000000 */ cmpwi       r0, 0
/* 806DC42C 4182000C */ beq-        lbl_806dc438
/* 806DC430 7FE3FB78 */ mr          r3, r31
/* 806DC434 4800035D */ bl          unk_806dc790
lbl_806dc438:
/* 806DC438 881F0144 */ lbz         r0, 0x144(r31)
/* 806DC43C 2C000000 */ cmpwi       r0, 0
/* 806DC440 4182000C */ beq-        lbl_806dc44c
/* 806DC444 7FE3FB78 */ mr          r3, r31
/* 806DC448 48000591 */ bl          unk_806dc9d8
lbl_806dc44c:
/* 806DC44C 80010014 */ lwz         r0, 0x14(r1)
/* 806DC450 83E1000C */ lwz         r31, 0xc(r1)
/* 806DC454 7C0803A6 */ mtlr        r0
/* 806DC458 38210010 */ addi        r1, r1, 0x10
/* 806DC45C 4E800020 */ blr         