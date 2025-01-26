nofralloc
/* 8063550C 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80635510 7C0802A6 */ mflr        r0
/* 80635514 90010024 */ stw         r0, 0x24(r1)
/* 80635518 93E1001C */ stw         r31, 0x1c(r1)
/* 8063551C 93C10018 */ stw         r30, 0x18(r1)
/* 80635520 7C7E1B78 */ mr          r30, r3
/* 80635524 93A10014 */ stw         r29, 0x14(r1)
/* 80635528 80030030 */ lwz         r0, 0x30(r3)
/* 8063552C 2C000000 */ cmpwi       r0, 0
/* 80635530 4182000C */ beq-        lbl_8063553c
/* 80635534 80630090 */ lwz         r3, 0x90(r3)
/* 80635538 4BFEBEFD */ bl          SaveGhostManager_saveLicensesIfDirty
lbl_8063553c:
/* 8063553C 807E0000 */ lwz         r3, 0(r30)
/* 80635540 4BFECFB9 */ bl          Section_calc
/* 80635544 807E0090 */ lwz         r3, 0x90(r30)
/* 80635548 4BFEB5F9 */ bl          SaveGhostManager_calc
/* 8063554C 801E0030 */ lwz         r0, 0x30(r30)
/* 80635550 2C000001 */ cmpwi       r0, 1
/* 80635554 41820010 */ beq-        lbl_80635564
/* 80635558 2C000002 */ cmpwi       r0, 2
/* 8063555C 4182008C */ beq-        lbl_806355e8
/* 80635560 48000118 */ b           lbl_80635678
lbl_80635564:
/* 80635564 801E001C */ lwz         r0, 0x1c(r30)
/* 80635568 2C000000 */ cmpwi       r0, 0
/* 8063556C 4181006C */ bgt-        lbl_806355d8
/* 80635570 3FA08038 */ lis         r29, spInstance__Q26System8RKSystem@ha
/* 80635574 807D5FC8 */ lwz         r3, spInstance__Q26System8RKSystem@l(r29)
/* 80635578 80630054 */ lwz         r3, 0x54(r3)
/* 8063557C 80630024 */ lwz         r3, 0x24(r3)
/* 80635580 81830000 */ lwz         r12, 0(r3)
/* 80635584 818C000C */ lwz         r12, 0xc(r12)
/* 80635588 7D8903A6 */ mtctr       r12
/* 8063558C 4E800421 */ bctrl       
/* 80635590 20830001 */ subfic      r4, r3, 1
/* 80635594 3803FFFF */ addi        r0, r3, -1
/* 80635598 7C800378 */ or          r0, r4, r0
/* 8063559C 54000FFF */ rlwinm.     r0, r0, 1, 0x1f, 0x1f
/* 806355A0 40820038 */ bne-        lbl_806355d8
/* 806355A4 801E0028 */ lwz         r0, 0x28(r30)
/* 806355A8 3881000C */ addi        r4, r1, 0xc
/* 806355AC 9001000C */ stw         r0, 0xc(r1)
/* 806355B0 807D5FC8 */ lwz         r3, spInstance__Q26System8RKSystem@l(r29)
/* 806355B4 80630054 */ lwz         r3, 0x54(r3)
/* 806355B8 80630024 */ lwz         r3, 0x24(r3)
/* 806355BC 4BBDFC71 */ bl          ColorFader_setColor
/* 806355C0 4BEE6911 */ bl          getGameScene
/* 806355C4 4BEE5AD1 */ bl          unk_8051b094
/* 806355C8 38600000 */ li          r3, 0
/* 806355CC 38000003 */ li          r0, 3
/* 806355D0 907E002C */ stw         r3, 0x2c(r30)
/* 806355D4 901E0030 */ stw         r0, 0x30(r30)
lbl_806355d8:
/* 806355D8 807E001C */ lwz         r3, 0x1c(r30)
/* 806355DC 3803FFFF */ addi        r0, r3, -1
/* 806355E0 901E001C */ stw         r0, 0x1c(r30)
/* 806355E4 48000094 */ b           lbl_80635678
lbl_806355e8:
/* 806355E8 801E001C */ lwz         r0, 0x1c(r30)
/* 806355EC 2C000000 */ cmpwi       r0, 0
/* 806355F0 4181007C */ bgt-        lbl_8063566c
/* 806355F4 3FA08038 */ lis         r29, spInstance__Q26System8RKSystem@ha
/* 806355F8 807D5FC8 */ lwz         r3, spInstance__Q26System8RKSystem@l(r29)
/* 806355FC 80630054 */ lwz         r3, 0x54(r3)
/* 80635600 80630024 */ lwz         r3, 0x24(r3)
/* 80635604 81830000 */ lwz         r12, 0(r3)
/* 80635608 818C000C */ lwz         r12, 0xc(r12)
/* 8063560C 7D8903A6 */ mtctr       r12
/* 80635610 4E800421 */ bctrl       
/* 80635614 20830001 */ subfic      r4, r3, 1
/* 80635618 3803FFFF */ addi        r0, r3, -1
/* 8063561C 7C800378 */ or          r0, r4, r0
/* 80635620 54000FFF */ rlwinm.     r0, r0, 1, 0x1f, 0x1f
/* 80635624 40820048 */ bne-        lbl_8063566c
/* 80635628 801E0028 */ lwz         r0, 0x28(r30)
/* 8063562C 38810008 */ addi        r4, r1, 8
/* 80635630 90010008 */ stw         r0, 8(r1)
/* 80635634 807D5FC8 */ lwz         r3, spInstance__Q26System8RKSystem@l(r29)
/* 80635638 80630054 */ lwz         r3, 0x54(r3)
/* 8063563C 80630024 */ lwz         r3, 0x24(r3)
/* 80635640 4BBDFBED */ bl          ColorFader_setColor
/* 80635644 807E000C */ lwz         r3, 0xc(r30)
/* 80635648 4BFFBF41 */ bl          Section_getSceneId
/* 8063564C 7C7D1B78 */ mr          r29, r3
/* 80635650 4BEE6881 */ bl          getGameScene
/* 80635654 7FA4EB78 */ mr          r4, r29
/* 80635658 4BEE5991 */ bl          unk_8051afe8
/* 8063565C 38600000 */ li          r3, 0
/* 80635660 38000004 */ li          r0, 4
/* 80635664 907E002C */ stw         r3, 0x2c(r30)
/* 80635668 901E0030 */ stw         r0, 0x30(r30)
lbl_8063566c:
/* 8063566C 807E001C */ lwz         r3, 0x1c(r30)
/* 80635670 3803FFFF */ addi        r0, r3, -1
/* 80635674 901E001C */ stw         r0, 0x1c(r30)
lbl_80635678:
/* 80635678 807E002C */ lwz         r3, 0x2c(r30)
/* 8063567C 3BE00000 */ li          r31, 0
/* 80635680 2C030000 */ cmpwi       r3, 0
/* 80635684 41800018 */ blt-        lbl_8063569c
/* 80635688 38030001 */ addi        r0, r3, 1
/* 8063568C 901E002C */ stw         r0, 0x2c(r30)
/* 80635690 2C000017 */ cmpwi       r0, 0x17
/* 80635694 41800008 */ blt-        lbl_8063569c
/* 80635698 3BE00001 */ li          r31, 1
lbl_8063569c:
/* 8063569C 2C1F0000 */ cmpwi       r31, 0
/* 806356A0 41820020 */ beq-        lbl_806356c0
/* 806356A4 807E0000 */ lwz         r3, 0(r30)
/* 806356A8 4BFED561 */ bl          unk_80622c08
/* 806356AC 3C60809C */ lis         r3, lbl_809c2df0@ha
/* 806356B0 80632DF0 */ lwz         r3, lbl_809c2df0@l(r3)
/* 806356B4 2C030000 */ cmpwi       r3, 0
/* 806356B8 41820008 */ beq-        lbl_806356c0
/* 806356BC 4814CE6D */ bl          unk_80782528
lbl_806356c0:
/* 806356C0 807E0000 */ lwz         r3, 0(r30)
/* 806356C4 38000000 */ li          r0, 0
/* 806356C8 901E0024 */ stw         r0, 0x24(r30)
/* 806356CC 2C030000 */ cmpwi       r3, 0
/* 806356D0 4182000C */ beq-        lbl_806356dc
/* 806356D4 4BFED7F5 */ bl          unk_80622ec8
/* 806356D8 907E0024 */ stw         r3, 0x24(r30)
lbl_806356dc:
/* 806356DC 807E0090 */ lwz         r3, 0x90(r30)
/* 806356E0 4BFEBCC5 */ bl          unk_806213a4
/* 806356E4 2C030000 */ cmpwi       r3, 0
/* 806356E8 41820010 */ beq-        lbl_806356f8
/* 806356EC 801E0024 */ lwz         r0, 0x24(r30)
/* 806356F0 60000002 */ ori         r0, r0, 2
/* 806356F4 901E0024 */ stw         r0, 0x24(r30)
lbl_806356f8:
/* 806356F8 3C608038 */ lis         r3, spInstance__Q26System8RKSystem@ha
/* 806356FC 801E0024 */ lwz         r0, 0x24(r30)
/* 80635700 80635FC8 */ lwz         r3, spInstance__Q26System8RKSystem@l(r3)
/* 80635704 540007FE */ clrlwi      r0, r0, 0x1f
/* 80635708 80630054 */ lwz         r3, 0x54(r3)
/* 8063570C 681D0001 */ xori        r29, r0, 1
/* 80635710 80630024 */ lwz         r3, 0x24(r3)
/* 80635714 81830000 */ lwz         r12, 0(r3)
/* 80635718 818C000C */ lwz         r12, 0xc(r12)
/* 8063571C 7D8903A6 */ mtctr       r12
/* 80635720 4E800421 */ bctrl       
/* 80635724 20830001 */ subfic      r4, r3, 1
/* 80635728 3803FFFF */ addi        r0, r3, -1
/* 8063572C 7C830378 */ or          r3, r4, r0
/* 80635730 801E0030 */ lwz         r0, 0x30(r30)
/* 80635734 54640FFE */ srwi        r4, r3, 0x1f
/* 80635738 68840001 */ xori        r4, r4, 1
/* 8063573C 3C60809C */ lis         r3, lbl_809bd6f8@ha
/* 80635740 7FA62038 */ and         r6, r29, r4
/* 80635744 7C000034 */ cntlzw      r0, r0
/* 80635748 7CA600D0 */ neg         r5, r6
/* 8063574C 8063D6F8 */ lwz         r3, lbl_809bd6f8@l(r3)
/* 80635750 7CA53378 */ or          r5, r5, r6
/* 80635754 5404D97E */ srwi        r4, r0, 5
/* 80635758 54A50FFE */ srwi        r5, r5, 0x1f
/* 8063575C 8803004D */ lbz         r0, 0x4d(r3)
/* 80635760 7CA52038 */ and         r5, r5, r4
/* 80635764 7C8500D0 */ neg         r4, r5
/* 80635768 7C842B78 */ or          r4, r4, r5
/* 8063576C 54840FFE */ srwi        r4, r4, 0x1f
/* 80635770 7C040040 */ cmplw       r4, r0
/* 80635774 41820008 */ beq-        lbl_8063577c
/* 80635778 9883004D */ stb         r4, 0x4d(r3)
lbl_8063577c:
/* 8063577C 801E0024 */ lwz         r0, 0x24(r30)
/* 80635780 540007BD */ rlwinm.     r0, r0, 0, 0x1e, 0x1e
/* 80635784 4182001C */ beq-        lbl_806357a0
/* 80635788 807E000C */ lwz         r3, 0xc(r30)
/* 8063578C 4BFFF3F5 */ bl          Section_getPriority
/* 80635790 2C030005 */ cmpwi       r3, 5
/* 80635794 4082000C */ bne-        lbl_806357a0
/* 80635798 38000005 */ li          r0, 5
/* 8063579C 901E000C */ stw         r0, 0xc(r30)
lbl_806357a0:
/* 806357A0 807E0000 */ lwz         r3, 0(r30)
/* 806357A4 3BC00000 */ li          r30, 0
/* 806357A8 4BFED7E1 */ bl          unk_80622f88
/* 806357AC 2C030000 */ cmpwi       r3, 0
/* 806357B0 4082000C */ bne-        lbl_806357bc
/* 806357B4 2C1F0000 */ cmpwi       r31, 0
/* 806357B8 41820008 */ beq-        lbl_806357c0
lbl_806357bc:
/* 806357BC 3BC00001 */ li          r30, 1
lbl_806357c0:
/* 806357C0 281E0001 */ cmplwi      r30, 1
/* 806357C4 40820034 */ bne-        lbl_806357f8
/* 806357C8 4BB2D389 */ bl          DVDGetDriveStatus
/* 806357CC 2C030008 */ cmpwi       r3, 8
/* 806357D0 40820028 */ bne-        lbl_806357f8
/* 806357D4 4BB2D465 */ bl          DVDResume
/* 806357D8 4BB2D379 */ bl          DVDGetDriveStatus
/* 806357DC 2C030008 */ cmpwi       r3, 8
/* 806357E0 41820040 */ beq-        lbl_80635820
/* 806357E4 3C608038 */ lis         r3, sInstance__Q23EGG14AsyncDvdStatus@ha
/* 806357E8 38000001 */ li          r0, 1
/* 806357EC 80635FC0 */ lwz         r3, sInstance__Q23EGG14AsyncDvdStatus@l(r3)
/* 806357F0 98030050 */ stb         r0, 0x50(r3)
/* 806357F4 4800002C */ b           lbl_80635820
lbl_806357f8:
/* 806357F8 2C1E0000 */ cmpwi       r30, 0
/* 806357FC 40820024 */ bne-        lbl_80635820
/* 80635800 4BB2D351 */ bl          DVDGetDriveStatus
/* 80635804 2C030008 */ cmpwi       r3, 8
/* 80635808 41820018 */ beq-        lbl_80635820
/* 8063580C 3C608038 */ lis         r3, sInstance__Q23EGG14AsyncDvdStatus@ha
/* 80635810 38000000 */ li          r0, 0
/* 80635814 80635FC0 */ lwz         r3, sInstance__Q23EGG14AsyncDvdStatus@l(r3)
/* 80635818 98030050 */ stb         r0, 0x50(r3)
/* 8063581C 4BB2D3E1 */ bl          DVDPause
lbl_80635820:
/* 80635820 80010024 */ lwz         r0, 0x24(r1)
/* 80635824 83E1001C */ lwz         r31, 0x1c(r1)
/* 80635828 83C10018 */ lwz         r30, 0x18(r1)
/* 8063582C 83A10014 */ lwz         r29, 0x14(r1)
/* 80635830 7C0803A6 */ mtlr        r0
/* 80635834 38210020 */ addi        r1, r1, 0x20
/* 80635838 4E800020 */ blr         