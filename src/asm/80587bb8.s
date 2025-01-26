nofralloc
/* 80587BB8 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80587BBC 7C0802A6 */ mflr        r0
/* 80587BC0 90010024 */ stw         r0, 0x24(r1)
/* 80587BC4 93E1001C */ stw         r31, 0x1c(r1)
/* 80587BC8 93C10018 */ stw         r30, 0x18(r1)
/* 80587BCC 7C9E2378 */ mr          r30, r4
/* 80587BD0 93A10014 */ stw         r29, 0x14(r1)
/* 80587BD4 7C7D1B78 */ mr          r29, r3
/* 80587BD8 38600050 */ li          r3, 0x50
/* 80587BDC 4BCA21F1 */ bl          __nw__FUl
/* 80587BE0 2C030000 */ cmpwi       r3, 0
/* 80587BE4 7C7F1B78 */ mr          r31, r3
/* 80587BE8 41820018 */ beq-        lbl_80587c00
/* 80587BEC 4BFEDE59 */ bl          PlayerTrick_construct
/* 80587BF0 3C60808B */ lis         r3, lbl_808b5890@ha
/* 80587BF4 38635890 */ addi        r3, r3, lbl_808b5890@l
/* 80587BF8 907F000C */ stw         r3, 0xc(r31)
/* 80587BFC 93BF004C */ stw         r29, 0x4c(r31)
lbl_80587c00:
/* 80587C00 93FD0258 */ stw         r31, 0x258(r29)
/* 80587C04 38600090 */ li          r3, 0x90
/* 80587C08 4BCA21C5 */ bl          __nw__FUl
/* 80587C0C 2C030000 */ cmpwi       r3, 0
/* 80587C10 41820008 */ beq-        lbl_80587c18
/* 80587C14 4BFEC501 */ bl          PlayerZipper_construct
lbl_80587c18:
/* 80587C18 907D025C */ stw         r3, 0x25c(r29)
/* 80587C1C 38600078 */ li          r3, 0x78
/* 80587C20 4BCA21AD */ bl          __nw__FUl
/* 80587C24 2C030000 */ cmpwi       r3, 0
/* 80587C28 4182000C */ beq-        lbl_80587c34
/* 80587C2C 7FC4F378 */ mr          r4, r30
/* 80587C30 4BFE3115 */ bl          unk_8056ad44
lbl_80587c34:
/* 80587C34 907D0260 */ stw         r3, 0x260(r29)
/* 80587C38 83E1001C */ lwz         r31, 0x1c(r1)
/* 80587C3C 83C10018 */ lwz         r30, 0x18(r1)
/* 80587C40 83A10014 */ lwz         r29, 0x14(r1)
/* 80587C44 80010024 */ lwz         r0, 0x24(r1)
/* 80587C48 7C0803A6 */ mtlr        r0
/* 80587C4C 38210020 */ addi        r1, r1, 0x20
/* 80587C50 4E800020 */ blr         