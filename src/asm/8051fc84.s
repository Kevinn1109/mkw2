nofralloc
/* 8051FC84 9421FF90 */ stwu        r1, -0x70(r1)
/* 8051FC88 7C0802A6 */ mflr        r0
/* 8051FC8C 90010074 */ stw         r0, 0x74(r1)
/* 8051FC90 39610070 */ addi        r11, r1, 0x70
/* 8051FC94 4BB01901 */ bl          _savegpr_24
/* 8051FC98 88040014 */ lbz         r0, 0x14(r4)
/* 8051FC9C 7C7A1B78 */ mr          r26, r3
/* 8051FCA0 7C9B2378 */ mr          r27, r4
/* 8051FCA4 7CBC2B78 */ mr          r28, r5
/* 8051FCA8 5400066E */ rlwinm      r0, r0, 0, 0x19, 0x17
/* 8051FCAC 98040014 */ stb         r0, 0x14(r4)
/* 8051FCB0 806308D4 */ lwz         r3, 0x8d4(r3)
/* 8051FCB4 28030003 */ cmplwi      r3, 3
/* 8051FCB8 418102E8 */ bgt-        lbl_8051ffa0
/* 8051FCBC 380000FD */ li          r0, 0xfd
/* 8051FCC0 90010008 */ stw         r0, 8(r1)
/* 8051FCC4 38810008 */ addi        r4, r1, 8
/* 8051FCC8 4BCA0CC9 */ bl          WPADProbe
/* 8051FCCC 7C7F1B78 */ mr          r31, r3
/* 8051FCD0 807A08D4 */ lwz         r3, 0x8d4(r26)
/* 8051FCD4 38810018 */ addi        r4, r1, 0x18
/* 8051FCD8 38A00001 */ li          r5, 1
/* 8051FCDC 4BC78451 */ bl          KPADGetUnifiedWpadStatus
/* 8051FCE0 8BDA0050 */ lbz         r30, 0x50(r26)
/* 8051FCE4 3BA00001 */ li          r29, 1
/* 8051FCE8 2C1E0000 */ cmpwi       r30, 0
/* 8051FCEC 4082002C */ bne-        lbl_8051fd18
/* 8051FCF0 2C1F0000 */ cmpwi       r31, 0
/* 8051FCF4 38600004 */ li          r3, 4
/* 8051FCF8 3800FFFF */ li          r0, -1
/* 8051FCFC 907A08D8 */ stw         r3, 0x8d8(r26)
/* 8051FD00 901A08DC */ stw         r0, 0x8dc(r26)
/* 8051FD04 40820014 */ bne-        lbl_8051fd18
/* 8051FD08 807A08D4 */ lwz         r3, 0x8d4(r26)
/* 8051FD0C 3BC00001 */ li          r30, 1
/* 8051FD10 38800000 */ li          r4, 0
/* 8051FD14 4BCF3D29 */ bl          alf_8b7ad3f5
lbl_8051fd18:
/* 8051FD18 881A0050 */ lbz         r0, 0x50(r26)
/* 8051FD1C 2C000000 */ cmpwi       r0, 0
/* 8051FD20 41820268 */ beq-        lbl_8051ff88
/* 8051FD24 807A08D4 */ lwz         r3, 0x8d4(r26)
/* 8051FD28 389A0090 */ addi        r4, r26, 0x90
/* 8051FD2C 38A00010 */ li          r5, 0x10
/* 8051FD30 4BC77651 */ bl          KPADRead
/* 8051FD34 2C030000 */ cmpwi       r3, 0
/* 8051FD38 907A08D0 */ stw         r3, 0x8d0(r26)
/* 8051FD3C 4081022C */ ble-        lbl_8051ff68
/* 8051FD40 80010008 */ lwz         r0, 8(r1)
/* 8051FD44 2C000000 */ cmpwi       r0, 0
/* 8051FD48 40820028 */ bne-        lbl_8051fd70
/* 8051FD4C A07A08FE */ lhz         r3, 0x8fe(r26)
/* 8051FD50 2803000A */ cmplwi      r3, 0xa
/* 8051FD54 40800024 */ bge-        lbl_8051fd78
/* 8051FD58 38030001 */ addi        r0, r3, 1
/* 8051FD5C B01A08FE */ sth         r0, 0x8fe(r26)
/* 8051FD60 801A0900 */ lwz         r0, 0x900(r26)
/* 8051FD64 3BA00000 */ li          r29, 0
/* 8051FD68 90010008 */ stw         r0, 8(r1)
/* 8051FD6C 4800000C */ b           lbl_8051fd78
lbl_8051fd70:
/* 8051FD70 38000000 */ li          r0, 0
/* 8051FD74 B01A08FE */ sth         r0, 0x8fe(r26)
lbl_8051fd78:
/* 8051FD78 80010008 */ lwz         r0, 8(r1)
/* 8051FD7C 280000FF */ cmplwi      r0, 0xff
/* 8051FD80 40820028 */ bne-        lbl_8051fda8
/* 8051FD84 A07A08FC */ lhz         r3, 0x8fc(r26)
/* 8051FD88 28030014 */ cmplwi      r3, 0x14
/* 8051FD8C 40800024 */ bge-        lbl_8051fdb0
/* 8051FD90 38030001 */ addi        r0, r3, 1
/* 8051FD94 B01A08FC */ sth         r0, 0x8fc(r26)
/* 8051FD98 801A0900 */ lwz         r0, 0x900(r26)
/* 8051FD9C 3BA00000 */ li          r29, 0
/* 8051FDA0 90010008 */ stw         r0, 8(r1)
/* 8051FDA4 4800000C */ b           lbl_8051fdb0
lbl_8051fda8:
/* 8051FDA8 38000000 */ li          r0, 0
/* 8051FDAC B01A08FC */ sth         r0, 0x8fc(r26)
lbl_8051fdb0:
/* 8051FDB0 80610008 */ lwz         r3, 8(r1)
/* 8051FDB4 3803FF05 */ addi        r0, r3, -0xfb
/* 8051FDB8 28000001 */ cmplwi      r0, 1
/* 8051FDBC 40810060 */ ble-        lbl_8051fe1c
/* 8051FDC0 28030001 */ cmplwi      r3, 1
/* 8051FDC4 41820020 */ beq-        lbl_8051fde4
/* 8051FDC8 2C030000 */ cmpwi       r3, 0
/* 8051FDCC 41820050 */ beq-        lbl_8051fe1c
/* 8051FDD0 280300FF */ cmplwi      r3, 0xff
/* 8051FDD4 41820048 */ beq-        lbl_8051fe1c
/* 8051FDD8 28030002 */ cmplwi      r3, 2
/* 8051FDDC 41820078 */ beq-        lbl_8051fe54
/* 8051FDE0 48000094 */ b           lbl_8051fe74
lbl_8051fde4:
/* 8051FDE4 807A091C */ lwz         r3, 0x91c(r26)
/* 8051FDE8 7F64DB78 */ mr          r4, r27
/* 8051FDEC 38BA0090 */ addi        r5, r26, 0x90
/* 8051FDF0 3B200001 */ li          r25, 1
/* 8051FDF4 3B000001 */ li          r24, 1
/* 8051FDF8 38C00000 */ li          r6, 0
/* 8051FDFC 48225DE9 */ bl          unk_80745be4
/* 8051FE00 38000000 */ li          r0, 0
/* 8051FE04 B01A08F8 */ sth         r0, 0x8f8(r26)
/* 8051FE08 7F43D378 */ mr          r3, r26
/* 8051FE0C 7F84E378 */ mr          r4, r28
/* 8051FE10 7F65DB78 */ mr          r5, r27
/* 8051FE14 4BFFFC69 */ bl          raceToUIInputFreestyle__Q26System17KPadWiiControllerFPQ26System16KPadUIInputStatePQ26System18KPadRaceInputState
/* 8051FE18 48000070 */ b           lbl_8051fe88
lbl_8051fe1c:
/* 8051FE1C 807A091C */ lwz         r3, 0x91c(r26)
/* 8051FE20 7F64DB78 */ mr          r4, r27
/* 8051FE24 38BA0090 */ addi        r5, r26, 0x90
/* 8051FE28 3B200000 */ li          r25, 0
/* 8051FE2C 3B000000 */ li          r24, 0
/* 8051FE30 38C00000 */ li          r6, 0
/* 8051FE34 48225FB1 */ bl          unk_80745de4
/* 8051FE38 38000000 */ li          r0, 0
/* 8051FE3C B01A08F8 */ sth         r0, 0x8f8(r26)
/* 8051FE40 7F43D378 */ mr          r3, r26
/* 8051FE44 7F84E378 */ mr          r4, r28
/* 8051FE48 7F65DB78 */ mr          r5, r27
/* 8051FE4C 4BFFFD95 */ bl          raceToUIInputCore__Q26System17KPadWiiControllerFPQ26System16KPadUIInputStatePQ26System18KPadRaceInputState
/* 8051FE50 48000038 */ b           lbl_8051fe88
lbl_8051fe54:
/* 8051FE54 7F43D378 */ mr          r3, r26
/* 8051FE58 7F65DB78 */ mr          r5, r27
/* 8051FE5C 7F86E378 */ mr          r6, r28
/* 8051FE60 38810018 */ addi        r4, r1, 0x18
/* 8051FE64 3B200002 */ li          r25, 2
/* 8051FE68 3B000002 */ li          r24, 2
/* 8051FE6C 4BFFF5A5 */ bl          calcClassic__Q26System17KPadWiiControllerFP21KPADUnifiedWpadStatusPQ26System18KPadRaceInputStatePQ26System16KPadUIInputState
/* 8051FE70 48000018 */ b           lbl_8051fe88
lbl_8051fe74:
/* 8051FE74 38000000 */ li          r0, 0
/* 8051FE78 B01A08F8 */ sth         r0, 0x8f8(r26)
/* 8051FE7C 3B200004 */ li          r25, 4
/* 8051FE80 3B00FFFF */ li          r24, -1
/* 8051FE84 3BC00000 */ li          r30, 0
lbl_8051fe88:
/* 8051FE88 2C190004 */ cmpwi       r25, 4
/* 8051FE8C 933A08D8 */ stw         r25, 0x8d8(r26)
/* 8051FE90 931A08DC */ stw         r24, 0x8dc(r26)
/* 8051FE94 418200C4 */ beq-        lbl_8051ff58
/* 8051FE98 881A00EE */ lbz         r0, 0xee(r26)
/* 8051FE9C 807A00C4 */ lwz         r3, 0xc4(r26)
/* 8051FEA0 7C050774 */ extsb       r5, r0
/* 8051FEA4 801A00C8 */ lwz         r0, 0xc8(r26)
/* 8051FEA8 7C8500D0 */ neg         r4, r5
/* 8051FEAC 90610010 */ stw         r3, 0x10(r1)
/* 8051FEB0 7C832878 */ andc        r3, r4, r5
/* 8051FEB4 C05A00B0 */ lfs         f2, 0xb0(r26)
/* 8051FEB8 54640FFF */ rlwinm.     r4, r3, 1, 0x1f, 0x1f
/* 8051FEBC 90010014 */ stw         r0, 0x14(r1)
/* 8051FEC0 C07A00B4 */ lfs         f3, 0xb4(r26)
/* 8051FEC4 C09A00D8 */ lfs         f4, 0xd8(r26)
/* 8051FEC8 4182002C */ beq-        lbl_8051fef4
/* 8051FECC C0210010 */ lfs         f1, 0x10(r1)
/* 8051FED0 38000000 */ li          r0, 0
/* 8051FED4 C0010014 */ lfs         f0, 0x14(r1)
/* 8051FED8 D05A0908 */ stfs        f2, 0x908(r26)
/* 8051FEDC D07A090C */ stfs        f3, 0x90c(r26)
/* 8051FEE0 D03A0910 */ stfs        f1, 0x910(r26)
/* 8051FEE4 D01A0914 */ stfs        f0, 0x914(r26)
/* 8051FEE8 D09A0918 */ stfs        f4, 0x918(r26)
/* 8051FEEC B01A0906 */ sth         r0, 0x906(r26)
/* 8051FEF0 48000038 */ b           lbl_8051ff28
lbl_8051fef4:
/* 8051FEF4 A07A0906 */ lhz         r3, 0x906(r26)
/* 8051FEF8 28030003 */ cmplwi      r3, 3
/* 8051FEFC 4080002C */ bge-        lbl_8051ff28
/* 8051FF00 C03A0910 */ lfs         f1, 0x910(r26)
/* 8051FF04 38030001 */ addi        r0, r3, 1
/* 8051FF08 C01A0914 */ lfs         f0, 0x914(r26)
/* 8051FF0C 38800001 */ li          r4, 1
/* 8051FF10 D0210010 */ stfs        f1, 0x10(r1)
/* 8051FF14 C05A0908 */ lfs         f2, 0x908(r26)
/* 8051FF18 D0010014 */ stfs        f0, 0x14(r1)
/* 8051FF1C C07A090C */ lfs         f3, 0x90c(r26)
/* 8051FF20 B01A0906 */ sth         r0, 0x906(r26)
/* 8051FF24 C09A0918 */ lfs         f4, 0x918(r26)
lbl_8051ff28:
/* 8051FF28 881C0030 */ lbz         r0, 0x30(r28)
/* 8051FF2C 2C040000 */ cmpwi       r4, 0
/* 8051FF30 50803672 */ rlwimi      r0, r4, 6, 0x19, 0x19
/* 8051FF34 981C0030 */ stb         r0, 0x30(r28)
/* 8051FF38 41820020 */ beq-        lbl_8051ff58
/* 8051FF3C C0010014 */ lfs         f0, 0x14(r1)
/* 8051FF40 C0210010 */ lfs         f1, 0x10(r1)
/* 8051FF44 D05C001C */ stfs        f2, 0x1c(r28)
/* 8051FF48 D07C0020 */ stfs        f3, 0x20(r28)
/* 8051FF4C D03C0024 */ stfs        f1, 0x24(r28)
/* 8051FF50 D01C0028 */ stfs        f0, 0x28(r28)
/* 8051FF54 D09C002C */ stfs        f4, 0x2c(r28)
lbl_8051ff58:
/* 8051FF58 881C0030 */ lbz         r0, 0x30(r28)
/* 8051FF5C 60000080 */ ori         r0, r0, 0x80
/* 8051FF60 981C0030 */ stb         r0, 0x30(r28)
/* 8051FF64 48000008 */ b           lbl_8051ff6c
lbl_8051ff68:
/* 8051FF68 3BA00000 */ li          r29, 0
lbl_8051ff6c:
/* 8051FF6C 2C1FFFFF */ cmpwi       r31, -1
/* 8051FF70 4082001C */ bne-        lbl_8051ff8c
/* 8051FF74 807A08D4 */ lwz         r3, 0x8d4(r26)
/* 8051FF78 3BC00000 */ li          r30, 0
/* 8051FF7C 38800000 */ li          r4, 0
/* 8051FF80 4BCF3B55 */ bl          alf_239d82da
/* 8051FF84 48000008 */ b           lbl_8051ff8c
lbl_8051ff88:
/* 8051FF88 3BA00000 */ li          r29, 0
lbl_8051ff8c:
/* 8051FF8C 2C1D0000 */ cmpwi       r29, 0
/* 8051FF90 4182000C */ beq-        lbl_8051ff9c
/* 8051FF94 80010008 */ lwz         r0, 8(r1)
/* 8051FF98 901A0900 */ stw         r0, 0x900(r26)
lbl_8051ff9c:
/* 8051FF9C 9BDA0050 */ stb         r30, 0x50(r26)
lbl_8051ffa0:
/* 8051FFA0 39610070 */ addi        r11, r1, 0x70
/* 8051FFA4 4BB0163D */ bl          _restgpr_24
/* 8051FFA8 80010074 */ lwz         r0, 0x74(r1)
/* 8051FFAC 7C0803A6 */ mtlr        r0
/* 8051FFB0 38210070 */ addi        r1, r1, 0x70
/* 8051FFB4 4E800020 */ blr         