nofralloc
/* 806DC460 9421FFD0 */ stwu        r1, -0x30(r1)
/* 806DC464 7C0802A6 */ mflr        r0
/* 806DC468 90010034 */ stw         r0, 0x34(r1)
/* 806DC46C 93E1002C */ stw         r31, 0x2c(r1)
/* 806DC470 3FE0808A */ lis         r31, lbl_808a0378@ha
/* 806DC474 3BFF0378 */ addi        r31, r31, lbl_808a0378@l
/* 806DC478 93C10028 */ stw         r30, 0x28(r1)
/* 806DC47C 7CBE2B78 */ mr          r30, r5
/* 806DC480 93A10024 */ stw         r29, 0x24(r1)
/* 806DC484 7C9D2378 */ mr          r29, r4
/* 806DC488 93810020 */ stw         r28, 0x20(r1)
/* 806DC48C 7C7C1B78 */ mr          r28, r3
/* 806DC490 81830000 */ lwz         r12, 0(r3)
/* 806DC494 818C0090 */ lwz         r12, 0x90(r12)
/* 806DC498 7D8903A6 */ mtctr       r12
/* 806DC49C 4E800421 */ bctrl       
/* 806DC4A0 C03F0004 */ lfs         f1, 4(r31)
/* 806DC4A4 7F83E378 */ mr          r3, r28
/* 806DC4A8 3880022A */ li          r4, 0x22a
/* 806DC4AC 48144051 */ bl          unk_808204fc
/* 806DC4B0 C01F0020 */ lfs         f0, 0x20(r31)
/* 806DC4B4 2C1E0000 */ cmpwi       r30, 0
/* 806DC4B8 38600000 */ li          r3, 0
/* 806DC4BC 38000001 */ li          r0, 1
/* 806DC4C0 D01C012C */ stfs        f0, 0x12c(r28)
/* 806DC4C4 D01C0130 */ stfs        f0, 0x130(r28)
/* 806DC4C8 B07C0134 */ sth         r3, 0x134(r28)
/* 806DC4CC 981C0136 */ stb         r0, 0x136(r28)
/* 806DC4D0 907C0138 */ stw         r3, 0x138(r28)
/* 806DC4D4 418200EC */ beq-        lbl_806dc5c0
/* 806DC4D8 38BF0000 */ addi        r5, r31, 0
/* 806DC4DC 891F0000 */ lbz         r8, 0(r31)
/* 806DC4E0 88E50001 */ lbz         r7, 1(r5)
/* 806DC4E4 387C0030 */ addi        r3, r28, 0x30
/* 806DC4E8 88C50002 */ lbz         r6, 2(r5)
/* 806DC4EC 389C00EC */ addi        r4, r28, 0xec
/* 806DC4F0 88050003 */ lbz         r0, 3(r5)
/* 806DC4F4 38A10008 */ addi        r5, r1, 8
/* 806DC4F8 99010008 */ stb         r8, 8(r1)
/* 806DC4FC C03F0038 */ lfs         f1, 0x38(r31)
/* 806DC500 98E10009 */ stb         r7, 9(r1)
/* 806DC504 98C1000A */ stb         r6, 0xa(r1)
/* 806DC508 9801000B */ stb         r0, 0xb(r1)
/* 806DC50C 4BFD952D */ bl          unk_806b5a38
/* 806DC510 881C0104 */ lbz         r0, 0x104(r28)
/* 806DC514 2C000000 */ cmpwi       r0, 0
/* 806DC518 41820034 */ beq-        lbl_806dc54c
/* 806DC51C 3C80808C */ lis         r4, lbl_808c5d9c@ha
/* 806DC520 3861000C */ addi        r3, r1, 0xc
/* 806DC524 C0245D9C */ lfs         f1, lbl_808c5d9c@l(r4)
/* 806DC528 389C00EC */ addi        r4, r28, 0xec
/* 806DC52C 4BE382E5 */ bl          Vec3_scale
/* 806DC530 3C60809C */ lis         r3, lbl_809c3618@ha
/* 806DC534 7FA7EB78 */ mr          r7, r29
/* 806DC538 80633618 */ lwz         r3, lbl_809c3618@l(r3)
/* 806DC53C 38BC0030 */ addi        r5, r28, 0x30
/* 806DC540 38C1000C */ addi        r6, r1, 0xc
/* 806DC544 38800003 */ li          r4, 3
/* 806DC548 480BDA75 */ bl          unk_80799fbc
lbl_806dc54c:
/* 806DC54C 819C0000 */ lwz         r12, 0(r28)
/* 806DC550 7F83E378 */ mr          r3, r28
/* 806DC554 818C0024 */ lwz         r12, 0x24(r12)
/* 806DC558 7D8903A6 */ mtctr       r12
/* 806DC55C 4E800421 */ bctrl       
/* 806DC560 3C80809C */ lis         r4, spInstance__Q26System10RaceConfig@ha
/* 806DC564 3CA0809C */ lis         r5, spInstance__Q26System11RaceManager@ha
/* 806DC568 80C4D728 */ lwz         r6, spInstance__Q26System10RaceConfig@l(r4)
/* 806DC56C 5464043E */ clrlwi      r4, r3, 0x10
/* 806DC570 8065D730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r5)
/* 806DC574 80060B70 */ lwz         r0, 0xb70(r6)
/* 806DC578 2C000004 */ cmpwi       r0, 4
/* 806DC57C 40820044 */ bne-        lbl_806dc5c0
/* 806DC580 A0060B9E */ lhz         r0, 0xb9e(r6)
/* 806DC584 2C000005 */ cmpwi       r0, 5
/* 806DC588 40820038 */ bne-        lbl_806dc5c0
/* 806DC58C 2C040001 */ cmpwi       r4, 1
/* 806DC590 83E30010 */ lwz         r31, 0x10(r3)
/* 806DC594 41800020 */ blt-        lbl_806dc5b4
/* 806DC598 819F0000 */ lwz         r12, 0(r31)
/* 806DC59C 7FE3FB78 */ mr          r3, r31
/* 806DC5A0 818C0038 */ lwz         r12, 0x38(r12)
/* 806DC5A4 7D8903A6 */ mtctr       r12
/* 806DC5A8 4E800421 */ bctrl       
/* 806DC5AC 2C030000 */ cmpwi       r3, 0
/* 806DC5B0 41820010 */ beq-        lbl_806dc5c0
lbl_806dc5b4:
/* 806DC5B4 807F0008 */ lwz         r3, 8(r31)
/* 806DC5B8 38030001 */ addi        r0, r3, 1
/* 806DC5BC 901F0008 */ stw         r0, 8(r31)
lbl_806dc5c0:
/* 806DC5C0 80010034 */ lwz         r0, 0x34(r1)
/* 806DC5C4 83E1002C */ lwz         r31, 0x2c(r1)
/* 806DC5C8 83C10028 */ lwz         r30, 0x28(r1)
/* 806DC5CC 83A10024 */ lwz         r29, 0x24(r1)
/* 806DC5D0 83810020 */ lwz         r28, 0x20(r1)
/* 806DC5D4 7C0803A6 */ mtlr        r0
/* 806DC5D8 38210030 */ addi        r1, r1, 0x30
/* 806DC5DC 4E800020 */ blr         