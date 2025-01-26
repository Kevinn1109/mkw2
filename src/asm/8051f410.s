nofralloc
/* 8051F410 9421FF40 */ stwu        r1, -0xc0(r1)
/* 8051F414 7C0802A6 */ mflr        r0
/* 8051F418 900100C4 */ stw         r0, 0xc4(r1)
/* 8051F41C 396100C0 */ addi        r11, r1, 0xc0
/* 8051F420 4BB0214D */ bl          _savegpr_14
/* 8051F424 88040029 */ lbz         r0, 0x29(r4)
/* 8051F428 7CBD2B78 */ mr          r29, r5
/* 8051F42C A1C40000 */ lhz         r14, 0(r4)
/* 8051F430 7CDE3378 */ mr          r30, r6
/* 8051F434 7C000775 */ extsb.      r0, r0
/* 8051F438 A0040002 */ lhz         r0, 2(r4)
/* 8051F43C A204000C */ lhz         r16, 0xc(r4)
/* 8051F440 3FE08089 */ lis         r31, lbl_8088fcb0@ha
/* 8051F444 90010060 */ stw         r0, 0x60(r1)
/* 8051F448 3DE04330 */ lis         r15, 0x4330
/* 8051F44C A0040004 */ lhz         r0, 4(r4)
/* 8051F450 7C7C1B78 */ mr          r28, r3
/* 8051F454 90010064 */ stw         r0, 0x64(r1)
/* 8051F458 3BFFFCB0 */ addi        r31, r31, lbl_8088fcb0@l
/* 8051F45C A0040006 */ lhz         r0, 6(r4)
/* 8051F460 90010068 */ stw         r0, 0x68(r1)
/* 8051F464 A0040008 */ lhz         r0, 8(r4)
/* 8051F468 B1C10008 */ sth         r14, 8(r1)
/* 8051F46C 81C10060 */ lwz         r14, 0x60(r1)
/* 8051F470 9001006C */ stw         r0, 0x6c(r1)
/* 8051F474 A004000A */ lhz         r0, 0xa(r4)
/* 8051F478 B1C1000A */ sth         r14, 0xa(r1)
/* 8051F47C 81C10064 */ lwz         r14, 0x64(r1)
/* 8051F480 90010070 */ stw         r0, 0x70(r1)
/* 8051F484 A224000E */ lhz         r17, 0xe(r4)
/* 8051F488 B1C1000C */ sth         r14, 0xc(r1)
/* 8051F48C 81C10068 */ lwz         r14, 0x68(r1)
/* 8051F490 B1C1000E */ sth         r14, 0xe(r1)
/* 8051F494 81C1006C */ lwz         r14, 0x6c(r1)
/* 8051F498 A2440010 */ lhz         r18, 0x10(r4)
/* 8051F49C A2640012 */ lhz         r19, 0x12(r4)
/* 8051F4A0 A2840014 */ lhz         r20, 0x14(r4)
/* 8051F4A4 A2A40016 */ lhz         r21, 0x16(r4)
/* 8051F4A8 A2C40018 */ lhz         r22, 0x18(r4)
/* 8051F4AC A2E4001A */ lhz         r23, 0x1a(r4)
/* 8051F4B0 A304001C */ lhz         r24, 0x1c(r4)
/* 8051F4B4 A324001E */ lhz         r25, 0x1e(r4)
/* 8051F4B8 A3440020 */ lhz         r26, 0x20(r4)
/* 8051F4BC A3640022 */ lhz         r27, 0x22(r4)
/* 8051F4C0 A1840024 */ lhz         r12, 0x24(r4)
/* 8051F4C4 A1640026 */ lhz         r11, 0x26(r4)
/* 8051F4C8 A1440028 */ lhz         r10, 0x28(r4)
/* 8051F4CC A124002A */ lhz         r9, 0x2a(r4)
/* 8051F4D0 A104002C */ lhz         r8, 0x2c(r4)
/* 8051F4D4 A0E4002E */ lhz         r7, 0x2e(r4)
/* 8051F4D8 A0C40030 */ lhz         r6, 0x30(r4)
/* 8051F4DC A0A40032 */ lhz         r5, 0x32(r4)
/* 8051F4E0 A0040034 */ lhz         r0, 0x34(r4)
/* 8051F4E4 B1C10010 */ sth         r14, 0x10(r1)
/* 8051F4E8 81C10070 */ lwz         r14, 0x70(r1)
/* 8051F4EC 91E10040 */ stw         r15, 0x40(r1)
/* 8051F4F0 3DE04330 */ lis         r15, 0x4330
/* 8051F4F4 91E10048 */ stw         r15, 0x48(r1)
/* 8051F4F8 B1C10012 */ sth         r14, 0x12(r1)
/* 8051F4FC B2010014 */ sth         r16, 0x14(r1)
/* 8051F500 B2210016 */ sth         r17, 0x16(r1)
/* 8051F504 B2410018 */ sth         r18, 0x18(r1)
/* 8051F508 B261001A */ sth         r19, 0x1a(r1)
/* 8051F50C B281001C */ sth         r20, 0x1c(r1)
/* 8051F510 B2A1001E */ sth         r21, 0x1e(r1)
/* 8051F514 B2C10020 */ sth         r22, 0x20(r1)
/* 8051F518 B2E10022 */ sth         r23, 0x22(r1)
/* 8051F51C B3010024 */ sth         r24, 0x24(r1)
/* 8051F520 B3210026 */ sth         r25, 0x26(r1)
/* 8051F524 B3410028 */ sth         r26, 0x28(r1)
/* 8051F528 B361002A */ sth         r27, 0x2a(r1)
/* 8051F52C B181002C */ sth         r12, 0x2c(r1)
/* 8051F530 B161002E */ sth         r11, 0x2e(r1)
/* 8051F534 B1410030 */ sth         r10, 0x30(r1)
/* 8051F538 B1210032 */ sth         r9, 0x32(r1)
/* 8051F53C B1010034 */ sth         r8, 0x34(r1)
/* 8051F540 B0E10036 */ sth         r7, 0x36(r1)
/* 8051F544 B0C10038 */ sth         r6, 0x38(r1)
/* 8051F548 B0A1003A */ sth         r5, 0x3a(r1)
/* 8051F54C B001003C */ sth         r0, 0x3c(r1)
/* 8051F550 40820038 */ bne-        lbl_8051f588
/* 8051F554 88040028 */ lbz         r0, 0x28(r4)
/* 8051F558 28000002 */ cmplwi      r0, 2
/* 8051F55C 4082002C */ bne-        lbl_8051f588
/* 8051F560 88840036 */ lbz         r4, 0x36(r4)
/* 8051F564 380400FA */ addi        r0, r4, 0xfa
/* 8051F568 5400063E */ clrlwi      r0, r0, 0x18
/* 8051F56C 28000002 */ cmplwi      r0, 2
/* 8051F570 41810018 */ bgt-        lbl_8051f588
/* 8051F574 806308D4 */ lwz         r3, 0x8d4(r3)
/* 8051F578 38810008 */ addi        r4, r1, 8
/* 8051F57C 38A00002 */ li          r5, 2
/* 8051F580 4BCABDE5 */ bl          unk_801cb364
/* 8051F584 48000020 */ b           lbl_8051f5a4
lbl_8051f588:
/* 8051F588 38800000 */ li          r4, 0
/* 8051F58C B0810034 */ sth         r4, 0x34(r1)
/* 8051F590 B0810036 */ sth         r4, 0x36(r1)
/* 8051F594 A00308F8 */ lhz         r0, 0x8f8(r3)
/* 8051F598 B0010032 */ sth         r0, 0x32(r1)
/* 8051F59C 9881003C */ stb         r4, 0x3c(r1)
/* 8051F5A0 9881003D */ stb         r4, 0x3d(r1)
lbl_8051f5a4:
/* 8051F5A4 A0010008 */ lhz         r0, 8(r1)
/* 8051F5A8 A0610032 */ lhz         r3, 0x32(r1)
/* 8051F5AC 54000421 */ rlwinm.     r0, r0, 0, 0x10, 0x10
/* 8051F5B0 41820008 */ beq-        lbl_8051f5b8
/* 8051F5B4 60630800 */ ori         r3, r3, 0x800
lbl_8051f5b8:
/* 8051F5B8 8801003C */ lbz         r0, 0x3c(r1)
/* 8051F5BC 28000096 */ cmplwi      r0, 0x96
/* 8051F5C0 4180000C */ blt-        lbl_8051f5cc
/* 8051F5C4 60602000 */ ori         r0, r3, 0x2000
/* 8051F5C8 5403043E */ clrlwi      r3, r0, 0x10
lbl_8051f5cc:
/* 8051F5CC 8801003D */ lbz         r0, 0x3d(r1)
/* 8051F5D0 28000096 */ cmplwi      r0, 0x96
/* 8051F5D4 4180000C */ blt-        lbl_8051f5e0
/* 8051F5D8 60600200 */ ori         r0, r3, 0x200
/* 8051F5DC 5403043E */ clrlwi      r3, r0, 0x10
lbl_8051f5e0:
/* 8051F5E0 A09C08F8 */ lhz         r4, 0x8f8(r28)
/* 8051F5E4 546006F7 */ rlwinm.     r0, r3, 0, 0x1b, 0x1b
/* 8051F5E8 38C00000 */ li          r6, 0
/* 8051F5EC 7C642078 */ andc        r4, r3, r4
/* 8051F5F0 5487043E */ clrlwi      r7, r4, 0x10
/* 8051F5F4 41820008 */ beq-        lbl_8051f5fc
/* 8051F5F8 60C60001 */ ori         r6, r6, 1
lbl_8051f5fc:
/* 8051F5FC 5464043E */ clrlwi      r4, r3, 0x10
/* 8051F600 70850240 */ andi.       r5, r4, 0x240
/* 8051F604 4182000C */ beq-        lbl_8051f610
/* 8051F608 60C40002 */ ori         r4, r6, 2
/* 8051F60C 5486043E */ clrlwi      r6, r4, 0x10
lbl_8051f610:
/* 8051F610 546404A5 */ rlwinm.     r4, r3, 0, 0x12, 0x12
/* 8051F614 4182000C */ beq-        lbl_8051f620
/* 8051F618 60C40004 */ ori         r4, r6, 4
/* 8051F61C 5486043E */ clrlwi      r6, r4, 0x10
lbl_8051f620:
/* 8051F620 2C000000 */ cmpwi       r0, 0
/* 8051F624 41820034 */ beq-        lbl_8051f658
/* 8051F628 2C050000 */ cmpwi       r5, 0
/* 8051F62C 4182002C */ beq-        lbl_8051f658
/* 8051F630 70E40240 */ andi.       r4, r7, 0x240
/* 8051F634 4182000C */ beq-        lbl_8051f640
/* 8051F638 38800001 */ li          r4, 1
/* 8051F63C 989C0904 */ stb         r4, 0x904(r28)
lbl_8051f640:
/* 8051F640 889C0904 */ lbz         r4, 0x904(r28)
/* 8051F644 2C040000 */ cmpwi       r4, 0
/* 8051F648 41820018 */ beq-        lbl_8051f660
/* 8051F64C 60C40008 */ ori         r4, r6, 8
/* 8051F650 5486043E */ clrlwi      r6, r4, 0x10
/* 8051F654 4800000C */ b           lbl_8051f660
lbl_8051f658:
/* 8051F658 38800000 */ li          r4, 0
/* 8051F65C 989C0904 */ stb         r4, 0x904(r28)
lbl_8051f660:
/* 8051F660 5464073B */ rlwinm.     r4, r3, 0, 0x1c, 0x1d
/* 8051F664 4182000C */ beq-        lbl_8051f670
/* 8051F668 60C40020 */ ori         r4, r6, 0x20
/* 8051F66C 5486043E */ clrlwi      r6, r4, 0x10
lbl_8051f670:
/* 8051F670 54E407FF */ clrlwi.     r4, r7, 0x1f
/* 8051F674 B0DD0004 */ sth         r6, 4(r29)
/* 8051F678 B07D0006 */ sth         r3, 6(r29)
/* 8051F67C 41820048 */ beq-        lbl_8051f6c4
/* 8051F680 38A00001 */ li          r5, 1
/* 8051F684 98BD0013 */ stb         r5, 0x13(r29)
/* 8051F688 3C80809C */ lis         r4, spInstance__Q26System12KPadDirector@ha
/* 8051F68C 8084D70C */ lwz         r4, spInstance__Q26System12KPadDirector@l(r4)
/* 8051F690 88844155 */ lbz         r4, 0x4155(r4)
/* 8051F694 2C040000 */ cmpwi       r4, 0
/* 8051F698 41820024 */ beq-        lbl_8051f6bc
/* 8051F69C 2C050003 */ cmpwi       r5, 3
/* 8051F6A0 41820010 */ beq-        lbl_8051f6b0
/* 8051F6A4 2C050004 */ cmpwi       r5, 4
/* 8051F6A8 41820010 */ beq-        lbl_8051f6b8
/* 8051F6AC 48000010 */ b           lbl_8051f6bc
lbl_8051f6b0:
/* 8051F6B0 38A00004 */ li          r5, 4
/* 8051F6B4 48000008 */ b           lbl_8051f6bc
lbl_8051f6b8:
/* 8051F6B8 38A00003 */ li          r5, 3
lbl_8051f6bc:
/* 8051F6BC 98BD0012 */ stb         r5, 0x12(r29)
/* 8051F6C0 480000E4 */ b           lbl_8051f7a4
lbl_8051f6c4:
/* 8051F6C4 54E40463 */ rlwinm.     r4, r7, 0, 0x11, 0x11
/* 8051F6C8 41820048 */ beq-        lbl_8051f710
/* 8051F6CC 38A00002 */ li          r5, 2
/* 8051F6D0 98BD0013 */ stb         r5, 0x13(r29)
/* 8051F6D4 3C80809C */ lis         r4, spInstance__Q26System12KPadDirector@ha
/* 8051F6D8 8084D70C */ lwz         r4, spInstance__Q26System12KPadDirector@l(r4)
/* 8051F6DC 88844155 */ lbz         r4, 0x4155(r4)
/* 8051F6E0 2C040000 */ cmpwi       r4, 0
/* 8051F6E4 41820024 */ beq-        lbl_8051f708
/* 8051F6E8 2C050003 */ cmpwi       r5, 3
/* 8051F6EC 41820010 */ beq-        lbl_8051f6fc
/* 8051F6F0 2C050004 */ cmpwi       r5, 4
/* 8051F6F4 41820010 */ beq-        lbl_8051f704
/* 8051F6F8 48000010 */ b           lbl_8051f708
lbl_8051f6fc:
/* 8051F6FC 38A00004 */ li          r5, 4
/* 8051F700 48000008 */ b           lbl_8051f708
lbl_8051f704:
/* 8051F704 38A00003 */ li          r5, 3
lbl_8051f708:
/* 8051F708 98BD0012 */ stb         r5, 0x12(r29)
/* 8051F70C 48000098 */ b           lbl_8051f7a4
lbl_8051f710:
/* 8051F710 54E40421 */ rlwinm.     r4, r7, 0, 0x10, 0x10
/* 8051F714 41820048 */ beq-        lbl_8051f75c
/* 8051F718 38A00004 */ li          r5, 4
/* 8051F71C 98BD0013 */ stb         r5, 0x13(r29)
/* 8051F720 3C80809C */ lis         r4, spInstance__Q26System12KPadDirector@ha
/* 8051F724 8084D70C */ lwz         r4, spInstance__Q26System12KPadDirector@l(r4)
/* 8051F728 88844155 */ lbz         r4, 0x4155(r4)
/* 8051F72C 2C040000 */ cmpwi       r4, 0
/* 8051F730 41820024 */ beq-        lbl_8051f754
/* 8051F734 2C050003 */ cmpwi       r5, 3
/* 8051F738 41820010 */ beq-        lbl_8051f748
/* 8051F73C 2C050004 */ cmpwi       r5, 4
/* 8051F740 41820010 */ beq-        lbl_8051f750
/* 8051F744 48000010 */ b           lbl_8051f754
lbl_8051f748:
/* 8051F748 38A00004 */ li          r5, 4
/* 8051F74C 48000008 */ b           lbl_8051f754
lbl_8051f750:
/* 8051F750 38A00003 */ li          r5, 3
lbl_8051f754:
/* 8051F754 98BD0012 */ stb         r5, 0x12(r29)
/* 8051F758 4800004C */ b           lbl_8051f7a4
lbl_8051f75c:
/* 8051F75C 54E407BD */ rlwinm.     r4, r7, 0, 0x1e, 0x1e
/* 8051F760 41820044 */ beq-        lbl_8051f7a4
/* 8051F764 38A00003 */ li          r5, 3
/* 8051F768 98BD0013 */ stb         r5, 0x13(r29)
/* 8051F76C 3C80809C */ lis         r4, spInstance__Q26System12KPadDirector@ha
/* 8051F770 8084D70C */ lwz         r4, spInstance__Q26System12KPadDirector@l(r4)
/* 8051F774 88844155 */ lbz         r4, 0x4155(r4)
/* 8051F778 2C040000 */ cmpwi       r4, 0
/* 8051F77C 41820024 */ beq-        lbl_8051f7a0
/* 8051F780 2C050003 */ cmpwi       r5, 3
/* 8051F784 41820010 */ beq-        lbl_8051f794
/* 8051F788 2C050004 */ cmpwi       r5, 4
/* 8051F78C 41820010 */ beq-        lbl_8051f79c
/* 8051F790 48000010 */ b           lbl_8051f7a0
lbl_8051f794:
/* 8051F794 38A00004 */ li          r5, 4
/* 8051F798 48000008 */ b           lbl_8051f7a0
lbl_8051f79c:
/* 8051F79C 38A00003 */ li          r5, 3
lbl_8051f7a0:
/* 8051F7A0 98BD0012 */ stb         r5, 0x12(r29)
lbl_8051f7a4:
/* 8051F7A4 88810031 */ lbz         r4, 0x31(r1)
/* 8051F7A8 7C840775 */ extsb.      r4, r4
/* 8051F7AC 40820170 */ bne-        lbl_8051f91c
/* 8051F7B0 A8810034 */ lha         r4, 0x34(r1)
/* 8051F7B4 C83F0030 */ lfd         f1, 0x30(r31)
/* 8051F7B8 6C848000 */ xoris       r4, r4, 0x8000
/* 8051F7BC 90810044 */ stw         r4, 0x44(r1)
/* 8051F7C0 C05F0028 */ lfs         f2, 0x28(r31)
/* 8051F7C4 C8010040 */ lfd         f0, 0x40(r1)
/* 8051F7C8 EC000828 */ fsubs       f0, f0, f1
/* 8051F7CC FC001040 */ fcmpo       cr0, f0, f2
/* 8051F7D0 40800008 */ bge-        lbl_8051f7d8
/* 8051F7D4 48000010 */ b           lbl_8051f7e4
lbl_8051f7d8:
/* 8051F7D8 9081004C */ stw         r4, 0x4c(r1)
/* 8051F7DC C8010048 */ lfd         f0, 0x48(r1)
/* 8051F7E0 EC400828 */ fsubs       f2, f0, f1
lbl_8051f7e4:
/* 8051F7E4 C01F002C */ lfs         f0, 0x2c(r31)
/* 8051F7E8 FC020040 */ fcmpo       cr0, f2, f0
/* 8051F7EC 40810008 */ ble-        lbl_8051f7f4
/* 8051F7F0 FC400090 */ fmr         f2, f0
lbl_8051f7f4:
/* 8051F7F4 A8810036 */ lha         r4, 0x36(r1)
/* 8051F7F8 C83F0030 */ lfd         f1, 0x30(r31)
/* 8051F7FC 6C848000 */ xoris       r4, r4, 0x8000
/* 8051F800 90810044 */ stw         r4, 0x44(r1)
/* 8051F804 C07F0028 */ lfs         f3, 0x28(r31)
/* 8051F808 C8010040 */ lfd         f0, 0x40(r1)
/* 8051F80C EC000828 */ fsubs       f0, f0, f1
/* 8051F810 FC001840 */ fcmpo       cr0, f0, f3
/* 8051F814 40800008 */ bge-        lbl_8051f81c
/* 8051F818 48000010 */ b           lbl_8051f828
lbl_8051f81c:
/* 8051F81C 9081004C */ stw         r4, 0x4c(r1)
/* 8051F820 C8010048 */ lfd         f0, 0x48(r1)
/* 8051F824 EC600828 */ fsubs       f3, f0, f1
lbl_8051f828:
/* 8051F828 C01F002C */ lfs         f0, 0x2c(r31)
/* 8051F82C FC030040 */ fcmpo       cr0, f3, f0
/* 8051F830 40810008 */ ble-        lbl_8051f838
/* 8051F834 FC600090 */ fmr         f3, f0
lbl_8051f838:
/* 8051F838 C03F002C */ lfs         f1, 0x2c(r31)
/* 8051F83C 3C80809C */ lis         r4, lbl_809bd704@ha
/* 8051F840 C004D704 */ lfs         f0, lbl_809bd704@l(r4)
/* 8051F844 3C80809C */ lis         r4, spInstance__Q26System12KPadDirector@ha
/* 8051F848 EC21102A */ fadds       f1, f1, f2
/* 8051F84C EC000072 */ fmuls       f0, f0, f1
/* 8051F850 FC00001E */ fctiwz      f0, f0
/* 8051F854 D8010050 */ stfd        f0, 0x50(r1)
/* 8051F858 80A10054 */ lwz         r5, 0x54(r1)
/* 8051F85C 98BD0010 */ stb         r5, 0x10(r29)
/* 8051F860 8084D70C */ lwz         r4, spInstance__Q26System12KPadDirector@l(r4)
/* 8051F864 88844155 */ lbz         r4, 0x4155(r4)
/* 8051F868 2C040000 */ cmpwi       r4, 0
/* 8051F86C 41820034 */ beq-        lbl_8051f8a0
/* 8051F870 D8010050 */ stfd        f0, 0x50(r1)
/* 8051F874 C85F0020 */ lfd         f2, 0x20(r31)
/* 8051F878 80810054 */ lwz         r4, 0x54(r1)
/* 8051F87C C03F0018 */ lfs         f1, 0x18(r31)
/* 8051F880 5484063E */ clrlwi      r4, r4, 0x18
/* 8051F884 90810044 */ stw         r4, 0x44(r1)
/* 8051F888 C8010040 */ lfd         f0, 0x40(r1)
/* 8051F88C EC001028 */ fsubs       f0, f0, f2
/* 8051F890 EC000828 */ fsubs       f0, f0, f1
/* 8051F894 EC000824 */ fdivs       f0, f0, f1
/* 8051F898 FC800050 */ fneg        f4, f0
/* 8051F89C 4800002C */ b           lbl_8051f8c8
lbl_8051f8a0:
/* 8051F8A0 D8010050 */ stfd        f0, 0x50(r1)
/* 8051F8A4 C85F0020 */ lfd         f2, 0x20(r31)
/* 8051F8A8 80810054 */ lwz         r4, 0x54(r1)
/* 8051F8AC C03F0018 */ lfs         f1, 0x18(r31)
/* 8051F8B0 5484063E */ clrlwi      r4, r4, 0x18
/* 8051F8B4 9081004C */ stw         r4, 0x4c(r1)
/* 8051F8B8 C8010048 */ lfd         f0, 0x48(r1)
/* 8051F8BC EC001028 */ fsubs       f0, f0, f2
/* 8051F8C0 EC000828 */ fsubs       f0, f0, f1
/* 8051F8C4 EC800824 */ fdivs       f4, f0, f1
lbl_8051f8c8:
/* 8051F8C8 C03F002C */ lfs         f1, 0x2c(r31)
/* 8051F8CC 3C80809C */ lis         r4, lbl_809bd704@ha
/* 8051F8D0 C004D704 */ lfs         f0, lbl_809bd704@l(r4)
/* 8051F8D4 EC61182A */ fadds       f3, f1, f3
/* 8051F8D8 C85F0020 */ lfd         f2, 0x20(r31)
/* 8051F8DC C03F0018 */ lfs         f1, 0x18(r31)
/* 8051F8E0 D09D0008 */ stfs        f4, 8(r29)
/* 8051F8E4 EC0000F2 */ fmuls       f0, f0, f3
/* 8051F8E8 FC00001E */ fctiwz      f0, f0
/* 8051F8EC D8010058 */ stfd        f0, 0x58(r1)
/* 8051F8F0 8081005C */ lwz         r4, 0x5c(r1)
/* 8051F8F4 D8010050 */ stfd        f0, 0x50(r1)
/* 8051F8F8 5484063E */ clrlwi      r4, r4, 0x18
/* 8051F8FC 90810044 */ stw         r4, 0x44(r1)
/* 8051F900 80810054 */ lwz         r4, 0x54(r1)
/* 8051F904 C8010040 */ lfd         f0, 0x40(r1)
/* 8051F908 989D0011 */ stb         r4, 0x11(r29)
/* 8051F90C EC001028 */ fsubs       f0, f0, f2
/* 8051F910 EC000828 */ fsubs       f0, f0, f1
/* 8051F914 EC000824 */ fdivs       f0, f0, f1
/* 8051F918 D01D000C */ stfs        f0, 0xc(r29)
lbl_8051f91c:
/* 8051F91C 889D0014 */ lbz         r4, 0x14(r29)
/* 8051F920 2C000000 */ cmpwi       r0, 0
/* 8051F924 38A00000 */ li          r5, 0
/* 8051F928 60840080 */ ori         r4, r4, 0x80
/* 8051F92C 989D0014 */ stb         r4, 0x14(r29)
/* 8051F930 41820008 */ beq-        lbl_8051f938
/* 8051F934 60A50001 */ ori         r5, r5, 1
lbl_8051f938:
/* 8051F938 54600673 */ rlwinm.     r0, r3, 0, 0x19, 0x19
/* 8051F93C 4182000C */ beq-        lbl_8051f948
/* 8051F940 60A00002 */ ori         r0, r5, 2
/* 8051F944 5405043E */ clrlwi      r5, r0, 0x10
lbl_8051f948:
/* 8051F948 5460056B */ rlwinm.     r0, r3, 0, 0x15, 0x15
/* 8051F94C 4182000C */ beq-        lbl_8051f958
/* 8051F950 60A00004 */ ori         r0, r5, 4
/* 8051F954 5405043E */ clrlwi      r5, r0, 0x10
lbl_8051f958:
/* 8051F958 546007FF */ clrlwi.     r0, r3, 0x1f
/* 8051F95C 4182000C */ beq-        lbl_8051f968
/* 8051F960 60A00008 */ ori         r0, r5, 8
/* 8051F964 5405043E */ clrlwi      r5, r0, 0x10
lbl_8051f968:
/* 8051F968 54600463 */ rlwinm.     r0, r3, 0, 0x11, 0x11
/* 8051F96C 4182000C */ beq-        lbl_8051f978
/* 8051F970 60A00010 */ ori         r0, r5, 0x10
/* 8051F974 5405043E */ clrlwi      r5, r0, 0x10
lbl_8051f978:
/* 8051F978 546007BD */ rlwinm.     r0, r3, 0, 0x1e, 0x1e
/* 8051F97C 4182000C */ beq-        lbl_8051f988
/* 8051F980 60A00020 */ ori         r0, r5, 0x20
/* 8051F984 5405043E */ clrlwi      r5, r0, 0x10
lbl_8051f988:
/* 8051F988 54600421 */ rlwinm.     r0, r3, 0, 0x10, 0x10
/* 8051F98C 4182000C */ beq-        lbl_8051f998
/* 8051F990 60A00040 */ ori         r0, r5, 0x40
/* 8051F994 5405043E */ clrlwi      r5, r0, 0x10
lbl_8051f998:
/* 8051F998 54600529 */ rlwinm.     r0, r3, 0, 0x14, 0x14
/* 8051F99C 4182000C */ beq-        lbl_8051f9a8
/* 8051F9A0 60A00080 */ ori         r0, r5, 0x80
/* 8051F9A4 5405043E */ clrlwi      r5, r0, 0x10
lbl_8051f9a8:
/* 8051F9A8 5460043E */ clrlwi      r0, r3, 0x10
/* 8051F9AC 7000100C */ andi.       r0, r0, 0x100c
/* 8051F9B0 4182000C */ beq-        lbl_8051f9bc
/* 8051F9B4 60A00100 */ ori         r0, r5, 0x100
/* 8051F9B8 5405043E */ clrlwi      r5, r0, 0x10
lbl_8051f9bc:
/* 8051F9BC B0BE0004 */ sth         r5, 4(r30)
/* 8051F9C0 A01D0006 */ lhz         r0, 6(r29)
/* 8051F9C4 B01E0006 */ sth         r0, 6(r30)
/* 8051F9C8 88010031 */ lbz         r0, 0x31(r1)
/* 8051F9CC 7C000775 */ extsb.      r0, r0
/* 8051F9D0 4082008C */ bne-        lbl_8051fa5c
/* 8051F9D4 889D0010 */ lbz         r4, 0x10(r29)
/* 8051F9D8 3C60809C */ lis         r3, spInstance__Q26System12KPadDirector@ha
/* 8051F9DC 989E0018 */ stb         r4, 0x18(r30)
/* 8051F9E0 8063D70C */ lwz         r3, spInstance__Q26System12KPadDirector@l(r3)
/* 8051F9E4 88034155 */ lbz         r0, 0x4155(r3)
/* 8051F9E8 2C000000 */ cmpwi       r0, 0
/* 8051F9EC 41820028 */ beq-        lbl_8051fa14
/* 8051F9F0 9081004C */ stw         r4, 0x4c(r1)
/* 8051F9F4 C85F0020 */ lfd         f2, 0x20(r31)
/* 8051F9F8 C8010048 */ lfd         f0, 0x48(r1)
/* 8051F9FC C03F0018 */ lfs         f1, 0x18(r31)
/* 8051FA00 EC001028 */ fsubs       f0, f0, f2
/* 8051FA04 EC000828 */ fsubs       f0, f0, f1
/* 8051FA08 EC000824 */ fdivs       f0, f0, f1
/* 8051FA0C FC000050 */ fneg        f0, f0
/* 8051FA10 48000020 */ b           lbl_8051fa30
lbl_8051fa14:
/* 8051FA14 90810044 */ stw         r4, 0x44(r1)
/* 8051FA18 C85F0020 */ lfd         f2, 0x20(r31)
/* 8051FA1C C8010040 */ lfd         f0, 0x40(r1)
/* 8051FA20 C03F0018 */ lfs         f1, 0x18(r31)
/* 8051FA24 EC001028 */ fsubs       f0, f0, f2
/* 8051FA28 EC000828 */ fsubs       f0, f0, f1
/* 8051FA2C EC000824 */ fdivs       f0, f0, f1
lbl_8051fa30:
/* 8051FA30 D01E0008 */ stfs        f0, 8(r30)
/* 8051FA34 C85F0020 */ lfd         f2, 0x20(r31)
/* 8051FA38 881D0011 */ lbz         r0, 0x11(r29)
/* 8051FA3C 9001004C */ stw         r0, 0x4c(r1)
/* 8051FA40 C03F0018 */ lfs         f1, 0x18(r31)
/* 8051FA44 C8010048 */ lfd         f0, 0x48(r1)
/* 8051FA48 981E0019 */ stb         r0, 0x19(r30)
/* 8051FA4C EC001028 */ fsubs       f0, f0, f2
/* 8051FA50 EC000828 */ fsubs       f0, f0, f1
/* 8051FA54 EC000824 */ fdivs       f0, f0, f1
/* 8051FA58 D01E000C */ stfs        f0, 0xc(r30)
lbl_8051fa5c:
/* 8051FA5C A0010032 */ lhz         r0, 0x32(r1)
/* 8051FA60 396100C0 */ addi        r11, r1, 0xc0
/* 8051FA64 B01C08F8 */ sth         r0, 0x8f8(r28)
/* 8051FA68 4BB01B51 */ bl          _restgpr_14
/* 8051FA6C 800100C4 */ lwz         r0, 0xc4(r1)
/* 8051FA70 7C0803A6 */ mtlr        r0
/* 8051FA74 382100C0 */ addi        r1, r1, 0xc0
/* 8051FA78 4E800020 */ blr         