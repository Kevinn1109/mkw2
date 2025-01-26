nofralloc
/* 8057C3D4 9421FFE0 */ stwu        r1, -0x20(r1)
/* 8057C3D8 7C0802A6 */ mflr        r0
/* 8057C3DC 38C00001 */ li          r6, 1
/* 8057C3E0 90010024 */ stw         r0, 0x24(r1)
/* 8057C3E4 93E1001C */ stw         r31, 0x1c(r1)
/* 8057C3E8 7C7F1B78 */ mr          r31, r3
/* 8057C3EC 80830000 */ lwz         r4, 0(r3)
/* 8057C3F0 80E40004 */ lwz         r7, 4(r4)
/* 8057C3F4 80070008 */ lwz         r0, 8(r7)
/* 8057C3F8 54000631 */ rlwinm.     r0, r0, 0, 0x18, 0x18
/* 8057C3FC 4082001C */ bne-        lbl_8057c418
/* 8057C400 3C802801 */ lis         r4, 0x2801
/* 8057C404 80A7000C */ lwz         r5, 0xc(r7)
/* 8057C408 38048000 */ addi        r0, r4, -0x8000
/* 8057C40C 7CA00039 */ and.        r0, r5, r0
/* 8057C410 40820008 */ bne-        lbl_8057c418
/* 8057C414 38C00000 */ li          r6, 0
lbl_8057c418:
/* 8057C418 2C060000 */ cmpwi       r6, 0
/* 8057C41C 40820108 */ bne-        lbl_8057c524
/* 8057C420 80070004 */ lwz         r0, 4(r7)
/* 8057C424 54000529 */ rlwinm.     r0, r0, 0, 0x14, 0x14
/* 8057C428 4182004C */ beq-        lbl_8057c474
/* 8057C42C A00300C8 */ lhz         r0, 0xc8(r3)
/* 8057C430 C00300C0 */ lfs         f0, 0xc0(r3)
/* 8057C434 2C000000 */ cmpwi       r0, 0
/* 8057C438 D00300B8 */ stfs        f0, 0xb8(r3)
/* 8057C43C 4082000C */ bne-        lbl_8057c448
/* 8057C440 38000001 */ li          r0, 1
/* 8057C444 B00300C8 */ sth         r0, 0xc8(r3)
lbl_8057c448:
/* 8057C448 A08300C8 */ lhz         r4, 0xc8(r3)
/* 8057C44C 3C004330 */ lis         r0, 0x4330
/* 8057C450 9081000C */ stw         r4, 0xc(r1)
/* 8057C454 3C808089 */ lis         r4, lbl_80891a90@ha
/* 8057C458 C8441A90 */ lfd         f2, lbl_80891a90@l(r4)
/* 8057C45C 90010008 */ stw         r0, 8(r1)
/* 8057C460 C00300C4 */ lfs         f0, 0xc4(r3)
/* 8057C464 C8210008 */ lfd         f1, 8(r1)
/* 8057C468 EC211028 */ fsubs       f1, f1, f2
/* 8057C46C EC000824 */ fdivs       f0, f0, f1
/* 8057C470 D00300BC */ stfs        f0, 0xbc(r3)
lbl_8057c474:
/* 8057C474 80630000 */ lwz         r3, 0(r3)
/* 8057C478 80630004 */ lwz         r3, 4(r3)
/* 8057C47C 80630004 */ lwz         r3, 4(r3)
/* 8057C480 5460056B */ rlwinm.     r0, r3, 0, 0x15, 0x15
/* 8057C484 418200BC */ beq-        lbl_8057c540
/* 8057C488 54600529 */ rlwinm.     r0, r3, 0, 0x14, 0x14
/* 8057C48C 41820074 */ beq-        lbl_8057c500
/* 8057C490 7FE3FB78 */ mr          r3, r31
/* 8057C494 48014389 */ bl          bodyColInfo__Q24Kart15KartObjectProxyCFv
/* 8057C498 C0230064 */ lfs         f1, 0x64(r3)
/* 8057C49C C01F00C0 */ lfs         f0, 0xc0(r31)
/* 8057C4A0 FC010040 */ fcmpo       cr0, f1, f0
/* 8057C4A4 40800014 */ bge-        lbl_8057c4b8
/* 8057C4A8 7FE3FB78 */ mr          r3, r31
/* 8057C4AC 48014371 */ bl          bodyColInfo__Q24Kart15KartObjectProxyCFv
/* 8057C4B0 C0030064 */ lfs         f0, 0x64(r3)
/* 8057C4B4 D01F00B8 */ stfs        f0, 0xb8(r31)
lbl_8057c4b8:
/* 8057C4B8 7FE3FB78 */ mr          r3, r31
/* 8057C4BC 48014361 */ bl          bodyColInfo__Q24Kart15KartObjectProxyCFv
/* 8057C4C0 A0BF00C8 */ lhz         r5, 0xc8(r31)
/* 8057C4C4 3C004330 */ lis         r0, 0x4330
/* 8057C4C8 90010008 */ stw         r0, 8(r1)
/* 8057C4CC 3C808089 */ lis         r4, lbl_80891a60@ha
/* 8057C4D0 38050001 */ addi        r0, r5, 1
/* 8057C4D4 C0630068 */ lfs         f3, 0x68(r3)
/* 8057C4D8 6C008000 */ xoris       r0, r0, 0x8000
/* 8057C4DC 9001000C */ stw         r0, 0xc(r1)
/* 8057C4E0 C05F00C4 */ lfs         f2, 0xc4(r31)
/* 8057C4E4 C8241A60 */ lfd         f1, lbl_80891a60@l(r4)
/* 8057C4E8 C8010008 */ lfd         f0, 8(r1)
/* 8057C4EC EC42182A */ fadds       f2, f2, f3
/* 8057C4F0 EC000828 */ fsubs       f0, f0, f1
/* 8057C4F4 EC020024 */ fdivs       f0, f2, f0
/* 8057C4F8 D01F00BC */ stfs        f0, 0xbc(r31)
/* 8057C4FC 48000044 */ b           lbl_8057c540
lbl_8057c500:
/* 8057C500 7FE3FB78 */ mr          r3, r31
/* 8057C504 48014319 */ bl          bodyColInfo__Q24Kart15KartObjectProxyCFv
/* 8057C508 C0030064 */ lfs         f0, 0x64(r3)
/* 8057C50C 7FE3FB78 */ mr          r3, r31
/* 8057C510 D01F00B8 */ stfs        f0, 0xb8(r31)
/* 8057C514 48014309 */ bl          bodyColInfo__Q24Kart15KartObjectProxyCFv
/* 8057C518 C0030068 */ lfs         f0, 0x68(r3)
/* 8057C51C D01F00BC */ stfs        f0, 0xbc(r31)
/* 8057C520 48000020 */ b           lbl_8057c540
lbl_8057c524:
/* 8057C524 3C808089 */ lis         r4, lbl_80891a04@ha
/* 8057C528 C0041A04 */ lfs         f0, lbl_80891a04@l(r4)
/* 8057C52C D00300B8 */ stfs        f0, 0xb8(r3)
/* 8057C530 7FE3FB78 */ mr          r3, r31
/* 8057C534 48014341 */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 8057C538 C00300F0 */ lfs         f0, 0xf0(r3)
/* 8057C53C D01F00BC */ stfs        f0, 0xbc(r31)
lbl_8057c540:
/* 8057C540 7FE3FB78 */ mr          r3, r31
/* 8057C544 4800A239 */ bl          unk_8058677c
/* 8057C548 809F0000 */ lwz         r4, 0(r31)
/* 8057C54C 80640000 */ lwz         r3, 0(r4)
/* 8057C550 80030034 */ lwz         r0, 0x34(r3)
/* 8057C554 2C000000 */ cmpwi       r0, 0
/* 8057C558 4182007C */ beq-        lbl_8057c5d4
/* 8057C55C 80640004 */ lwz         r3, 4(r4)
/* 8057C560 80630004 */ lwz         r3, 4(r3)
/* 8057C564 5460035B */ rlwinm.     r0, r3, 0, 0xd, 0xd
/* 8057C568 4182006C */ beq-        lbl_8057c5d4
/* 8057C56C 546006F7 */ rlwinm.     r0, r3, 0, 0x1b, 0x1b
/* 8057C570 40820064 */ bne-        lbl_8057c5d4
/* 8057C574 7FE3FB78 */ mr          r3, r31
/* 8057C578 480142D5 */ bl          kartCollide__Q24Kart15KartObjectProxyFv
/* 8057C57C 8003002C */ lwz         r0, 0x2c(r3)
/* 8057C580 54000673 */ rlwinm.     r0, r0, 0, 0x19, 0x19
/* 8057C584 41820050 */ beq-        lbl_8057c5d4
/* 8057C588 80DF0000 */ lwz         r6, 0(r31)
/* 8057C58C 38A00001 */ li          r5, 1
/* 8057C590 80860004 */ lwz         r4, 4(r6)
/* 8057C594 80040008 */ lwz         r0, 8(r4)
/* 8057C598 54000631 */ rlwinm.     r0, r0, 0, 0x18, 0x18
/* 8057C59C 4082001C */ bne-        lbl_8057c5b8
/* 8057C5A0 3C602801 */ lis         r3, 0x2801
/* 8057C5A4 8084000C */ lwz         r4, 0xc(r4)
/* 8057C5A8 38038000 */ addi        r0, r3, -0x8000
/* 8057C5AC 7C800039 */ and.        r0, r4, r0
/* 8057C5B0 40820008 */ bne-        lbl_8057c5b8
/* 8057C5B4 38A00000 */ li          r5, 0
lbl_8057c5b8:
/* 8057C5B8 2C050000 */ cmpwi       r5, 0
/* 8057C5BC 40820018 */ bne-        lbl_8057c5d4
/* 8057C5C0 80660000 */ lwz         r3, 0(r6)
/* 8057C5C4 80830034 */ lwz         r4, 0x34(r3)
/* 8057C5C8 80640008 */ lwz         r3, 8(r4)
/* 8057C5CC 38030001 */ addi        r0, r3, 1
/* 8057C5D0 90040008 */ stw         r0, 8(r4)
lbl_8057c5d4:
/* 8057C5D4 80010024 */ lwz         r0, 0x24(r1)
/* 8057C5D8 83E1001C */ lwz         r31, 0x1c(r1)
/* 8057C5DC 7C0803A6 */ mtlr        r0
/* 8057C5E0 38210020 */ addi        r1, r1, 0x20
/* 8057C5E4 4E800020 */ blr         