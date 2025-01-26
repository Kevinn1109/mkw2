nofralloc
/* 80510D7C 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80510D80 3CE08089 */ lis         r7, lbl_8088f8d0@ha
/* 80510D84 81230000 */ lwz         r9, 0(r3)
/* 80510D88 3CC08089 */ lis         r6, lbl_8088f8d4@ha
/* 80510D8C C0240008 */ lfs         f1, 8(r4)
/* 80510D90 7C681B78 */ mr          r8, r3
/* 80510D94 C049000C */ lfs         f2, 0xc(r9)
/* 80510D98 39400000 */ li          r10, 0
/* 80510D9C C0690008 */ lfs         f3, 8(r9)
/* 80510DA0 39200000 */ li          r9, 0
/* 80510DA4 EC411028 */ fsubs       f2, f1, f2
/* 80510DA8 C0040000 */ lfs         f0, 0(r4)
/* 80510DAC C0E7F8D0 */ lfs         f7, lbl_8088f8d0@l(r7)
/* 80510DB0 EC201828 */ fsubs       f1, f0, f3
/* 80510DB4 D0410014 */ stfs        f2, 0x14(r1)
/* 80510DB8 C006F8D4 */ lfs         f0, lbl_8088f8d4@l(r6)
/* 80510DBC D0210010 */ stfs        f1, 0x10(r1)
/* 80510DC0 48000134 */ b           lbl_80510ef4
lbl_80510dc4:
/* 80510DC4 80C80038 */ lwz         r6, 0x38(r8)
/* 80510DC8 C0280040 */ lfs         f1, 0x40(r8)
/* 80510DCC 80E60000 */ lwz         r7, 0(r6)
/* 80510DD0 FC400850 */ fneg        f2, f1
/* 80510DD4 C0840008 */ lfs         f4, 8(r4)
/* 80510DD8 C0270004 */ lfs         f1, 4(r7)
/* 80510DDC C0A70000 */ lfs         f5, 0(r7)
/* 80510DE0 EC840828 */ fsubs       f4, f4, f1
/* 80510DE4 C0640000 */ lfs         f3, 0(r4)
/* 80510DE8 C028003C */ lfs         f1, 0x3c(r8)
/* 80510DEC EC632828 */ fsubs       f3, f3, f5
/* 80510DF0 D081000C */ stfs        f4, 0xc(r1)
/* 80510DF4 EC210132 */ fmuls       f1, f1, f4
/* 80510DF8 D0610008 */ stfs        f3, 8(r1)
/* 80510DFC EC4200F2 */ fmuls       f2, f2, f3
/* 80510E00 EC22082A */ fadds       f1, f2, f1
/* 80510E04 FC013840 */ fcmpo       cr0, f1, f7
/* 80510E08 4080000C */ bge-        lbl_80510e14
/* 80510E0C 38000000 */ li          r0, 0
/* 80510E10 48000034 */ b           lbl_80510e44
lbl_80510e14:
/* 80510E14 C0880048 */ lfs         f4, 0x48(r8)
/* 80510E18 C0610010 */ lfs         f3, 0x10(r1)
/* 80510E1C C0480044 */ lfs         f2, 0x44(r8)
/* 80510E20 C0210014 */ lfs         f1, 0x14(r1)
/* 80510E24 EC6400F2 */ fmuls       f3, f4, f3
/* 80510E28 EC220072 */ fmuls       f1, f2, f1
/* 80510E2C EC230828 */ fsubs       f1, f3, f1
/* 80510E30 FC013840 */ fcmpo       cr0, f1, f7
/* 80510E34 7C000026 */ mfcr        r0
/* 80510E38 54000FFE */ srwi        r0, r0, 0x1f
/* 80510E3C 7C000034 */ cntlzw      r0, r0
/* 80510E40 5400D97E */ srwi        r0, r0, 5
lbl_80510e44:
/* 80510E44 2C000000 */ cmpwi       r0, 0
/* 80510E48 4082000C */ bne-        lbl_80510e54
/* 80510E4C 38000001 */ li          r0, 1
/* 80510E50 4800007C */ b           lbl_80510ecc
lbl_80510e54:
/* 80510E54 C0860010 */ lfs         f4, 0x10(r6)
/* 80510E58 38000000 */ li          r0, 0
/* 80510E5C C0610008 */ lfs         f3, 8(r1)
/* 80510E60 C0460014 */ lfs         f2, 0x14(r6)
/* 80510E64 C021000C */ lfs         f1, 0xc(r1)
/* 80510E68 EC6400F2 */ fmuls       f3, f4, f3
/* 80510E6C C0C30010 */ lfs         f6, 0x10(r3)
/* 80510E70 EC220072 */ fmuls       f1, f2, f1
/* 80510E74 C0A10010 */ lfs         f5, 0x10(r1)
/* 80510E78 C0830014 */ lfs         f4, 0x14(r3)
/* 80510E7C C0410014 */ lfs         f2, 0x14(r1)
/* 80510E80 ECA60172 */ fmuls       f5, f6, f5
/* 80510E84 EC63082A */ fadds       f3, f3, f1
/* 80510E88 EC2400B2 */ fmuls       f1, f4, f2
/* 80510E8C FC401850 */ fneg        f2, f3
/* 80510E90 EC65082A */ fadds       f3, f5, f1
/* 80510E94 EC23102A */ fadds       f1, f3, f2
/* 80510E98 EC230824 */ fdivs       f1, f3, f1
/* 80510E9C D0250000 */ stfs        f1, 0(r5)
/* 80510EA0 FC013840 */ fcmpo       cr0, f1, f7
/* 80510EA4 4C411382 */ cror        cr0eq, cr0gt, cr0eq
/* 80510EA8 40820014 */ bne-        lbl_80510ebc
/* 80510EAC FC010040 */ fcmpo       cr0, f1, f0
/* 80510EB0 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 80510EB4 40820008 */ bne-        lbl_80510ebc
/* 80510EB8 38000001 */ li          r0, 1
lbl_80510ebc:
/* 80510EBC 2C000000 */ cmpwi       r0, 0
/* 80510EC0 38000002 */ li          r0, 2
/* 80510EC4 41820008 */ beq-        lbl_80510ecc
/* 80510EC8 38000000 */ li          r0, 0
lbl_80510ecc:
/* 80510ECC 2C000000 */ cmpwi       r0, 0
/* 80510ED0 41820010 */ beq-        lbl_80510ee0
/* 80510ED4 2C000002 */ cmpwi       r0, 2
/* 80510ED8 41820010 */ beq-        lbl_80510ee8
/* 80510EDC 48000010 */ b           lbl_80510eec
lbl_80510ee0:
/* 80510EE0 38600000 */ li          r3, 0
/* 80510EE4 4800002C */ b           lbl_80510f10
lbl_80510ee8:
/* 80510EE8 39200001 */ li          r9, 1
lbl_80510eec:
/* 80510EEC 39080018 */ addi        r8, r8, 0x18
/* 80510EF0 394A0001 */ addi        r10, r10, 1
lbl_80510ef4:
/* 80510EF4 A0030004 */ lhz         r0, 4(r3)
/* 80510EF8 7C0A0000 */ cmpw        r10, r0
/* 80510EFC 4180FEC8 */ blt+        lbl_80510dc4
/* 80510F00 2C090000 */ cmpwi       r9, 0
/* 80510F04 38600001 */ li          r3, 1
/* 80510F08 41820008 */ beq-        lbl_80510f10
/* 80510F0C 38600002 */ li          r3, 2
lbl_80510f10:
/* 80510F10 38210020 */ addi        r1, r1, 0x20
/* 80510F14 4E800020 */ blr         