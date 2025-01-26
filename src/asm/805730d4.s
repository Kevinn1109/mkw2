nofralloc
/* 805730D4 9421FFE0 */ stwu        r1, -0x20(r1)
/* 805730D8 7C0802A6 */ mflr        r0
/* 805730DC 90010024 */ stw         r0, 0x24(r1)
/* 805730E0 93E1001C */ stw         r31, 0x1c(r1)
/* 805730E4 93C10018 */ stw         r30, 0x18(r1)
/* 805730E8 7C7E1B78 */ mr          r30, r3
/* 805730EC 38630004 */ addi        r3, r3, 4
/* 805730F0 93A10014 */ stw         r29, 0x14(r1)
/* 805730F4 93810010 */ stw         r28, 0x10(r1)
/* 805730F8 4801E3C5 */ bl          getScale__Q24Kart15KartObjectProxyFv
/* 805730FC 7C7D1B78 */ mr          r29, r3
/* 80573100 387E0004 */ addi        r3, r30, 4
/* 80573104 4801D161 */ bl          PlayerPointers_getMat
/* 80573108 7C7C1B78 */ mr          r28, r3
/* 8057310C 387E0004 */ addi        r3, r30, 4
/* 80573110 4801D29D */ bl          kartPhysics__Q24Kart15KartObjectProxyFv
/* 80573114 83E30008 */ lwz         r31, 8(r3)
/* 80573118 3BC00000 */ li          r30, 0
/* 8057311C 48000024 */ b           lbl_80573140
lbl_80573120:
/* 80573120 57C0043E */ clrlwi      r0, r30, 0x10
/* 80573124 807F008C */ lwz         r3, 0x8c(r31)
/* 80573128 1C000030 */ mulli       r0, r0, 0x30
/* 8057312C 7FA4EB78 */ mr          r4, r29
/* 80573130 7F85E378 */ mr          r5, r28
/* 80573134 7C630214 */ add         r3, r3, r0
/* 80573138 48044F71 */ bl          setLastPos__Q24Kart6HitboxFRCQ23EGG8Vector3fRCQ23EGG9Matrix34f
/* 8057313C 3BDE0001 */ addi        r30, r30, 1
lbl_80573140:
/* 80573140 A81F0000 */ lha         r0, 0(r31)
/* 80573144 7FC30734 */ extsh       r3, r30
/* 80573148 7C030000 */ cmpw        r3, r0
/* 8057314C 4180FFD4 */ blt+        lbl_80573120
/* 80573150 80010024 */ lwz         r0, 0x24(r1)
/* 80573154 83E1001C */ lwz         r31, 0x1c(r1)
/* 80573158 83C10018 */ lwz         r30, 0x18(r1)
/* 8057315C 83A10014 */ lwz         r29, 0x14(r1)
/* 80573160 83810010 */ lwz         r28, 0x10(r1)
/* 80573164 7C0803A6 */ mtlr        r0
/* 80573168 38210020 */ addi        r1, r1, 0x20
/* 8057316C 4E800020 */ blr         