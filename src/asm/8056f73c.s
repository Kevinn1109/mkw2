nofralloc
/* 8056F73C 9421FFF0 */ stwu        r1, -0x10(r1)
/* 8056F740 7C0802A6 */ mflr        r0
/* 8056F744 3CA020E8 */ lis         r5, 0x20e8
/* 8056F748 90010014 */ stw         r0, 0x14(r1)
/* 8056F74C 38A50FFF */ addi        r5, r5, 0xfff
/* 8056F750 93E1000C */ stw         r31, 0xc(r1)
/* 8056F754 7C7F1B78 */ mr          r31, r3
/* 8056F758 93C10008 */ stw         r30, 8(r1)
/* 8056F75C 7C9E2378 */ mr          r30, r4
/* 8056F760 80040000 */ lwz         r0, 0(r4)
/* 8056F764 7C002839 */ and.        r0, r0, r5
/* 8056F768 41820014 */ beq-        lbl_8056f77c
/* 8056F76C 7FC3F378 */ mr          r3, r30
/* 8056F770 7CA42B78 */ mr          r4, r5
/* 8056F774 4824E1F9 */ bl          findClosestCollisionEntry__5FieldFPUlUl
/* 8056F778 48000008 */ b           lbl_8056f780
lbl_8056f77c:
/* 8056F77C 38600000 */ li          r3, 0
lbl_8056f780:
/* 8056F780 2C030000 */ cmpwi       r3, 0
/* 8056F784 4182001C */ beq-        lbl_8056f7a0
/* 8056F788 3C80809C */ lis         r4, closestCollisionEntry__5Field@ha
/* 8056F78C 387F0004 */ addi        r3, r31, 4
/* 8056F790 80843BDC */ lwz         r4, closestCollisionEntry__5Field@l(r4)
/* 8056F794 A0040004 */ lhz         r0, 4(r4)
/* 8056F798 5404C77E */ rlwinm      r4, r0, 0x18, 0x1d, 0x1f
/* 8056F79C 480221E1 */ bl          unk_8059197c
lbl_8056f7a0:
/* 8056F7A0 3C60D011 */ lis         r3, 0xd011
/* 8056F7A4 809E0000 */ lwz         r4, 0(r30)
/* 8056F7A8 3803F000 */ addi        r0, r3, -0x1000
/* 8056F7AC 7C800039 */ and.        r0, r4, r0
/* 8056F7B0 41820010 */ beq-        lbl_8056f7c0
/* 8056F7B4 801F002C */ lwz         r0, 0x2c(r31)
/* 8056F7B8 60000001 */ ori         r0, r0, 1
/* 8056F7BC 901F002C */ stw         r0, 0x2c(r31)
lbl_8056f7c0:
/* 8056F7C0 801E0000 */ lwz         r0, 0(r30)
/* 8056F7C4 5400056B */ rlwinm.     r0, r0, 0, 0x15, 0x15
/* 8056F7C8 41820010 */ beq-        lbl_8056f7d8
/* 8056F7CC 801F002C */ lwz         r0, 0x2c(r31)
/* 8056F7D0 60000002 */ ori         r0, r0, 2
/* 8056F7D4 901F002C */ stw         r0, 0x2c(r31)
lbl_8056f7d8:
/* 8056F7D8 80010014 */ lwz         r0, 0x14(r1)
/* 8056F7DC 83E1000C */ lwz         r31, 0xc(r1)
/* 8056F7E0 83C10008 */ lwz         r30, 8(r1)
/* 8056F7E4 7C0803A6 */ mtlr        r0
/* 8056F7E8 38210010 */ addi        r1, r1, 0x10
/* 8056F7EC 4E800020 */ blr         