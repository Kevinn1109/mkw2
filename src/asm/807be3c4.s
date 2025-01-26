nofralloc
/* 807BE3C4 9421FB80 */ stwu        r1, -0x480(r1)
/* 807BE3C8 7C0802A6 */ mflr        r0
/* 807BE3CC 90010484 */ stw         r0, 0x484(r1)
/* 807BE3D0 7D203B78 */ or          r0, r9, r7
/* 807BE3D4 7C004379 */ or.         r0, r0, r8
/* 807BE3D8 81610488 */ lwz         r11, 0x488(r1)
/* 807BE3DC BE210444 */ stmw        r17, 0x444(r1)
/* 807BE3E0 7C7D1B78 */ mr          r29, r3
/* 807BE3E4 8001048C */ lwz         r0, 0x48c(r1)
/* 807BE3E8 7CDF3378 */ mr          r31, r6
/* 807BE3EC 40820D68 */ bne-        lbl_807bf154
/* 807BE3F0 7C0C5038 */ and         r12, r0, r10
/* 807BE3F4 7D8C5838 */ and         r12, r12, r11
/* 807BE3F8 3D8C0001 */ addis       r12, r12, 1
/* 807BE3FC 280CFFFF */ cmplwi      r12, 0xffff
/* 807BE400 40820D54 */ bne-        lbl_807bf154
/* 807BE404 81260000 */ lwz         r9, 0(r6)
/* 807BE408 81060004 */ lwz         r8, 4(r6)
/* 807BE40C 91010434 */ stw         r8, 0x434(r1)
/* 807BE410 91210430 */ stw         r9, 0x430(r1)
/* 807BE414 80E60008 */ lwz         r7, 8(r6)
/* 807BE418 90E10438 */ stw         r7, 0x438(r1)
/* 807BE41C 7CA4282E */ lwzx        r5, r4, r5
/* 807BE420 54A00001 */ rlwinm.     r0, r5, 0, 0, 0
/* 807BE424 4182001C */ beq-        lbl_807be440
/* 807BE428 54A0007E */ clrlwi      r0, r5, 1
/* 807BE42C 39810430 */ addi        r12, r1, 0x430
/* 807BE430 7C840214 */ add         r4, r4, r0
/* 807BE434 4B86301D */ bl          __ptmf_scall
/* 807BE438 60000000 */ nop         
/* 807BE43C 48001070 */ b           lbl_807bf4ac
lbl_807be440:
/* 807BE440 91210070 */ stw         r9, 0x70(r1)
/* 807BE444 7F642A14 */ add         r27, r4, r5
/* 807BE448 91010074 */ stw         r8, 0x74(r1)
/* 807BE44C 90E10078 */ stw         r7, 0x78(r1)
/* 807BE450 7C84282E */ lwzx        r4, r4, r5
/* 807BE454 91210064 */ stw         r9, 0x64(r1)
/* 807BE458 54800001 */ rlwinm.     r0, r4, 0, 0, 0
/* 807BE45C 91010068 */ stw         r8, 0x68(r1)
/* 807BE460 90E1006C */ stw         r7, 0x6c(r1)
/* 807BE464 4182001C */ beq-        lbl_807be480
/* 807BE468 5480007E */ clrlwi      r0, r4, 1
/* 807BE46C 39810070 */ addi        r12, r1, 0x70
/* 807BE470 7C9B0214 */ add         r4, r27, r0
/* 807BE474 4B862FDD */ bl          __ptmf_scall
/* 807BE478 60000000 */ nop         
/* 807BE47C 48000158 */ b           lbl_807be5d4
lbl_807be480:
/* 807BE480 7F9B2214 */ add         r28, r27, r4
/* 807BE484 91210124 */ stw         r9, 0x124(r1)
/* 807BE488 7F84E378 */ mr          r4, r28
/* 807BE48C 38C10124 */ addi        r6, r1, 0x124
/* 807BE490 91010128 */ stw         r8, 0x128(r1)
/* 807BE494 38A00000 */ li          r5, 0
/* 807BE498 90E1012C */ stw         r7, 0x12c(r1)
/* 807BE49C 48001025 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BE4A0 80A10070 */ lwz         r5, 0x70(r1)
/* 807BE4A4 7FA3EB78 */ mr          r3, r29
/* 807BE4A8 80E10074 */ lwz         r7, 0x74(r1)
/* 807BE4AC 7F84E378 */ mr          r4, r28
/* 807BE4B0 80010078 */ lwz         r0, 0x78(r1)
/* 807BE4B4 38C10118 */ addi        r6, r1, 0x118
/* 807BE4B8 90A10118 */ stw         r5, 0x118(r1)
/* 807BE4BC 38A00004 */ li          r5, 4
/* 807BE4C0 90E1011C */ stw         r7, 0x11c(r1)
/* 807BE4C4 90010120 */ stw         r0, 0x120(r1)
/* 807BE4C8 48000FF9 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BE4CC 80A10070 */ lwz         r5, 0x70(r1)
/* 807BE4D0 7FA3EB78 */ mr          r3, r29
/* 807BE4D4 80E10074 */ lwz         r7, 0x74(r1)
/* 807BE4D8 7F84E378 */ mr          r4, r28
/* 807BE4DC 80010078 */ lwz         r0, 0x78(r1)
/* 807BE4E0 38C1010C */ addi        r6, r1, 0x10c
/* 807BE4E4 90A1010C */ stw         r5, 0x10c(r1)
/* 807BE4E8 38A00008 */ li          r5, 8
/* 807BE4EC 90E10110 */ stw         r7, 0x110(r1)
/* 807BE4F0 90010114 */ stw         r0, 0x114(r1)
/* 807BE4F4 48000FCD */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BE4F8 80A10070 */ lwz         r5, 0x70(r1)
/* 807BE4FC 7FA3EB78 */ mr          r3, r29
/* 807BE500 80E10074 */ lwz         r7, 0x74(r1)
/* 807BE504 7F84E378 */ mr          r4, r28
/* 807BE508 80010078 */ lwz         r0, 0x78(r1)
/* 807BE50C 38C10100 */ addi        r6, r1, 0x100
/* 807BE510 90A10100 */ stw         r5, 0x100(r1)
/* 807BE514 38A0000C */ li          r5, 0xc
/* 807BE518 90E10104 */ stw         r7, 0x104(r1)
/* 807BE51C 90010108 */ stw         r0, 0x108(r1)
/* 807BE520 48000FA1 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BE524 80A10070 */ lwz         r5, 0x70(r1)
/* 807BE528 7FA3EB78 */ mr          r3, r29
/* 807BE52C 80E10074 */ lwz         r7, 0x74(r1)
/* 807BE530 7F84E378 */ mr          r4, r28
/* 807BE534 80010078 */ lwz         r0, 0x78(r1)
/* 807BE538 38C100F4 */ addi        r6, r1, 0xf4
/* 807BE53C 90A100F4 */ stw         r5, 0xf4(r1)
/* 807BE540 38A00010 */ li          r5, 0x10
/* 807BE544 90E100F8 */ stw         r7, 0xf8(r1)
/* 807BE548 900100FC */ stw         r0, 0xfc(r1)
/* 807BE54C 48000F75 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BE550 80A10070 */ lwz         r5, 0x70(r1)
/* 807BE554 7FA3EB78 */ mr          r3, r29
/* 807BE558 80E10074 */ lwz         r7, 0x74(r1)
/* 807BE55C 7F84E378 */ mr          r4, r28
/* 807BE560 80010078 */ lwz         r0, 0x78(r1)
/* 807BE564 38C100E8 */ addi        r6, r1, 0xe8
/* 807BE568 90A100E8 */ stw         r5, 0xe8(r1)
/* 807BE56C 38A00014 */ li          r5, 0x14
/* 807BE570 90E100EC */ stw         r7, 0xec(r1)
/* 807BE574 900100F0 */ stw         r0, 0xf0(r1)
/* 807BE578 48000F49 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BE57C 80A10070 */ lwz         r5, 0x70(r1)
/* 807BE580 7FA3EB78 */ mr          r3, r29
/* 807BE584 80E10074 */ lwz         r7, 0x74(r1)
/* 807BE588 7F84E378 */ mr          r4, r28
/* 807BE58C 80010078 */ lwz         r0, 0x78(r1)
/* 807BE590 38C100DC */ addi        r6, r1, 0xdc
/* 807BE594 90A100DC */ stw         r5, 0xdc(r1)
/* 807BE598 38A00018 */ li          r5, 0x18
/* 807BE59C 90E100E0 */ stw         r7, 0xe0(r1)
/* 807BE5A0 900100E4 */ stw         r0, 0xe4(r1)
/* 807BE5A4 48000F1D */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BE5A8 80A10070 */ lwz         r5, 0x70(r1)
/* 807BE5AC 7FA3EB78 */ mr          r3, r29
/* 807BE5B0 80E10074 */ lwz         r7, 0x74(r1)
/* 807BE5B4 7F84E378 */ mr          r4, r28
/* 807BE5B8 80010078 */ lwz         r0, 0x78(r1)
/* 807BE5BC 38C100D0 */ addi        r6, r1, 0xd0
/* 807BE5C0 90A100D0 */ stw         r5, 0xd0(r1)
/* 807BE5C4 38A0001C */ li          r5, 0x1c
/* 807BE5C8 90E100D4 */ stw         r7, 0xd4(r1)
/* 807BE5CC 900100D8 */ stw         r0, 0xd8(r1)
/* 807BE5D0 48000EF1 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
lbl_807be5d4:
/* 807BE5D4 80610430 */ lwz         r3, 0x430(r1)
/* 807BE5D8 80810434 */ lwz         r4, 0x434(r1)
/* 807BE5DC 80E10438 */ lwz         r7, 0x438(r1)
/* 807BE5E0 9061007C */ stw         r3, 0x7c(r1)
/* 807BE5E4 90810080 */ stw         r4, 0x80(r1)
/* 807BE5E8 90E10084 */ stw         r7, 0x84(r1)
/* 807BE5EC 80BB0004 */ lwz         r5, 4(r27)
/* 807BE5F0 90610058 */ stw         r3, 0x58(r1)
/* 807BE5F4 54A00001 */ rlwinm.     r0, r5, 0, 0, 0
/* 807BE5F8 9081005C */ stw         r4, 0x5c(r1)
/* 807BE5FC 90E10060 */ stw         r7, 0x60(r1)
/* 807BE600 41820020 */ beq-        lbl_807be620
/* 807BE604 54A0007E */ clrlwi      r0, r5, 1
/* 807BE608 7FA3EB78 */ mr          r3, r29
/* 807BE60C 7C9B0214 */ add         r4, r27, r0
/* 807BE610 3981007C */ addi        r12, r1, 0x7c
/* 807BE614 4B862E3D */ bl          __ptmf_scall
/* 807BE618 60000000 */ nop         
/* 807BE61C 4800015C */ b           lbl_807be778
lbl_807be620:
/* 807BE620 7F9B2A14 */ add         r28, r27, r5
/* 807BE624 90610184 */ stw         r3, 0x184(r1)
/* 807BE628 7FA3EB78 */ mr          r3, r29
/* 807BE62C 38C10184 */ addi        r6, r1, 0x184
/* 807BE630 90810188 */ stw         r4, 0x188(r1)
/* 807BE634 7F84E378 */ mr          r4, r28
/* 807BE638 38A00000 */ li          r5, 0
/* 807BE63C 90E1018C */ stw         r7, 0x18c(r1)
/* 807BE640 48000E81 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BE644 80A1007C */ lwz         r5, 0x7c(r1)
/* 807BE648 7FA3EB78 */ mr          r3, r29
/* 807BE64C 80E10080 */ lwz         r7, 0x80(r1)
/* 807BE650 7F84E378 */ mr          r4, r28
/* 807BE654 80010084 */ lwz         r0, 0x84(r1)
/* 807BE658 38C10178 */ addi        r6, r1, 0x178
/* 807BE65C 90A10178 */ stw         r5, 0x178(r1)
/* 807BE660 38A00004 */ li          r5, 4
/* 807BE664 90E1017C */ stw         r7, 0x17c(r1)
/* 807BE668 90010180 */ stw         r0, 0x180(r1)
/* 807BE66C 48000E55 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BE670 80A1007C */ lwz         r5, 0x7c(r1)
/* 807BE674 7FA3EB78 */ mr          r3, r29
/* 807BE678 80E10080 */ lwz         r7, 0x80(r1)
/* 807BE67C 7F84E378 */ mr          r4, r28
/* 807BE680 80010084 */ lwz         r0, 0x84(r1)
/* 807BE684 38C1016C */ addi        r6, r1, 0x16c
/* 807BE688 90A1016C */ stw         r5, 0x16c(r1)
/* 807BE68C 38A00008 */ li          r5, 8
/* 807BE690 90E10170 */ stw         r7, 0x170(r1)
/* 807BE694 90010174 */ stw         r0, 0x174(r1)
/* 807BE698 48000E29 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BE69C 80A1007C */ lwz         r5, 0x7c(r1)
/* 807BE6A0 7FA3EB78 */ mr          r3, r29
/* 807BE6A4 80E10080 */ lwz         r7, 0x80(r1)
/* 807BE6A8 7F84E378 */ mr          r4, r28
/* 807BE6AC 80010084 */ lwz         r0, 0x84(r1)
/* 807BE6B0 38C10160 */ addi        r6, r1, 0x160
/* 807BE6B4 90A10160 */ stw         r5, 0x160(r1)
/* 807BE6B8 38A0000C */ li          r5, 0xc
/* 807BE6BC 90E10164 */ stw         r7, 0x164(r1)
/* 807BE6C0 90010168 */ stw         r0, 0x168(r1)
/* 807BE6C4 48000DFD */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BE6C8 80A1007C */ lwz         r5, 0x7c(r1)
/* 807BE6CC 7FA3EB78 */ mr          r3, r29
/* 807BE6D0 80E10080 */ lwz         r7, 0x80(r1)
/* 807BE6D4 7F84E378 */ mr          r4, r28
/* 807BE6D8 80010084 */ lwz         r0, 0x84(r1)
/* 807BE6DC 38C10154 */ addi        r6, r1, 0x154
/* 807BE6E0 90A10154 */ stw         r5, 0x154(r1)
/* 807BE6E4 38A00010 */ li          r5, 0x10
/* 807BE6E8 90E10158 */ stw         r7, 0x158(r1)
/* 807BE6EC 9001015C */ stw         r0, 0x15c(r1)
/* 807BE6F0 48000DD1 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BE6F4 80A1007C */ lwz         r5, 0x7c(r1)
/* 807BE6F8 7FA3EB78 */ mr          r3, r29
/* 807BE6FC 80E10080 */ lwz         r7, 0x80(r1)
/* 807BE700 7F84E378 */ mr          r4, r28
/* 807BE704 80010084 */ lwz         r0, 0x84(r1)
/* 807BE708 38C10148 */ addi        r6, r1, 0x148
/* 807BE70C 90A10148 */ stw         r5, 0x148(r1)
/* 807BE710 38A00014 */ li          r5, 0x14
/* 807BE714 90E1014C */ stw         r7, 0x14c(r1)
/* 807BE718 90010150 */ stw         r0, 0x150(r1)
/* 807BE71C 48000DA5 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BE720 80A1007C */ lwz         r5, 0x7c(r1)
/* 807BE724 7FA3EB78 */ mr          r3, r29
/* 807BE728 80E10080 */ lwz         r7, 0x80(r1)
/* 807BE72C 7F84E378 */ mr          r4, r28
/* 807BE730 80010084 */ lwz         r0, 0x84(r1)
/* 807BE734 38C1013C */ addi        r6, r1, 0x13c
/* 807BE738 90A1013C */ stw         r5, 0x13c(r1)
/* 807BE73C 38A00018 */ li          r5, 0x18
/* 807BE740 90E10140 */ stw         r7, 0x140(r1)
/* 807BE744 90010144 */ stw         r0, 0x144(r1)
/* 807BE748 48000D79 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BE74C 80A1007C */ lwz         r5, 0x7c(r1)
/* 807BE750 7FA3EB78 */ mr          r3, r29
/* 807BE754 80E10080 */ lwz         r7, 0x80(r1)
/* 807BE758 7F84E378 */ mr          r4, r28
/* 807BE75C 80010084 */ lwz         r0, 0x84(r1)
/* 807BE760 38C10130 */ addi        r6, r1, 0x130
/* 807BE764 90A10130 */ stw         r5, 0x130(r1)
/* 807BE768 38A0001C */ li          r5, 0x1c
/* 807BE76C 90E10134 */ stw         r7, 0x134(r1)
/* 807BE770 90010138 */ stw         r0, 0x138(r1)
/* 807BE774 48000D4D */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
lbl_807be778:
/* 807BE778 80610430 */ lwz         r3, 0x430(r1)
/* 807BE77C 80810434 */ lwz         r4, 0x434(r1)
/* 807BE780 80E10438 */ lwz         r7, 0x438(r1)
/* 807BE784 90610088 */ stw         r3, 0x88(r1)
/* 807BE788 9081008C */ stw         r4, 0x8c(r1)
/* 807BE78C 90E10090 */ stw         r7, 0x90(r1)
/* 807BE790 80BB0008 */ lwz         r5, 8(r27)
/* 807BE794 9061004C */ stw         r3, 0x4c(r1)
/* 807BE798 54A00001 */ rlwinm.     r0, r5, 0, 0, 0
/* 807BE79C 90810050 */ stw         r4, 0x50(r1)
/* 807BE7A0 90E10054 */ stw         r7, 0x54(r1)
/* 807BE7A4 41820020 */ beq-        lbl_807be7c4
/* 807BE7A8 54A0007E */ clrlwi      r0, r5, 1
/* 807BE7AC 7FA3EB78 */ mr          r3, r29
/* 807BE7B0 7C9B0214 */ add         r4, r27, r0
/* 807BE7B4 39810088 */ addi        r12, r1, 0x88
/* 807BE7B8 4B862C99 */ bl          __ptmf_scall
/* 807BE7BC 60000000 */ nop         
/* 807BE7C0 4800015C */ b           lbl_807be91c
lbl_807be7c4:
/* 807BE7C4 7F9B2A14 */ add         r28, r27, r5
/* 807BE7C8 906101E4 */ stw         r3, 0x1e4(r1)
/* 807BE7CC 7FA3EB78 */ mr          r3, r29
/* 807BE7D0 38C101E4 */ addi        r6, r1, 0x1e4
/* 807BE7D4 908101E8 */ stw         r4, 0x1e8(r1)
/* 807BE7D8 7F84E378 */ mr          r4, r28
/* 807BE7DC 38A00000 */ li          r5, 0
/* 807BE7E0 90E101EC */ stw         r7, 0x1ec(r1)
/* 807BE7E4 48000CDD */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BE7E8 80A10088 */ lwz         r5, 0x88(r1)
/* 807BE7EC 7FA3EB78 */ mr          r3, r29
/* 807BE7F0 80E1008C */ lwz         r7, 0x8c(r1)
/* 807BE7F4 7F84E378 */ mr          r4, r28
/* 807BE7F8 80010090 */ lwz         r0, 0x90(r1)
/* 807BE7FC 38C101D8 */ addi        r6, r1, 0x1d8
/* 807BE800 90A101D8 */ stw         r5, 0x1d8(r1)
/* 807BE804 38A00004 */ li          r5, 4
/* 807BE808 90E101DC */ stw         r7, 0x1dc(r1)
/* 807BE80C 900101E0 */ stw         r0, 0x1e0(r1)
/* 807BE810 48000CB1 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BE814 80A10088 */ lwz         r5, 0x88(r1)
/* 807BE818 7FA3EB78 */ mr          r3, r29
/* 807BE81C 80E1008C */ lwz         r7, 0x8c(r1)
/* 807BE820 7F84E378 */ mr          r4, r28
/* 807BE824 80010090 */ lwz         r0, 0x90(r1)
/* 807BE828 38C101CC */ addi        r6, r1, 0x1cc
/* 807BE82C 90A101CC */ stw         r5, 0x1cc(r1)
/* 807BE830 38A00008 */ li          r5, 8
/* 807BE834 90E101D0 */ stw         r7, 0x1d0(r1)
/* 807BE838 900101D4 */ stw         r0, 0x1d4(r1)
/* 807BE83C 48000C85 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BE840 80A10088 */ lwz         r5, 0x88(r1)
/* 807BE844 7FA3EB78 */ mr          r3, r29
/* 807BE848 80E1008C */ lwz         r7, 0x8c(r1)
/* 807BE84C 7F84E378 */ mr          r4, r28
/* 807BE850 80010090 */ lwz         r0, 0x90(r1)
/* 807BE854 38C101C0 */ addi        r6, r1, 0x1c0
/* 807BE858 90A101C0 */ stw         r5, 0x1c0(r1)
/* 807BE85C 38A0000C */ li          r5, 0xc
/* 807BE860 90E101C4 */ stw         r7, 0x1c4(r1)
/* 807BE864 900101C8 */ stw         r0, 0x1c8(r1)
/* 807BE868 48000C59 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BE86C 80A10088 */ lwz         r5, 0x88(r1)
/* 807BE870 7FA3EB78 */ mr          r3, r29
/* 807BE874 80E1008C */ lwz         r7, 0x8c(r1)
/* 807BE878 7F84E378 */ mr          r4, r28
/* 807BE87C 80010090 */ lwz         r0, 0x90(r1)
/* 807BE880 38C101B4 */ addi        r6, r1, 0x1b4
/* 807BE884 90A101B4 */ stw         r5, 0x1b4(r1)
/* 807BE888 38A00010 */ li          r5, 0x10
/* 807BE88C 90E101B8 */ stw         r7, 0x1b8(r1)
/* 807BE890 900101BC */ stw         r0, 0x1bc(r1)
/* 807BE894 48000C2D */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BE898 80A10088 */ lwz         r5, 0x88(r1)
/* 807BE89C 7FA3EB78 */ mr          r3, r29
/* 807BE8A0 80E1008C */ lwz         r7, 0x8c(r1)
/* 807BE8A4 7F84E378 */ mr          r4, r28
/* 807BE8A8 80010090 */ lwz         r0, 0x90(r1)
/* 807BE8AC 38C101A8 */ addi        r6, r1, 0x1a8
/* 807BE8B0 90A101A8 */ stw         r5, 0x1a8(r1)
/* 807BE8B4 38A00014 */ li          r5, 0x14
/* 807BE8B8 90E101AC */ stw         r7, 0x1ac(r1)
/* 807BE8BC 900101B0 */ stw         r0, 0x1b0(r1)
/* 807BE8C0 48000C01 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BE8C4 80A10088 */ lwz         r5, 0x88(r1)
/* 807BE8C8 7FA3EB78 */ mr          r3, r29
/* 807BE8CC 80E1008C */ lwz         r7, 0x8c(r1)
/* 807BE8D0 7F84E378 */ mr          r4, r28
/* 807BE8D4 80010090 */ lwz         r0, 0x90(r1)
/* 807BE8D8 38C1019C */ addi        r6, r1, 0x19c
/* 807BE8DC 90A1019C */ stw         r5, 0x19c(r1)
/* 807BE8E0 38A00018 */ li          r5, 0x18
/* 807BE8E4 90E101A0 */ stw         r7, 0x1a0(r1)
/* 807BE8E8 900101A4 */ stw         r0, 0x1a4(r1)
/* 807BE8EC 48000BD5 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BE8F0 80A10088 */ lwz         r5, 0x88(r1)
/* 807BE8F4 7FA3EB78 */ mr          r3, r29
/* 807BE8F8 80E1008C */ lwz         r7, 0x8c(r1)
/* 807BE8FC 7F84E378 */ mr          r4, r28
/* 807BE900 80010090 */ lwz         r0, 0x90(r1)
/* 807BE904 38C10190 */ addi        r6, r1, 0x190
/* 807BE908 90A10190 */ stw         r5, 0x190(r1)
/* 807BE90C 38A0001C */ li          r5, 0x1c
/* 807BE910 90E10194 */ stw         r7, 0x194(r1)
/* 807BE914 90010198 */ stw         r0, 0x198(r1)
/* 807BE918 48000BA9 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
lbl_807be91c:
/* 807BE91C 80610430 */ lwz         r3, 0x430(r1)
/* 807BE920 80810434 */ lwz         r4, 0x434(r1)
/* 807BE924 80E10438 */ lwz         r7, 0x438(r1)
/* 807BE928 90610094 */ stw         r3, 0x94(r1)
/* 807BE92C 90810098 */ stw         r4, 0x98(r1)
/* 807BE930 90E1009C */ stw         r7, 0x9c(r1)
/* 807BE934 80BB000C */ lwz         r5, 0xc(r27)
/* 807BE938 90610040 */ stw         r3, 0x40(r1)
/* 807BE93C 54A00001 */ rlwinm.     r0, r5, 0, 0, 0
/* 807BE940 90810044 */ stw         r4, 0x44(r1)
/* 807BE944 90E10048 */ stw         r7, 0x48(r1)
/* 807BE948 41820020 */ beq-        lbl_807be968
/* 807BE94C 54A0007E */ clrlwi      r0, r5, 1
/* 807BE950 7FA3EB78 */ mr          r3, r29
/* 807BE954 7C9B0214 */ add         r4, r27, r0
/* 807BE958 39810094 */ addi        r12, r1, 0x94
/* 807BE95C 4B862AF5 */ bl          __ptmf_scall
/* 807BE960 60000000 */ nop         
/* 807BE964 4800015C */ b           lbl_807beac0
lbl_807be968:
/* 807BE968 7F9B2A14 */ add         r28, r27, r5
/* 807BE96C 90610244 */ stw         r3, 0x244(r1)
/* 807BE970 7FA3EB78 */ mr          r3, r29
/* 807BE974 38C10244 */ addi        r6, r1, 0x244
/* 807BE978 90810248 */ stw         r4, 0x248(r1)
/* 807BE97C 7F84E378 */ mr          r4, r28
/* 807BE980 38A00000 */ li          r5, 0
/* 807BE984 90E1024C */ stw         r7, 0x24c(r1)
/* 807BE988 48000B39 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BE98C 80A10094 */ lwz         r5, 0x94(r1)
/* 807BE990 7FA3EB78 */ mr          r3, r29
/* 807BE994 80E10098 */ lwz         r7, 0x98(r1)
/* 807BE998 7F84E378 */ mr          r4, r28
/* 807BE99C 8001009C */ lwz         r0, 0x9c(r1)
/* 807BE9A0 38C10238 */ addi        r6, r1, 0x238
/* 807BE9A4 90A10238 */ stw         r5, 0x238(r1)
/* 807BE9A8 38A00004 */ li          r5, 4
/* 807BE9AC 90E1023C */ stw         r7, 0x23c(r1)
/* 807BE9B0 90010240 */ stw         r0, 0x240(r1)
/* 807BE9B4 48000B0D */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BE9B8 80A10094 */ lwz         r5, 0x94(r1)
/* 807BE9BC 7FA3EB78 */ mr          r3, r29
/* 807BE9C0 80E10098 */ lwz         r7, 0x98(r1)
/* 807BE9C4 7F84E378 */ mr          r4, r28
/* 807BE9C8 8001009C */ lwz         r0, 0x9c(r1)
/* 807BE9CC 38C1022C */ addi        r6, r1, 0x22c
/* 807BE9D0 90A1022C */ stw         r5, 0x22c(r1)
/* 807BE9D4 38A00008 */ li          r5, 8
/* 807BE9D8 90E10230 */ stw         r7, 0x230(r1)
/* 807BE9DC 90010234 */ stw         r0, 0x234(r1)
/* 807BE9E0 48000AE1 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BE9E4 80A10094 */ lwz         r5, 0x94(r1)
/* 807BE9E8 7FA3EB78 */ mr          r3, r29
/* 807BE9EC 80E10098 */ lwz         r7, 0x98(r1)
/* 807BE9F0 7F84E378 */ mr          r4, r28
/* 807BE9F4 8001009C */ lwz         r0, 0x9c(r1)
/* 807BE9F8 38C10220 */ addi        r6, r1, 0x220
/* 807BE9FC 90A10220 */ stw         r5, 0x220(r1)
/* 807BEA00 38A0000C */ li          r5, 0xc
/* 807BEA04 90E10224 */ stw         r7, 0x224(r1)
/* 807BEA08 90010228 */ stw         r0, 0x228(r1)
/* 807BEA0C 48000AB5 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BEA10 80A10094 */ lwz         r5, 0x94(r1)
/* 807BEA14 7FA3EB78 */ mr          r3, r29
/* 807BEA18 80E10098 */ lwz         r7, 0x98(r1)
/* 807BEA1C 7F84E378 */ mr          r4, r28
/* 807BEA20 8001009C */ lwz         r0, 0x9c(r1)
/* 807BEA24 38C10214 */ addi        r6, r1, 0x214
/* 807BEA28 90A10214 */ stw         r5, 0x214(r1)
/* 807BEA2C 38A00010 */ li          r5, 0x10
/* 807BEA30 90E10218 */ stw         r7, 0x218(r1)
/* 807BEA34 9001021C */ stw         r0, 0x21c(r1)
/* 807BEA38 48000A89 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BEA3C 80A10094 */ lwz         r5, 0x94(r1)
/* 807BEA40 7FA3EB78 */ mr          r3, r29
/* 807BEA44 80E10098 */ lwz         r7, 0x98(r1)
/* 807BEA48 7F84E378 */ mr          r4, r28
/* 807BEA4C 8001009C */ lwz         r0, 0x9c(r1)
/* 807BEA50 38C10208 */ addi        r6, r1, 0x208
/* 807BEA54 90A10208 */ stw         r5, 0x208(r1)
/* 807BEA58 38A00014 */ li          r5, 0x14
/* 807BEA5C 90E1020C */ stw         r7, 0x20c(r1)
/* 807BEA60 90010210 */ stw         r0, 0x210(r1)
/* 807BEA64 48000A5D */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BEA68 80A10094 */ lwz         r5, 0x94(r1)
/* 807BEA6C 7FA3EB78 */ mr          r3, r29
/* 807BEA70 80E10098 */ lwz         r7, 0x98(r1)
/* 807BEA74 7F84E378 */ mr          r4, r28
/* 807BEA78 8001009C */ lwz         r0, 0x9c(r1)
/* 807BEA7C 38C101FC */ addi        r6, r1, 0x1fc
/* 807BEA80 90A101FC */ stw         r5, 0x1fc(r1)
/* 807BEA84 38A00018 */ li          r5, 0x18
/* 807BEA88 90E10200 */ stw         r7, 0x200(r1)
/* 807BEA8C 90010204 */ stw         r0, 0x204(r1)
/* 807BEA90 48000A31 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BEA94 80A10094 */ lwz         r5, 0x94(r1)
/* 807BEA98 7FA3EB78 */ mr          r3, r29
/* 807BEA9C 80E10098 */ lwz         r7, 0x98(r1)
/* 807BEAA0 7F84E378 */ mr          r4, r28
/* 807BEAA4 8001009C */ lwz         r0, 0x9c(r1)
/* 807BEAA8 38C101F0 */ addi        r6, r1, 0x1f0
/* 807BEAAC 90A101F0 */ stw         r5, 0x1f0(r1)
/* 807BEAB0 38A0001C */ li          r5, 0x1c
/* 807BEAB4 90E101F4 */ stw         r7, 0x1f4(r1)
/* 807BEAB8 900101F8 */ stw         r0, 0x1f8(r1)
/* 807BEABC 48000A05 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
lbl_807beac0:
/* 807BEAC0 80610430 */ lwz         r3, 0x430(r1)
/* 807BEAC4 80810434 */ lwz         r4, 0x434(r1)
/* 807BEAC8 80E10438 */ lwz         r7, 0x438(r1)
/* 807BEACC 906100A0 */ stw         r3, 0xa0(r1)
/* 807BEAD0 908100A4 */ stw         r4, 0xa4(r1)
/* 807BEAD4 90E100A8 */ stw         r7, 0xa8(r1)
/* 807BEAD8 80BB0010 */ lwz         r5, 0x10(r27)
/* 807BEADC 90610034 */ stw         r3, 0x34(r1)
/* 807BEAE0 54A00001 */ rlwinm.     r0, r5, 0, 0, 0
/* 807BEAE4 90810038 */ stw         r4, 0x38(r1)
/* 807BEAE8 90E1003C */ stw         r7, 0x3c(r1)
/* 807BEAEC 41820020 */ beq-        lbl_807beb0c
/* 807BEAF0 54A0007E */ clrlwi      r0, r5, 1
/* 807BEAF4 7FA3EB78 */ mr          r3, r29
/* 807BEAF8 7C9B0214 */ add         r4, r27, r0
/* 807BEAFC 398100A0 */ addi        r12, r1, 0xa0
/* 807BEB00 4B862951 */ bl          __ptmf_scall
/* 807BEB04 60000000 */ nop         
/* 807BEB08 4800015C */ b           lbl_807bec64
lbl_807beb0c:
/* 807BEB0C 7F9B2A14 */ add         r28, r27, r5
/* 807BEB10 906102A4 */ stw         r3, 0x2a4(r1)
/* 807BEB14 7FA3EB78 */ mr          r3, r29
/* 807BEB18 38C102A4 */ addi        r6, r1, 0x2a4
/* 807BEB1C 908102A8 */ stw         r4, 0x2a8(r1)
/* 807BEB20 7F84E378 */ mr          r4, r28
/* 807BEB24 38A00000 */ li          r5, 0
/* 807BEB28 90E102AC */ stw         r7, 0x2ac(r1)
/* 807BEB2C 48000995 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BEB30 80A100A0 */ lwz         r5, 0xa0(r1)
/* 807BEB34 7FA3EB78 */ mr          r3, r29
/* 807BEB38 80E100A4 */ lwz         r7, 0xa4(r1)
/* 807BEB3C 7F84E378 */ mr          r4, r28
/* 807BEB40 800100A8 */ lwz         r0, 0xa8(r1)
/* 807BEB44 38C10298 */ addi        r6, r1, 0x298
/* 807BEB48 90A10298 */ stw         r5, 0x298(r1)
/* 807BEB4C 38A00004 */ li          r5, 4
/* 807BEB50 90E1029C */ stw         r7, 0x29c(r1)
/* 807BEB54 900102A0 */ stw         r0, 0x2a0(r1)
/* 807BEB58 48000969 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BEB5C 80A100A0 */ lwz         r5, 0xa0(r1)
/* 807BEB60 7FA3EB78 */ mr          r3, r29
/* 807BEB64 80E100A4 */ lwz         r7, 0xa4(r1)
/* 807BEB68 7F84E378 */ mr          r4, r28
/* 807BEB6C 800100A8 */ lwz         r0, 0xa8(r1)
/* 807BEB70 38C1028C */ addi        r6, r1, 0x28c
/* 807BEB74 90A1028C */ stw         r5, 0x28c(r1)
/* 807BEB78 38A00008 */ li          r5, 8
/* 807BEB7C 90E10290 */ stw         r7, 0x290(r1)
/* 807BEB80 90010294 */ stw         r0, 0x294(r1)
/* 807BEB84 4800093D */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BEB88 80A100A0 */ lwz         r5, 0xa0(r1)
/* 807BEB8C 7FA3EB78 */ mr          r3, r29
/* 807BEB90 80E100A4 */ lwz         r7, 0xa4(r1)
/* 807BEB94 7F84E378 */ mr          r4, r28
/* 807BEB98 800100A8 */ lwz         r0, 0xa8(r1)
/* 807BEB9C 38C10280 */ addi        r6, r1, 0x280
/* 807BEBA0 90A10280 */ stw         r5, 0x280(r1)
/* 807BEBA4 38A0000C */ li          r5, 0xc
/* 807BEBA8 90E10284 */ stw         r7, 0x284(r1)
/* 807BEBAC 90010288 */ stw         r0, 0x288(r1)
/* 807BEBB0 48000911 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BEBB4 80A100A0 */ lwz         r5, 0xa0(r1)
/* 807BEBB8 7FA3EB78 */ mr          r3, r29
/* 807BEBBC 80E100A4 */ lwz         r7, 0xa4(r1)
/* 807BEBC0 7F84E378 */ mr          r4, r28
/* 807BEBC4 800100A8 */ lwz         r0, 0xa8(r1)
/* 807BEBC8 38C10274 */ addi        r6, r1, 0x274
/* 807BEBCC 90A10274 */ stw         r5, 0x274(r1)
/* 807BEBD0 38A00010 */ li          r5, 0x10
/* 807BEBD4 90E10278 */ stw         r7, 0x278(r1)
/* 807BEBD8 9001027C */ stw         r0, 0x27c(r1)
/* 807BEBDC 480008E5 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BEBE0 80A100A0 */ lwz         r5, 0xa0(r1)
/* 807BEBE4 7FA3EB78 */ mr          r3, r29
/* 807BEBE8 80E100A4 */ lwz         r7, 0xa4(r1)
/* 807BEBEC 7F84E378 */ mr          r4, r28
/* 807BEBF0 800100A8 */ lwz         r0, 0xa8(r1)
/* 807BEBF4 38C10268 */ addi        r6, r1, 0x268
/* 807BEBF8 90A10268 */ stw         r5, 0x268(r1)
/* 807BEBFC 38A00014 */ li          r5, 0x14
/* 807BEC00 90E1026C */ stw         r7, 0x26c(r1)
/* 807BEC04 90010270 */ stw         r0, 0x270(r1)
/* 807BEC08 480008B9 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BEC0C 80A100A0 */ lwz         r5, 0xa0(r1)
/* 807BEC10 7FA3EB78 */ mr          r3, r29
/* 807BEC14 80E100A4 */ lwz         r7, 0xa4(r1)
/* 807BEC18 7F84E378 */ mr          r4, r28
/* 807BEC1C 800100A8 */ lwz         r0, 0xa8(r1)
/* 807BEC20 38C1025C */ addi        r6, r1, 0x25c
/* 807BEC24 90A1025C */ stw         r5, 0x25c(r1)
/* 807BEC28 38A00018 */ li          r5, 0x18
/* 807BEC2C 90E10260 */ stw         r7, 0x260(r1)
/* 807BEC30 90010264 */ stw         r0, 0x264(r1)
/* 807BEC34 4800088D */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BEC38 80A100A0 */ lwz         r5, 0xa0(r1)
/* 807BEC3C 7FA3EB78 */ mr          r3, r29
/* 807BEC40 80E100A4 */ lwz         r7, 0xa4(r1)
/* 807BEC44 7F84E378 */ mr          r4, r28
/* 807BEC48 800100A8 */ lwz         r0, 0xa8(r1)
/* 807BEC4C 38C10250 */ addi        r6, r1, 0x250
/* 807BEC50 90A10250 */ stw         r5, 0x250(r1)
/* 807BEC54 38A0001C */ li          r5, 0x1c
/* 807BEC58 90E10254 */ stw         r7, 0x254(r1)
/* 807BEC5C 90010258 */ stw         r0, 0x258(r1)
/* 807BEC60 48000861 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
lbl_807bec64:
/* 807BEC64 80610430 */ lwz         r3, 0x430(r1)
/* 807BEC68 80810434 */ lwz         r4, 0x434(r1)
/* 807BEC6C 80E10438 */ lwz         r7, 0x438(r1)
/* 807BEC70 906100AC */ stw         r3, 0xac(r1)
/* 807BEC74 908100B0 */ stw         r4, 0xb0(r1)
/* 807BEC78 90E100B4 */ stw         r7, 0xb4(r1)
/* 807BEC7C 80BB0014 */ lwz         r5, 0x14(r27)
/* 807BEC80 90610028 */ stw         r3, 0x28(r1)
/* 807BEC84 54A00001 */ rlwinm.     r0, r5, 0, 0, 0
/* 807BEC88 9081002C */ stw         r4, 0x2c(r1)
/* 807BEC8C 90E10030 */ stw         r7, 0x30(r1)
/* 807BEC90 41820020 */ beq-        lbl_807becb0
/* 807BEC94 54A0007E */ clrlwi      r0, r5, 1
/* 807BEC98 7FA3EB78 */ mr          r3, r29
/* 807BEC9C 7C9B0214 */ add         r4, r27, r0
/* 807BECA0 398100AC */ addi        r12, r1, 0xac
/* 807BECA4 4B8627AD */ bl          __ptmf_scall
/* 807BECA8 60000000 */ nop         
/* 807BECAC 4800015C */ b           lbl_807bee08
lbl_807becb0:
/* 807BECB0 7F9B2A14 */ add         r28, r27, r5
/* 807BECB4 90610304 */ stw         r3, 0x304(r1)
/* 807BECB8 7FA3EB78 */ mr          r3, r29
/* 807BECBC 38C10304 */ addi        r6, r1, 0x304
/* 807BECC0 90810308 */ stw         r4, 0x308(r1)
/* 807BECC4 7F84E378 */ mr          r4, r28
/* 807BECC8 38A00000 */ li          r5, 0
/* 807BECCC 90E1030C */ stw         r7, 0x30c(r1)
/* 807BECD0 480007F1 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BECD4 80A100AC */ lwz         r5, 0xac(r1)
/* 807BECD8 7FA3EB78 */ mr          r3, r29
/* 807BECDC 80E100B0 */ lwz         r7, 0xb0(r1)
/* 807BECE0 7F84E378 */ mr          r4, r28
/* 807BECE4 800100B4 */ lwz         r0, 0xb4(r1)
/* 807BECE8 38C102F8 */ addi        r6, r1, 0x2f8
/* 807BECEC 90A102F8 */ stw         r5, 0x2f8(r1)
/* 807BECF0 38A00004 */ li          r5, 4
/* 807BECF4 90E102FC */ stw         r7, 0x2fc(r1)
/* 807BECF8 90010300 */ stw         r0, 0x300(r1)
/* 807BECFC 480007C5 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BED00 80A100AC */ lwz         r5, 0xac(r1)
/* 807BED04 7FA3EB78 */ mr          r3, r29
/* 807BED08 80E100B0 */ lwz         r7, 0xb0(r1)
/* 807BED0C 7F84E378 */ mr          r4, r28
/* 807BED10 800100B4 */ lwz         r0, 0xb4(r1)
/* 807BED14 38C102EC */ addi        r6, r1, 0x2ec
/* 807BED18 90A102EC */ stw         r5, 0x2ec(r1)
/* 807BED1C 38A00008 */ li          r5, 8
/* 807BED20 90E102F0 */ stw         r7, 0x2f0(r1)
/* 807BED24 900102F4 */ stw         r0, 0x2f4(r1)
/* 807BED28 48000799 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BED2C 80A100AC */ lwz         r5, 0xac(r1)
/* 807BED30 7FA3EB78 */ mr          r3, r29
/* 807BED34 80E100B0 */ lwz         r7, 0xb0(r1)
/* 807BED38 7F84E378 */ mr          r4, r28
/* 807BED3C 800100B4 */ lwz         r0, 0xb4(r1)
/* 807BED40 38C102E0 */ addi        r6, r1, 0x2e0
/* 807BED44 90A102E0 */ stw         r5, 0x2e0(r1)
/* 807BED48 38A0000C */ li          r5, 0xc
/* 807BED4C 90E102E4 */ stw         r7, 0x2e4(r1)
/* 807BED50 900102E8 */ stw         r0, 0x2e8(r1)
/* 807BED54 4800076D */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BED58 80A100AC */ lwz         r5, 0xac(r1)
/* 807BED5C 7FA3EB78 */ mr          r3, r29
/* 807BED60 80E100B0 */ lwz         r7, 0xb0(r1)
/* 807BED64 7F84E378 */ mr          r4, r28
/* 807BED68 800100B4 */ lwz         r0, 0xb4(r1)
/* 807BED6C 38C102D4 */ addi        r6, r1, 0x2d4
/* 807BED70 90A102D4 */ stw         r5, 0x2d4(r1)
/* 807BED74 38A00010 */ li          r5, 0x10
/* 807BED78 90E102D8 */ stw         r7, 0x2d8(r1)
/* 807BED7C 900102DC */ stw         r0, 0x2dc(r1)
/* 807BED80 48000741 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BED84 80A100AC */ lwz         r5, 0xac(r1)
/* 807BED88 7FA3EB78 */ mr          r3, r29
/* 807BED8C 80E100B0 */ lwz         r7, 0xb0(r1)
/* 807BED90 7F84E378 */ mr          r4, r28
/* 807BED94 800100B4 */ lwz         r0, 0xb4(r1)
/* 807BED98 38C102C8 */ addi        r6, r1, 0x2c8
/* 807BED9C 90A102C8 */ stw         r5, 0x2c8(r1)
/* 807BEDA0 38A00014 */ li          r5, 0x14
/* 807BEDA4 90E102CC */ stw         r7, 0x2cc(r1)
/* 807BEDA8 900102D0 */ stw         r0, 0x2d0(r1)
/* 807BEDAC 48000715 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BEDB0 80A100AC */ lwz         r5, 0xac(r1)
/* 807BEDB4 7FA3EB78 */ mr          r3, r29
/* 807BEDB8 80E100B0 */ lwz         r7, 0xb0(r1)
/* 807BEDBC 7F84E378 */ mr          r4, r28
/* 807BEDC0 800100B4 */ lwz         r0, 0xb4(r1)
/* 807BEDC4 38C102BC */ addi        r6, r1, 0x2bc
/* 807BEDC8 90A102BC */ stw         r5, 0x2bc(r1)
/* 807BEDCC 38A00018 */ li          r5, 0x18
/* 807BEDD0 90E102C0 */ stw         r7, 0x2c0(r1)
/* 807BEDD4 900102C4 */ stw         r0, 0x2c4(r1)
/* 807BEDD8 480006E9 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BEDDC 80A100AC */ lwz         r5, 0xac(r1)
/* 807BEDE0 7FA3EB78 */ mr          r3, r29
/* 807BEDE4 80E100B0 */ lwz         r7, 0xb0(r1)
/* 807BEDE8 7F84E378 */ mr          r4, r28
/* 807BEDEC 800100B4 */ lwz         r0, 0xb4(r1)
/* 807BEDF0 38C102B0 */ addi        r6, r1, 0x2b0
/* 807BEDF4 90A102B0 */ stw         r5, 0x2b0(r1)
/* 807BEDF8 38A0001C */ li          r5, 0x1c
/* 807BEDFC 90E102B4 */ stw         r7, 0x2b4(r1)
/* 807BEE00 900102B8 */ stw         r0, 0x2b8(r1)
/* 807BEE04 480006BD */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
lbl_807bee08:
/* 807BEE08 80610430 */ lwz         r3, 0x430(r1)
/* 807BEE0C 80810434 */ lwz         r4, 0x434(r1)
/* 807BEE10 80E10438 */ lwz         r7, 0x438(r1)
/* 807BEE14 906100B8 */ stw         r3, 0xb8(r1)
/* 807BEE18 908100BC */ stw         r4, 0xbc(r1)
/* 807BEE1C 90E100C0 */ stw         r7, 0xc0(r1)
/* 807BEE20 80BB0018 */ lwz         r5, 0x18(r27)
/* 807BEE24 9061001C */ stw         r3, 0x1c(r1)
/* 807BEE28 54A00001 */ rlwinm.     r0, r5, 0, 0, 0
/* 807BEE2C 90810020 */ stw         r4, 0x20(r1)
/* 807BEE30 90E10024 */ stw         r7, 0x24(r1)
/* 807BEE34 41820020 */ beq-        lbl_807bee54
/* 807BEE38 54A0007E */ clrlwi      r0, r5, 1
/* 807BEE3C 7FA3EB78 */ mr          r3, r29
/* 807BEE40 7C9B0214 */ add         r4, r27, r0
/* 807BEE44 398100B8 */ addi        r12, r1, 0xb8
/* 807BEE48 4B862609 */ bl          __ptmf_scall
/* 807BEE4C 60000000 */ nop         
/* 807BEE50 4800015C */ b           lbl_807befac
lbl_807bee54:
/* 807BEE54 7F9B2A14 */ add         r28, r27, r5
/* 807BEE58 90610364 */ stw         r3, 0x364(r1)
/* 807BEE5C 7FA3EB78 */ mr          r3, r29
/* 807BEE60 38C10364 */ addi        r6, r1, 0x364
/* 807BEE64 90810368 */ stw         r4, 0x368(r1)
/* 807BEE68 7F84E378 */ mr          r4, r28
/* 807BEE6C 38A00000 */ li          r5, 0
/* 807BEE70 90E1036C */ stw         r7, 0x36c(r1)
/* 807BEE74 4800064D */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BEE78 80A100B8 */ lwz         r5, 0xb8(r1)
/* 807BEE7C 7FA3EB78 */ mr          r3, r29
/* 807BEE80 80E100BC */ lwz         r7, 0xbc(r1)
/* 807BEE84 7F84E378 */ mr          r4, r28
/* 807BEE88 800100C0 */ lwz         r0, 0xc0(r1)
/* 807BEE8C 38C10358 */ addi        r6, r1, 0x358
/* 807BEE90 90A10358 */ stw         r5, 0x358(r1)
/* 807BEE94 38A00004 */ li          r5, 4
/* 807BEE98 90E1035C */ stw         r7, 0x35c(r1)
/* 807BEE9C 90010360 */ stw         r0, 0x360(r1)
/* 807BEEA0 48000621 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BEEA4 80A100B8 */ lwz         r5, 0xb8(r1)
/* 807BEEA8 7FA3EB78 */ mr          r3, r29
/* 807BEEAC 80E100BC */ lwz         r7, 0xbc(r1)
/* 807BEEB0 7F84E378 */ mr          r4, r28
/* 807BEEB4 800100C0 */ lwz         r0, 0xc0(r1)
/* 807BEEB8 38C1034C */ addi        r6, r1, 0x34c
/* 807BEEBC 90A1034C */ stw         r5, 0x34c(r1)
/* 807BEEC0 38A00008 */ li          r5, 8
/* 807BEEC4 90E10350 */ stw         r7, 0x350(r1)
/* 807BEEC8 90010354 */ stw         r0, 0x354(r1)
/* 807BEECC 480005F5 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BEED0 80A100B8 */ lwz         r5, 0xb8(r1)
/* 807BEED4 7FA3EB78 */ mr          r3, r29
/* 807BEED8 80E100BC */ lwz         r7, 0xbc(r1)
/* 807BEEDC 7F84E378 */ mr          r4, r28
/* 807BEEE0 800100C0 */ lwz         r0, 0xc0(r1)
/* 807BEEE4 38C10340 */ addi        r6, r1, 0x340
/* 807BEEE8 90A10340 */ stw         r5, 0x340(r1)
/* 807BEEEC 38A0000C */ li          r5, 0xc
/* 807BEEF0 90E10344 */ stw         r7, 0x344(r1)
/* 807BEEF4 90010348 */ stw         r0, 0x348(r1)
/* 807BEEF8 480005C9 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BEEFC 80A100B8 */ lwz         r5, 0xb8(r1)
/* 807BEF00 7FA3EB78 */ mr          r3, r29
/* 807BEF04 80E100BC */ lwz         r7, 0xbc(r1)
/* 807BEF08 7F84E378 */ mr          r4, r28
/* 807BEF0C 800100C0 */ lwz         r0, 0xc0(r1)
/* 807BEF10 38C10334 */ addi        r6, r1, 0x334
/* 807BEF14 90A10334 */ stw         r5, 0x334(r1)
/* 807BEF18 38A00010 */ li          r5, 0x10
/* 807BEF1C 90E10338 */ stw         r7, 0x338(r1)
/* 807BEF20 9001033C */ stw         r0, 0x33c(r1)
/* 807BEF24 4800059D */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BEF28 80A100B8 */ lwz         r5, 0xb8(r1)
/* 807BEF2C 7FA3EB78 */ mr          r3, r29
/* 807BEF30 80E100BC */ lwz         r7, 0xbc(r1)
/* 807BEF34 7F84E378 */ mr          r4, r28
/* 807BEF38 800100C0 */ lwz         r0, 0xc0(r1)
/* 807BEF3C 38C10328 */ addi        r6, r1, 0x328
/* 807BEF40 90A10328 */ stw         r5, 0x328(r1)
/* 807BEF44 38A00014 */ li          r5, 0x14
/* 807BEF48 90E1032C */ stw         r7, 0x32c(r1)
/* 807BEF4C 90010330 */ stw         r0, 0x330(r1)
/* 807BEF50 48000571 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BEF54 80A100B8 */ lwz         r5, 0xb8(r1)
/* 807BEF58 7FA3EB78 */ mr          r3, r29
/* 807BEF5C 80E100BC */ lwz         r7, 0xbc(r1)
/* 807BEF60 7F84E378 */ mr          r4, r28
/* 807BEF64 800100C0 */ lwz         r0, 0xc0(r1)
/* 807BEF68 38C1031C */ addi        r6, r1, 0x31c
/* 807BEF6C 90A1031C */ stw         r5, 0x31c(r1)
/* 807BEF70 38A00018 */ li          r5, 0x18
/* 807BEF74 90E10320 */ stw         r7, 0x320(r1)
/* 807BEF78 90010324 */ stw         r0, 0x324(r1)
/* 807BEF7C 48000545 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BEF80 80A100B8 */ lwz         r5, 0xb8(r1)
/* 807BEF84 7FA3EB78 */ mr          r3, r29
/* 807BEF88 80E100BC */ lwz         r7, 0xbc(r1)
/* 807BEF8C 7F84E378 */ mr          r4, r28
/* 807BEF90 800100C0 */ lwz         r0, 0xc0(r1)
/* 807BEF94 38C10310 */ addi        r6, r1, 0x310
/* 807BEF98 90A10310 */ stw         r5, 0x310(r1)
/* 807BEF9C 38A0001C */ li          r5, 0x1c
/* 807BEFA0 90E10314 */ stw         r7, 0x314(r1)
/* 807BEFA4 90010318 */ stw         r0, 0x318(r1)
/* 807BEFA8 48000519 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
lbl_807befac:
/* 807BEFAC 80610430 */ lwz         r3, 0x430(r1)
/* 807BEFB0 80810434 */ lwz         r4, 0x434(r1)
/* 807BEFB4 80E10438 */ lwz         r7, 0x438(r1)
/* 807BEFB8 906100C4 */ stw         r3, 0xc4(r1)
/* 807BEFBC 908100C8 */ stw         r4, 0xc8(r1)
/* 807BEFC0 90E100CC */ stw         r7, 0xcc(r1)
/* 807BEFC4 80BB001C */ lwz         r5, 0x1c(r27)
/* 807BEFC8 90610010 */ stw         r3, 0x10(r1)
/* 807BEFCC 54A00001 */ rlwinm.     r0, r5, 0, 0, 0
/* 807BEFD0 90810014 */ stw         r4, 0x14(r1)
/* 807BEFD4 90E10018 */ stw         r7, 0x18(r1)
/* 807BEFD8 41820020 */ beq-        lbl_807beff8
/* 807BEFDC 54A0007E */ clrlwi      r0, r5, 1
/* 807BEFE0 7FA3EB78 */ mr          r3, r29
/* 807BEFE4 7C9B0214 */ add         r4, r27, r0
/* 807BEFE8 398100C4 */ addi        r12, r1, 0xc4
/* 807BEFEC 4B862465 */ bl          __ptmf_scall
/* 807BEFF0 60000000 */ nop         
/* 807BEFF4 480004B8 */ b           lbl_807bf4ac
lbl_807beff8:
/* 807BEFF8 7F7B2A14 */ add         r27, r27, r5
/* 807BEFFC 906103C4 */ stw         r3, 0x3c4(r1)
/* 807BF000 7FA3EB78 */ mr          r3, r29
/* 807BF004 38C103C4 */ addi        r6, r1, 0x3c4
/* 807BF008 908103C8 */ stw         r4, 0x3c8(r1)
/* 807BF00C 7F64DB78 */ mr          r4, r27
/* 807BF010 38A00000 */ li          r5, 0
/* 807BF014 90E103CC */ stw         r7, 0x3cc(r1)
/* 807BF018 480004A9 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BF01C 80A100C4 */ lwz         r5, 0xc4(r1)
/* 807BF020 7FA3EB78 */ mr          r3, r29
/* 807BF024 80E100C8 */ lwz         r7, 0xc8(r1)
/* 807BF028 7F64DB78 */ mr          r4, r27
/* 807BF02C 800100CC */ lwz         r0, 0xcc(r1)
/* 807BF030 38C103B8 */ addi        r6, r1, 0x3b8
/* 807BF034 90A103B8 */ stw         r5, 0x3b8(r1)
/* 807BF038 38A00004 */ li          r5, 4
/* 807BF03C 90E103BC */ stw         r7, 0x3bc(r1)
/* 807BF040 900103C0 */ stw         r0, 0x3c0(r1)
/* 807BF044 4800047D */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BF048 80A100C4 */ lwz         r5, 0xc4(r1)
/* 807BF04C 7FA3EB78 */ mr          r3, r29
/* 807BF050 80E100C8 */ lwz         r7, 0xc8(r1)
/* 807BF054 7F64DB78 */ mr          r4, r27
/* 807BF058 800100CC */ lwz         r0, 0xcc(r1)
/* 807BF05C 38C103AC */ addi        r6, r1, 0x3ac
/* 807BF060 90A103AC */ stw         r5, 0x3ac(r1)
/* 807BF064 38A00008 */ li          r5, 8
/* 807BF068 90E103B0 */ stw         r7, 0x3b0(r1)
/* 807BF06C 900103B4 */ stw         r0, 0x3b4(r1)
/* 807BF070 48000451 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BF074 80A100C4 */ lwz         r5, 0xc4(r1)
/* 807BF078 7FA3EB78 */ mr          r3, r29
/* 807BF07C 80E100C8 */ lwz         r7, 0xc8(r1)
/* 807BF080 7F64DB78 */ mr          r4, r27
/* 807BF084 800100CC */ lwz         r0, 0xcc(r1)
/* 807BF088 38C103A0 */ addi        r6, r1, 0x3a0
/* 807BF08C 90A103A0 */ stw         r5, 0x3a0(r1)
/* 807BF090 38A0000C */ li          r5, 0xc
/* 807BF094 90E103A4 */ stw         r7, 0x3a4(r1)
/* 807BF098 900103A8 */ stw         r0, 0x3a8(r1)
/* 807BF09C 48000425 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BF0A0 80A100C4 */ lwz         r5, 0xc4(r1)
/* 807BF0A4 7FA3EB78 */ mr          r3, r29
/* 807BF0A8 80E100C8 */ lwz         r7, 0xc8(r1)
/* 807BF0AC 7F64DB78 */ mr          r4, r27
/* 807BF0B0 800100CC */ lwz         r0, 0xcc(r1)
/* 807BF0B4 38C10394 */ addi        r6, r1, 0x394
/* 807BF0B8 90A10394 */ stw         r5, 0x394(r1)
/* 807BF0BC 38A00010 */ li          r5, 0x10
/* 807BF0C0 90E10398 */ stw         r7, 0x398(r1)
/* 807BF0C4 9001039C */ stw         r0, 0x39c(r1)
/* 807BF0C8 480003F9 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BF0CC 80A100C4 */ lwz         r5, 0xc4(r1)
/* 807BF0D0 7FA3EB78 */ mr          r3, r29
/* 807BF0D4 80E100C8 */ lwz         r7, 0xc8(r1)
/* 807BF0D8 7F64DB78 */ mr          r4, r27
/* 807BF0DC 800100CC */ lwz         r0, 0xcc(r1)
/* 807BF0E0 38C10388 */ addi        r6, r1, 0x388
/* 807BF0E4 90A10388 */ stw         r5, 0x388(r1)
/* 807BF0E8 38A00014 */ li          r5, 0x14
/* 807BF0EC 90E1038C */ stw         r7, 0x38c(r1)
/* 807BF0F0 90010390 */ stw         r0, 0x390(r1)
/* 807BF0F4 480003CD */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BF0F8 80A100C4 */ lwz         r5, 0xc4(r1)
/* 807BF0FC 7FA3EB78 */ mr          r3, r29
/* 807BF100 80E100C8 */ lwz         r7, 0xc8(r1)
/* 807BF104 7F64DB78 */ mr          r4, r27
/* 807BF108 800100CC */ lwz         r0, 0xcc(r1)
/* 807BF10C 38C1037C */ addi        r6, r1, 0x37c
/* 807BF110 90A1037C */ stw         r5, 0x37c(r1)
/* 807BF114 38A00018 */ li          r5, 0x18
/* 807BF118 90E10380 */ stw         r7, 0x380(r1)
/* 807BF11C 90010384 */ stw         r0, 0x384(r1)
/* 807BF120 480003A1 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BF124 80A100C4 */ lwz         r5, 0xc4(r1)
/* 807BF128 7FA3EB78 */ mr          r3, r29
/* 807BF12C 80E100C8 */ lwz         r7, 0xc8(r1)
/* 807BF130 7F64DB78 */ mr          r4, r27
/* 807BF134 800100CC */ lwz         r0, 0xcc(r1)
/* 807BF138 38C10370 */ addi        r6, r1, 0x370
/* 807BF13C 90A10370 */ stw         r5, 0x370(r1)
/* 807BF140 38A0001C */ li          r5, 0x1c
/* 807BF144 90E10374 */ stw         r7, 0x374(r1)
/* 807BF148 90010378 */ stw         r0, 0x378(r1)
/* 807BF14C 48000375 */ bl          searchMultiBlockRecursive__Q25Field16KCollisionOctreeFPUcUlMQ25Field16KCollisionOctreeFPCvPvPUs_v
/* 807BF150 4800035C */ b           lbl_807bf4ac
lbl_807bf154:
/* 807BF154 3C670001 */ addis       r3, r7, 1
/* 807BF158 2803FFFF */ cmplwi      r3, 0xffff
/* 807BF15C 41820350 */ beq-        lbl_807bf4ac
/* 807BF160 3C680001 */ addis       r3, r8, 1
/* 807BF164 2803FFFF */ cmplwi      r3, 0xffff
/* 807BF168 41820344 */ beq-        lbl_807bf4ac
/* 807BF16C 3C690001 */ addis       r3, r9, 1
/* 807BF170 2803FFFF */ cmplwi      r3, 0xffff
/* 807BF174 41820338 */ beq-        lbl_807bf4ac
/* 807BF178 2C0A0000 */ cmpwi       r10, 0
/* 807BF17C 41820330 */ beq-        lbl_807bf4ac
/* 807BF180 2C0B0000 */ cmpwi       r11, 0
/* 807BF184 41820328 */ beq-        lbl_807bf4ac
/* 807BF188 2C000000 */ cmpwi       r0, 0
/* 807BF18C 40820008 */ bne-        lbl_807bf194
/* 807BF190 4800031C */ b           lbl_807bf4ac
lbl_807bf194:
/* 807BF194 7CA4282E */ lwzx        r5, r4, r5
/* 807BF198 54A30001 */ rlwinm.     r3, r5, 0, 0, 0
/* 807BF19C 41820020 */ beq-        lbl_807bf1bc
/* 807BF1A0 54A0007E */ clrlwi      r0, r5, 1
/* 807BF1A4 7FA3EB78 */ mr          r3, r29
/* 807BF1A8 7FECFB78 */ mr          r12, r31
/* 807BF1AC 7C840214 */ add         r4, r4, r0
/* 807BF1B0 4B8622A1 */ bl          __ptmf_scall
/* 807BF1B4 60000000 */ nop         
/* 807BF1B8 480002F4 */ b           lbl_807bf4ac
lbl_807bf1bc:
/* 807BF1BC 54EC0801 */ rlwinm.     r12, r7, 1, 0, 0
/* 807BF1C0 7FC42A14 */ add         r30, r4, r5
/* 807BF1C4 54F2083C */ slwi        r18, r7, 1
/* 807BF1C8 5511083C */ slwi        r17, r8, 1
/* 807BF1CC 5524083C */ slwi        r4, r9, 1
/* 807BF1D0 5543083C */ slwi        r3, r10, 1
/* 807BF1D4 556B083C */ slwi        r11, r11, 1
/* 807BF1D8 5400083C */ slwi        r0, r0, 1
/* 807BF1DC 3B40FFFF */ li          r26, -1
/* 807BF1E0 40820008 */ bne-        lbl_807bf1e8
/* 807BF1E4 7E5A9378 */ mr          r26, r18
lbl_807bf1e8:
/* 807BF1E8 7CAC00D0 */ neg         r5, r12
/* 807BF1EC 56270001 */ rlwinm.     r7, r17, 0, 0, 0
/* 807BF1F0 7CA56378 */ or          r5, r5, r12
/* 807BF1F4 3B00FFFF */ li          r24, -1
/* 807BF1F8 7CA5FE70 */ srawi       r5, r5, 0x1f
/* 807BF1FC 7E592838 */ and         r25, r18, r5
/* 807BF200 40820008 */ bne-        lbl_807bf208
/* 807BF204 7E388B78 */ mr          r24, r17
lbl_807bf208:
/* 807BF208 7CA700D0 */ neg         r5, r7
/* 807BF20C 54880001 */ rlwinm.     r8, r4, 0, 0, 0
/* 807BF210 7CA53B78 */ or          r5, r5, r7
/* 807BF214 3AC0FFFF */ li          r22, -1
/* 807BF218 7CA5FE70 */ srawi       r5, r5, 0x1f
/* 807BF21C 7E372838 */ and         r23, r17, r5
/* 807BF220 40820008 */ bne-        lbl_807bf228
/* 807BF224 7C962378 */ mr          r22, r4
lbl_807bf228:
/* 807BF228 54670001 */ rlwinm.     r7, r3, 0, 0, 0
/* 807BF22C 7CA800D0 */ neg         r5, r8
/* 807BF230 7CA74378 */ or          r7, r5, r8
/* 807BF234 3A60FFFF */ li          r19, -1
/* 807BF238 54650FFE */ srwi        r5, r3, 0x1f
/* 807BF23C 7CE7FE70 */ srawi       r7, r7, 0x1f
/* 807BF240 7CA500D0 */ neg         r5, r5
/* 807BF244 7C953838 */ and         r21, r4, r7
/* 807BF248 7C742838 */ and         r20, r3, r5
/* 807BF24C 40820008 */ bne-        lbl_807bf254
/* 807BF250 7C731B78 */ mr          r19, r3
lbl_807bf254:
/* 807BF254 55630001 */ rlwinm.     r3, r11, 0, 0, 0
/* 807BF258 3B60FFFF */ li          r27, -1
/* 807BF25C 55630FFE */ srwi        r3, r11, 0x1f
/* 807BF260 7C6300D0 */ neg         r3, r3
/* 807BF264 7D721838 */ and         r18, r11, r3
/* 807BF268 40820008 */ bne-        lbl_807bf270
/* 807BF26C 7D7B5B78 */ mr          r27, r11
lbl_807bf270:
/* 807BF270 54030001 */ rlwinm.     r3, r0, 0, 0, 0
/* 807BF274 3B80FFFF */ li          r28, -1
/* 807BF278 54030FFE */ srwi        r3, r0, 0x1f
/* 807BF27C 7C6300D0 */ neg         r3, r3
/* 807BF280 7C111838 */ and         r17, r0, r3
/* 807BF284 40820008 */ bne-        lbl_807bf28c
/* 807BF288 7C1C0378 */ mr          r28, r0
lbl_807bf28c:
/* 807BF28C 80A60000 */ lwz         r5, 0(r6)
/* 807BF290 7FA3EB78 */ mr          r3, r29
/* 807BF294 80060004 */ lwz         r0, 4(r6)
/* 807BF298 7FC4F378 */ mr          r4, r30
/* 807BF29C 90010428 */ stw         r0, 0x428(r1)
/* 807BF2A0 7F47D378 */ mr          r7, r26
/* 807BF2A4 7F08C378 */ mr          r8, r24
/* 807BF2A8 7EC9B378 */ mr          r9, r22
/* 807BF2AC 90A10424 */ stw         r5, 0x424(r1)
/* 807BF2B0 7E6A9B78 */ mr          r10, r19
/* 807BF2B4 38A00000 */ li          r5, 0
/* 807BF2B8 80060008 */ lwz         r0, 8(r6)
/* 807BF2BC 38C10424 */ addi        r6, r1, 0x424
/* 807BF2C0 9001042C */ stw         r0, 0x42c(r1)
/* 807BF2C4 93610008 */ stw         r27, 8(r1)
/* 807BF2C8 9381000C */ stw         r28, 0xc(r1)
/* 807BF2CC 4BFFF0F9 */ bl          searchMultiBlockRecursiveAll__Q25Field8RKGndColFPUcUlMQ25Field8RKGndColFPCvPvPUs_vllllll
/* 807BF2D0 80BF0000 */ lwz         r5, 0(r31)
/* 807BF2D4 7FA3EB78 */ mr          r3, r29
/* 807BF2D8 801F0004 */ lwz         r0, 4(r31)
/* 807BF2DC 7FC4F378 */ mr          r4, r30
/* 807BF2E0 9001041C */ stw         r0, 0x41c(r1)
/* 807BF2E4 7F27CB78 */ mr          r7, r25
/* 807BF2E8 7F08C378 */ mr          r8, r24
/* 807BF2EC 7EC9B378 */ mr          r9, r22
/* 807BF2F0 90A10418 */ stw         r5, 0x418(r1)
/* 807BF2F4 7E8AA378 */ mr          r10, r20
/* 807BF2F8 38C10418 */ addi        r6, r1, 0x418
/* 807BF2FC 38A00004 */ li          r5, 4
/* 807BF300 801F0008 */ lwz         r0, 8(r31)
/* 807BF304 90010420 */ stw         r0, 0x420(r1)
/* 807BF308 93610008 */ stw         r27, 8(r1)
/* 807BF30C 9381000C */ stw         r28, 0xc(r1)
/* 807BF310 4BFFF0B5 */ bl          searchMultiBlockRecursiveAll__Q25Field8RKGndColFPUcUlMQ25Field8RKGndColFPCvPvPUs_vllllll
/* 807BF314 80BF0000 */ lwz         r5, 0(r31)
/* 807BF318 7FA3EB78 */ mr          r3, r29
/* 807BF31C 801F0004 */ lwz         r0, 4(r31)
/* 807BF320 7FC4F378 */ mr          r4, r30
/* 807BF324 90010410 */ stw         r0, 0x410(r1)
/* 807BF328 7F47D378 */ mr          r7, r26
/* 807BF32C 7EE8BB78 */ mr          r8, r23
/* 807BF330 7EC9B378 */ mr          r9, r22
/* 807BF334 90A1040C */ stw         r5, 0x40c(r1)
/* 807BF338 7E6A9B78 */ mr          r10, r19
/* 807BF33C 38C1040C */ addi        r6, r1, 0x40c
/* 807BF340 38A00008 */ li          r5, 8
/* 807BF344 801F0008 */ lwz         r0, 8(r31)
/* 807BF348 90010414 */ stw         r0, 0x414(r1)
/* 807BF34C 92410008 */ stw         r18, 8(r1)
/* 807BF350 9381000C */ stw         r28, 0xc(r1)
/* 807BF354 4BFFF071 */ bl          searchMultiBlockRecursiveAll__Q25Field8RKGndColFPUcUlMQ25Field8RKGndColFPCvPvPUs_vllllll
/* 807BF358 80BF0000 */ lwz         r5, 0(r31)
/* 807BF35C 7FA3EB78 */ mr          r3, r29
/* 807BF360 801F0004 */ lwz         r0, 4(r31)
/* 807BF364 7FC4F378 */ mr          r4, r30
/* 807BF368 90010404 */ stw         r0, 0x404(r1)
/* 807BF36C 7F27CB78 */ mr          r7, r25
/* 807BF370 7EE8BB78 */ mr          r8, r23
/* 807BF374 7EC9B378 */ mr          r9, r22
/* 807BF378 90A10400 */ stw         r5, 0x400(r1)
/* 807BF37C 7E8AA378 */ mr          r10, r20
/* 807BF380 38C10400 */ addi        r6, r1, 0x400
/* 807BF384 38A0000C */ li          r5, 0xc
/* 807BF388 801F0008 */ lwz         r0, 8(r31)
/* 807BF38C 90010408 */ stw         r0, 0x408(r1)
/* 807BF390 92410008 */ stw         r18, 8(r1)
/* 807BF394 9381000C */ stw         r28, 0xc(r1)
/* 807BF398 4BFFF02D */ bl          searchMultiBlockRecursiveAll__Q25Field8RKGndColFPUcUlMQ25Field8RKGndColFPCvPvPUs_vllllll
/* 807BF39C 80BF0000 */ lwz         r5, 0(r31)
/* 807BF3A0 7FA3EB78 */ mr          r3, r29
/* 807BF3A4 801F0004 */ lwz         r0, 4(r31)
/* 807BF3A8 7FC4F378 */ mr          r4, r30
/* 807BF3AC 900103F8 */ stw         r0, 0x3f8(r1)
/* 807BF3B0 7F47D378 */ mr          r7, r26
/* 807BF3B4 7F08C378 */ mr          r8, r24
/* 807BF3B8 7EA9AB78 */ mr          r9, r21
/* 807BF3BC 90A103F4 */ stw         r5, 0x3f4(r1)
/* 807BF3C0 7E6A9B78 */ mr          r10, r19
/* 807BF3C4 38C103F4 */ addi        r6, r1, 0x3f4
/* 807BF3C8 38A00010 */ li          r5, 0x10
/* 807BF3CC 801F0008 */ lwz         r0, 8(r31)
/* 807BF3D0 900103FC */ stw         r0, 0x3fc(r1)
/* 807BF3D4 93610008 */ stw         r27, 8(r1)
/* 807BF3D8 9221000C */ stw         r17, 0xc(r1)
/* 807BF3DC 4BFFEFE9 */ bl          searchMultiBlockRecursiveAll__Q25Field8RKGndColFPUcUlMQ25Field8RKGndColFPCvPvPUs_vllllll
/* 807BF3E0 80BF0000 */ lwz         r5, 0(r31)
/* 807BF3E4 7FA3EB78 */ mr          r3, r29
/* 807BF3E8 801F0004 */ lwz         r0, 4(r31)
/* 807BF3EC 7FC4F378 */ mr          r4, r30
/* 807BF3F0 900103EC */ stw         r0, 0x3ec(r1)
/* 807BF3F4 7F27CB78 */ mr          r7, r25
/* 807BF3F8 7F08C378 */ mr          r8, r24
/* 807BF3FC 7EA9AB78 */ mr          r9, r21
/* 807BF400 90A103E8 */ stw         r5, 0x3e8(r1)
/* 807BF404 7E8AA378 */ mr          r10, r20
/* 807BF408 38C103E8 */ addi        r6, r1, 0x3e8
/* 807BF40C 38A00014 */ li          r5, 0x14
/* 807BF410 801F0008 */ lwz         r0, 8(r31)
/* 807BF414 900103F0 */ stw         r0, 0x3f0(r1)
/* 807BF418 93610008 */ stw         r27, 8(r1)
/* 807BF41C 9221000C */ stw         r17, 0xc(r1)
/* 807BF420 4BFFEFA5 */ bl          searchMultiBlockRecursiveAll__Q25Field8RKGndColFPUcUlMQ25Field8RKGndColFPCvPvPUs_vllllll
/* 807BF424 80BF0000 */ lwz         r5, 0(r31)
/* 807BF428 7FA3EB78 */ mr          r3, r29
/* 807BF42C 801F0004 */ lwz         r0, 4(r31)
/* 807BF430 7FC4F378 */ mr          r4, r30
/* 807BF434 900103E0 */ stw         r0, 0x3e0(r1)
/* 807BF438 7F47D378 */ mr          r7, r26
/* 807BF43C 7EE8BB78 */ mr          r8, r23
/* 807BF440 7EA9AB78 */ mr          r9, r21
/* 807BF444 90A103DC */ stw         r5, 0x3dc(r1)
/* 807BF448 7E6A9B78 */ mr          r10, r19
/* 807BF44C 38C103DC */ addi        r6, r1, 0x3dc
/* 807BF450 38A00018 */ li          r5, 0x18
/* 807BF454 801F0008 */ lwz         r0, 8(r31)
/* 807BF458 900103E4 */ stw         r0, 0x3e4(r1)
/* 807BF45C 92410008 */ stw         r18, 8(r1)
/* 807BF460 9221000C */ stw         r17, 0xc(r1)
/* 807BF464 4BFFEF61 */ bl          searchMultiBlockRecursiveAll__Q25Field8RKGndColFPUcUlMQ25Field8RKGndColFPCvPvPUs_vllllll
/* 807BF468 80BF0000 */ lwz         r5, 0(r31)
/* 807BF46C 7FA3EB78 */ mr          r3, r29
/* 807BF470 801F0004 */ lwz         r0, 4(r31)
/* 807BF474 7FC4F378 */ mr          r4, r30
/* 807BF478 900103D4 */ stw         r0, 0x3d4(r1)
/* 807BF47C 7F27CB78 */ mr          r7, r25
/* 807BF480 7EE8BB78 */ mr          r8, r23
/* 807BF484 7EA9AB78 */ mr          r9, r21
/* 807BF488 90A103D0 */ stw         r5, 0x3d0(r1)
/* 807BF48C 7E8AA378 */ mr          r10, r20
/* 807BF490 38C103D0 */ addi        r6, r1, 0x3d0
/* 807BF494 38A0001C */ li          r5, 0x1c
/* 807BF498 801F0008 */ lwz         r0, 8(r31)
/* 807BF49C 900103D8 */ stw         r0, 0x3d8(r1)
/* 807BF4A0 92410008 */ stw         r18, 8(r1)
/* 807BF4A4 9221000C */ stw         r17, 0xc(r1)
/* 807BF4A8 4BFFEF1D */ bl          searchMultiBlockRecursiveAll__Q25Field8RKGndColFPUcUlMQ25Field8RKGndColFPCvPvPUs_vllllll
lbl_807bf4ac:
/* 807BF4AC BA210444 */ lmw         r17, 0x444(r1)
/* 807BF4B0 80010484 */ lwz         r0, 0x484(r1)
/* 807BF4B4 7C0803A6 */ mtlr        r0
/* 807BF4B8 38210480 */ addi        r1, r1, 0x480
/* 807BF4BC 4E800020 */ blr         