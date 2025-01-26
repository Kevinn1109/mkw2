nofralloc
/* 8052313C 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80523140 7C0802A6 */ mflr        r0
/* 80523144 3C60809C */ lis         r3, spInstance__Q26System12KPadDirector@ha
/* 80523148 90010014 */ stw         r0, 0x14(r1)
/* 8052314C 8003D70C */ lwz         r0, spInstance__Q26System12KPadDirector@l(r3)
/* 80523150 2C000000 */ cmpwi       r0, 0
/* 80523154 40820020 */ bne-        lbl_80523174
/* 80523158 3860415C */ li          r3, 0x415c
/* 8052315C 4BD06C71 */ bl          __nw__FUl
/* 80523160 2C030000 */ cmpwi       r3, 0
/* 80523164 41820008 */ beq-        lbl_8052316c
/* 80523168 48000189 */ bl          __ct__Q26System12KPadDirectorFv
lbl_8052316c:
/* 8052316C 3C80809C */ lis         r4, spInstance__Q26System12KPadDirector@ha
/* 80523170 9064D70C */ stw         r3, spInstance__Q26System12KPadDirector@l(r4)
lbl_80523174:
/* 80523174 80010014 */ lwz         r0, 0x14(r1)
/* 80523178 3C60809C */ lis         r3, spInstance__Q26System12KPadDirector@ha
/* 8052317C 8063D70C */ lwz         r3, spInstance__Q26System12KPadDirector@l(r3)
/* 80523180 7C0803A6 */ mtlr        r0
/* 80523184 38210010 */ addi        r1, r1, 0x10
/* 80523188 4E800020 */ blr         