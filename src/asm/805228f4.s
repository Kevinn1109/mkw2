nofralloc
/* 805228F4 9421FFF0 */ stwu        r1, -0x10(r1)
/* 805228F8 7C0802A6 */ mflr        r0
/* 805228FC 806308D4 */ lwz         r3, 0x8d4(r3)
/* 80522900 90010014 */ stw         r0, 0x14(r1)
/* 80522904 4BCA09A1 */ bl          WPADIsDpdEnabled
/* 80522908 3803FFFF */ addi        r0, r3, -1
/* 8052290C 7C000034 */ cntlzw      r0, r0
/* 80522910 5403D97E */ srwi        r3, r0, 5
/* 80522914 80010014 */ lwz         r0, 0x14(r1)
/* 80522918 7C0803A6 */ mtlr        r0
/* 8052291C 38210010 */ addi        r1, r1, 0x10
/* 80522920 4E800020 */ blr         