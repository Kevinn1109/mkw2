nofralloc
/* 806DE624 9421FFD0 */ stwu        r1, -0x30(r1)
/* 806DE628 7C0802A6 */ mflr        r0
/* 806DE62C 90010034 */ stw         r0, 0x34(r1)
/* 806DE630 BEE1000C */ stmw        r23, 0xc(r1)
/* 806DE634 7C7F1B78 */ mr          r31, r3
/* 806DE638 4BFFF44D */ bl          unk_806dda84
/* 806DE63C 3C60808C */ lis         r3, lbl_808c6420@ha
/* 806DE640 3FC0809C */ lis         r30, lbl_809c4330@ha
/* 806DE644 38636420 */ addi        r3, r3, lbl_808c6420@l
/* 806DE648 907F0000 */ stw         r3, 0(r31)
/* 806DE64C 807E4330 */ lwz         r3, lbl_809c4330@l(r30)
/* 806DE650 4814CD69 */ bl          ObjManager_groupGetCount
/* 806DE654 7C7C1B78 */ mr          r28, r3
/* 806DE658 3B600000 */ li          r27, 0
/* 806DE65C 3FA0808A */ lis         r29, lbl_808a04f0@ha
/* 806DE660 48000040 */ b           lbl_806de6a0
lbl_806de664:
/* 806DE664 807E4330 */ lwz         r3, lbl_809c4330@l(r30)
/* 806DE668 7F64DB78 */ mr          r4, r27
/* 806DE66C 4814CD3D */ bl          unk_8082b3a8
/* 806DE670 81830000 */ lwz         r12, 0(r3)
/* 806DE674 818C0028 */ lwz         r12, 0x28(r12)
/* 806DE678 7D8903A6 */ mtctr       r12
/* 806DE67C 4E800421 */ bctrl       
/* 806DE680 389D04F0 */ addi        r4, r29, lbl_808a04f0@l
/* 806DE684 4B934C19 */ bl          strcmp
/* 806DE688 2C030000 */ cmpwi       r3, 0
/* 806DE68C 40820010 */ bne-        lbl_806de69c
/* 806DE690 807F00B8 */ lwz         r3, 0xb8(r31)
/* 806DE694 38030001 */ addi        r0, r3, 1
/* 806DE698 901F00B8 */ stw         r0, 0xb8(r31)
lbl_806de69c:
/* 806DE69C 3B7B0001 */ addi        r27, r27, 1
lbl_806de6a0:
/* 806DE6A0 7C1BE000 */ cmpw        r27, r28
/* 806DE6A4 4180FFC0 */ blt+        lbl_806de664
/* 806DE6A8 3FC0808A */ lis         r30, lbl_808a04f0@ha
/* 806DE6AC 3B400000 */ li          r26, 0
/* 806DE6B0 3BDE04F0 */ addi        r30, r30, lbl_808a04f0@l
/* 806DE6B4 3B200000 */ li          r25, 0
/* 806DE6B8 3B600000 */ li          r27, 0
/* 806DE6BC 3FA0809C */ lis         r29, lbl_809c4330@ha
/* 806DE6C0 48000088 */ b           lbl_806de748
lbl_806de6c4:
/* 806DE6C4 807D4330 */ lwz         r3, lbl_809c4330@l(r29)
/* 806DE6C8 7F24CB78 */ mr          r4, r25
/* 806DE6CC 4814CCDD */ bl          unk_8082b3a8
/* 806DE6D0 81830000 */ lwz         r12, 0(r3)
/* 806DE6D4 7C781B78 */ mr          r24, r3
/* 806DE6D8 818C0028 */ lwz         r12, 0x28(r12)
/* 806DE6DC 7D8903A6 */ mtctr       r12
/* 806DE6E0 4E800421 */ bctrl       
/* 806DE6E4 7C771B78 */ mr          r23, r3
/* 806DE6E8 389E000A */ addi        r4, r30, 0xa
/* 806DE6EC 4B934BB1 */ bl          strcmp
/* 806DE6F0 2C030000 */ cmpwi       r3, 0
/* 806DE6F4 40820038 */ bne-        lbl_806de72c
/* 806DE6F8 2C1A0000 */ cmpwi       r26, 0
/* 806DE6FC 4082001C */ bne-        lbl_806de718
/* 806DE700 801F00B8 */ lwz         r0, 0xb8(r31)
/* 806DE704 5403103A */ slwi        r3, r0, 2
/* 806DE708 4BB4B6E9 */ bl          __nwa__FUl
/* 806DE70C 907F00B0 */ stw         r3, 0xb0(r31)
/* 806DE710 7F03D92E */ stwx        r24, r3, r27
/* 806DE714 4800000C */ b           lbl_806de720
lbl_806de718:
/* 806DE718 807F00B0 */ lwz         r3, 0xb0(r31)
/* 806DE71C 7F03D92E */ stwx        r24, r3, r27
lbl_806de720:
/* 806DE720 3B7B0004 */ addi        r27, r27, 4
/* 806DE724 3B5A0001 */ addi        r26, r26, 1
/* 806DE728 4800001C */ b           lbl_806de744
lbl_806de72c:
/* 806DE72C 7EE3BB78 */ mr          r3, r23
/* 806DE730 389E0014 */ addi        r4, r30, 0x14
/* 806DE734 4B934B69 */ bl          strcmp
/* 806DE738 2C030000 */ cmpwi       r3, 0
/* 806DE73C 40820008 */ bne-        lbl_806de744
/* 806DE740 931F00B4 */ stw         r24, 0xb4(r31)
lbl_806de744:
/* 806DE744 3B390001 */ addi        r25, r25, 1
lbl_806de748:
/* 806DE748 7C19E000 */ cmpw        r25, r28
/* 806DE74C 4180FF78 */ blt+        lbl_806de6c4
/* 806DE750 807F00B4 */ lwz         r3, 0xb4(r31)
/* 806DE754 80630020 */ lwz         r3, 0x20(r3)
/* 806DE758 A0030006 */ lhz         r0, 6(r3)
/* 806DE75C 5403083C */ slwi        r3, r0, 1
/* 806DE760 4BB4B691 */ bl          __nwa__FUl
/* 806DE764 907F00BC */ stw         r3, 0xbc(r31)
/* 806DE768 7FE3FB78 */ mr          r3, r31
/* 806DE76C BAE1000C */ lmw         r23, 0xc(r1)
/* 806DE770 80010034 */ lwz         r0, 0x34(r1)
/* 806DE774 7C0803A6 */ mtlr        r0
/* 806DE778 38210030 */ addi        r1, r1, 0x30
/* 806DE77C 4E800020 */ blr         