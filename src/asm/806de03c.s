nofralloc
/* 806DE03C 9421FFF0 */ stwu        r1, -0x10(r1)
/* 806DE040 7C0802A6 */ mflr        r0
/* 806DE044 3C80809C */ lis         r4, lbl_809c19b8@ha
/* 806DE048 90010014 */ stw         r0, 0x14(r1)
/* 806DE04C 93E1000C */ stw         r31, 0xc(r1)
/* 806DE050 7C7F1B78 */ mr          r31, r3
/* 806DE054 93C10008 */ stw         r30, 8(r1)
/* 806DE058 806419B8 */ lwz         r3, lbl_809c19b8@l(r4)
/* 806DE05C 389F0030 */ addi        r4, r31, 0x30
/* 806DE060 80630030 */ lwz         r3, 0x30(r3)
/* 806DE064 4BE719AD */ bl          unk_8054fa10
/* 806DE068 3C60809C */ lis         r3, spInstance__Q26System11RaceManager@ha
/* 806DE06C 801F00D4 */ lwz         r0, 0xd4(r31)
/* 806DE070 8063D730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r3)
/* 806DE074 80630020 */ lwz         r3, 0x20(r3)
/* 806DE078 7C030040 */ cmplw       r3, r0
/* 806DE07C 41800134 */ blt-        lbl_806de1b0
/* 806DE080 807F0020 */ lwz         r3, 0x20(r31)
/* 806DE084 81830000 */ lwz         r12, 0(r3)
/* 806DE088 818C0014 */ lwz         r12, 0x14(r12)
/* 806DE08C 7D8903A6 */ mtctr       r12
/* 806DE090 4E800421 */ bctrl       
/* 806DE094 2C030001 */ cmpwi       r3, 1
/* 806DE098 4082004C */ bne-        lbl_806de0e4
/* 806DE09C 807F0020 */ lwz         r3, 0x20(r31)
/* 806DE0A0 3C80808A */ lis         r4, lbl_808a0498@ha
/* 806DE0A4 C0240498 */ lfs         f1, lbl_808a0498@l(r4)
/* 806DE0A8 81830000 */ lwz         r12, 0(r3)
/* 806DE0AC 818C001C */ lwz         r12, 0x1c(r12)
/* 806DE0B0 7D8903A6 */ mtctr       r12
/* 806DE0B4 4E800421 */ bctrl       
/* 806DE0B8 807F0020 */ lwz         r3, 0x20(r31)
/* 806DE0BC A8030046 */ lha         r0, 0x46(r3)
/* 806DE0C0 80630008 */ lwz         r3, 8(r3)
/* 806DE0C4 54002036 */ slwi        r0, r0, 4
/* 806DE0C8 7C630214 */ add         r3, r3, r0
/* 806DE0CC A063000C */ lhz         r3, 0xc(r3)
/* 806DE0D0 2C030000 */ cmpwi       r3, 0
/* 806DE0D4 41820010 */ beq-        lbl_806de0e4
/* 806DE0D8 38000000 */ li          r0, 0
/* 806DE0DC 907F00DC */ stw         r3, 0xdc(r31)
/* 806DE0E0 901F00B8 */ stw         r0, 0xb8(r31)
lbl_806de0e4:
/* 806DE0E4 801F00B8 */ lwz         r0, 0xb8(r31)
/* 806DE0E8 2C000000 */ cmpwi       r0, 0
/* 806DE0EC 41800054 */ blt-        lbl_806de140
/* 806DE0F0 3880FFFF */ li          r4, -1
/* 806DE0F4 38A00000 */ li          r5, 0
/* 806DE0F8 B01F00B4 */ sth         r0, 0xb4(r31)
/* 806DE0FC 54000BFC */ rlwinm      r0, r0, 1, 0xf, 0x1e
/* 806DE100 807F00C4 */ lwz         r3, 0xc4(r31)
/* 806DE104 909F00B8 */ stw         r4, 0xb8(r31)
/* 806DE108 809F00C8 */ lwz         r4, 0xc8(r31)
/* 806DE10C 90BF00BC */ stw         r5, 0xbc(r31)
/* 806DE110 7C03022E */ lhzx        r0, r3, r0
/* 806DE114 1C00001C */ mulli       r0, r0, 0x1c
/* 806DE118 7FC40214 */ add         r30, r4, r0
/* 806DE11C 387E0004 */ addi        r3, r30, 4
/* 806DE120 4B9432C5 */ bl          unk_800213e4
/* 806DE124 2C030000 */ cmpwi       r3, 0
/* 806DE128 41820040 */ beq-        lbl_806de168
/* 806DE12C 807F00CC */ lwz         r3, 0xcc(r31)
/* 806DE130 399E0004 */ addi        r12, r30, 4
/* 806DE134 4B94331D */ bl          __ptmf_scall
/* 806DE138 60000000 */ nop         
/* 806DE13C 4800002C */ b           lbl_806de168
lbl_806de140:
/* 806DE140 807F00BC */ lwz         r3, 0xbc(r31)
/* 806DE144 A01F00B4 */ lhz         r0, 0xb4(r31)
/* 806DE148 38630001 */ addi        r3, r3, 1
/* 806DE14C 907F00BC */ stw         r3, 0xbc(r31)
/* 806DE150 807F00C4 */ lwz         r3, 0xc4(r31)
/* 806DE154 5400083C */ slwi        r0, r0, 1
/* 806DE158 809F00C8 */ lwz         r4, 0xc8(r31)
/* 806DE15C 7C03022E */ lhzx        r0, r3, r0
/* 806DE160 1C00001C */ mulli       r0, r0, 0x1c
/* 806DE164 7FC40214 */ add         r30, r4, r0
lbl_806de168:
/* 806DE168 387E0010 */ addi        r3, r30, 0x10
/* 806DE16C 4B943279 */ bl          unk_800213e4
/* 806DE170 2C030000 */ cmpwi       r3, 0
/* 806DE174 41820014 */ beq-        lbl_806de188
/* 806DE178 807F00CC */ lwz         r3, 0xcc(r31)
/* 806DE17C 399E0010 */ addi        r12, r30, 0x10
/* 806DE180 4B9432D1 */ bl          __ptmf_scall
/* 806DE184 60000000 */ nop         
lbl_806de188:
/* 806DE188 807F0020 */ lwz         r3, 0x20(r31)
/* 806DE18C A01F002C */ lhz         r0, 0x2c(r31)
/* 806DE190 C0430020 */ lfs         f2, 0x20(r3)
/* 806DE194 C023001C */ lfs         f1, 0x1c(r3)
/* 806DE198 60000001 */ ori         r0, r0, 1
/* 806DE19C C0030018 */ lfs         f0, 0x18(r3)
/* 806DE1A0 D01F0030 */ stfs        f0, 0x30(r31)
/* 806DE1A4 B01F002C */ sth         r0, 0x2c(r31)
/* 806DE1A8 D03F0034 */ stfs        f1, 0x34(r31)
/* 806DE1AC D05F0038 */ stfs        f2, 0x38(r31)
lbl_806de1b0:
/* 806DE1B0 80010014 */ lwz         r0, 0x14(r1)
/* 806DE1B4 83E1000C */ lwz         r31, 0xc(r1)
/* 806DE1B8 83C10008 */ lwz         r30, 8(r1)
/* 806DE1BC 7C0803A6 */ mtlr        r0
/* 806DE1C0 38210010 */ addi        r1, r1, 0x10
/* 806DE1C4 4E800020 */ blr         