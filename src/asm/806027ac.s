nofralloc
/* 806027AC 9421FFE0 */ stwu        r1, -0x20(r1)
/* 806027B0 7C0802A6 */ mflr        r0
/* 806027B4 90010024 */ stw         r0, 0x24(r1)
/* 806027B8 DBE10010 */ stfd        f31, 0x10(r1)
/* 806027BC F3E10018 */ psq_st      f31, 0x18(r1), 0, 0
/* 806027C0 93E1000C */ stw         r31, 0xc(r1)
/* 806027C4 7C9F2378 */ mr          r31, r4
/* 806027C8 93C10008 */ stw         r30, 8(r1)
/* 806027CC 7C7E1B78 */ mr          r30, r3
/* 806027D0 80030004 */ lwz         r0, 4(r3)
/* 806027D4 2C000000 */ cmpwi       r0, 0
/* 806027D8 40820014 */ bne-        lbl_806027ec
/* 806027DC 7FE3FB78 */ mr          r3, r31
/* 806027E0 4803AAA5 */ bl          UIControl_getAnimStartFrame
/* 806027E4 FFE00890 */ fmr         f31, f1
/* 806027E8 48000014 */ b           lbl_806027fc
lbl_806027ec:
/* 806027EC 7FE3FB78 */ mr          r3, r31
/* 806027F0 4803AA95 */ bl          UIControl_getAnimStartFrame
/* 806027F4 C01E000C */ lfs         f0, 0xc(r30)
/* 806027F8 EFE00828 */ fsubs       f31, f0, f1
lbl_806027fc:
/* 806027FC C03E001C */ lfs         f1, 0x1c(r30)
/* 80602800 FC01F840 */ fcmpo       cr0, f1, f31
/* 80602804 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 80602808 4082001C */ bne-        lbl_80602824
/* 8060280C C03E0018 */ lfs         f1, 0x18(r30)
/* 80602810 7FE3FB78 */ mr          r3, r31
/* 80602814 4803A8A5 */ bl          UIControl_solve
/* 80602818 38000000 */ li          r0, 0
/* 8060281C 981E0020 */ stb         r0, 0x20(r30)
/* 80602820 4800008C */ b           lbl_806028ac
lbl_80602824:
/* 80602824 3C608089 */ lis         r3, lbl_80896838@ha
/* 80602828 C0036838 */ lfs         f0, lbl_80896838@l(r3)
/* 8060282C EC1F002A */ fadds       f0, f31, f0
/* 80602830 FC010040 */ fcmpo       cr0, f1, f0
/* 80602834 40800064 */ bge-        lbl_80602898
/* 80602838 EC41F828 */ fsubs       f2, f1, f31
/* 8060283C C03E0014 */ lfs         f1, 0x14(r30)
/* 80602840 C01E0018 */ lfs         f0, 0x18(r30)
/* 80602844 7FE3FB78 */ mr          r3, r31
/* 80602848 EC2100B2 */ fmuls       f1, f1, f2
/* 8060284C EC20082A */ fadds       f1, f0, f1
/* 80602850 4803A869 */ bl          UIControl_solve
/* 80602854 3C608089 */ lis         r3, lbl_80896828@ha
/* 80602858 38000000 */ li          r0, 0
/* 8060285C C03E001C */ lfs         f1, 0x1c(r30)
/* 80602860 C0036828 */ lfs         f0, lbl_80896828@l(r3)
/* 80602864 981E0020 */ stb         r0, 0x20(r30)
/* 80602868 EC010028 */ fsubs       f0, f1, f0
/* 8060286C FC00F840 */ fcmpo       cr0, f0, f31
/* 80602870 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 80602874 40820038 */ bne-        lbl_806028ac
/* 80602878 809E0008 */ lwz         r4, 8(r30)
/* 8060287C 7FE3FB78 */ mr          r3, r31
/* 80602880 80BE0004 */ lwz         r5, 4(r30)
/* 80602884 3804FFFD */ addi        r0, r4, -3
/* 80602888 7C000034 */ cntlzw      r0, r0
/* 8060288C 5404D97E */ srwi        r4, r0, 5
/* 80602890 4803A851 */ bl          UIControl_onPageEvent
/* 80602894 48000018 */ b           lbl_806028ac
lbl_80602898:
/* 80602898 C03E0018 */ lfs         f1, 0x18(r30)
/* 8060289C 7FE3FB78 */ mr          r3, r31
/* 806028A0 C01E0010 */ lfs         f0, 0x10(r30)
/* 806028A4 EC21002A */ fadds       f1, f1, f0
/* 806028A8 4803A811 */ bl          UIControl_solve
lbl_806028ac:
/* 806028AC E3E10018 */ psq_l       f31, 0x18(r1), 0, 0
/* 806028B0 80010024 */ lwz         r0, 0x24(r1)
/* 806028B4 CBE10010 */ lfd         f31, 0x10(r1)
/* 806028B8 83E1000C */ lwz         r31, 0xc(r1)
/* 806028BC 83C10008 */ lwz         r30, 8(r1)
/* 806028C0 7C0803A6 */ mtlr        r0
/* 806028C4 38210020 */ addi        r1, r1, 0x20
/* 806028C8 4E800020 */ blr         