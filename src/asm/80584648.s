nofralloc
/* 80584648 9421FFD0 */ stwu        r1, -0x30(r1)
/* 8058464C 7C0802A6 */ mflr        r0
/* 80584650 3CC08089 */ lis         r6, lbl_80891ad4@ha
/* 80584654 3D008089 */ lis         r8, lbl_80891ad0@ha
/* 80584658 90010034 */ stw         r0, 0x34(r1)
/* 8058465C 3CE0808A */ lis         r7, gColInfo@ha
/* 80584660 C0281AD0 */ lfs         f1, lbl_80891ad0@l(r8)
/* 80584664 3D20809C */ lis         r9, spInstance__Q25Field11CourseModel@ha
/* 80584668 93E1002C */ stw         r31, 0x2c(r1)
/* 8058466C 3FE020E8 */ lis         r31, 0x20e8
/* 80584670 C0061AD4 */ lfs         f0, lbl_80891ad4@l(r6)
/* 80584674 38DF0DFF */ addi        r6, r31, 0xdff
/* 80584678 93C10028 */ stw         r30, 0x28(r1)
/* 8058467C 3BC00000 */ li          r30, 0
/* 80584680 80E76700 */ lwz         r7, gColInfo@l(r7)
/* 80584684 39010008 */ addi        r8, r1, 8
/* 80584688 93A10024 */ stw         r29, 0x24(r1)
/* 8058468C 3BA00000 */ li          r29, 0
/* 80584690 93810020 */ stw         r28, 0x20(r1)
/* 80584694 7C7C1B78 */ mr          r28, r3
/* 80584698 93C10008 */ stw         r30, 8(r1)
/* 8058469C 80692F44 */ lwz         r3, spInstance__Q25Field11CourseModel@l(r9)
/* 805846A0 39200000 */ li          r9, 0
/* 805846A4 80A40000 */ lwz         r5, 0(r4)
/* 805846A8 80040004 */ lwz         r0, 4(r4)
/* 805846AC 90010010 */ stw         r0, 0x10(r1)
/* 805846B0 90A1000C */ stw         r5, 0xc(r1)
/* 805846B4 38A1000C */ addi        r5, r1, 0xc
/* 805846B8 C0410010 */ lfs         f2, 0x10(r1)
/* 805846BC 80040008 */ lwz         r0, 8(r4)
/* 805846C0 EC02002A */ fadds       f0, f2, f0
/* 805846C4 90010014 */ stw         r0, 0x14(r1)
/* 805846C8 D0010010 */ stfs        f0, 0x10(r1)
/* 805846CC 4820AC55 */ bl          checkSpherePartialPush__Q25Field11CourseModelFRCQ23EGG8Vector3fRCQ23EGG8Vector3fUlPQ25Field14ColInfoPartialPUlfUl
/* 805846D0 2C030000 */ cmpwi       r3, 0
/* 805846D4 4182003C */ beq-        lbl_80584710
/* 805846D8 80010008 */ lwz         r0, 8(r1)
/* 805846DC 389F0FFF */ addi        r4, r31, 0xfff
/* 805846E0 7C002039 */ and.        r0, r0, r4
/* 805846E4 41820010 */ beq-        lbl_805846f4
/* 805846E8 38610008 */ addi        r3, r1, 8
/* 805846EC 48239281 */ bl          findClosestCollisionEntry__5FieldFPUlUl
/* 805846F0 48000008 */ b           lbl_805846f8
lbl_805846f4:
/* 805846F4 7FC3F378 */ mr          r3, r30
lbl_805846f8:
/* 805846F8 2C030000 */ cmpwi       r3, 0
/* 805846FC 41820014 */ beq-        lbl_80584710
/* 80584700 3C60809C */ lis         r3, closestCollisionEntry__5Field@ha
/* 80584704 80633BDC */ lwz         r3, closestCollisionEntry__5Field@l(r3)
/* 80584708 A0030004 */ lhz         r0, 4(r3)
/* 8058470C 541DC77E */ rlwinm      r29, r0, 0x18, 0x1d, 0x1f
lbl_80584710:
/* 80584710 7F83E378 */ mr          r3, r28
/* 80584714 57A4063E */ clrlwi      r4, r29, 0x18
/* 80584718 4800D20D */ bl          unk_80591924
/* 8058471C 80010034 */ lwz         r0, 0x34(r1)
/* 80584720 83E1002C */ lwz         r31, 0x2c(r1)
/* 80584724 83C10028 */ lwz         r30, 0x28(r1)
/* 80584728 83A10024 */ lwz         r29, 0x24(r1)
/* 8058472C 83810020 */ lwz         r28, 0x20(r1)
/* 80584730 7C0803A6 */ mtlr        r0
/* 80584734 38210030 */ addi        r1, r1, 0x30
/* 80584738 4E800020 */ blr         