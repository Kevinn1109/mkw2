nofralloc
/* 80524500 1C0400EC */ mulli       r0, r4, 0xec
/* 80524504 7C671B78 */ mr          r7, r3
/* 80524508 38A00000 */ li          r5, 0
/* 8052450C 7C630214 */ add         r3, r3, r0
/* 80524510 80C30008 */ lwz         r6, 8(r3)
/* 80524514 1C0400A8 */ mulli       r0, r4, 0xa8
/* 80524518 38630004 */ addi        r3, r3, 4
/* 8052451C 2C060000 */ cmpwi       r6, 0
/* 80524520 7C870214 */ add         r4, r7, r0
/* 80524524 38843E60 */ addi        r4, r4, 0x3e60
/* 80524528 4182000C */ beq-        lbl_80524534
/* 8052452C 88C60051 */ lbz         r6, 0x51(r6)
/* 80524530 48000008 */ b           lbl_80524538
lbl_80524534:
/* 80524534 38C00000 */ li          r6, 0
lbl_80524538:
/* 80524538 4BFFD30C */ b           setGhostController__Q26System10KPadPlayerFPQ26System14KPadControllerPQ26System14KPadControllerb