nofralloc
/* 807BF4C0 9421FC80 */ stwu        r1, -0x380(r1)
/* 807BF4C4 7C0802A6 */ mflr        r0
/* 807BF4C8 90010384 */ stw         r0, 0x384(r1)
/* 807BF4CC 93E1037C */ stw         r31, 0x37c(r1)
/* 807BF4D0 93C10378 */ stw         r30, 0x378(r1)
/* 807BF4D4 7CDE3378 */ mr          r30, r6
/* 807BF4D8 93A10374 */ stw         r29, 0x374(r1)
/* 807BF4DC 93810370 */ stw         r28, 0x370(r1)
/* 807BF4E0 7C7C1B78 */ mr          r28, r3
/* 807BF4E4 7CA4282E */ lwzx        r5, r4, r5
/* 807BF4E8 54A00001 */ rlwinm.     r0, r5, 0, 0, 0
/* 807BF4EC 4182001C */ beq-        lbl_807bf508
/* 807BF4F0 54A0007E */ clrlwi      r0, r5, 1
/* 807BF4F4 7FCCF378 */ mr          r12, r30
/* 807BF4F8 7C840214 */ add         r4, r4, r0
/* 807BF4FC 4B861F55 */ bl          __ptmf_scall
/* 807BF500 60000000 */ nop         
/* 807BF504 48000CC0 */ b           lbl_807c01c4
lbl_807bf508:
/* 807BF508 7FA42A14 */ add         r29, r4, r5
/* 807BF50C 81060000 */ lwz         r8, 0(r6)
/* 807BF510 80A60004 */ lwz         r5, 4(r6)
/* 807BF514 90A10360 */ stw         r5, 0x360(r1)
/* 807BF518 9101035C */ stw         r8, 0x35c(r1)
/* 807BF51C 80E60008 */ lwz         r7, 8(r6)
/* 807BF520 90E10364 */ stw         r7, 0x364(r1)
/* 807BF524 809D0000 */ lwz         r4, 0(r29)
/* 807BF528 54800001 */ rlwinm.     r0, r4, 0, 0, 0
/* 807BF52C 4182001C */ beq-        lbl_807bf548
/* 807BF530 5480007E */ clrlwi      r0, r4, 1
/* 807BF534 3981035C */ addi        r12, r1, 0x35c
/* 807BF538 7C9D0214 */ add         r4, r29, r0
/* 807BF53C 4B861F15 */ bl          __ptmf_scall
/* 807BF540 60000000 */ nop         
/* 807BF544 48000158 */ b           lbl_807bf69c
lbl_807bf548:
/* 807BF548 7FFD2214 */ add         r31, r29, r4
/* 807BF54C 90A102AC */ stw         r5, 0x2ac(r1)
/* 807BF550 7FE4FB78 */ mr          r4, r31
/* 807BF554 38C102A8 */ addi        r6, r1, 0x2a8
/* 807BF558 910102A8 */ stw         r8, 0x2a8(r1)
/* 807BF55C 38A00000 */ li          r5, 0
/* 807BF560 90E102B0 */ stw         r7, 0x2b0(r1)
/* 807BF564 4BFFFF5D */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BF568 80A1035C */ lwz         r5, 0x35c(r1)
/* 807BF56C 7F83E378 */ mr          r3, r28
/* 807BF570 80E10360 */ lwz         r7, 0x360(r1)
/* 807BF574 7FE4FB78 */ mr          r4, r31
/* 807BF578 80010364 */ lwz         r0, 0x364(r1)
/* 807BF57C 38C102B4 */ addi        r6, r1, 0x2b4
/* 807BF580 90A102B4 */ stw         r5, 0x2b4(r1)
/* 807BF584 38A00004 */ li          r5, 4
/* 807BF588 90E102B8 */ stw         r7, 0x2b8(r1)
/* 807BF58C 900102BC */ stw         r0, 0x2bc(r1)
/* 807BF590 4BFFFF31 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BF594 80A1035C */ lwz         r5, 0x35c(r1)
/* 807BF598 7F83E378 */ mr          r3, r28
/* 807BF59C 80E10360 */ lwz         r7, 0x360(r1)
/* 807BF5A0 7FE4FB78 */ mr          r4, r31
/* 807BF5A4 80010364 */ lwz         r0, 0x364(r1)
/* 807BF5A8 38C102C0 */ addi        r6, r1, 0x2c0
/* 807BF5AC 90A102C0 */ stw         r5, 0x2c0(r1)
/* 807BF5B0 38A00008 */ li          r5, 8
/* 807BF5B4 90E102C4 */ stw         r7, 0x2c4(r1)
/* 807BF5B8 900102C8 */ stw         r0, 0x2c8(r1)
/* 807BF5BC 4BFFFF05 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BF5C0 80A1035C */ lwz         r5, 0x35c(r1)
/* 807BF5C4 7F83E378 */ mr          r3, r28
/* 807BF5C8 80E10360 */ lwz         r7, 0x360(r1)
/* 807BF5CC 7FE4FB78 */ mr          r4, r31
/* 807BF5D0 80010364 */ lwz         r0, 0x364(r1)
/* 807BF5D4 38C102CC */ addi        r6, r1, 0x2cc
/* 807BF5D8 90A102CC */ stw         r5, 0x2cc(r1)
/* 807BF5DC 38A0000C */ li          r5, 0xc
/* 807BF5E0 90E102D0 */ stw         r7, 0x2d0(r1)
/* 807BF5E4 900102D4 */ stw         r0, 0x2d4(r1)
/* 807BF5E8 4BFFFED9 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BF5EC 80A1035C */ lwz         r5, 0x35c(r1)
/* 807BF5F0 7F83E378 */ mr          r3, r28
/* 807BF5F4 80E10360 */ lwz         r7, 0x360(r1)
/* 807BF5F8 7FE4FB78 */ mr          r4, r31
/* 807BF5FC 80010364 */ lwz         r0, 0x364(r1)
/* 807BF600 38C102D8 */ addi        r6, r1, 0x2d8
/* 807BF604 90A102D8 */ stw         r5, 0x2d8(r1)
/* 807BF608 38A00010 */ li          r5, 0x10
/* 807BF60C 90E102DC */ stw         r7, 0x2dc(r1)
/* 807BF610 900102E0 */ stw         r0, 0x2e0(r1)
/* 807BF614 4BFFFEAD */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BF618 80A1035C */ lwz         r5, 0x35c(r1)
/* 807BF61C 7F83E378 */ mr          r3, r28
/* 807BF620 80E10360 */ lwz         r7, 0x360(r1)
/* 807BF624 7FE4FB78 */ mr          r4, r31
/* 807BF628 80010364 */ lwz         r0, 0x364(r1)
/* 807BF62C 38C102E4 */ addi        r6, r1, 0x2e4
/* 807BF630 90A102E4 */ stw         r5, 0x2e4(r1)
/* 807BF634 38A00014 */ li          r5, 0x14
/* 807BF638 90E102E8 */ stw         r7, 0x2e8(r1)
/* 807BF63C 900102EC */ stw         r0, 0x2ec(r1)
/* 807BF640 4BFFFE81 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BF644 80A1035C */ lwz         r5, 0x35c(r1)
/* 807BF648 7F83E378 */ mr          r3, r28
/* 807BF64C 80E10360 */ lwz         r7, 0x360(r1)
/* 807BF650 7FE4FB78 */ mr          r4, r31
/* 807BF654 80010364 */ lwz         r0, 0x364(r1)
/* 807BF658 38C102F0 */ addi        r6, r1, 0x2f0
/* 807BF65C 90A102F0 */ stw         r5, 0x2f0(r1)
/* 807BF660 38A00018 */ li          r5, 0x18
/* 807BF664 90E102F4 */ stw         r7, 0x2f4(r1)
/* 807BF668 900102F8 */ stw         r0, 0x2f8(r1)
/* 807BF66C 4BFFFE55 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BF670 80A1035C */ lwz         r5, 0x35c(r1)
/* 807BF674 7F83E378 */ mr          r3, r28
/* 807BF678 80E10360 */ lwz         r7, 0x360(r1)
/* 807BF67C 7FE4FB78 */ mr          r4, r31
/* 807BF680 80010364 */ lwz         r0, 0x364(r1)
/* 807BF684 38C102FC */ addi        r6, r1, 0x2fc
/* 807BF688 90A102FC */ stw         r5, 0x2fc(r1)
/* 807BF68C 38A0001C */ li          r5, 0x1c
/* 807BF690 90E10300 */ stw         r7, 0x300(r1)
/* 807BF694 90010304 */ stw         r0, 0x304(r1)
/* 807BF698 4BFFFE29 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
lbl_807bf69c:
/* 807BF69C 807E0000 */ lwz         r3, 0(r30)
/* 807BF6A0 809E0004 */ lwz         r4, 4(r30)
/* 807BF6A4 90810354 */ stw         r4, 0x354(r1)
/* 807BF6A8 90610350 */ stw         r3, 0x350(r1)
/* 807BF6AC 80FE0008 */ lwz         r7, 8(r30)
/* 807BF6B0 90E10358 */ stw         r7, 0x358(r1)
/* 807BF6B4 80BD0004 */ lwz         r5, 4(r29)
/* 807BF6B8 54A00001 */ rlwinm.     r0, r5, 0, 0, 0
/* 807BF6BC 41820020 */ beq-        lbl_807bf6dc
/* 807BF6C0 54A0007E */ clrlwi      r0, r5, 1
/* 807BF6C4 7F83E378 */ mr          r3, r28
/* 807BF6C8 7C9D0214 */ add         r4, r29, r0
/* 807BF6CC 39810350 */ addi        r12, r1, 0x350
/* 807BF6D0 4B861D81 */ bl          __ptmf_scall
/* 807BF6D4 60000000 */ nop         
/* 807BF6D8 4800015C */ b           lbl_807bf834
lbl_807bf6dc:
/* 807BF6DC 7FFD2A14 */ add         r31, r29, r5
/* 807BF6E0 90610248 */ stw         r3, 0x248(r1)
/* 807BF6E4 7F83E378 */ mr          r3, r28
/* 807BF6E8 38C10248 */ addi        r6, r1, 0x248
/* 807BF6EC 9081024C */ stw         r4, 0x24c(r1)
/* 807BF6F0 7FE4FB78 */ mr          r4, r31
/* 807BF6F4 38A00000 */ li          r5, 0
/* 807BF6F8 90E10250 */ stw         r7, 0x250(r1)
/* 807BF6FC 4BFFFDC5 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BF700 80A10350 */ lwz         r5, 0x350(r1)
/* 807BF704 7F83E378 */ mr          r3, r28
/* 807BF708 80E10354 */ lwz         r7, 0x354(r1)
/* 807BF70C 7FE4FB78 */ mr          r4, r31
/* 807BF710 80010358 */ lwz         r0, 0x358(r1)
/* 807BF714 38C10254 */ addi        r6, r1, 0x254
/* 807BF718 90A10254 */ stw         r5, 0x254(r1)
/* 807BF71C 38A00004 */ li          r5, 4
/* 807BF720 90E10258 */ stw         r7, 0x258(r1)
/* 807BF724 9001025C */ stw         r0, 0x25c(r1)
/* 807BF728 4BFFFD99 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BF72C 80A10350 */ lwz         r5, 0x350(r1)
/* 807BF730 7F83E378 */ mr          r3, r28
/* 807BF734 80E10354 */ lwz         r7, 0x354(r1)
/* 807BF738 7FE4FB78 */ mr          r4, r31
/* 807BF73C 80010358 */ lwz         r0, 0x358(r1)
/* 807BF740 38C10260 */ addi        r6, r1, 0x260
/* 807BF744 90A10260 */ stw         r5, 0x260(r1)
/* 807BF748 38A00008 */ li          r5, 8
/* 807BF74C 90E10264 */ stw         r7, 0x264(r1)
/* 807BF750 90010268 */ stw         r0, 0x268(r1)
/* 807BF754 4BFFFD6D */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BF758 80A10350 */ lwz         r5, 0x350(r1)
/* 807BF75C 7F83E378 */ mr          r3, r28
/* 807BF760 80E10354 */ lwz         r7, 0x354(r1)
/* 807BF764 7FE4FB78 */ mr          r4, r31
/* 807BF768 80010358 */ lwz         r0, 0x358(r1)
/* 807BF76C 38C1026C */ addi        r6, r1, 0x26c
/* 807BF770 90A1026C */ stw         r5, 0x26c(r1)
/* 807BF774 38A0000C */ li          r5, 0xc
/* 807BF778 90E10270 */ stw         r7, 0x270(r1)
/* 807BF77C 90010274 */ stw         r0, 0x274(r1)
/* 807BF780 4BFFFD41 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BF784 80A10350 */ lwz         r5, 0x350(r1)
/* 807BF788 7F83E378 */ mr          r3, r28
/* 807BF78C 80E10354 */ lwz         r7, 0x354(r1)
/* 807BF790 7FE4FB78 */ mr          r4, r31
/* 807BF794 80010358 */ lwz         r0, 0x358(r1)
/* 807BF798 38C10278 */ addi        r6, r1, 0x278
/* 807BF79C 90A10278 */ stw         r5, 0x278(r1)
/* 807BF7A0 38A00010 */ li          r5, 0x10
/* 807BF7A4 90E1027C */ stw         r7, 0x27c(r1)
/* 807BF7A8 90010280 */ stw         r0, 0x280(r1)
/* 807BF7AC 4BFFFD15 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BF7B0 80A10350 */ lwz         r5, 0x350(r1)
/* 807BF7B4 7F83E378 */ mr          r3, r28
/* 807BF7B8 80E10354 */ lwz         r7, 0x354(r1)
/* 807BF7BC 7FE4FB78 */ mr          r4, r31
/* 807BF7C0 80010358 */ lwz         r0, 0x358(r1)
/* 807BF7C4 38C10284 */ addi        r6, r1, 0x284
/* 807BF7C8 90A10284 */ stw         r5, 0x284(r1)
/* 807BF7CC 38A00014 */ li          r5, 0x14
/* 807BF7D0 90E10288 */ stw         r7, 0x288(r1)
/* 807BF7D4 9001028C */ stw         r0, 0x28c(r1)
/* 807BF7D8 4BFFFCE9 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BF7DC 80A10350 */ lwz         r5, 0x350(r1)
/* 807BF7E0 7F83E378 */ mr          r3, r28
/* 807BF7E4 80E10354 */ lwz         r7, 0x354(r1)
/* 807BF7E8 7FE4FB78 */ mr          r4, r31
/* 807BF7EC 80010358 */ lwz         r0, 0x358(r1)
/* 807BF7F0 38C10290 */ addi        r6, r1, 0x290
/* 807BF7F4 90A10290 */ stw         r5, 0x290(r1)
/* 807BF7F8 38A00018 */ li          r5, 0x18
/* 807BF7FC 90E10294 */ stw         r7, 0x294(r1)
/* 807BF800 90010298 */ stw         r0, 0x298(r1)
/* 807BF804 4BFFFCBD */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BF808 80A10350 */ lwz         r5, 0x350(r1)
/* 807BF80C 7F83E378 */ mr          r3, r28
/* 807BF810 80E10354 */ lwz         r7, 0x354(r1)
/* 807BF814 7FE4FB78 */ mr          r4, r31
/* 807BF818 80010358 */ lwz         r0, 0x358(r1)
/* 807BF81C 38C1029C */ addi        r6, r1, 0x29c
/* 807BF820 90A1029C */ stw         r5, 0x29c(r1)
/* 807BF824 38A0001C */ li          r5, 0x1c
/* 807BF828 90E102A0 */ stw         r7, 0x2a0(r1)
/* 807BF82C 900102A4 */ stw         r0, 0x2a4(r1)
/* 807BF830 4BFFFC91 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
lbl_807bf834:
/* 807BF834 807E0000 */ lwz         r3, 0(r30)
/* 807BF838 809E0004 */ lwz         r4, 4(r30)
/* 807BF83C 90810348 */ stw         r4, 0x348(r1)
/* 807BF840 90610344 */ stw         r3, 0x344(r1)
/* 807BF844 80FE0008 */ lwz         r7, 8(r30)
/* 807BF848 90E1034C */ stw         r7, 0x34c(r1)
/* 807BF84C 80BD0008 */ lwz         r5, 8(r29)
/* 807BF850 54A00001 */ rlwinm.     r0, r5, 0, 0, 0
/* 807BF854 41820020 */ beq-        lbl_807bf874
/* 807BF858 54A0007E */ clrlwi      r0, r5, 1
/* 807BF85C 7F83E378 */ mr          r3, r28
/* 807BF860 7C9D0214 */ add         r4, r29, r0
/* 807BF864 39810344 */ addi        r12, r1, 0x344
/* 807BF868 4B861BE9 */ bl          __ptmf_scall
/* 807BF86C 60000000 */ nop         
/* 807BF870 4800015C */ b           lbl_807bf9cc
lbl_807bf874:
/* 807BF874 7FFD2A14 */ add         r31, r29, r5
/* 807BF878 906101E8 */ stw         r3, 0x1e8(r1)
/* 807BF87C 7F83E378 */ mr          r3, r28
/* 807BF880 38C101E8 */ addi        r6, r1, 0x1e8
/* 807BF884 908101EC */ stw         r4, 0x1ec(r1)
/* 807BF888 7FE4FB78 */ mr          r4, r31
/* 807BF88C 38A00000 */ li          r5, 0
/* 807BF890 90E101F0 */ stw         r7, 0x1f0(r1)
/* 807BF894 4BFFFC2D */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BF898 80A10344 */ lwz         r5, 0x344(r1)
/* 807BF89C 7F83E378 */ mr          r3, r28
/* 807BF8A0 80E10348 */ lwz         r7, 0x348(r1)
/* 807BF8A4 7FE4FB78 */ mr          r4, r31
/* 807BF8A8 8001034C */ lwz         r0, 0x34c(r1)
/* 807BF8AC 38C101F4 */ addi        r6, r1, 0x1f4
/* 807BF8B0 90A101F4 */ stw         r5, 0x1f4(r1)
/* 807BF8B4 38A00004 */ li          r5, 4
/* 807BF8B8 90E101F8 */ stw         r7, 0x1f8(r1)
/* 807BF8BC 900101FC */ stw         r0, 0x1fc(r1)
/* 807BF8C0 4BFFFC01 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BF8C4 80A10344 */ lwz         r5, 0x344(r1)
/* 807BF8C8 7F83E378 */ mr          r3, r28
/* 807BF8CC 80E10348 */ lwz         r7, 0x348(r1)
/* 807BF8D0 7FE4FB78 */ mr          r4, r31
/* 807BF8D4 8001034C */ lwz         r0, 0x34c(r1)
/* 807BF8D8 38C10200 */ addi        r6, r1, 0x200
/* 807BF8DC 90A10200 */ stw         r5, 0x200(r1)
/* 807BF8E0 38A00008 */ li          r5, 8
/* 807BF8E4 90E10204 */ stw         r7, 0x204(r1)
/* 807BF8E8 90010208 */ stw         r0, 0x208(r1)
/* 807BF8EC 4BFFFBD5 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BF8F0 80A10344 */ lwz         r5, 0x344(r1)
/* 807BF8F4 7F83E378 */ mr          r3, r28
/* 807BF8F8 80E10348 */ lwz         r7, 0x348(r1)
/* 807BF8FC 7FE4FB78 */ mr          r4, r31
/* 807BF900 8001034C */ lwz         r0, 0x34c(r1)
/* 807BF904 38C1020C */ addi        r6, r1, 0x20c
/* 807BF908 90A1020C */ stw         r5, 0x20c(r1)
/* 807BF90C 38A0000C */ li          r5, 0xc
/* 807BF910 90E10210 */ stw         r7, 0x210(r1)
/* 807BF914 90010214 */ stw         r0, 0x214(r1)
/* 807BF918 4BFFFBA9 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BF91C 80A10344 */ lwz         r5, 0x344(r1)
/* 807BF920 7F83E378 */ mr          r3, r28
/* 807BF924 80E10348 */ lwz         r7, 0x348(r1)
/* 807BF928 7FE4FB78 */ mr          r4, r31
/* 807BF92C 8001034C */ lwz         r0, 0x34c(r1)
/* 807BF930 38C10218 */ addi        r6, r1, 0x218
/* 807BF934 90A10218 */ stw         r5, 0x218(r1)
/* 807BF938 38A00010 */ li          r5, 0x10
/* 807BF93C 90E1021C */ stw         r7, 0x21c(r1)
/* 807BF940 90010220 */ stw         r0, 0x220(r1)
/* 807BF944 4BFFFB7D */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BF948 80A10344 */ lwz         r5, 0x344(r1)
/* 807BF94C 7F83E378 */ mr          r3, r28
/* 807BF950 80E10348 */ lwz         r7, 0x348(r1)
/* 807BF954 7FE4FB78 */ mr          r4, r31
/* 807BF958 8001034C */ lwz         r0, 0x34c(r1)
/* 807BF95C 38C10224 */ addi        r6, r1, 0x224
/* 807BF960 90A10224 */ stw         r5, 0x224(r1)
/* 807BF964 38A00014 */ li          r5, 0x14
/* 807BF968 90E10228 */ stw         r7, 0x228(r1)
/* 807BF96C 9001022C */ stw         r0, 0x22c(r1)
/* 807BF970 4BFFFB51 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BF974 80A10344 */ lwz         r5, 0x344(r1)
/* 807BF978 7F83E378 */ mr          r3, r28
/* 807BF97C 80E10348 */ lwz         r7, 0x348(r1)
/* 807BF980 7FE4FB78 */ mr          r4, r31
/* 807BF984 8001034C */ lwz         r0, 0x34c(r1)
/* 807BF988 38C10230 */ addi        r6, r1, 0x230
/* 807BF98C 90A10230 */ stw         r5, 0x230(r1)
/* 807BF990 38A00018 */ li          r5, 0x18
/* 807BF994 90E10234 */ stw         r7, 0x234(r1)
/* 807BF998 90010238 */ stw         r0, 0x238(r1)
/* 807BF99C 4BFFFB25 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BF9A0 80A10344 */ lwz         r5, 0x344(r1)
/* 807BF9A4 7F83E378 */ mr          r3, r28
/* 807BF9A8 80E10348 */ lwz         r7, 0x348(r1)
/* 807BF9AC 7FE4FB78 */ mr          r4, r31
/* 807BF9B0 8001034C */ lwz         r0, 0x34c(r1)
/* 807BF9B4 38C1023C */ addi        r6, r1, 0x23c
/* 807BF9B8 90A1023C */ stw         r5, 0x23c(r1)
/* 807BF9BC 38A0001C */ li          r5, 0x1c
/* 807BF9C0 90E10240 */ stw         r7, 0x240(r1)
/* 807BF9C4 90010244 */ stw         r0, 0x244(r1)
/* 807BF9C8 4BFFFAF9 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
lbl_807bf9cc:
/* 807BF9CC 807E0000 */ lwz         r3, 0(r30)
/* 807BF9D0 809E0004 */ lwz         r4, 4(r30)
/* 807BF9D4 9081033C */ stw         r4, 0x33c(r1)
/* 807BF9D8 90610338 */ stw         r3, 0x338(r1)
/* 807BF9DC 80FE0008 */ lwz         r7, 8(r30)
/* 807BF9E0 90E10340 */ stw         r7, 0x340(r1)
/* 807BF9E4 80BD000C */ lwz         r5, 0xc(r29)
/* 807BF9E8 54A00001 */ rlwinm.     r0, r5, 0, 0, 0
/* 807BF9EC 41820020 */ beq-        lbl_807bfa0c
/* 807BF9F0 54A0007E */ clrlwi      r0, r5, 1
/* 807BF9F4 7F83E378 */ mr          r3, r28
/* 807BF9F8 7C9D0214 */ add         r4, r29, r0
/* 807BF9FC 39810338 */ addi        r12, r1, 0x338
/* 807BFA00 4B861A51 */ bl          __ptmf_scall
/* 807BFA04 60000000 */ nop         
/* 807BFA08 4800015C */ b           lbl_807bfb64
lbl_807bfa0c:
/* 807BFA0C 7FFD2A14 */ add         r31, r29, r5
/* 807BFA10 90610188 */ stw         r3, 0x188(r1)
/* 807BFA14 7F83E378 */ mr          r3, r28
/* 807BFA18 38C10188 */ addi        r6, r1, 0x188
/* 807BFA1C 9081018C */ stw         r4, 0x18c(r1)
/* 807BFA20 7FE4FB78 */ mr          r4, r31
/* 807BFA24 38A00000 */ li          r5, 0
/* 807BFA28 90E10190 */ stw         r7, 0x190(r1)
/* 807BFA2C 4BFFFA95 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BFA30 80A10338 */ lwz         r5, 0x338(r1)
/* 807BFA34 7F83E378 */ mr          r3, r28
/* 807BFA38 80E1033C */ lwz         r7, 0x33c(r1)
/* 807BFA3C 7FE4FB78 */ mr          r4, r31
/* 807BFA40 80010340 */ lwz         r0, 0x340(r1)
/* 807BFA44 38C10194 */ addi        r6, r1, 0x194
/* 807BFA48 90A10194 */ stw         r5, 0x194(r1)
/* 807BFA4C 38A00004 */ li          r5, 4
/* 807BFA50 90E10198 */ stw         r7, 0x198(r1)
/* 807BFA54 9001019C */ stw         r0, 0x19c(r1)
/* 807BFA58 4BFFFA69 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BFA5C 80A10338 */ lwz         r5, 0x338(r1)
/* 807BFA60 7F83E378 */ mr          r3, r28
/* 807BFA64 80E1033C */ lwz         r7, 0x33c(r1)
/* 807BFA68 7FE4FB78 */ mr          r4, r31
/* 807BFA6C 80010340 */ lwz         r0, 0x340(r1)
/* 807BFA70 38C101A0 */ addi        r6, r1, 0x1a0
/* 807BFA74 90A101A0 */ stw         r5, 0x1a0(r1)
/* 807BFA78 38A00008 */ li          r5, 8
/* 807BFA7C 90E101A4 */ stw         r7, 0x1a4(r1)
/* 807BFA80 900101A8 */ stw         r0, 0x1a8(r1)
/* 807BFA84 4BFFFA3D */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BFA88 80A10338 */ lwz         r5, 0x338(r1)
/* 807BFA8C 7F83E378 */ mr          r3, r28
/* 807BFA90 80E1033C */ lwz         r7, 0x33c(r1)
/* 807BFA94 7FE4FB78 */ mr          r4, r31
/* 807BFA98 80010340 */ lwz         r0, 0x340(r1)
/* 807BFA9C 38C101AC */ addi        r6, r1, 0x1ac
/* 807BFAA0 90A101AC */ stw         r5, 0x1ac(r1)
/* 807BFAA4 38A0000C */ li          r5, 0xc
/* 807BFAA8 90E101B0 */ stw         r7, 0x1b0(r1)
/* 807BFAAC 900101B4 */ stw         r0, 0x1b4(r1)
/* 807BFAB0 4BFFFA11 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BFAB4 80A10338 */ lwz         r5, 0x338(r1)
/* 807BFAB8 7F83E378 */ mr          r3, r28
/* 807BFABC 80E1033C */ lwz         r7, 0x33c(r1)
/* 807BFAC0 7FE4FB78 */ mr          r4, r31
/* 807BFAC4 80010340 */ lwz         r0, 0x340(r1)
/* 807BFAC8 38C101B8 */ addi        r6, r1, 0x1b8
/* 807BFACC 90A101B8 */ stw         r5, 0x1b8(r1)
/* 807BFAD0 38A00010 */ li          r5, 0x10
/* 807BFAD4 90E101BC */ stw         r7, 0x1bc(r1)
/* 807BFAD8 900101C0 */ stw         r0, 0x1c0(r1)
/* 807BFADC 4BFFF9E5 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BFAE0 80A10338 */ lwz         r5, 0x338(r1)
/* 807BFAE4 7F83E378 */ mr          r3, r28
/* 807BFAE8 80E1033C */ lwz         r7, 0x33c(r1)
/* 807BFAEC 7FE4FB78 */ mr          r4, r31
/* 807BFAF0 80010340 */ lwz         r0, 0x340(r1)
/* 807BFAF4 38C101C4 */ addi        r6, r1, 0x1c4
/* 807BFAF8 90A101C4 */ stw         r5, 0x1c4(r1)
/* 807BFAFC 38A00014 */ li          r5, 0x14
/* 807BFB00 90E101C8 */ stw         r7, 0x1c8(r1)
/* 807BFB04 900101CC */ stw         r0, 0x1cc(r1)
/* 807BFB08 4BFFF9B9 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BFB0C 80A10338 */ lwz         r5, 0x338(r1)
/* 807BFB10 7F83E378 */ mr          r3, r28
/* 807BFB14 80E1033C */ lwz         r7, 0x33c(r1)
/* 807BFB18 7FE4FB78 */ mr          r4, r31
/* 807BFB1C 80010340 */ lwz         r0, 0x340(r1)
/* 807BFB20 38C101D0 */ addi        r6, r1, 0x1d0
/* 807BFB24 90A101D0 */ stw         r5, 0x1d0(r1)
/* 807BFB28 38A00018 */ li          r5, 0x18
/* 807BFB2C 90E101D4 */ stw         r7, 0x1d4(r1)
/* 807BFB30 900101D8 */ stw         r0, 0x1d8(r1)
/* 807BFB34 4BFFF98D */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BFB38 80A10338 */ lwz         r5, 0x338(r1)
/* 807BFB3C 7F83E378 */ mr          r3, r28
/* 807BFB40 80E1033C */ lwz         r7, 0x33c(r1)
/* 807BFB44 7FE4FB78 */ mr          r4, r31
/* 807BFB48 80010340 */ lwz         r0, 0x340(r1)
/* 807BFB4C 38C101DC */ addi        r6, r1, 0x1dc
/* 807BFB50 90A101DC */ stw         r5, 0x1dc(r1)
/* 807BFB54 38A0001C */ li          r5, 0x1c
/* 807BFB58 90E101E0 */ stw         r7, 0x1e0(r1)
/* 807BFB5C 900101E4 */ stw         r0, 0x1e4(r1)
/* 807BFB60 4BFFF961 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
lbl_807bfb64:
/* 807BFB64 807E0000 */ lwz         r3, 0(r30)
/* 807BFB68 809E0004 */ lwz         r4, 4(r30)
/* 807BFB6C 90810330 */ stw         r4, 0x330(r1)
/* 807BFB70 9061032C */ stw         r3, 0x32c(r1)
/* 807BFB74 80FE0008 */ lwz         r7, 8(r30)
/* 807BFB78 90E10334 */ stw         r7, 0x334(r1)
/* 807BFB7C 80BD0010 */ lwz         r5, 0x10(r29)
/* 807BFB80 54A00001 */ rlwinm.     r0, r5, 0, 0, 0
/* 807BFB84 41820020 */ beq-        lbl_807bfba4
/* 807BFB88 54A0007E */ clrlwi      r0, r5, 1
/* 807BFB8C 7F83E378 */ mr          r3, r28
/* 807BFB90 7C9D0214 */ add         r4, r29, r0
/* 807BFB94 3981032C */ addi        r12, r1, 0x32c
/* 807BFB98 4B8618B9 */ bl          __ptmf_scall
/* 807BFB9C 60000000 */ nop         
/* 807BFBA0 4800015C */ b           lbl_807bfcfc
lbl_807bfba4:
/* 807BFBA4 7FFD2A14 */ add         r31, r29, r5
/* 807BFBA8 90610128 */ stw         r3, 0x128(r1)
/* 807BFBAC 7F83E378 */ mr          r3, r28
/* 807BFBB0 38C10128 */ addi        r6, r1, 0x128
/* 807BFBB4 9081012C */ stw         r4, 0x12c(r1)
/* 807BFBB8 7FE4FB78 */ mr          r4, r31
/* 807BFBBC 38A00000 */ li          r5, 0
/* 807BFBC0 90E10130 */ stw         r7, 0x130(r1)
/* 807BFBC4 4BFFF8FD */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BFBC8 80A1032C */ lwz         r5, 0x32c(r1)
/* 807BFBCC 7F83E378 */ mr          r3, r28
/* 807BFBD0 80E10330 */ lwz         r7, 0x330(r1)
/* 807BFBD4 7FE4FB78 */ mr          r4, r31
/* 807BFBD8 80010334 */ lwz         r0, 0x334(r1)
/* 807BFBDC 38C10134 */ addi        r6, r1, 0x134
/* 807BFBE0 90A10134 */ stw         r5, 0x134(r1)
/* 807BFBE4 38A00004 */ li          r5, 4
/* 807BFBE8 90E10138 */ stw         r7, 0x138(r1)
/* 807BFBEC 9001013C */ stw         r0, 0x13c(r1)
/* 807BFBF0 4BFFF8D1 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BFBF4 80A1032C */ lwz         r5, 0x32c(r1)
/* 807BFBF8 7F83E378 */ mr          r3, r28
/* 807BFBFC 80E10330 */ lwz         r7, 0x330(r1)
/* 807BFC00 7FE4FB78 */ mr          r4, r31
/* 807BFC04 80010334 */ lwz         r0, 0x334(r1)
/* 807BFC08 38C10140 */ addi        r6, r1, 0x140
/* 807BFC0C 90A10140 */ stw         r5, 0x140(r1)
/* 807BFC10 38A00008 */ li          r5, 8
/* 807BFC14 90E10144 */ stw         r7, 0x144(r1)
/* 807BFC18 90010148 */ stw         r0, 0x148(r1)
/* 807BFC1C 4BFFF8A5 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BFC20 80A1032C */ lwz         r5, 0x32c(r1)
/* 807BFC24 7F83E378 */ mr          r3, r28
/* 807BFC28 80E10330 */ lwz         r7, 0x330(r1)
/* 807BFC2C 7FE4FB78 */ mr          r4, r31
/* 807BFC30 80010334 */ lwz         r0, 0x334(r1)
/* 807BFC34 38C1014C */ addi        r6, r1, 0x14c
/* 807BFC38 90A1014C */ stw         r5, 0x14c(r1)
/* 807BFC3C 38A0000C */ li          r5, 0xc
/* 807BFC40 90E10150 */ stw         r7, 0x150(r1)
/* 807BFC44 90010154 */ stw         r0, 0x154(r1)
/* 807BFC48 4BFFF879 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BFC4C 80A1032C */ lwz         r5, 0x32c(r1)
/* 807BFC50 7F83E378 */ mr          r3, r28
/* 807BFC54 80E10330 */ lwz         r7, 0x330(r1)
/* 807BFC58 7FE4FB78 */ mr          r4, r31
/* 807BFC5C 80010334 */ lwz         r0, 0x334(r1)
/* 807BFC60 38C10158 */ addi        r6, r1, 0x158
/* 807BFC64 90A10158 */ stw         r5, 0x158(r1)
/* 807BFC68 38A00010 */ li          r5, 0x10
/* 807BFC6C 90E1015C */ stw         r7, 0x15c(r1)
/* 807BFC70 90010160 */ stw         r0, 0x160(r1)
/* 807BFC74 4BFFF84D */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BFC78 80A1032C */ lwz         r5, 0x32c(r1)
/* 807BFC7C 7F83E378 */ mr          r3, r28
/* 807BFC80 80E10330 */ lwz         r7, 0x330(r1)
/* 807BFC84 7FE4FB78 */ mr          r4, r31
/* 807BFC88 80010334 */ lwz         r0, 0x334(r1)
/* 807BFC8C 38C10164 */ addi        r6, r1, 0x164
/* 807BFC90 90A10164 */ stw         r5, 0x164(r1)
/* 807BFC94 38A00014 */ li          r5, 0x14
/* 807BFC98 90E10168 */ stw         r7, 0x168(r1)
/* 807BFC9C 9001016C */ stw         r0, 0x16c(r1)
/* 807BFCA0 4BFFF821 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BFCA4 80A1032C */ lwz         r5, 0x32c(r1)
/* 807BFCA8 7F83E378 */ mr          r3, r28
/* 807BFCAC 80E10330 */ lwz         r7, 0x330(r1)
/* 807BFCB0 7FE4FB78 */ mr          r4, r31
/* 807BFCB4 80010334 */ lwz         r0, 0x334(r1)
/* 807BFCB8 38C10170 */ addi        r6, r1, 0x170
/* 807BFCBC 90A10170 */ stw         r5, 0x170(r1)
/* 807BFCC0 38A00018 */ li          r5, 0x18
/* 807BFCC4 90E10174 */ stw         r7, 0x174(r1)
/* 807BFCC8 90010178 */ stw         r0, 0x178(r1)
/* 807BFCCC 4BFFF7F5 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BFCD0 80A1032C */ lwz         r5, 0x32c(r1)
/* 807BFCD4 7F83E378 */ mr          r3, r28
/* 807BFCD8 80E10330 */ lwz         r7, 0x330(r1)
/* 807BFCDC 7FE4FB78 */ mr          r4, r31
/* 807BFCE0 80010334 */ lwz         r0, 0x334(r1)
/* 807BFCE4 38C1017C */ addi        r6, r1, 0x17c
/* 807BFCE8 90A1017C */ stw         r5, 0x17c(r1)
/* 807BFCEC 38A0001C */ li          r5, 0x1c
/* 807BFCF0 90E10180 */ stw         r7, 0x180(r1)
/* 807BFCF4 90010184 */ stw         r0, 0x184(r1)
/* 807BFCF8 4BFFF7C9 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
lbl_807bfcfc:
/* 807BFCFC 807E0000 */ lwz         r3, 0(r30)
/* 807BFD00 809E0004 */ lwz         r4, 4(r30)
/* 807BFD04 90810324 */ stw         r4, 0x324(r1)
/* 807BFD08 90610320 */ stw         r3, 0x320(r1)
/* 807BFD0C 80FE0008 */ lwz         r7, 8(r30)
/* 807BFD10 90E10328 */ stw         r7, 0x328(r1)
/* 807BFD14 80BD0014 */ lwz         r5, 0x14(r29)
/* 807BFD18 54A00001 */ rlwinm.     r0, r5, 0, 0, 0
/* 807BFD1C 41820020 */ beq-        lbl_807bfd3c
/* 807BFD20 54A0007E */ clrlwi      r0, r5, 1
/* 807BFD24 7F83E378 */ mr          r3, r28
/* 807BFD28 7C9D0214 */ add         r4, r29, r0
/* 807BFD2C 39810320 */ addi        r12, r1, 0x320
/* 807BFD30 4B861721 */ bl          __ptmf_scall
/* 807BFD34 60000000 */ nop         
/* 807BFD38 4800015C */ b           lbl_807bfe94
lbl_807bfd3c:
/* 807BFD3C 7FFD2A14 */ add         r31, r29, r5
/* 807BFD40 906100C8 */ stw         r3, 0xc8(r1)
/* 807BFD44 7F83E378 */ mr          r3, r28
/* 807BFD48 38C100C8 */ addi        r6, r1, 0xc8
/* 807BFD4C 908100CC */ stw         r4, 0xcc(r1)
/* 807BFD50 7FE4FB78 */ mr          r4, r31
/* 807BFD54 38A00000 */ li          r5, 0
/* 807BFD58 90E100D0 */ stw         r7, 0xd0(r1)
/* 807BFD5C 4BFFF765 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BFD60 80A10320 */ lwz         r5, 0x320(r1)
/* 807BFD64 7F83E378 */ mr          r3, r28
/* 807BFD68 80E10324 */ lwz         r7, 0x324(r1)
/* 807BFD6C 7FE4FB78 */ mr          r4, r31
/* 807BFD70 80010328 */ lwz         r0, 0x328(r1)
/* 807BFD74 38C100D4 */ addi        r6, r1, 0xd4
/* 807BFD78 90A100D4 */ stw         r5, 0xd4(r1)
/* 807BFD7C 38A00004 */ li          r5, 4
/* 807BFD80 90E100D8 */ stw         r7, 0xd8(r1)
/* 807BFD84 900100DC */ stw         r0, 0xdc(r1)
/* 807BFD88 4BFFF739 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BFD8C 80A10320 */ lwz         r5, 0x320(r1)
/* 807BFD90 7F83E378 */ mr          r3, r28
/* 807BFD94 80E10324 */ lwz         r7, 0x324(r1)
/* 807BFD98 7FE4FB78 */ mr          r4, r31
/* 807BFD9C 80010328 */ lwz         r0, 0x328(r1)
/* 807BFDA0 38C100E0 */ addi        r6, r1, 0xe0
/* 807BFDA4 90A100E0 */ stw         r5, 0xe0(r1)
/* 807BFDA8 38A00008 */ li          r5, 8
/* 807BFDAC 90E100E4 */ stw         r7, 0xe4(r1)
/* 807BFDB0 900100E8 */ stw         r0, 0xe8(r1)
/* 807BFDB4 4BFFF70D */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BFDB8 80A10320 */ lwz         r5, 0x320(r1)
/* 807BFDBC 7F83E378 */ mr          r3, r28
/* 807BFDC0 80E10324 */ lwz         r7, 0x324(r1)
/* 807BFDC4 7FE4FB78 */ mr          r4, r31
/* 807BFDC8 80010328 */ lwz         r0, 0x328(r1)
/* 807BFDCC 38C100EC */ addi        r6, r1, 0xec
/* 807BFDD0 90A100EC */ stw         r5, 0xec(r1)
/* 807BFDD4 38A0000C */ li          r5, 0xc
/* 807BFDD8 90E100F0 */ stw         r7, 0xf0(r1)
/* 807BFDDC 900100F4 */ stw         r0, 0xf4(r1)
/* 807BFDE0 4BFFF6E1 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BFDE4 80A10320 */ lwz         r5, 0x320(r1)
/* 807BFDE8 7F83E378 */ mr          r3, r28
/* 807BFDEC 80E10324 */ lwz         r7, 0x324(r1)
/* 807BFDF0 7FE4FB78 */ mr          r4, r31
/* 807BFDF4 80010328 */ lwz         r0, 0x328(r1)
/* 807BFDF8 38C100F8 */ addi        r6, r1, 0xf8
/* 807BFDFC 90A100F8 */ stw         r5, 0xf8(r1)
/* 807BFE00 38A00010 */ li          r5, 0x10
/* 807BFE04 90E100FC */ stw         r7, 0xfc(r1)
/* 807BFE08 90010100 */ stw         r0, 0x100(r1)
/* 807BFE0C 4BFFF6B5 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BFE10 80A10320 */ lwz         r5, 0x320(r1)
/* 807BFE14 7F83E378 */ mr          r3, r28
/* 807BFE18 80E10324 */ lwz         r7, 0x324(r1)
/* 807BFE1C 7FE4FB78 */ mr          r4, r31
/* 807BFE20 80010328 */ lwz         r0, 0x328(r1)
/* 807BFE24 38C10104 */ addi        r6, r1, 0x104
/* 807BFE28 90A10104 */ stw         r5, 0x104(r1)
/* 807BFE2C 38A00014 */ li          r5, 0x14
/* 807BFE30 90E10108 */ stw         r7, 0x108(r1)
/* 807BFE34 9001010C */ stw         r0, 0x10c(r1)
/* 807BFE38 4BFFF689 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BFE3C 80A10320 */ lwz         r5, 0x320(r1)
/* 807BFE40 7F83E378 */ mr          r3, r28
/* 807BFE44 80E10324 */ lwz         r7, 0x324(r1)
/* 807BFE48 7FE4FB78 */ mr          r4, r31
/* 807BFE4C 80010328 */ lwz         r0, 0x328(r1)
/* 807BFE50 38C10110 */ addi        r6, r1, 0x110
/* 807BFE54 90A10110 */ stw         r5, 0x110(r1)
/* 807BFE58 38A00018 */ li          r5, 0x18
/* 807BFE5C 90E10114 */ stw         r7, 0x114(r1)
/* 807BFE60 90010118 */ stw         r0, 0x118(r1)
/* 807BFE64 4BFFF65D */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BFE68 80A10320 */ lwz         r5, 0x320(r1)
/* 807BFE6C 7F83E378 */ mr          r3, r28
/* 807BFE70 80E10324 */ lwz         r7, 0x324(r1)
/* 807BFE74 7FE4FB78 */ mr          r4, r31
/* 807BFE78 80010328 */ lwz         r0, 0x328(r1)
/* 807BFE7C 38C1011C */ addi        r6, r1, 0x11c
/* 807BFE80 90A1011C */ stw         r5, 0x11c(r1)
/* 807BFE84 38A0001C */ li          r5, 0x1c
/* 807BFE88 90E10120 */ stw         r7, 0x120(r1)
/* 807BFE8C 90010124 */ stw         r0, 0x124(r1)
/* 807BFE90 4BFFF631 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
lbl_807bfe94:
/* 807BFE94 807E0000 */ lwz         r3, 0(r30)
/* 807BFE98 809E0004 */ lwz         r4, 4(r30)
/* 807BFE9C 90810318 */ stw         r4, 0x318(r1)
/* 807BFEA0 90610314 */ stw         r3, 0x314(r1)
/* 807BFEA4 80FE0008 */ lwz         r7, 8(r30)
/* 807BFEA8 90E1031C */ stw         r7, 0x31c(r1)
/* 807BFEAC 80BD0018 */ lwz         r5, 0x18(r29)
/* 807BFEB0 54A00001 */ rlwinm.     r0, r5, 0, 0, 0
/* 807BFEB4 41820020 */ beq-        lbl_807bfed4
/* 807BFEB8 54A0007E */ clrlwi      r0, r5, 1
/* 807BFEBC 7F83E378 */ mr          r3, r28
/* 807BFEC0 7C9D0214 */ add         r4, r29, r0
/* 807BFEC4 39810314 */ addi        r12, r1, 0x314
/* 807BFEC8 4B861589 */ bl          __ptmf_scall
/* 807BFECC 60000000 */ nop         
/* 807BFED0 4800015C */ b           lbl_807c002c
lbl_807bfed4:
/* 807BFED4 7FFD2A14 */ add         r31, r29, r5
/* 807BFED8 90610068 */ stw         r3, 0x68(r1)
/* 807BFEDC 7F83E378 */ mr          r3, r28
/* 807BFEE0 38C10068 */ addi        r6, r1, 0x68
/* 807BFEE4 9081006C */ stw         r4, 0x6c(r1)
/* 807BFEE8 7FE4FB78 */ mr          r4, r31
/* 807BFEEC 38A00000 */ li          r5, 0
/* 807BFEF0 90E10070 */ stw         r7, 0x70(r1)
/* 807BFEF4 4BFFF5CD */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BFEF8 80A10314 */ lwz         r5, 0x314(r1)
/* 807BFEFC 7F83E378 */ mr          r3, r28
/* 807BFF00 80E10318 */ lwz         r7, 0x318(r1)
/* 807BFF04 7FE4FB78 */ mr          r4, r31
/* 807BFF08 8001031C */ lwz         r0, 0x31c(r1)
/* 807BFF0C 38C10074 */ addi        r6, r1, 0x74
/* 807BFF10 90A10074 */ stw         r5, 0x74(r1)
/* 807BFF14 38A00004 */ li          r5, 4
/* 807BFF18 90E10078 */ stw         r7, 0x78(r1)
/* 807BFF1C 9001007C */ stw         r0, 0x7c(r1)
/* 807BFF20 4BFFF5A1 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BFF24 80A10314 */ lwz         r5, 0x314(r1)
/* 807BFF28 7F83E378 */ mr          r3, r28
/* 807BFF2C 80E10318 */ lwz         r7, 0x318(r1)
/* 807BFF30 7FE4FB78 */ mr          r4, r31
/* 807BFF34 8001031C */ lwz         r0, 0x31c(r1)
/* 807BFF38 38C10080 */ addi        r6, r1, 0x80
/* 807BFF3C 90A10080 */ stw         r5, 0x80(r1)
/* 807BFF40 38A00008 */ li          r5, 8
/* 807BFF44 90E10084 */ stw         r7, 0x84(r1)
/* 807BFF48 90010088 */ stw         r0, 0x88(r1)
/* 807BFF4C 4BFFF575 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BFF50 80A10314 */ lwz         r5, 0x314(r1)
/* 807BFF54 7F83E378 */ mr          r3, r28
/* 807BFF58 80E10318 */ lwz         r7, 0x318(r1)
/* 807BFF5C 7FE4FB78 */ mr          r4, r31
/* 807BFF60 8001031C */ lwz         r0, 0x31c(r1)
/* 807BFF64 38C1008C */ addi        r6, r1, 0x8c
/* 807BFF68 90A1008C */ stw         r5, 0x8c(r1)
/* 807BFF6C 38A0000C */ li          r5, 0xc
/* 807BFF70 90E10090 */ stw         r7, 0x90(r1)
/* 807BFF74 90010094 */ stw         r0, 0x94(r1)
/* 807BFF78 4BFFF549 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BFF7C 80A10314 */ lwz         r5, 0x314(r1)
/* 807BFF80 7F83E378 */ mr          r3, r28
/* 807BFF84 80E10318 */ lwz         r7, 0x318(r1)
/* 807BFF88 7FE4FB78 */ mr          r4, r31
/* 807BFF8C 8001031C */ lwz         r0, 0x31c(r1)
/* 807BFF90 38C10098 */ addi        r6, r1, 0x98
/* 807BFF94 90A10098 */ stw         r5, 0x98(r1)
/* 807BFF98 38A00010 */ li          r5, 0x10
/* 807BFF9C 90E1009C */ stw         r7, 0x9c(r1)
/* 807BFFA0 900100A0 */ stw         r0, 0xa0(r1)
/* 807BFFA4 4BFFF51D */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BFFA8 80A10314 */ lwz         r5, 0x314(r1)
/* 807BFFAC 7F83E378 */ mr          r3, r28
/* 807BFFB0 80E10318 */ lwz         r7, 0x318(r1)
/* 807BFFB4 7FE4FB78 */ mr          r4, r31
/* 807BFFB8 8001031C */ lwz         r0, 0x31c(r1)
/* 807BFFBC 38C100A4 */ addi        r6, r1, 0xa4
/* 807BFFC0 90A100A4 */ stw         r5, 0xa4(r1)
/* 807BFFC4 38A00014 */ li          r5, 0x14
/* 807BFFC8 90E100A8 */ stw         r7, 0xa8(r1)
/* 807BFFCC 900100AC */ stw         r0, 0xac(r1)
/* 807BFFD0 4BFFF4F1 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BFFD4 80A10314 */ lwz         r5, 0x314(r1)
/* 807BFFD8 7F83E378 */ mr          r3, r28
/* 807BFFDC 80E10318 */ lwz         r7, 0x318(r1)
/* 807BFFE0 7FE4FB78 */ mr          r4, r31
/* 807BFFE4 8001031C */ lwz         r0, 0x31c(r1)
/* 807BFFE8 38C100B0 */ addi        r6, r1, 0xb0
/* 807BFFEC 90A100B0 */ stw         r5, 0xb0(r1)
/* 807BFFF0 38A00018 */ li          r5, 0x18
/* 807BFFF4 90E100B4 */ stw         r7, 0xb4(r1)
/* 807BFFF8 900100B8 */ stw         r0, 0xb8(r1)
/* 807BFFFC 4BFFF4C5 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807C0000 80A10314 */ lwz         r5, 0x314(r1)
/* 807C0004 7F83E378 */ mr          r3, r28
/* 807C0008 80E10318 */ lwz         r7, 0x318(r1)
/* 807C000C 7FE4FB78 */ mr          r4, r31
/* 807C0010 8001031C */ lwz         r0, 0x31c(r1)
/* 807C0014 38C100BC */ addi        r6, r1, 0xbc
/* 807C0018 90A100BC */ stw         r5, 0xbc(r1)
/* 807C001C 38A0001C */ li          r5, 0x1c
/* 807C0020 90E100C0 */ stw         r7, 0xc0(r1)
/* 807C0024 900100C4 */ stw         r0, 0xc4(r1)
/* 807C0028 4BFFF499 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
lbl_807c002c:
/* 807C002C 807E0000 */ lwz         r3, 0(r30)
/* 807C0030 809E0004 */ lwz         r4, 4(r30)
/* 807C0034 9081030C */ stw         r4, 0x30c(r1)
/* 807C0038 90610308 */ stw         r3, 0x308(r1)
/* 807C003C 80FE0008 */ lwz         r7, 8(r30)
/* 807C0040 90E10310 */ stw         r7, 0x310(r1)
/* 807C0044 80BD001C */ lwz         r5, 0x1c(r29)
/* 807C0048 54A00001 */ rlwinm.     r0, r5, 0, 0, 0
/* 807C004C 41820020 */ beq-        lbl_807c006c
/* 807C0050 54A0007E */ clrlwi      r0, r5, 1
/* 807C0054 7F83E378 */ mr          r3, r28
/* 807C0058 7C9D0214 */ add         r4, r29, r0
/* 807C005C 39810308 */ addi        r12, r1, 0x308
/* 807C0060 4B8613F1 */ bl          __ptmf_scall
/* 807C0064 60000000 */ nop         
/* 807C0068 4800015C */ b           lbl_807c01c4
lbl_807c006c:
/* 807C006C 7FFD2A14 */ add         r31, r29, r5
/* 807C0070 90610008 */ stw         r3, 8(r1)
/* 807C0074 7F83E378 */ mr          r3, r28
/* 807C0078 38C10008 */ addi        r6, r1, 8
/* 807C007C 9081000C */ stw         r4, 0xc(r1)
/* 807C0080 7FE4FB78 */ mr          r4, r31
/* 807C0084 38A00000 */ li          r5, 0
/* 807C0088 90E10010 */ stw         r7, 0x10(r1)
/* 807C008C 4BFFF435 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807C0090 80A10308 */ lwz         r5, 0x308(r1)
/* 807C0094 7F83E378 */ mr          r3, r28
/* 807C0098 80E1030C */ lwz         r7, 0x30c(r1)
/* 807C009C 7FE4FB78 */ mr          r4, r31
/* 807C00A0 80010310 */ lwz         r0, 0x310(r1)
/* 807C00A4 38C10014 */ addi        r6, r1, 0x14
/* 807C00A8 90A10014 */ stw         r5, 0x14(r1)
/* 807C00AC 38A00004 */ li          r5, 4
/* 807C00B0 90E10018 */ stw         r7, 0x18(r1)
/* 807C00B4 9001001C */ stw         r0, 0x1c(r1)
/* 807C00B8 4BFFF409 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807C00BC 80A10308 */ lwz         r5, 0x308(r1)
/* 807C00C0 7F83E378 */ mr          r3, r28
/* 807C00C4 80E1030C */ lwz         r7, 0x30c(r1)
/* 807C00C8 7FE4FB78 */ mr          r4, r31
/* 807C00CC 80010310 */ lwz         r0, 0x310(r1)
/* 807C00D0 38C10020 */ addi        r6, r1, 0x20
/* 807C00D4 90A10020 */ stw         r5, 0x20(r1)
/* 807C00D8 38A00008 */ li          r5, 8
/* 807C00DC 90E10024 */ stw         r7, 0x24(r1)
/* 807C00E0 90010028 */ stw         r0, 0x28(r1)
/* 807C00E4 4BFFF3DD */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807C00E8 80A10308 */ lwz         r5, 0x308(r1)
/* 807C00EC 7F83E378 */ mr          r3, r28
/* 807C00F0 80E1030C */ lwz         r7, 0x30c(r1)
/* 807C00F4 7FE4FB78 */ mr          r4, r31
/* 807C00F8 80010310 */ lwz         r0, 0x310(r1)
/* 807C00FC 38C1002C */ addi        r6, r1, 0x2c
/* 807C0100 90A1002C */ stw         r5, 0x2c(r1)
/* 807C0104 38A0000C */ li          r5, 0xc
/* 807C0108 90E10030 */ stw         r7, 0x30(r1)
/* 807C010C 90010034 */ stw         r0, 0x34(r1)
/* 807C0110 4BFFF3B1 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807C0114 80A10308 */ lwz         r5, 0x308(r1)
/* 807C0118 7F83E378 */ mr          r3, r28
/* 807C011C 80E1030C */ lwz         r7, 0x30c(r1)
/* 807C0120 7FE4FB78 */ mr          r4, r31
/* 807C0124 80010310 */ lwz         r0, 0x310(r1)
/* 807C0128 38C10038 */ addi        r6, r1, 0x38
/* 807C012C 90A10038 */ stw         r5, 0x38(r1)
/* 807C0130 38A00010 */ li          r5, 0x10
/* 807C0134 90E1003C */ stw         r7, 0x3c(r1)
/* 807C0138 90010040 */ stw         r0, 0x40(r1)
/* 807C013C 4BFFF385 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807C0140 80A10308 */ lwz         r5, 0x308(r1)
/* 807C0144 7F83E378 */ mr          r3, r28
/* 807C0148 80E1030C */ lwz         r7, 0x30c(r1)
/* 807C014C 7FE4FB78 */ mr          r4, r31
/* 807C0150 80010310 */ lwz         r0, 0x310(r1)
/* 807C0154 38C10044 */ addi        r6, r1, 0x44
/* 807C0158 90A10044 */ stw         r5, 0x44(r1)
/* 807C015C 38A00014 */ li          r5, 0x14
/* 807C0160 90E10048 */ stw         r7, 0x48(r1)
/* 807C0164 9001004C */ stw         r0, 0x4c(r1)
/* 807C0168 4BFFF359 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807C016C 80A10308 */ lwz         r5, 0x308(r1)
/* 807C0170 7F83E378 */ mr          r3, r28
/* 807C0174 80E1030C */ lwz         r7, 0x30c(r1)
/* 807C0178 7FE4FB78 */ mr          r4, r31
/* 807C017C 80010310 */ lwz         r0, 0x310(r1)
/* 807C0180 38C10050 */ addi        r6, r1, 0x50
/* 807C0184 90A10050 */ stw         r5, 0x50(r1)
/* 807C0188 38A00018 */ li          r5, 0x18
/* 807C018C 90E10054 */ stw         r7, 0x54(r1)
/* 807C0190 90010058 */ stw         r0, 0x58(r1)
/* 807C0194 4BFFF32D */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807C0198 80A10308 */ lwz         r5, 0x308(r1)
/* 807C019C 7F83E378 */ mr          r3, r28
/* 807C01A0 80E1030C */ lwz         r7, 0x30c(r1)
/* 807C01A4 7FE4FB78 */ mr          r4, r31
/* 807C01A8 80010310 */ lwz         r0, 0x310(r1)
/* 807C01AC 38C1005C */ addi        r6, r1, 0x5c
/* 807C01B0 90A1005C */ stw         r5, 0x5c(r1)
/* 807C01B4 38A0001C */ li          r5, 0x1c
/* 807C01B8 90E10060 */ stw         r7, 0x60(r1)
/* 807C01BC 90010064 */ stw         r0, 0x64(r1)
/* 807C01C0 4BFFF301 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
lbl_807c01c4:
/* 807C01C4 80010384 */ lwz         r0, 0x384(r1)
/* 807C01C8 83E1037C */ lwz         r31, 0x37c(r1)
/* 807C01CC 83C10378 */ lwz         r30, 0x378(r1)
/* 807C01D0 83A10374 */ lwz         r29, 0x374(r1)
/* 807C01D4 83810370 */ lwz         r28, 0x370(r1)
/* 807C01D8 7C0803A6 */ mtlr        r0
/* 807C01DC 38210380 */ addi        r1, r1, 0x380
/* 807C01E0 4E800020 */ blr         