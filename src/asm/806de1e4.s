nofralloc
/* 806DE1E4 9421FFD0 */ stwu        r1, -0x30(r1)
/* 806DE1E8 7C0802A6 */ mflr        r0
/* 806DE1EC 90010034 */ stw         r0, 0x34(r1)
/* 806DE1F0 DBE10020 */ stfd        f31, 0x20(r1)
/* 806DE1F4 F3E10028 */ psq_st      f31, 0x28(r1), 0, 0
/* 806DE1F8 3CA04330 */ lis         r5, 0x4330
/* 806DE1FC 93E1001C */ stw         r31, 0x1c(r1)
/* 806DE200 7C7F1B78 */ mr          r31, r3
/* 806DE204 93C10018 */ stw         r30, 0x18(r1)
/* 806DE208 3FC0808A */ lis         r30, lbl_808a0498@ha
/* 806DE20C 3BDE0498 */ addi        r30, r30, lbl_808a0498@l
/* 806DE210 808300BC */ lwz         r4, 0xbc(r3)
/* 806DE214 800300DC */ lwz         r0, 0xdc(r3)
/* 806DE218 90A10008 */ stw         r5, 8(r1)
/* 806DE21C 7C040040 */ cmplw       r4, r0
/* 806DE220 90A10010 */ stw         r5, 0x10(r1)
/* 806DE224 4180000C */ blt-        lbl_806de230
/* 806DE228 38000001 */ li          r0, 1
/* 806DE22C 900300B8 */ stw         r0, 0xb8(r3)
lbl_806de230:
/* 806DE230 80A300BC */ lwz         r5, 0xbc(r3)
/* 806DE234 800300E4 */ lwz         r0, 0xe4(r3)
/* 806DE238 7C050040 */ cmplw       r5, r0
/* 806DE23C 41800074 */ blt-        lbl_806de2b0
/* 806DE240 808300E8 */ lwz         r4, 0xe8(r3)
/* 806DE244 7C052040 */ cmplw       r5, r4
/* 806DE248 40800068 */ bge-        lbl_806de2b0
/* 806DE24C 7C040050 */ subf        r0, r4, r0
/* 806DE250 7CA42850 */ subf        r5, r4, r5
/* 806DE254 6C048000 */ xoris       r4, r0, 0x8000
/* 806DE258 9081000C */ stw         r4, 0xc(r1)
/* 806DE25C C0A300F8 */ lfs         f5, 0xf8(r3)
/* 806DE260 7C0529D6 */ mullw       r0, r5, r5
/* 806DE264 C05E0020 */ lfs         f2, 0x20(r30)
/* 806DE268 C8010008 */ lfd         f0, 8(r1)
/* 806DE26C C83E0010 */ lfd         f1, 0x10(r30)
/* 806DE270 EC851028 */ fsubs       f4, f5, f2
/* 806DE274 90810014 */ stw         r4, 0x14(r1)
/* 806DE278 EC600828 */ fsubs       f3, f0, f1
/* 806DE27C C8010010 */ lfd         f0, 0x10(r1)
/* 806DE280 9001000C */ stw         r0, 0xc(r1)
/* 806DE284 EC400828 */ fsubs       f2, f0, f1
/* 806DE288 C83E0038 */ lfd         f1, 0x38(r30)
/* 806DE28C EC641824 */ fdivs       f3, f4, f3
/* 806DE290 C8010008 */ lfd         f0, 8(r1)
/* 806DE294 EC431024 */ fdivs       f2, f3, f2
/* 806DE298 EC200828 */ fsubs       f1, f0, f1
/* 806DE29C FC001050 */ fneg        f0, f2
/* 806DE2A0 EC000072 */ fmuls       f0, f0, f1
/* 806DE2A4 EC05002A */ fadds       f0, f5, f0
/* 806DE2A8 D00300E0 */ stfs        f0, 0xe0(r3)
/* 806DE2AC 48000120 */ b           lbl_806de3cc
lbl_806de2b0:
/* 806DE2B0 800300E8 */ lwz         r0, 0xe8(r3)
/* 806DE2B4 7C050040 */ cmplw       r5, r0
/* 806DE2B8 41800070 */ blt-        lbl_806de328
/* 806DE2BC 808300EC */ lwz         r4, 0xec(r3)
/* 806DE2C0 7C052040 */ cmplw       r5, r4
/* 806DE2C4 40800064 */ bge-        lbl_806de328
/* 806DE2C8 7C002050 */ subf        r0, r0, r4
/* 806DE2CC 7CA42850 */ subf        r5, r4, r5
/* 806DE2D0 6C048000 */ xoris       r4, r0, 0x8000
/* 806DE2D4 90810014 */ stw         r4, 0x14(r1)
/* 806DE2D8 C04300F8 */ lfs         f2, 0xf8(r3)
/* 806DE2DC 7C0529D6 */ mullw       r0, r5, r5
/* 806DE2E0 C0A300FC */ lfs         f5, 0xfc(r3)
/* 806DE2E4 C8010010 */ lfd         f0, 0x10(r1)
/* 806DE2E8 C83E0010 */ lfd         f1, 0x10(r30)
/* 806DE2EC EC822828 */ fsubs       f4, f2, f5
/* 806DE2F0 9081000C */ stw         r4, 0xc(r1)
/* 806DE2F4 EC600828 */ fsubs       f3, f0, f1
/* 806DE2F8 C8010008 */ lfd         f0, 8(r1)
/* 806DE2FC 90010014 */ stw         r0, 0x14(r1)
/* 806DE300 EC400828 */ fsubs       f2, f0, f1
/* 806DE304 C83E0038 */ lfd         f1, 0x38(r30)
/* 806DE308 EC641824 */ fdivs       f3, f4, f3
/* 806DE30C C8010010 */ lfd         f0, 0x10(r1)
/* 806DE310 EC431024 */ fdivs       f2, f3, f2
/* 806DE314 EC000828 */ fsubs       f0, f0, f1
/* 806DE318 EC020032 */ fmuls       f0, f2, f0
/* 806DE31C EC05002A */ fadds       f0, f5, f0
/* 806DE320 D00300E0 */ stfs        f0, 0xe0(r3)
/* 806DE324 480000A8 */ b           lbl_806de3cc
lbl_806de328:
/* 806DE328 80C300EC */ lwz         r6, 0xec(r3)
/* 806DE32C 7C053040 */ cmplw       r5, r6
/* 806DE330 4180009C */ blt-        lbl_806de3cc
/* 806DE334 800300F0 */ lwz         r0, 0xf0(r3)
/* 806DE338 7C050040 */ cmplw       r5, r0
/* 806DE33C 40800090 */ bge-        lbl_806de3cc
/* 806DE340 7C860050 */ subf        r4, r6, r0
/* 806DE344 7C062850 */ subf        r0, r6, r5
/* 806DE348 6C848000 */ xoris       r4, r4, 0x8000
/* 806DE34C 9081000C */ stw         r4, 0xc(r1)
/* 806DE350 C85E0010 */ lfd         f2, 0x10(r30)
/* 806DE354 C8210008 */ lfd         f1, 8(r1)
/* 806DE358 C8DE0038 */ lfd         f6, 0x38(r30)
/* 806DE35C 90A1000C */ stw         r5, 0xc(r1)
/* 806DE360 ECA11028 */ fsubs       f5, f1, f2
/* 806DE364 C0FE0020 */ lfs         f7, 0x20(r30)
/* 806DE368 C8210008 */ lfd         f1, 8(r1)
/* 806DE36C C01E002C */ lfs         f0, 0x2c(r30)
/* 806DE370 ED072824 */ fdivs       f8, f7, f5
/* 806DE374 C06300F4 */ lfs         f3, 0xf4(r3)
/* 806DE378 90010014 */ stw         r0, 0x14(r1)
/* 806DE37C C8A10010 */ lfd         f5, 0x10(r1)
/* 806DE380 EC813028 */ fsubs       f4, f1, f6
/* 806DE384 C03E0028 */ lfs         f1, 0x28(r30)
/* 806DE388 EC4000F2 */ fmuls       f2, f0, f3
/* 806DE38C C01E0030 */ lfs         f0, 0x30(r30)
/* 806DE390 EC441028 */ fsubs       f2, f4, f2
/* 806DE394 EC853028 */ fsubs       f4, f5, f6
/* 806DE398 EC2100B2 */ fmuls       f1, f1, f2
/* 806DE39C EC480132 */ fmuls       f2, f8, f4
/* 806DE3A0 EC211824 */ fdivs       f1, f1, f3
/* 806DE3A4 EFE71028 */ fsubs       f31, f7, f2
/* 806DE3A8 EC200072 */ fmuls       f1, f0, f1
/* 806DE3AC 4B9A6D65 */ bl          SinFIdx__Q24nw4r4mathFf
/* 806DE3B0 C05E0020 */ lfs         f2, 0x20(r30)
/* 806DE3B4 C01F00FC */ lfs         f0, 0xfc(r31)
/* 806DE3B8 EC020028 */ fsubs       f0, f2, f0
/* 806DE3BC EC0007F2 */ fmuls       f0, f0, f31
/* 806DE3C0 EC000072 */ fmuls       f0, f0, f1
/* 806DE3C4 EC02002A */ fadds       f0, f2, f0
/* 806DE3C8 D01F00E0 */ stfs        f0, 0xe0(r31)
lbl_806de3cc:
/* 806DE3CC A01F002C */ lhz         r0, 0x2c(r31)
/* 806DE3D0 C01F00E0 */ lfs         f0, 0xe0(r31)
/* 806DE3D4 60000008 */ ori         r0, r0, 8
/* 806DE3D8 B01F002C */ sth         r0, 0x2c(r31)
/* 806DE3DC D01F003C */ stfs        f0, 0x3c(r31)
/* 806DE3E0 D01F0040 */ stfs        f0, 0x40(r31)
/* 806DE3E4 D01F0044 */ stfs        f0, 0x44(r31)
/* 806DE3E8 E3E10028 */ psq_l       f31, 0x28(r1), 0, 0
/* 806DE3EC CBE10020 */ lfd         f31, 0x20(r1)
/* 806DE3F0 83E1001C */ lwz         r31, 0x1c(r1)
/* 806DE3F4 83C10018 */ lwz         r30, 0x18(r1)
/* 806DE3F8 80010034 */ lwz         r0, 0x34(r1)
/* 806DE3FC 7C0803A6 */ mtlr        r0
/* 806DE400 38210030 */ addi        r1, r1, 0x30
/* 806DE404 4E800020 */ blr         