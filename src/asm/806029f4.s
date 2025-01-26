nofralloc
/* 806029F4 9421FFE0 */ stwu        r1, -0x20(r1)
/* 806029F8 7C0802A6 */ mflr        r0
/* 806029FC 3C808089 */ lis         r4, lbl_80896820@ha
/* 80602A00 3CA0808C */ lis         r5, lbl_808ba624@ha
/* 80602A04 90010024 */ stw         r0, 0x24(r1)
/* 80602A08 38A5A624 */ addi        r5, r5, lbl_808ba624@l
/* 80602A0C C0046820 */ lfs         f0, lbl_80896820@l(r4)
/* 80602A10 38810008 */ addi        r4, r1, 8
/* 80602A14 93E1001C */ stw         r31, 0x1c(r1)
/* 80602A18 93C10018 */ stw         r30, 0x18(r1)
/* 80602A1C 93A10014 */ stw         r29, 0x14(r1)
/* 80602A20 7C7D1B78 */ mr          r29, r3
/* 80602A24 38630024 */ addi        r3, r3, 0x24
/* 80602A28 90A10008 */ stw         r5, 8(r1)
/* 80602A2C D001000C */ stfs        f0, 0xc(r1)
/* 80602A30 4BFC00A1 */ bl          transform__Q22UI12ControlGroupFRQ32UI12ControlGroup7Functor
/* 80602A34 83DD0038 */ lwz         r30, 0x38(r29)
/* 80602A38 38600004 */ li          r3, 4
/* 80602A3C 3800FFFF */ li          r0, -1
/* 80602A40 907D0008 */ stw         r3, 8(r29)
/* 80602A44 2C1E0000 */ cmpwi       r30, 0
/* 80602A48 901D001C */ stw         r0, 0x1c(r29)
/* 80602A4C 4082000C */ bne-        lbl_80602a58
/* 80602A50 3BC00000 */ li          r30, 0
/* 80602A54 48000058 */ b           lbl_80602aac
lbl_80602a58:
/* 80602A58 3FE0809C */ lis         r31, lbl_809c1c90@ha
/* 80602A5C 3BFF1C90 */ addi        r31, r31, lbl_809c1c90@l
/* 80602A60 41820048 */ beq-        lbl_80602aa8
/* 80602A64 819E0000 */ lwz         r12, 0(r30)
/* 80602A68 7FC3F378 */ mr          r3, r30
/* 80602A6C 818C0008 */ lwz         r12, 8(r12)
/* 80602A70 7D8903A6 */ mtctr       r12
/* 80602A74 4E800421 */ bctrl       
/* 80602A78 48000018 */ b           lbl_80602a90
lbl_80602a7c:
/* 80602A7C 7C03F840 */ cmplw       r3, r31
/* 80602A80 4082000C */ bne-        lbl_80602a8c
/* 80602A84 38000001 */ li          r0, 1
/* 80602A88 48000014 */ b           lbl_80602a9c
lbl_80602a8c:
/* 80602A8C 80630000 */ lwz         r3, 0(r3)
lbl_80602a90:
/* 80602A90 2C030000 */ cmpwi       r3, 0
/* 80602A94 4082FFE8 */ bne+        lbl_80602a7c
/* 80602A98 38000000 */ li          r0, 0
lbl_80602a9c:
/* 80602A9C 2C000000 */ cmpwi       r0, 0
/* 80602AA0 41820008 */ beq-        lbl_80602aa8
/* 80602AA4 48000008 */ b           lbl_80602aac
lbl_80602aa8:
/* 80602AA8 3BC00000 */ li          r30, 0
lbl_80602aac:
/* 80602AAC 2C1E0000 */ cmpwi       r30, 0
/* 80602AB0 41820024 */ beq-        lbl_80602ad4
/* 80602AB4 3BE00000 */ li          r31, 0
lbl_80602ab8:
/* 80602AB8 7FC3F378 */ mr          r3, r30
/* 80602ABC 7FE4FB78 */ mr          r4, r31
/* 80602AC0 38A00001 */ li          r5, 1
/* 80602AC4 4BFEF63D */ bl          unk_805f2100
/* 80602AC8 3BFF0001 */ addi        r31, r31, 1
/* 80602ACC 2C1F0005 */ cmpwi       r31, 5
/* 80602AD0 4180FFE8 */ blt+        lbl_80602ab8
lbl_80602ad4:
/* 80602AD4 819D0000 */ lwz         r12, 0(r29)
/* 80602AD8 7FA3EB78 */ mr          r3, r29
/* 80602ADC 818C003C */ lwz         r12, 0x3c(r12)
/* 80602AE0 7D8903A6 */ mtctr       r12
/* 80602AE4 4E800421 */ bctrl       
/* 80602AE8 80010024 */ lwz         r0, 0x24(r1)
/* 80602AEC 83E1001C */ lwz         r31, 0x1c(r1)
/* 80602AF0 83C10018 */ lwz         r30, 0x18(r1)
/* 80602AF4 83A10014 */ lwz         r29, 0x14(r1)
/* 80602AF8 7C0803A6 */ mtlr        r0
/* 80602AFC 38210020 */ addi        r1, r1, 0x20
/* 80602B00 4E800020 */ blr         