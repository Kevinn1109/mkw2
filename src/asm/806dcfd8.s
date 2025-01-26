nofralloc
/* 806DCFD8 9421FFF0 */ stwu        r1, -0x10(r1)
/* 806DCFDC 7C0802A6 */ mflr        r0
/* 806DCFE0 90010014 */ stw         r0, 0x14(r1)
/* 806DCFE4 93E1000C */ stw         r31, 0xc(r1)
/* 806DCFE8 7C7F1B78 */ mr          r31, r3
/* 806DCFEC 88030136 */ lbz         r0, 0x136(r3)
/* 806DCFF0 2C000000 */ cmpwi       r0, 0
/* 806DCFF4 41820008 */ beq-        lbl_806dcffc
/* 806DCFF8 4BFFF5E9 */ bl          unk_806dc5e0
lbl_806dcffc:
/* 806DCFFC 881F013C */ lbz         r0, 0x13c(r31)
/* 806DD000 2C000000 */ cmpwi       r0, 0
/* 806DD004 4182000C */ beq-        lbl_806dd010
/* 806DD008 7FE3FB78 */ mr          r3, r31
/* 806DD00C 4BFFF785 */ bl          unk_806dc790
lbl_806dd010:
/* 806DD010 881F0144 */ lbz         r0, 0x144(r31)
/* 806DD014 2C000000 */ cmpwi       r0, 0
/* 806DD018 4182000C */ beq-        lbl_806dd024
/* 806DD01C 7FE3FB78 */ mr          r3, r31
/* 806DD020 4BFFF9B9 */ bl          unk_806dc9d8
lbl_806dd024:
/* 806DD024 80010014 */ lwz         r0, 0x14(r1)
/* 806DD028 83E1000C */ lwz         r31, 0xc(r1)
/* 806DD02C 7C0803A6 */ mtlr        r0
/* 806DD030 38210010 */ addi        r1, r1, 0x10
/* 806DD034 4E800020 */ blr         