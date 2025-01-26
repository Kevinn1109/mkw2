nofralloc
/* 805B66E4 9421FFF0 */ stwu        r1, -0x10(r1)
/* 805B66E8 7C0802A6 */ mflr        r0
/* 805B66EC 2C030000 */ cmpwi       r3, 0
/* 805B66F0 90010014 */ stw         r0, 0x14(r1)
/* 805B66F4 93E1000C */ stw         r31, 0xc(r1)
/* 805B66F8 7C7F1B78 */ mr          r31, r3
/* 805B66FC 41820010 */ beq-        lbl_805b670c
/* 805B6700 2C040000 */ cmpwi       r4, 0
/* 805B6704 40810008 */ ble-        lbl_805b670c
/* 805B6708 4BC7370D */ bl          __dl__FPv
lbl_805b670c:
/* 805B670C 7FE3FB78 */ mr          r3, r31
/* 805B6710 83E1000C */ lwz         r31, 0xc(r1)
/* 805B6714 80010014 */ lwz         r0, 0x14(r1)
/* 805B6718 7C0803A6 */ mtlr        r0
/* 805B671C 38210010 */ addi        r1, r1, 0x10
/* 805B6720 4E800020 */ blr         