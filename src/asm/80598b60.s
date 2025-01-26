nofralloc
/* 80598B60 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80598B64 7C0802A6 */ mflr        r0
/* 80598B68 90010024 */ stw         r0, 0x24(r1)
/* 80598B6C BF61000C */ stmw        r27, 0xc(r1)
/* 80598B70 7C7B1B78 */ mr          r27, r3
/* 80598B74 7C9C2378 */ mr          r28, r4
/* 80598B78 7CBD2B78 */ mr          r29, r5
/* 80598B7C 7CDE3378 */ mr          r30, r6
/* 80598B80 7CFF3B78 */ mr          r31, r7
/* 80598B84 38600048 */ li          r3, 0x48
/* 80598B88 4BC91245 */ bl          __nw__FUl
/* 80598B8C 2C030000 */ cmpwi       r3, 0
/* 80598B90 41820014 */ beq-        lbl_80598ba4
/* 80598B94 7FA4EB78 */ mr          r4, r29
/* 80598B98 7FC5F378 */ mr          r5, r30
/* 80598B9C 7FE6FB78 */ mr          r6, r31
/* 80598BA0 48001335 */ bl          __ct__Q24Kart14KartSusPhysicsFUlQ24Kart13KartWheelTypel
lbl_80598ba4:
/* 80598BA4 907B0090 */ stw         r3, 0x90(r27)
/* 80598BA8 7F63DB78 */ mr          r3, r27
/* 80598BAC 7F84E378 */ mr          r4, r28
/* 80598BB0 819B000C */ lwz         r12, 0xc(r27)
/* 80598BB4 818C0014 */ lwz         r12, 0x14(r12)
/* 80598BB8 7D8903A6 */ mtctr       r12
/* 80598BBC 4E800421 */ bctrl       
/* 80598BC0 BB61000C */ lmw         r27, 0xc(r1)
/* 80598BC4 80010024 */ lwz         r0, 0x24(r1)
/* 80598BC8 7C0803A6 */ mtlr        r0
/* 80598BCC 38210020 */ addi        r1, r1, 0x20
/* 80598BD0 4E800020 */ blr         