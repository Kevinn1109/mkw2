nofralloc
/* 806DE598 A00300B4 */ lhz         r0, 0xb4(r3)
/* 806DE59C 38A0FFFF */ li          r5, -1
/* 806DE5A0 2C000000 */ cmpwi       r0, 0
/* 806DE5A4 4082001C */ bne-        lbl_806de5c0
/* 806DE5A8 A88300D8 */ lha         r4, 0xd8(r3)
/* 806DE5AC 800300BC */ lwz         r0, 0xbc(r3)
/* 806DE5B0 7C040040 */ cmplw       r4, r0
/* 806DE5B4 4082000C */ bne-        lbl_806de5c0
/* 806DE5B8 80630020 */ lwz         r3, 0x20(r3)
/* 806DE5BC A8A30046 */ lha         r5, 0x46(r3)
lbl_806de5c0:
/* 806DE5C0 7CA32B78 */ mr          r3, r5
/* 806DE5C4 4E800020 */ blr         