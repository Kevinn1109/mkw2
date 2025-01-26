nofralloc
/* 806DAB5C 9421FFE0 */ stwu        r1, -0x20(r1)
/* 806DAB60 7C0802A6 */ mflr        r0
/* 806DAB64 3C80809C */ lis         r4, spInstance__Q26System10RaceConfig@ha
/* 806DAB68 90010024 */ stw         r0, 0x24(r1)
/* 806DAB6C 93E1001C */ stw         r31, 0x1c(r1)
/* 806DAB70 93C10018 */ stw         r30, 0x18(r1)
/* 806DAB74 93A10014 */ stw         r29, 0x14(r1)
/* 806DAB78 7C7D1B78 */ mr          r29, r3
/* 806DAB7C 93810010 */ stw         r28, 0x10(r1)
/* 806DAB80 80A4D728 */ lwz         r5, spInstance__Q26System10RaceConfig@l(r4)
/* 806DAB84 80050B74 */ lwz         r0, 0xb74(r5)
/* 806DAB88 2C000005 */ cmpwi       r0, 5
/* 806DAB8C 40820088 */ bne-        lbl_806dac14
/* 806DAB90 806300B8 */ lwz         r3, 0xb8(r3)
/* 806DAB94 81830000 */ lwz         r12, 0(r3)
/* 806DAB98 818C000C */ lwz         r12, 0xc(r12)
/* 806DAB9C 7D8903A6 */ mtctr       r12
/* 806DABA0 4E800421 */ bctrl       
/* 806DABA4 7FA3EB78 */ mr          r3, r29
/* 806DABA8 48146A99 */ bl          unk_80821640
/* 806DABAC 807D00B8 */ lwz         r3, 0xb8(r29)
/* 806DABB0 389D0058 */ addi        r4, r29, 0x58
/* 806DABB4 81830000 */ lwz         r12, 0(r3)
/* 806DABB8 818C0078 */ lwz         r12, 0x78(r12)
/* 806DABBC 7D8903A6 */ mtctr       r12
/* 806DABC0 4E800421 */ bctrl       
/* 806DABC4 807D00B8 */ lwz         r3, 0xb8(r29)
/* 806DABC8 C03D0040 */ lfs         f1, 0x40(r29)
/* 806DABCC 81830000 */ lwz         r12, 0(r3)
/* 806DABD0 818C006C */ lwz         r12, 0x6c(r12)
/* 806DABD4 7D8903A6 */ mtctr       r12
/* 806DABD8 4E800421 */ bctrl       
/* 806DABDC 807D00B8 */ lwz         r3, 0xb8(r29)
/* 806DABE0 81830000 */ lwz         r12, 0(r3)
/* 806DABE4 818C0080 */ lwz         r12, 0x80(r12)
/* 806DABE8 7D8903A6 */ mtctr       r12
/* 806DABEC 4E800421 */ bctrl       
/* 806DABF0 809D00C8 */ lwz         r4, 0xc8(r29)
/* 806DABF4 3C60808A */ lis         r3, lbl_808a0340@ha
/* 806DABF8 C0230340 */ lfs         f1, lbl_808a0340@l(r3)
/* 806DABFC 7FA3EB78 */ mr          r3, r29
/* 806DAC00 38040001 */ addi        r0, r4, 1
/* 806DAC04 901D00C8 */ stw         r0, 0xc8(r29)
/* 806DAC08 3880035D */ li          r4, 0x35d
/* 806DAC0C 48145911 */ bl          unk_8082051c
/* 806DAC10 480002E0 */ b           lbl_806daef0
lbl_806dac14:
/* 806DAC14 3C80809C */ lis         r4, spInstance__Q26System11RaceManager@ha
/* 806DAC18 800300C4 */ lwz         r0, 0xc4(r3)
/* 806DAC1C 8084D730 */ lwz         r4, spInstance__Q26System11RaceManager@l(r4)
/* 806DAC20 80C40020 */ lwz         r6, 0x20(r4)
/* 806DAC24 7C060040 */ cmplw       r6, r0
/* 806DAC28 418002C8 */ blt-        lbl_806daef0
/* 806DAC2C 88850024 */ lbz         r4, 0x24(r5)
/* 806DAC30 3BE00000 */ li          r31, 0
/* 806DAC34 81830000 */ lwz         r12, 0(r3)
/* 806DAC38 7C062396 */ divwu       r0, r6, r4
/* 806DAC3C 818C0030 */ lwz         r12, 0x30(r12)
/* 806DAC40 7C0021D6 */ mullw       r0, r0, r4
/* 806DAC44 7C003050 */ subf        r0, r0, r6
/* 806DAC48 541E063E */ clrlwi      r30, r0, 0x18
/* 806DAC4C 7D8903A6 */ mtctr       r12
/* 806DAC50 4E800421 */ bctrl       
/* 806DAC54 3C800101 */ lis         r4, 0x101
/* 806DAC58 80030020 */ lwz         r0, 0x20(r3)
/* 806DAC5C 38640101 */ addi        r3, r4, 0x101
/* 806DAC60 7C600079 */ andc.       r0, r3, r0
/* 806DAC64 4082001C */ bne-        lbl_806dac80
/* 806DAC68 3C60809C */ lis         r3, lbl_809c21d0@ha
/* 806DAC6C 806321D0 */ lwz         r3, lbl_809c21d0@l(r3)
/* 806DAC70 4BFA3051 */ bl          unk_8067dcc0
/* 806DAC74 2C030000 */ cmpwi       r3, 0
/* 806DAC78 41820008 */ beq-        lbl_806dac80
/* 806DAC7C 3BE00001 */ li          r31, 1
lbl_806dac80:
/* 806DAC80 881D00C1 */ lbz         r0, 0xc1(r29)
/* 806DAC84 2C000000 */ cmpwi       r0, 0
/* 806DAC88 41820050 */ beq-        lbl_806dacd8
/* 806DAC8C 80BD00CC */ lwz         r5, 0xcc(r29)
/* 806DAC90 3BC00000 */ li          r30, 0
/* 806DAC94 809D00C8 */ lwz         r4, 0xc8(r29)
/* 806DAC98 807D00D0 */ lwz         r3, 0xd0(r29)
/* 806DAC9C 7CA02278 */ xor         r0, r5, r4
/* 806DACA0 7C042800 */ cmpw        r4, r5
/* 806DACA4 7C651A14 */ add         r3, r5, r3
/* 806DACA8 7C841850 */ subf        r4, r4, r3
/* 806DACAC 7C030E70 */ srawi       r3, r0, 1
/* 806DACB0 7C002838 */ and         r0, r0, r5
/* 806DACB4 7C840034 */ cntlzw      r4, r4
/* 806DACB8 7C001850 */ subf        r0, r0, r3
/* 806DACBC 5485D97E */ srwi        r5, r4, 5
/* 806DACC0 541C0FFE */ srwi        r28, r0, 0x1f
/* 806DACC4 418000BC */ blt-        lbl_806dad80
/* 806DACC8 2C050000 */ cmpwi       r5, 0
/* 806DACCC 408200B4 */ bne-        lbl_806dad80
/* 806DACD0 3BC00001 */ li          r30, 1
/* 806DACD4 480000AC */ b           lbl_806dad80
lbl_806dacd8:
/* 806DACD8 3C60809C */ lis         r3, lbl_809c18f8@ha
/* 806DACDC 7FC4F378 */ mr          r4, r30
/* 806DACE0 806318F8 */ lwz         r3, lbl_809c18f8@l(r3)
/* 806DACE4 4BEB541D */ bl          PlayerHolder_getPlayer
/* 806DACE8 4BEB5525 */ bl          getPos__Q24Kart15KartObjectProxyCFv
/* 806DACEC C07D0030 */ lfs         f3, 0x30(r29)
/* 806DACF0 C0030000 */ lfs         f0, 0(r3)
/* 806DACF4 C05D0038 */ lfs         f2, 0x38(r29)
/* 806DACF8 C0230008 */ lfs         f1, 8(r3)
/* 806DACFC EC630028 */ fsubs       f3, f3, f0
/* 806DAD00 C01D00BC */ lfs         f0, 0xbc(r29)
/* 806DAD04 EC220828 */ fsubs       f1, f2, f1
/* 806DAD08 EC4300F2 */ fmuls       f2, f3, f3
/* 806DAD0C EC210072 */ fmuls       f1, f1, f1
/* 806DAD10 EC22082A */ fadds       f1, f2, f1
/* 806DAD14 FC010040 */ fcmpo       cr0, f1, f0
/* 806DAD18 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 806DAD1C 7C600026 */ mfcr        r3
/* 806DAD20 809D00CC */ lwz         r4, 0xcc(r29)
/* 806DAD24 54631FFF */ rlwinm.     r3, r3, 3, 0x1f, 0x1f
/* 806DAD28 801D00D0 */ lwz         r0, 0xd0(r29)
/* 806DAD2C 807D00C8 */ lwz         r3, 0xc8(r29)
/* 806DAD30 38A00000 */ li          r5, 0
/* 806DAD34 7C040214 */ add         r0, r4, r0
/* 806DAD38 7C030050 */ subf        r0, r3, r0
/* 806DAD3C 7C000034 */ cntlzw      r0, r0
/* 806DAD40 5400D97E */ srwi        r0, r0, 5
/* 806DAD44 41820010 */ beq-        lbl_806dad54
/* 806DAD48 2C000000 */ cmpwi       r0, 0
/* 806DAD4C 41820008 */ beq-        lbl_806dad54
/* 806DAD50 38A00001 */ li          r5, 1
lbl_806dad54:
/* 806DAD54 7C801A78 */ xor         r0, r4, r3
/* 806DAD58 7C032000 */ cmpw        r3, r4
/* 806DAD5C 7C030E70 */ srawi       r3, r0, 1
/* 806DAD60 3BC00000 */ li          r30, 0
/* 806DAD64 7C002038 */ and         r0, r0, r4
/* 806DAD68 7C001850 */ subf        r0, r0, r3
/* 806DAD6C 541C0FFE */ srwi        r28, r0, 0x1f
/* 806DAD70 41800010 */ blt-        lbl_806dad80
/* 806DAD74 2C050000 */ cmpwi       r5, 0
/* 806DAD78 40820008 */ bne-        lbl_806dad80
/* 806DAD7C 3BC00001 */ li          r30, 1
lbl_806dad80:
/* 806DAD80 2C050000 */ cmpwi       r5, 0
/* 806DAD84 4182002C */ beq-        lbl_806dadb0
/* 806DAD88 881D00C0 */ lbz         r0, 0xc0(r29)
/* 806DAD8C 38600000 */ li          r3, 0
/* 806DAD90 907D00C8 */ stw         r3, 0xc8(r29)
/* 806DAD94 2C000000 */ cmpwi       r0, 0
/* 806DAD98 41820018 */ beq-        lbl_806dadb0
/* 806DAD9C 819D0000 */ lwz         r12, 0(r29)
/* 806DADA0 7FA3EB78 */ mr          r3, r29
/* 806DADA4 818C0094 */ lwz         r12, 0x94(r12)
/* 806DADA8 7D8903A6 */ mtctr       r12
/* 806DADAC 4E800421 */ bctrl       
lbl_806dadb0:
/* 806DADB0 2C1C0000 */ cmpwi       r28, 0
/* 806DADB4 4182005C */ beq-        lbl_806dae10
/* 806DADB8 2C1F0000 */ cmpwi       r31, 0
/* 806DADBC 40820090 */ bne-        lbl_806dae4c
/* 806DADC0 807D00B8 */ lwz         r3, 0xb8(r29)
/* 806DADC4 81830000 */ lwz         r12, 0(r3)
/* 806DADC8 818C000C */ lwz         r12, 0xc(r12)
/* 806DADCC 7D8903A6 */ mtctr       r12
/* 806DADD0 4E800421 */ bctrl       
/* 806DADD4 7FA3EB78 */ mr          r3, r29
/* 806DADD8 48146869 */ bl          unk_80821640
/* 806DADDC 807D00B8 */ lwz         r3, 0xb8(r29)
/* 806DADE0 389D0058 */ addi        r4, r29, 0x58
/* 806DADE4 81830000 */ lwz         r12, 0(r3)
/* 806DADE8 818C0078 */ lwz         r12, 0x78(r12)
/* 806DADEC 7D8903A6 */ mtctr       r12
/* 806DADF0 4E800421 */ bctrl       
/* 806DADF4 807D00B8 */ lwz         r3, 0xb8(r29)
/* 806DADF8 C03D0040 */ lfs         f1, 0x40(r29)
/* 806DADFC 81830000 */ lwz         r12, 0(r3)
/* 806DAE00 818C006C */ lwz         r12, 0x6c(r12)
/* 806DAE04 7D8903A6 */ mtctr       r12
/* 806DAE08 4E800421 */ bctrl       
/* 806DAE0C 48000040 */ b           lbl_806dae4c
lbl_806dae10:
/* 806DAE10 2C1E0000 */ cmpwi       r30, 0
/* 806DAE14 41820038 */ beq-        lbl_806dae4c
/* 806DAE18 881D00C0 */ lbz         r0, 0xc0(r29)
/* 806DAE1C 2C000000 */ cmpwi       r0, 0
/* 806DAE20 41820018 */ beq-        lbl_806dae38
/* 806DAE24 819D0000 */ lwz         r12, 0(r29)
/* 806DAE28 7FA3EB78 */ mr          r3, r29
/* 806DAE2C 818C0090 */ lwz         r12, 0x90(r12)
/* 806DAE30 7D8903A6 */ mtctr       r12
/* 806DAE34 4E800421 */ bctrl       
lbl_806dae38:
/* 806DAE38 807D00B8 */ lwz         r3, 0xb8(r29)
/* 806DAE3C 81830000 */ lwz         r12, 0(r3)
/* 806DAE40 818C0010 */ lwz         r12, 0x10(r12)
/* 806DAE44 7D8903A6 */ mtctr       r12
/* 806DAE48 4E800421 */ bctrl       
lbl_806dae4c:
/* 806DAE4C 2C1F0000 */ cmpwi       r31, 0
/* 806DAE50 41820018 */ beq-        lbl_806dae68
/* 806DAE54 807D00B8 */ lwz         r3, 0xb8(r29)
/* 806DAE58 81830000 */ lwz         r12, 0(r3)
/* 806DAE5C 818C0010 */ lwz         r12, 0x10(r12)
/* 806DAE60 7D8903A6 */ mtctr       r12
/* 806DAE64 4E800421 */ bctrl       
lbl_806dae68:
/* 806DAE68 807D00B8 */ lwz         r3, 0xb8(r29)
/* 806DAE6C 38630074 */ addi        r3, r3, 0x74
/* 806DAE70 4B95C781 */ bl          unk_800375f0
/* 806DAE74 2C030000 */ cmpwi       r3, 0
/* 806DAE78 4082000C */ bne-        lbl_806dae84
/* 806DAE7C 38600000 */ li          r3, 0
/* 806DAE80 48000008 */ b           lbl_806dae88
lbl_806dae84:
/* 806DAE84 8063000C */ lwz         r3, 0xc(r3)
lbl_806dae88:
/* 806DAE88 2C030001 */ cmpwi       r3, 1
/* 806DAE8C 38000000 */ li          r0, 0
/* 806DAE90 4182000C */ beq-        lbl_806dae9c
/* 806DAE94 2C030002 */ cmpwi       r3, 2
/* 806DAE98 40820008 */ bne-        lbl_806daea0
lbl_806dae9c:
/* 806DAE9C 38000001 */ li          r0, 1
lbl_806daea0:
/* 806DAEA0 2C000000 */ cmpwi       r0, 0
/* 806DAEA4 4182002C */ beq-        lbl_806daed0
/* 806DAEA8 807D00B8 */ lwz         r3, 0xb8(r29)
/* 806DAEAC 81830000 */ lwz         r12, 0(r3)
/* 806DAEB0 818C0080 */ lwz         r12, 0x80(r12)
/* 806DAEB4 7D8903A6 */ mtctr       r12
/* 806DAEB8 4E800421 */ bctrl       
/* 806DAEBC 3C80808A */ lis         r4, lbl_808a0340@ha
/* 806DAEC0 7FA3EB78 */ mr          r3, r29
/* 806DAEC4 C0240340 */ lfs         f1, lbl_808a0340@l(r4)
/* 806DAEC8 3880035D */ li          r4, 0x35d
/* 806DAECC 48145651 */ bl          unk_8082051c
lbl_806daed0:
/* 806DAED0 807D00CC */ lwz         r3, 0xcc(r29)
/* 806DAED4 801D00D0 */ lwz         r0, 0xd0(r29)
/* 806DAED8 809D00C8 */ lwz         r4, 0xc8(r29)
/* 806DAEDC 7C030214 */ add         r0, r3, r0
/* 806DAEE0 7C040000 */ cmpw        r4, r0
/* 806DAEE4 4080000C */ bge-        lbl_806daef0
/* 806DAEE8 38040001 */ addi        r0, r4, 1
/* 806DAEEC 901D00C8 */ stw         r0, 0xc8(r29)
lbl_806daef0:
/* 806DAEF0 80010024 */ lwz         r0, 0x24(r1)
/* 806DAEF4 83E1001C */ lwz         r31, 0x1c(r1)
/* 806DAEF8 83C10018 */ lwz         r30, 0x18(r1)
/* 806DAEFC 83A10014 */ lwz         r29, 0x14(r1)
/* 806DAF00 83810010 */ lwz         r28, 0x10(r1)
/* 806DAF04 7C0803A6 */ mtlr        r0
/* 806DAF08 38210020 */ addi        r1, r1, 0x20
/* 806DAF0C 4E800020 */ blr         