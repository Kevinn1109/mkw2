nofralloc
/* 8052427C 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80524280 7C0802A6 */ mflr        r0
/* 80524284 90010014 */ stw         r0, 0x14(r1)
/* 80524288 93E1000C */ stw         r31, 0xc(r1)
/* 8052428C 3BE00000 */ li          r31, 0
/* 80524290 93C10008 */ stw         r30, 8(r1)
/* 80524294 7C7E1B78 */ mr          r30, r3
lbl_80524298:
/* 80524298 57E0063E */ clrlwi      r0, r31, 0x18
/* 8052429C 389E1690 */ addi        r4, r30, 0x1690
/* 805242A0 1C0000EC */ mulli       r0, r0, 0xec
/* 805242A4 38A00000 */ li          r5, 0
/* 805242A8 7C7E0214 */ add         r3, r30, r0
/* 805242AC 38630004 */ addi        r3, r3, 4
/* 805242B0 4BFFD2A5 */ bl          setController__Q26System4KPadFPQ26System14KPadControllerPQ26System14KPadController
/* 805242B4 3BFF0001 */ addi        r31, r31, 1
/* 805242B8 281F0004 */ cmplwi      r31, 4
/* 805242BC 4180FFDC */ blt+        lbl_80524298
/* 805242C0 80010014 */ lwz         r0, 0x14(r1)
/* 805242C4 83E1000C */ lwz         r31, 0xc(r1)
/* 805242C8 83C10008 */ lwz         r30, 8(r1)
/* 805242CC 7C0803A6 */ mtlr        r0
/* 805242D0 38210010 */ addi        r1, r1, 0x10
/* 805242D4 4E800020 */ blr         