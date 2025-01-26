nofralloc
/* 8078E694 9421FFB0 */ stwu        r1, -0x50(r1)
/* 8078E698 7C0802A6 */ mflr        r0
/* 8078E69C 3CC0808A */ lis         r6, lbl_808a4be4@ha
/* 8078E6A0 90010054 */ stw         r0, 0x54(r1)
/* 8078E6A4 BEA10024 */ stmw        r21, 0x24(r1)
/* 8078E6A8 3FC0808D */ lis         r30, lbl_808d1860@ha
/* 8078E6AC 7C7D1B78 */ mr          r29, r3
/* 8078E6B0 3BE00000 */ li          r31, 0
/* 8078E6B4 3BDE1860 */ addi        r30, r30, lbl_808d1860@l
/* 8078E6B8 3EC0808B */ lis         r22, lbl_808b4840@ha
/* 8078E6BC 3EE0808B */ lis         r23, lbl_808b4820@ha
/* 8078E6C0 3F00808B */ lis         r24, lbl_808b4818@ha
/* 8078E6C4 3F20808D */ lis         r25, lbl_808d18c8@ha
/* 8078E6C8 3F40808B */ lis         r26, lbl_808b7190@ha
/* 8078E6CC 3F60808B */ lis         r27, lbl_808b7168@ha
/* 8078E6D0 3F80809C */ lis         r28, lbl_809c2f40@ha
/* 8078E6D4 8CA64BE4 */ lbzu        r5, lbl_808a4be4@l(r6)
/* 8078E6D8 98A10014 */ stb         r5, 0x14(r1)
/* 8078E6DC 88860001 */ lbz         r4, 1(r6)
/* 8078E6E0 88660002 */ lbz         r3, 2(r6)
/* 8078E6E4 88060003 */ lbz         r0, 3(r6)
/* 8078E6E8 98810015 */ stb         r4, 0x15(r1)
/* 8078E6EC 98610016 */ stb         r3, 0x16(r1)
/* 8078E6F0 98010017 */ stb         r0, 0x17(r1)
/* 8078E6F4 480000B0 */ b           lbl_8078e7a4
lbl_8078e6f8:
/* 8078E6F8 80BD0000 */ lwz         r5, 0(r29)
/* 8078E6FC 3861000C */ addi        r3, r1, 0xc
/* 8078E700 809E0000 */ lwz         r4, 0(r30)
/* 8078E704 8005000C */ lwz         r0, 0xc(r5)
/* 8078E708 9001000C */ stw         r0, 0xc(r1)
/* 8078E70C 4B8C01E5 */ bl          unk_8004e8f0
/* 8078E710 2C030000 */ cmpwi       r3, 0
/* 8078E714 7C751B78 */ mr          r21, r3
/* 8078E718 41820084 */ beq-        lbl_8078e79c
/* 8078E71C 40820020 */ bne-        lbl_8078e73c
/* 8078E720 38764840 */ addi        r3, r22, lbl_808b4840@l
/* 8078E724 38B74820 */ addi        r5, r23, lbl_808b4820@l
/* 8078E728 38D84818 */ addi        r6, r24, lbl_808b4818@l
/* 8078E72C 38F918C8 */ addi        r7, r25, lbl_808d18c8@l
/* 8078E730 3880026D */ li          r4, 0x26d
/* 8078E734 4CC63182 */ crclr       cr1eq
/* 8078E738 4B897879 */ bl          Panic
lbl_8078e73c:
/* 8078E73C 8015003C */ lwz         r0, 0x3c(r21)
/* 8078E740 2C000000 */ cmpwi       r0, 0
/* 8078E744 4182000C */ beq-        lbl_8078e750
/* 8078E748 7C750214 */ add         r3, r21, r0
/* 8078E74C 48000008 */ b           lbl_8078e754
lbl_8078e750:
/* 8078E750 38600000 */ li          r3, 0
lbl_8078e754:
/* 8078E754 3AA30020 */ addi        r21, r3, 0x20
/* 8078E758 56A006FF */ clrlwi.     r0, r21, 0x1b
/* 8078E75C 41820018 */ beq-        lbl_8078e774
/* 8078E760 387A7190 */ addi        r3, r26, lbl_808b7190@l
/* 8078E764 38BB7168 */ addi        r5, r27, lbl_808b7168@l
/* 8078E768 3880017A */ li          r4, 0x17a
/* 8078E76C 4CC63182 */ crclr       cr1eq
/* 8078E770 4B897841 */ bl          Panic
lbl_8078e774:
/* 8078E774 80010014 */ lwz         r0, 0x14(r1)
/* 8078E778 38610008 */ addi        r3, r1, 8
/* 8078E77C 92A10008 */ stw         r21, 8(r1)
/* 8078E780 38A10010 */ addi        r5, r1, 0x10
/* 8078E784 38800001 */ li          r4, 1
/* 8078E788 90010010 */ stw         r0, 0x10(r1)
/* 8078E78C 4B8C2715 */ bl          unk_80050ea0
/* 8078E790 38610008 */ addi        r3, r1, 8
/* 8078E794 38800000 */ li          r4, 0
/* 8078E798 4B8C1CD9 */ bl          unk_80050470
lbl_8078e79c:
/* 8078E79C 3BDE0004 */ addi        r30, r30, 4
/* 8078E7A0 3BFF0001 */ addi        r31, r31, 1
lbl_8078e7a4:
/* 8078E7A4 801C2F40 */ lwz         r0, lbl_809c2f40@l(r28)
/* 8078E7A8 7C1F0000 */ cmpw        r31, r0
/* 8078E7AC 4180FF4C */ blt+        lbl_8078e6f8
/* 8078E7B0 BAA10024 */ lmw         r21, 0x24(r1)
/* 8078E7B4 80010054 */ lwz         r0, 0x54(r1)
/* 8078E7B8 7C0803A6 */ mtlr        r0
/* 8078E7BC 38210050 */ addi        r1, r1, 0x50
/* 8078E7C0 4E800020 */ blr         