nofralloc
/* 805B6448 9421FF70 */ stwu        r1, -0x90(r1)
/* 805B644C 7C0802A6 */ mflr        r0
/* 805B6450 90010094 */ stw         r0, 0x94(r1)
/* 805B6454 DBE10080 */ stfd        f31, 0x80(r1)
/* 805B6458 F3E10088 */ psq_st      f31, 0x88(r1), 0, 0
/* 805B645C 93E1007C */ stw         r31, 0x7c(r1)
/* 805B6460 7C7F1B78 */ mr          r31, r3
/* 805B6464 88030174 */ lbz         r0, 0x174(r3)
/* 805B6468 2C000000 */ cmpwi       r0, 0
/* 805B646C 4182000C */ beq-        lbl_805b6478
/* 805B6470 4BFFF6F9 */ bl          stabilize__Q24Kart12KartDynamicsFv
/* 805B6474 48000254 */ b           lbl_805b66c8
lbl_805b6478:
/* 805B6478 3D00802A */ lis         r8, lbl_802a4148@ha
/* 805B647C 84E84148 */ lwzu        r7, lbl_802a4148@l(r8)
/* 805B6480 38810068 */ addi        r4, r1, 0x68
/* 805B6484 90E10068 */ stw         r7, 0x68(r1)
/* 805B6488 80C80004 */ lwz         r6, 4(r8)
/* 805B648C 7C852378 */ mr          r5, r4
/* 805B6490 80080008 */ lwz         r0, 8(r8)
/* 805B6494 386300F0 */ addi        r3, r3, 0xf0
/* 805B6498 90C1006C */ stw         r6, 0x6c(r1)
/* 805B649C 90010070 */ stw         r0, 0x70(r1)
/* 805B64A0 4BC83E31 */ bl          rotateVector__Q23EGG5QuatfFRCQ23EGG8Vector3fRQ23EGG8Vector3f
/* 805B64A4 C11F0158 */ lfs         f8, 0x158(r31)
/* 805B64A8 3861005C */ addi        r3, r1, 0x5c
/* 805B64AC C001006C */ lfs         f0, 0x6c(r1)
/* 805B64B0 C0DF0160 */ lfs         f6, 0x160(r31)
/* 805B64B4 C0410068 */ lfs         f2, 0x68(r1)
/* 805B64B8 ECA80032 */ fmuls       f5, f8, f0
/* 805B64BC C0FF015C */ lfs         f7, 0x15c(r31)
/* 805B64C0 EC060032 */ fmuls       f0, f6, f0
/* 805B64C4 C0210070 */ lfs         f1, 0x70(r1)
/* 805B64C8 EC6600B2 */ fmuls       f3, f6, f2
/* 805B64CC EC8700B2 */ fmuls       f4, f7, f2
/* 805B64D0 EC480072 */ fmuls       f2, f8, f1
/* 805B64D4 EC270072 */ fmuls       f1, f7, f1
/* 805B64D8 ED252028 */ fsubs       f9, f5, f4
/* 805B64DC ED431028 */ fsubs       f10, f3, f2
/* 805B64E0 EC010028 */ fsubs       f0, f1, f0
/* 805B64E4 EC690232 */ fmuls       f3, f9, f8
/* 805B64E8 EC8A0232 */ fmuls       f4, f10, f8
/* 805B64EC ECA001F2 */ fmuls       f5, f0, f7
/* 805B64F0 EC4001B2 */ fmuls       f2, f0, f6
/* 805B64F4 EC2A01B2 */ fmuls       f1, f10, f6
/* 805B64F8 EC0901F2 */ fmuls       f0, f9, f7
/* 805B64FC EC852028 */ fsubs       f4, f5, f4
/* 805B6500 EC431028 */ fsubs       f2, f3, f2
/* 805B6504 EC010028 */ fsubs       f0, f1, f0
/* 805B6508 D0810064 */ stfs        f4, 0x64(r1)
/* 805B650C D001005C */ stfs        f0, 0x5c(r1)
/* 805B6510 D0410060 */ stfs        f2, 0x60(r1)
/* 805B6514 4BC8D5C9 */ bl          normalise__Q23EGG8Vector3fFv
/* 805B6518 C05F0180 */ lfs         f2, 0x180(r31)
/* 805B651C 38610044 */ addi        r3, r1, 0x44
/* 805B6520 C1210060 */ lfs         f9, 0x60(r1)
/* 805B6524 C03F0188 */ lfs         f1, 0x188(r31)
/* 805B6528 C0A1005C */ lfs         f5, 0x5c(r1)
/* 805B652C ED020272 */ fmuls       f8, f2, f9
/* 805B6530 C0FF0184 */ lfs         f7, 0x184(r31)
/* 805B6534 EC010272 */ fmuls       f0, f1, f9
/* 805B6538 C0C10064 */ lfs         f6, 0x64(r1)
/* 805B653C EC610172 */ fmuls       f3, f1, f5
/* 805B6540 EC870172 */ fmuls       f4, f7, f5
/* 805B6544 EC2701B2 */ fmuls       f1, f7, f6
/* 805B6548 EC4201B2 */ fmuls       f2, f2, f6
/* 805B654C ECE82028 */ fsubs       f7, f8, f4
/* 805B6550 EC010028 */ fsubs       f0, f1, f0
/* 805B6554 ED031028 */ fsubs       f8, f3, f2
/* 805B6558 D0E10058 */ stfs        f7, 0x58(r1)
/* 805B655C EC4501F2 */ fmuls       f2, f5, f7
/* 805B6560 EC660032 */ fmuls       f3, f6, f0
/* 805B6564 D0010050 */ stfs        f0, 0x50(r1)
/* 805B6568 EC890032 */ fmuls       f4, f9, f0
/* 805B656C ECA50232 */ fmuls       f5, f5, f8
/* 805B6570 D1010054 */ stfs        f8, 0x54(r1)
/* 805B6574 EC431028 */ fsubs       f2, f3, f2
/* 805B6578 EC2901F2 */ fmuls       f1, f9, f7
/* 805B657C EC060232 */ fmuls       f0, f6, f8
/* 805B6580 D0410048 */ stfs        f2, 0x48(r1)
/* 805B6584 EC852028 */ fsubs       f4, f5, f4
/* 805B6588 EC010028 */ fsubs       f0, f1, f0
/* 805B658C D081004C */ stfs        f4, 0x4c(r1)
/* 805B6590 D0010044 */ stfs        f0, 0x44(r1)
/* 805B6594 4BC8D549 */ bl          normalise__Q23EGG8Vector3fFv
/* 805B6598 3C80802A */ lis         r4, RKSystem_ey@ha
/* 805B659C 387F00F0 */ addi        r3, r31, 0xf0
/* 805B65A0 38844130 */ addi        r4, r4, RKSystem_ey@l
/* 805B65A4 38A10038 */ addi        r5, r1, 0x38
/* 805B65A8 4BC83D29 */ bl          rotateVector__Q23EGG5QuatfFRCQ23EGG8Vector3fRQ23EGG8Vector3f
/* 805B65AC C0610038 */ lfs         f3, 0x38(r1)
/* 805B65B0 3C608089 */ lis         r3, lbl_80892784@ha
/* 805B65B4 C0410044 */ lfs         f2, 0x44(r1)
/* 805B65B8 C021003C */ lfs         f1, 0x3c(r1)
/* 805B65BC C0010048 */ lfs         f0, 0x48(r1)
/* 805B65C0 EC4300B2 */ fmuls       f2, f3, f2
/* 805B65C4 C0610040 */ lfs         f3, 0x40(r1)
/* 805B65C8 EC010032 */ fmuls       f0, f1, f0
/* 805B65CC C021004C */ lfs         f1, 0x4c(r1)
/* 805B65D0 809F00F0 */ lwz         r4, 0xf0(r31)
/* 805B65D4 801F00F4 */ lwz         r0, 0xf4(r31)
/* 805B65D8 EC630072 */ fmuls       f3, f3, f1
/* 805B65DC EC22002A */ fadds       f1, f2, f0
/* 805B65E0 90810028 */ stw         r4, 0x28(r1)
/* 805B65E4 C0032784 */ lfs         f0, lbl_80892784@l(r3)
/* 805B65E8 EC23082A */ fadds       f1, f3, f1
/* 805B65EC 9001002C */ stw         r0, 0x2c(r1)
/* 805B65F0 801F00F8 */ lwz         r0, 0xf8(r31)
/* 805B65F4 FC400A10 */ fabs        f2, f1
/* 805B65F8 90010030 */ stw         r0, 0x30(r1)
/* 805B65FC C03F00FC */ lfs         f1, 0xfc(r31)
/* 805B6600 FC020040 */ fcmpo       cr0, f2, f0
/* 805B6604 D0210034 */ stfs        f1, 0x34(r1)
/* 805B6608 408000C0 */ bge-        lbl_805b66c8
/* 805B660C 38610018 */ addi        r3, r1, 0x18
/* 805B6610 38810038 */ addi        r4, r1, 0x38
/* 805B6614 38A10044 */ addi        r5, r1, 0x44
/* 805B6618 4BC84171 */ bl          makeVectorRotation__Q23EGG5QuatfFRQ23EGG8Vector3fRQ23EGG8Vector3f
/* 805B661C C1410024 */ lfs         f10, 0x24(r1)
/* 805B6620 38610008 */ addi        r3, r1, 8
/* 805B6624 C0010034 */ lfs         f0, 0x34(r1)
/* 805B6628 C3E10018 */ lfs         f31, 0x18(r1)
/* 805B662C C1A10028 */ lfs         f13, 0x28(r1)
/* 805B6630 ECEA0032 */ fmuls       f7, f10, f0
/* 805B6634 C181001C */ lfs         f12, 0x1c(r1)
/* 805B6638 ECBF0032 */ fmuls       f5, f31, f0
/* 805B663C C161002C */ lfs         f11, 0x2c(r1)
/* 805B6640 EC8A0372 */ fmuls       f4, f10, f13
/* 805B6644 C1210020 */ lfs         f9, 0x20(r1)
/* 805B6648 C1010030 */ lfs         f8, 0x30(r1)
/* 805B664C ECDF0372 */ fmuls       f6, f31, f13
/* 805B6650 ECA5202A */ fadds       f5, f5, f4
/* 805B6654 EC6C0032 */ fmuls       f3, f12, f0
/* 805B6658 EC4A02F2 */ fmuls       f2, f10, f11
/* 805B665C EC290032 */ fmuls       f1, f9, f0
/* 805B6660 EC0A0232 */ fmuls       f0, f10, f8
/* 805B6664 ED473028 */ fsubs       f10, f7, f6
/* 805B6668 ECEC02F2 */ fmuls       f7, f12, f11
/* 805B666C EC63102A */ fadds       f3, f3, f2
/* 805B6670 EC01002A */ fadds       f0, f1, f0
/* 805B6674 ECCC0232 */ fmuls       f6, f12, f8
/* 805B6678 ED4A3828 */ fsubs       f10, f10, f7
/* 805B667C EC290232 */ fmuls       f1, f9, f8
/* 805B6680 ECE6282A */ fadds       f7, f6, f5
/* 805B6684 EC890372 */ fmuls       f4, f9, f13
/* 805B6688 EC5F02F2 */ fmuls       f2, f31, f11
/* 805B668C ECC902F2 */ fmuls       f6, f9, f11
/* 805B6690 ECA4182A */ fadds       f5, f4, f3
/* 805B6694 EC82002A */ fadds       f4, f2, f0
/* 805B6698 EC7F0232 */ fmuls       f3, f31, f8
/* 805B669C EC0C0372 */ fmuls       f0, f12, f13
/* 805B66A0 EC2A0828 */ fsubs       f1, f10, f1
/* 805B66A4 EC473028 */ fsubs       f2, f7, f6
/* 805B66A8 EC651828 */ fsubs       f3, f5, f3
/* 805B66AC EC840028 */ fsubs       f4, f4, f0
/* 805B66B0 4BC8374D */ bl          set__Q23EGG5QuatfFffff
/* 805B66B4 C03F0178 */ lfs         f1, 0x178(r31)
/* 805B66B8 38610028 */ addi        r3, r1, 0x28
/* 805B66BC 38810008 */ addi        r4, r1, 8
/* 805B66C0 38BF00F0 */ addi        r5, r31, 0xf0
/* 805B66C4 4BC83F01 */ bl          slerpTo__Q23EGG5QuatfCFRCQ23EGG5QuatffRQ23EGG5Quatf
lbl_805b66c8:
/* 805B66C8 E3E10088 */ psq_l       f31, 0x88(r1), 0, 0
/* 805B66CC 80010094 */ lwz         r0, 0x94(r1)
/* 805B66D0 CBE10080 */ lfd         f31, 0x80(r1)
/* 805B66D4 83E1007C */ lwz         r31, 0x7c(r1)
/* 805B66D8 7C0803A6 */ mtlr        r0
/* 805B66DC 38210090 */ addi        r1, r1, 0x90
/* 805B66E0 4E800020 */ blr         