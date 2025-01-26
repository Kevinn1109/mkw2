nofralloc
/* 80135F90 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80135F94 7C0802A6 */ mflr        r0
/* 80135F98 2C040000 */ cmpwi       r4, 0
/* 80135F9C 90010014 */ stw         r0, 0x14(r1)
/* 80135FA0 41820010 */ beq-        lbl_80135fb0
/* 80135FA4 A0040006 */ lhz         r0, 6(r4)
/* 80135FA8 5403063E */ clrlwi      r3, r0, 0x18
/* 80135FAC 48000008 */ b           lbl_80135fb4
lbl_80135fb0:
/* 80135FB0 88630016 */ lbz         r3, 0x16(r3)
lbl_80135fb4:
/* 80135FB4 38000006 */ li          r0, 6
/* 80135FB8 98610009 */ stb         r3, 9(r1)
/* 80135FBC 98010008 */ stb         r0, 8(r1)
/* 80135FC0 48011D99 */ bl          HID_HostCloseDev
/* 80135FC4 5460063F */ clrlwi.     r0, r3, 0x18
/* 80135FC8 41820020 */ beq-        lbl_80135fe8
/* 80135FCC 3CA08033 */ lis         r5, lbl_80336048@ha
/* 80135FD0 38810008 */ addi        r4, r1, 8
/* 80135FD4 38A56048 */ addi        r5, r5, lbl_80336048@l
/* 80135FD8 38600003 */ li          r3, 3
/* 80135FDC 81850224 */ lwz         r12, 0x224(r5)
/* 80135FE0 7D8903A6 */ mtctr       r12
/* 80135FE4 4E800421 */ bctrl       
lbl_80135fe8:
/* 80135FE8 80010014 */ lwz         r0, 0x14(r1)
/* 80135FEC 7C0803A6 */ mtlr        r0
/* 80135FF0 38210010 */ addi        r1, r1, 0x10
/* 80135FF4 4E800020 */ blr         