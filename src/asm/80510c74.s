nofralloc
/* 80510C74 C0040008 */ lfs         f0, 8(r4)
/* 80510C78 3D008089 */ lis         r8, lbl_8088f8d0@ha
/* 80510C7C C0450000 */ lfs         f2, 0(r5)
/* 80510C80 FC600050 */ fneg        f3, f0
/* 80510C84 C0240004 */ lfs         f1, 4(r4)
/* 80510C88 C0050004 */ lfs         f0, 4(r5)
/* 80510C8C C088F8D0 */ lfs         f4, lbl_8088f8d0@l(r8)
/* 80510C90 EC4300B2 */ fmuls       f2, f3, f2
/* 80510C94 EC010032 */ fmuls       f0, f1, f0
/* 80510C98 EC02002A */ fadds       f0, f2, f0
/* 80510C9C FC002040 */ fcmpo       cr0, f0, f4
/* 80510CA0 4080000C */ bge-        lbl_80510cac
/* 80510CA4 38000000 */ li          r0, 0
/* 80510CA8 48000034 */ b           lbl_80510cdc
lbl_80510cac:
/* 80510CAC C0640010 */ lfs         f3, 0x10(r4)
/* 80510CB0 C0460000 */ lfs         f2, 0(r6)
/* 80510CB4 C024000C */ lfs         f1, 0xc(r4)
/* 80510CB8 C0060004 */ lfs         f0, 4(r6)
/* 80510CBC EC4300B2 */ fmuls       f2, f3, f2
/* 80510CC0 EC010032 */ fmuls       f0, f1, f0
/* 80510CC4 EC020028 */ fsubs       f0, f2, f0
/* 80510CC8 FC002040 */ fcmpo       cr0, f0, f4
/* 80510CCC 7C000026 */ mfcr        r0
/* 80510CD0 54000FFE */ srwi        r0, r0, 0x1f
/* 80510CD4 7C000034 */ cntlzw      r0, r0
/* 80510CD8 5400D97E */ srwi        r0, r0, 5
lbl_80510cdc:
/* 80510CDC 2C000000 */ cmpwi       r0, 0
/* 80510CE0 4082000C */ bne-        lbl_80510cec
/* 80510CE4 38600001 */ li          r3, 1
/* 80510CE8 4E800020 */ blr         
lbl_80510cec:
/* 80510CEC 81040000 */ lwz         r8, 0(r4)
/* 80510CF0 3C808089 */ lis         r4, lbl_8088f8d0@ha
/* 80510CF4 C0450000 */ lfs         f2, 0(r5)
/* 80510CF8 38000000 */ li          r0, 0
/* 80510CFC C0680010 */ lfs         f3, 0x10(r8)
/* 80510D00 C0280014 */ lfs         f1, 0x14(r8)
/* 80510D04 C0050004 */ lfs         f0, 4(r5)
/* 80510D08 EC4300B2 */ fmuls       f2, f3, f2
/* 80510D0C C0A30010 */ lfs         f5, 0x10(r3)
/* 80510D10 EC010032 */ fmuls       f0, f1, f0
/* 80510D14 C0860000 */ lfs         f4, 0(r6)
/* 80510D18 C0630014 */ lfs         f3, 0x14(r3)
/* 80510D1C C0260004 */ lfs         f1, 4(r6)
/* 80510D20 EC850132 */ fmuls       f4, f5, f4
/* 80510D24 EC42002A */ fadds       f2, f2, f0
/* 80510D28 EC230072 */ fmuls       f1, f3, f1
/* 80510D2C C004F8D0 */ lfs         f0, lbl_8088f8d0@l(r4)
/* 80510D30 FC401050 */ fneg        f2, f2
/* 80510D34 EC64082A */ fadds       f3, f4, f1
/* 80510D38 EC23102A */ fadds       f1, f3, f2
/* 80510D3C EC230824 */ fdivs       f1, f3, f1
/* 80510D40 D0270000 */ stfs        f1, 0(r7)
/* 80510D44 FC010040 */ fcmpo       cr0, f1, f0
/* 80510D48 4C411382 */ cror        cr0eq, cr0gt, cr0eq
/* 80510D4C 4082001C */ bne-        lbl_80510d68
/* 80510D50 3C608089 */ lis         r3, lbl_8088f8d4@ha
/* 80510D54 C003F8D4 */ lfs         f0, lbl_8088f8d4@l(r3)
/* 80510D58 FC010040 */ fcmpo       cr0, f1, f0
/* 80510D5C 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 80510D60 40820008 */ bne-        lbl_80510d68
/* 80510D64 38000001 */ li          r0, 1
lbl_80510d68:
/* 80510D68 2C000000 */ cmpwi       r0, 0
/* 80510D6C 38600002 */ li          r3, 2
/* 80510D70 4D820020 */ beqlr-      
/* 80510D74 38600000 */ li          r3, 0
/* 80510D78 4E800020 */ blr         