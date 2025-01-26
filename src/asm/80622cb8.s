nofralloc
/* 80622CB8 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80622CBC 7C0802A6 */ mflr        r0
/* 80622CC0 90010014 */ stw         r0, 0x14(r1)
/* 80622CC4 93E1000C */ stw         r31, 0xc(r1)
/* 80622CC8 7C7F1B78 */ mr          r31, r3
/* 80622CCC 80030404 */ lwz         r0, 0x404(r3)
/* 80622CD0 2C000000 */ cmpwi       r0, 0
/* 80622CD4 40820020 */ bne-        lbl_80622cf4
/* 80622CD8 386038D0 */ li          r3, 0x38d0
/* 80622CDC 4BC070F1 */ bl          __nw__FUl
/* 80622CE0 2C030000 */ cmpwi       r3, 0
/* 80622CE4 41820008 */ beq-        lbl_80622cec
/* 80622CE8 4BFAF19D */ bl          unk_805d1e84
lbl_80622cec:
/* 80622CEC 907F0404 */ stw         r3, 0x404(r31)
/* 80622CF0 4BFAF3B5 */ bl          unk_805d20a4
lbl_80622cf4:
/* 80622CF4 80010014 */ lwz         r0, 0x14(r1)
/* 80622CF8 83E1000C */ lwz         r31, 0xc(r1)
/* 80622CFC 7C0803A6 */ mtlr        r0
/* 80622D00 38210010 */ addi        r1, r1, 0x10
/* 80622D04 4E800020 */ blr         