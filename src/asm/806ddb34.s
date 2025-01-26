nofralloc
/* 806DDB34 9421FFE0 */ stwu        r1, -0x20(r1)
/* 806DDB38 7C0802A6 */ mflr        r0
/* 806DDB3C 38E00000 */ li          r7, 0
/* 806DDB40 38C00000 */ li          r6, 0
/* 806DDB44 90010024 */ stw         r0, 0x24(r1)
/* 806DDB48 38A0FFFF */ li          r5, -1
/* 806DDB4C 93E1001C */ stw         r31, 0x1c(r1)
/* 806DDB50 7C7F1B78 */ mr          r31, r3
/* 806DDB54 93C10018 */ stw         r30, 0x18(r1)
/* 806DDB58 93A10014 */ stw         r29, 0x14(r1)
/* 806DDB5C 93810010 */ stw         r28, 0x10(r1)
/* 806DDB60 48000014 */ b           lbl_806ddb74
lbl_806ddb64:
/* 806DDB64 808300BC */ lwz         r4, 0xbc(r3)
/* 806DDB68 38E70001 */ addi        r7, r7, 1
/* 806DDB6C 7CA4332E */ sthx        r5, r4, r6
/* 806DDB70 38C60002 */ addi        r6, r6, 2
lbl_806ddb74:
/* 806DDB74 808300B4 */ lwz         r4, 0xb4(r3)
/* 806DDB78 80840020 */ lwz         r4, 0x20(r4)
/* 806DDB7C A0040006 */ lhz         r0, 6(r4)
/* 806DDB80 7C070000 */ cmpw        r7, r0
/* 806DDB84 4180FFE0 */ blt+        lbl_806ddb64
/* 806DDB88 38E00000 */ li          r7, 0
/* 806DDB8C 38C00000 */ li          r6, 0
/* 806DDB90 48000024 */ b           lbl_806ddbb4
lbl_806ddb94:
/* 806DDB94 808300B0 */ lwz         r4, 0xb0(r3)
/* 806DDB98 80A300BC */ lwz         r5, 0xbc(r3)
/* 806DDB9C 7C84302E */ lwzx        r4, r4, r6
/* 806DDBA0 38C60004 */ addi        r6, r6, 4
/* 806DDBA4 A00400B0 */ lhz         r0, 0xb0(r4)
/* 806DDBA8 5400083C */ slwi        r0, r0, 1
/* 806DDBAC 7CE5032E */ sthx        r7, r5, r0
/* 806DDBB0 38E70001 */ addi        r7, r7, 1
lbl_806ddbb4:
/* 806DDBB4 800300B8 */ lwz         r0, 0xb8(r3)
/* 806DDBB8 7C070000 */ cmpw        r7, r0
/* 806DDBBC 4180FFD8 */ blt+        lbl_806ddb94
/* 806DDBC0 3B800000 */ li          r28, 0
/* 806DDBC4 3BA00000 */ li          r29, 0
/* 806DDBC8 3FC0809C */ lis         r30, lbl_809c22b0@ha
/* 806DDBCC 4800004C */ b           lbl_806ddc18
lbl_806ddbd0:
/* 806DDBD0 809F00B4 */ lwz         r4, 0xb4(r31)
/* 806DDBD4 807E22B0 */ lwz         r3, lbl_809c22b0@l(r30)
/* 806DDBD8 80840020 */ lwz         r4, 0x20(r4)
/* 806DDBDC A8840004 */ lha         r4, 4(r4)
/* 806DDBE0 4801351D */ bl          unk_806f10fc
/* 806DDBE4 809F00B0 */ lwz         r4, 0xb0(r31)
/* 806DDBE8 7C84E82E */ lwzx        r4, r4, r29
/* 806DDBEC A08400B0 */ lhz         r4, 0xb0(r4)
/* 806DDBF0 4800F561 */ bl          unk_806ed150
/* 806DDBF4 80BF00B0 */ lwz         r5, 0xb0(r31)
/* 806DDBF8 7C641B78 */ mr          r4, r3
/* 806DDBFC 7C65E82E */ lwzx        r3, r5, r29
/* 806DDC00 81830000 */ lwz         r12, 0(r3)
/* 806DDC04 818C00EC */ lwz         r12, 0xec(r12)
/* 806DDC08 7D8903A6 */ mtctr       r12
/* 806DDC0C 4E800421 */ bctrl       
/* 806DDC10 3BBD0004 */ addi        r29, r29, 4
/* 806DDC14 3B9C0001 */ addi        r28, r28, 1
lbl_806ddc18:
/* 806DDC18 801F00B8 */ lwz         r0, 0xb8(r31)
/* 806DDC1C 7C1C0000 */ cmpw        r28, r0
/* 806DDC20 4180FFB0 */ blt+        lbl_806ddbd0
/* 806DDC24 80010024 */ lwz         r0, 0x24(r1)
/* 806DDC28 83E1001C */ lwz         r31, 0x1c(r1)
/* 806DDC2C 83C10018 */ lwz         r30, 0x18(r1)
/* 806DDC30 83A10014 */ lwz         r29, 0x14(r1)
/* 806DDC34 83810010 */ lwz         r28, 0x10(r1)
/* 806DDC38 7C0803A6 */ mtlr        r0
/* 806DDC3C 38210020 */ addi        r1, r1, 0x20
/* 806DDC40 4E800020 */ blr         