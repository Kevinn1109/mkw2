nofralloc
/* 80510BF0 81040000 */ lwz         r8, 0(r4)
/* 80510BF4 3C808089 */ lis         r4, lbl_8088f8d0@ha
/* 80510BF8 C0450000 */ lfs         f2, 0(r5)
/* 80510BFC 38000000 */ li          r0, 0
/* 80510C00 C0680010 */ lfs         f3, 0x10(r8)
/* 80510C04 C0280014 */ lfs         f1, 0x14(r8)
/* 80510C08 C0050004 */ lfs         f0, 4(r5)
/* 80510C0C EC4300B2 */ fmuls       f2, f3, f2
/* 80510C10 C0A30010 */ lfs         f5, 0x10(r3)
/* 80510C14 EC010032 */ fmuls       f0, f1, f0
/* 80510C18 C0860000 */ lfs         f4, 0(r6)
/* 80510C1C C0630014 */ lfs         f3, 0x14(r3)
/* 80510C20 C0260004 */ lfs         f1, 4(r6)
/* 80510C24 EC850132 */ fmuls       f4, f5, f4
/* 80510C28 EC42002A */ fadds       f2, f2, f0
/* 80510C2C EC230072 */ fmuls       f1, f3, f1
/* 80510C30 C004F8D0 */ lfs         f0, lbl_8088f8d0@l(r4)
/* 80510C34 FC601050 */ fneg        f3, f2
/* 80510C38 EC44082A */ fadds       f2, f4, f1
/* 80510C3C EC22182A */ fadds       f1, f2, f3
/* 80510C40 EC220824 */ fdivs       f1, f2, f1
/* 80510C44 D0270000 */ stfs        f1, 0(r7)
/* 80510C48 FC010040 */ fcmpo       cr0, f1, f0
/* 80510C4C 4C411382 */ cror        cr0eq, cr0gt, cr0eq
/* 80510C50 4082001C */ bne-        lbl_80510c6c
/* 80510C54 3C608089 */ lis         r3, lbl_8088f8d4@ha
/* 80510C58 C003F8D4 */ lfs         f0, lbl_8088f8d4@l(r3)
/* 80510C5C FC010040 */ fcmpo       cr0, f1, f0
/* 80510C60 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 80510C64 40820008 */ bne-        lbl_80510c6c
/* 80510C68 38000001 */ li          r0, 1
lbl_80510c6c:
/* 80510C6C 7C030378 */ mr          r3, r0
/* 80510C70 4E800020 */ blr         