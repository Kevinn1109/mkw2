nofralloc
/* 80635A3C 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80635A40 7C0802A6 */ mflr        r0
/* 80635A44 90010024 */ stw         r0, 0x24(r1)
/* 80635A48 93E1001C */ stw         r31, 0x1c(r1)
/* 80635A4C 93C10018 */ stw         r30, 0x18(r1)
/* 80635A50 7CBE2B78 */ mr          r30, r5
/* 80635A54 93A10014 */ stw         r29, 0x14(r1)
/* 80635A58 7C9D2378 */ mr          r29, r4
/* 80635A5C 93810010 */ stw         r28, 0x10(r1)
/* 80635A60 7C7C1B78 */ mr          r28, r3
/* 80635A64 8003000C */ lwz         r0, 0xc(r3)
/* 80635A68 7C002000 */ cmpw        r0, r4
/* 80635A6C 4182003C */ beq-        lbl_80635aa8
/* 80635A70 7C030378 */ mr          r3, r0
/* 80635A74 4BFFF10D */ bl          Section_getPriority
/* 80635A78 7C7F1B78 */ mr          r31, r3
/* 80635A7C 7FA3EB78 */ mr          r3, r29
/* 80635A80 4BFFF101 */ bl          Section_getPriority
/* 80635A84 7C03F800 */ cmpw        r3, r31
/* 80635A88 40810010 */ ble-        lbl_80635a98
/* 80635A8C 93BC000C */ stw         r29, 0xc(r28)
/* 80635A90 93DC0018 */ stw         r30, 0x18(r28)
/* 80635A94 48000014 */ b           lbl_80635aa8
lbl_80635a98:
/* 80635A98 807C000C */ lwz         r3, 0xc(r28)
/* 80635A9C 4BFFF0E5 */ bl          Section_getPriority
/* 80635AA0 7FA3EB78 */ mr          r3, r29
/* 80635AA4 4BFFF0DD */ bl          Section_getPriority
lbl_80635aa8:
/* 80635AA8 80010024 */ lwz         r0, 0x24(r1)
/* 80635AAC 83E1001C */ lwz         r31, 0x1c(r1)
/* 80635AB0 83C10018 */ lwz         r30, 0x18(r1)
/* 80635AB4 83A10014 */ lwz         r29, 0x14(r1)
/* 80635AB8 83810010 */ lwz         r28, 0x10(r1)
/* 80635ABC 7C0803A6 */ mtlr        r0
/* 80635AC0 38210020 */ addi        r1, r1, 0x20
/* 80635AC4 4E800020 */ blr         