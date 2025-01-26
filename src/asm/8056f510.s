nofralloc
/* 8056F510 9421FFE0 */ stwu        r1, -0x20(r1)
/* 8056F514 7C0802A6 */ mflr        r0
/* 8056F518 90010024 */ stw         r0, 0x24(r1)
/* 8056F51C 93E1001C */ stw         r31, 0x1c(r1)
/* 8056F520 7C9F2378 */ mr          r31, r4
/* 8056F524 93C10018 */ stw         r30, 0x18(r1)
/* 8056F528 7C7E1B78 */ mr          r30, r3
/* 8056F52C 93A10014 */ stw         r29, 0x14(r1)
/* 8056F530 80040000 */ lwz         r0, 0(r4)
/* 8056F534 540001CF */ rlwinm.     r0, r0, 0, 7, 7
/* 8056F538 41820014 */ beq-        lbl_8056f54c
/* 8056F53C 7FE3FB78 */ mr          r3, r31
/* 8056F540 3C800100 */ lis         r4, 0x100
/* 8056F544 4824E429 */ bl          findClosestCollisionEntry__5FieldFPUlUl
/* 8056F548 48000008 */ b           lbl_8056f550
lbl_8056f54c:
/* 8056F54C 38600000 */ li          r3, 0
lbl_8056f550:
/* 8056F550 2C030000 */ cmpwi       r3, 0
/* 8056F554 41820020 */ beq-        lbl_8056f574
/* 8056F558 387E0004 */ addi        r3, r30, 4
/* 8056F55C 48021239 */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 8056F560 3C80809C */ lis         r4, closestCollisionEntry__5Field@ha
/* 8056F564 80843BDC */ lwz         r4, closestCollisionEntry__5Field@l(r4)
/* 8056F568 A0040004 */ lhz         r0, 4(r4)
/* 8056F56C 5404DF7E */ rlwinm      r4, r0, 0x1b, 0x1d, 0x1f
/* 8056F570 481995D5 */ bl          unk_80708b44
lbl_8056f574:
/* 8056F574 7FC3F378 */ mr          r3, r30
/* 8056F578 7FE4FB78 */ mr          r4, r31
/* 8056F57C 38A00000 */ li          r5, 0
/* 8056F580 48002819 */ bl          unk_80571d98
/* 8056F584 801F0000 */ lwz         r0, 0(r31)
/* 8056F588 5400035B */ rlwinm.     r0, r0, 0, 0xd, 0xd
/* 8056F58C 4182004C */ beq-        lbl_8056f5d8
/* 8056F590 387E0004 */ addi        r3, r30, 4
/* 8056F594 48021B2D */ bl          kartEnemy__Q24Kart15KartObjectProxyFv
/* 8056F598 38800001 */ li          r4, 1
/* 8056F59C 481B6E29 */ bl          unk_807263c4
/* 8056F5A0 387E0004 */ addi        r3, r30, 4
/* 8056F5A4 48020C69 */ bl          getPos__Q24Kart15KartObjectProxyCFv
/* 8056F5A8 7C7D1B78 */ mr          r29, r3
/* 8056F5AC 387E0004 */ addi        r3, r30, 4
/* 8056F5B0 480214AD */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8056F5B4 3C80809C */ lis         r4, lbl_809c3618@ha
/* 8056F5B8 5460063E */ clrlwi      r0, r3, 0x18
/* 8056F5BC 80643618 */ lwz         r3, lbl_809c3618@l(r4)
/* 8056F5C0 1C000248 */ mulli       r0, r0, 0x248
/* 8056F5C4 7FA4EB78 */ mr          r4, r29
/* 8056F5C8 80630014 */ lwz         r3, 0x14(r3)
/* 8056F5CC 7C630214 */ add         r3, r3, r0
/* 8056F5D0 4822973D */ bl          unk_80798d0c
/* 8056F5D4 48000014 */ b           lbl_8056f5e8
lbl_8056f5d8:
/* 8056F5D8 387E0004 */ addi        r3, r30, 4
/* 8056F5DC 48021AE5 */ bl          kartEnemy__Q24Kart15KartObjectProxyFv
/* 8056F5E0 38800000 */ li          r4, 0
/* 8056F5E4 481B6DE1 */ bl          unk_807263c4
lbl_8056f5e8:
/* 8056F5E8 801F0000 */ lwz         r0, 0(r31)
/* 8056F5EC 5400039D */ rlwinm.     r0, r0, 0, 0xe, 0xe
/* 8056F5F0 41820014 */ beq-        lbl_8056f604
/* 8056F5F4 7FE3FB78 */ mr          r3, r31
/* 8056F5F8 3C800002 */ lis         r4, 0x2
/* 8056F5FC 4824E371 */ bl          findClosestCollisionEntry__5FieldFPUlUl
/* 8056F600 48000008 */ b           lbl_8056f608
lbl_8056f604:
/* 8056F604 38600000 */ li          r3, 0
lbl_8056f608:
/* 8056F608 2C030000 */ cmpwi       r3, 0
/* 8056F60C 41820034 */ beq-        lbl_8056f640
/* 8056F610 3C80809C */ lis         r4, closestCollisionEntry__5Field@ha
/* 8056F614 807E0004 */ lwz         r3, 4(r30)
/* 8056F618 80843BDC */ lwz         r4, closestCollisionEntry__5Field@l(r4)
/* 8056F61C 80630004 */ lwz         r3, 4(r3)
/* 8056F620 A0040004 */ lhz         r0, 4(r4)
/* 8056F624 5400DF7E */ rlwinm      r0, r0, 0x1b, 0x1d, 0x1f
/* 8056F628 90030080 */ stw         r0, 0x80(r3)
/* 8056F62C 807E0004 */ lwz         r3, 4(r30)
/* 8056F630 80630004 */ lwz         r3, 4(r3)
/* 8056F634 80030008 */ lwz         r0, 8(r3)
/* 8056F638 60000008 */ ori         r0, r0, 8
/* 8056F63C 90030008 */ stw         r0, 8(r3)
lbl_8056f640:
/* 8056F640 801F0000 */ lwz         r0, 0(r31)
/* 8056F644 5400014B */ rlwinm.     r0, r0, 0, 5, 5
/* 8056F648 41820014 */ beq-        lbl_8056f65c
/* 8056F64C 7FE3FB78 */ mr          r3, r31
/* 8056F650 3C800400 */ lis         r4, 0x400
/* 8056F654 4824E319 */ bl          findClosestCollisionEntry__5FieldFPUlUl
/* 8056F658 48000008 */ b           lbl_8056f660
lbl_8056f65c:
/* 8056F65C 38600000 */ li          r3, 0
lbl_8056f660:
/* 8056F660 2C030000 */ cmpwi       r3, 0
/* 8056F664 418200BC */ beq-        lbl_8056f720
/* 8056F668 3C60809C */ lis         r3, closestCollisionEntry__5Field@ha
/* 8056F66C 80633BDC */ lwz         r3, closestCollisionEntry__5Field@l(r3)
/* 8056F670 A0830004 */ lhz         r4, 4(r3)
/* 8056F674 5480DF7E */ rlwinm      r0, r4, 0x1b, 0x1d, 0x1f
/* 8056F678 2C000001 */ cmpwi       r0, 1
/* 8056F67C 40820010 */ bne-        lbl_8056f68c
/* 8056F680 387E0004 */ addi        r3, r30, 4
/* 8056F684 5484C77E */ rlwinm      r4, r4, 0x18, 0x1d, 0x1f
/* 8056F688 480222F5 */ bl          unk_8059197c
lbl_8056f68c:
/* 8056F68C 3C60809C */ lis         r3, closestCollisionEntry__5Field@ha
/* 8056F690 80633BDC */ lwz         r3, closestCollisionEntry__5Field@l(r3)
/* 8056F694 A0030004 */ lhz         r0, 4(r3)
/* 8056F698 5403DF7F */ rlwinm.     r3, r0, 0x1b, 0x1d, 0x1f
/* 8056F69C 4082001C */ bne-        lbl_8056f6b8
/* 8056F6A0 387E0004 */ addi        r3, r30, 4
/* 8056F6A4 5404C77E */ rlwinm      r4, r0, 0x18, 0x1d, 0x1f
/* 8056F6A8 480222D5 */ bl          unk_8059197c
/* 8056F6AC 387E0004 */ addi        r3, r30, 4
/* 8056F6B0 48021731 */ bl          hasCamera__Q24Kart15KartObjectProxyFv
/* 8056F6B4 4800006C */ b           lbl_8056f720
lbl_8056f6b8:
/* 8056F6B8 2C030002 */ cmpwi       r3, 2
/* 8056F6BC 4082002C */ bne-        lbl_8056f6e8
/* 8056F6C0 387E0004 */ addi        r3, r30, 4
/* 8056F6C4 48021399 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8056F6C8 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 8056F6CC 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 8056F6D0 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 8056F6D4 7FE4FB78 */ mr          r4, r31
/* 8056F6D8 80630068 */ lwz         r3, 0x68(r3)
/* 8056F6DC 7C63002E */ lwzx        r3, r3, r0
/* 8056F6E0 4813C1C1 */ bl          unk_806ab8a0
/* 8056F6E4 4800003C */ b           lbl_8056f720
lbl_8056f6e8:
/* 8056F6E8 2C030004 */ cmpwi       r3, 4
/* 8056F6EC 40820034 */ bne-        lbl_8056f720
/* 8056F6F0 387E0004 */ addi        r3, r30, 4
/* 8056F6F4 48022211 */ bl          kartHalfPipe__Q24Kart15KartObjectProxyFv
/* 8056F6F8 38800001 */ li          r4, 1
/* 8056F6FC 480061E9 */ bl          PlayerZipper_end
/* 8056F700 807E0004 */ lwz         r3, 4(r30)
/* 8056F704 80630004 */ lwz         r3, 4(r3)
/* 8056F708 80030010 */ lwz         r0, 0x10(r3)
/* 8056F70C 60000800 */ ori         r0, r0, 0x800
/* 8056F710 90030010 */ stw         r0, 0x10(r3)
/* 8056F714 801E002C */ lwz         r0, 0x2c(r30)
/* 8056F718 64000001 */ oris        r0, r0, 1
/* 8056F71C 901E002C */ stw         r0, 0x2c(r30)
lbl_8056f720:
/* 8056F720 80010024 */ lwz         r0, 0x24(r1)
/* 8056F724 83E1001C */ lwz         r31, 0x1c(r1)
/* 8056F728 83C10018 */ lwz         r30, 0x18(r1)
/* 8056F72C 83A10014 */ lwz         r29, 0x14(r1)
/* 8056F730 7C0803A6 */ mtlr        r0
/* 8056F734 38210020 */ addi        r1, r1, 0x20
/* 8056F738 4E800020 */ blr         