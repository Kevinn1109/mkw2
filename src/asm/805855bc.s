nofralloc
/* 805855BC 9421FF20 */ stwu        r1, -0xe0(r1)
/* 805855C0 7C0802A6 */ mflr        r0
/* 805855C4 900100E4 */ stw         r0, 0xe4(r1)
/* 805855C8 DBE100D0 */ stfd        f31, 0xd0(r1)
/* 805855CC F3E100D8 */ psq_st      f31, 0xd8(r1), 0, 0
/* 805855D0 DBC100C0 */ stfd        f30, 0xc0(r1)
/* 805855D4 F3C100C8 */ psq_st      f30, 0xc8(r1), 0, 0
/* 805855D8 FFE00890 */ fmr         f31, f1
/* 805855DC 93E100BC */ stw         r31, 0xbc(r1)
/* 805855E0 93C100B8 */ stw         r30, 0xb8(r1)
/* 805855E4 7C9E2378 */ mr          r30, r4
/* 805855E8 93A100B4 */ stw         r29, 0xb4(r1)
/* 805855EC 7C7D1B78 */ mr          r29, r3
/* 805855F0 4800ADDD */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 805855F4 80BE0000 */ lwz         r5, 0(r30)
/* 805855F8 7C7F1B78 */ mr          r31, r3
/* 805855FC 809E0004 */ lwz         r4, 4(r30)
/* 80585600 38610098 */ addi        r3, r1, 0x98
/* 80585604 801E0008 */ lwz         r0, 8(r30)
/* 80585608 90A10098 */ stw         r5, 0x98(r1)
/* 8058560C 9081009C */ stw         r4, 0x9c(r1)
/* 80585610 900100A0 */ stw         r0, 0xa0(r1)
/* 80585614 4BCBE4C9 */ bl          normalise__Q23EGG8Vector3fFv
/* 80585618 7FA3EB78 */ mr          r3, r29
/* 8058561C 3881008C */ addi        r4, r1, 0x8c
/* 80585620 4800B675 */ bl          PlayerPointers_getBodyFront
/* 80585624 C0C1008C */ lfs         f6, 0x8c(r1)
/* 80585628 3861008C */ addi        r3, r1, 0x8c
/* 8058562C C0210098 */ lfs         f1, 0x98(r1)
/* 80585630 C0A10090 */ lfs         f5, 0x90(r1)
/* 80585634 EC613028 */ fsubs       f3, f1, f6
/* 80585638 C001009C */ lfs         f0, 0x9c(r1)
/* 8058563C C0810094 */ lfs         f4, 0x94(r1)
/* 80585640 EC402828 */ fsubs       f2, f0, f5
/* 80585644 C02100A0 */ lfs         f1, 0xa0(r1)
/* 80585648 EC0307F2 */ fmuls       f0, f3, f31
/* 8058564C EC612028 */ fsubs       f3, f1, f4
/* 80585650 EC2207F2 */ fmuls       f1, f2, f31
/* 80585654 D0010008 */ stfs        f0, 8(r1)
/* 80585658 EC46002A */ fadds       f2, f6, f0
/* 8058565C EC0307F2 */ fmuls       f0, f3, f31
/* 80585660 D021000C */ stfs        f1, 0xc(r1)
/* 80585664 EC25082A */ fadds       f1, f5, f1
/* 80585668 D0010010 */ stfs        f0, 0x10(r1)
/* 8058566C EC04002A */ fadds       f0, f4, f0
/* 80585670 D0410080 */ stfs        f2, 0x80(r1)
/* 80585674 D0210084 */ stfs        f1, 0x84(r1)
/* 80585678 D0010088 */ stfs        f0, 0x88(r1)
/* 8058567C 4BCBE461 */ bl          normalise__Q23EGG8Vector3fFv
/* 80585680 38610080 */ addi        r3, r1, 0x80
/* 80585684 4BCBE459 */ bl          normalise__Q23EGG8Vector3fFv
/* 80585688 38610060 */ addi        r3, r1, 0x60
/* 8058568C 3881008C */ addi        r4, r1, 0x8c
/* 80585690 38A10080 */ addi        r5, r1, 0x80
/* 80585694 4BCB50F5 */ bl          makeVectorRotation__Q23EGG5QuatfFRQ23EGG8Vector3fRQ23EGG8Vector3f
/* 80585698 C141006C */ lfs         f10, 0x6c(r1)
/* 8058569C 38610070 */ addi        r3, r1, 0x70
/* 805856A0 C01F010C */ lfs         f0, 0x10c(r31)
/* 805856A4 C3C10060 */ lfs         f30, 0x60(r1)
/* 805856A8 C1BF0100 */ lfs         f13, 0x100(r31)
/* 805856AC ECEA0032 */ fmuls       f7, f10, f0
/* 805856B0 C1810064 */ lfs         f12, 0x64(r1)
/* 805856B4 ECBE0032 */ fmuls       f5, f30, f0
/* 805856B8 C17F0104 */ lfs         f11, 0x104(r31)
/* 805856BC EC8A0372 */ fmuls       f4, f10, f13
/* 805856C0 C1210068 */ lfs         f9, 0x68(r1)
/* 805856C4 C11F0108 */ lfs         f8, 0x108(r31)
/* 805856C8 ECDE0372 */ fmuls       f6, f30, f13
/* 805856CC ECA5202A */ fadds       f5, f5, f4
/* 805856D0 EC6C0032 */ fmuls       f3, f12, f0
/* 805856D4 EC4A02F2 */ fmuls       f2, f10, f11
/* 805856D8 EC290032 */ fmuls       f1, f9, f0
/* 805856DC EC0A0232 */ fmuls       f0, f10, f8
/* 805856E0 ED473028 */ fsubs       f10, f7, f6
/* 805856E4 ECEC02F2 */ fmuls       f7, f12, f11
/* 805856E8 EC63102A */ fadds       f3, f3, f2
/* 805856EC EC01002A */ fadds       f0, f1, f0
/* 805856F0 ECCC0232 */ fmuls       f6, f12, f8
/* 805856F4 ED4A3828 */ fsubs       f10, f10, f7
/* 805856F8 EC290232 */ fmuls       f1, f9, f8
/* 805856FC ECE6282A */ fadds       f7, f6, f5
/* 80585700 EC890372 */ fmuls       f4, f9, f13
/* 80585704 EC5E02F2 */ fmuls       f2, f30, f11
/* 80585708 ECC902F2 */ fmuls       f6, f9, f11
/* 8058570C ECA4182A */ fadds       f5, f4, f3
/* 80585710 EC82002A */ fadds       f4, f2, f0
/* 80585714 EC7E0232 */ fmuls       f3, f30, f8
/* 80585718 EC0C0372 */ fmuls       f0, f12, f13
/* 8058571C EC2A0828 */ fsubs       f1, f10, f1
/* 80585720 EC473028 */ fsubs       f2, f7, f6
/* 80585724 EC651828 */ fsubs       f3, f5, f3
/* 80585728 EC840028 */ fsubs       f4, f4, f0
/* 8058572C 4BCB46D1 */ bl          set__Q23EGG5QuatfFffff
/* 80585730 38610070 */ addi        r3, r1, 0x70
/* 80585734 4BCB4A35 */ bl          normalise__Q23EGG5QuatfFv
/* 80585738 80DD0038 */ lwz         r6, 0x38(r29)
/* 8058573C 3C80802A */ lis         r4, RKSystem_ey@ha
/* 80585740 801D003C */ lwz         r0, 0x3c(r29)
/* 80585744 38610070 */ addi        r3, r1, 0x70
/* 80585748 90010058 */ stw         r0, 0x58(r1)
/* 8058574C 38844130 */ addi        r4, r4, RKSystem_ey@l
/* 80585750 38A10048 */ addi        r5, r1, 0x48
/* 80585754 90C10054 */ stw         r6, 0x54(r1)
/* 80585758 801D0040 */ lwz         r0, 0x40(r29)
/* 8058575C 9001005C */ stw         r0, 0x5c(r1)
/* 80585760 4BCB4B71 */ bl          rotateVector__Q23EGG5QuatfFRCQ23EGG8Vector3fRQ23EGG8Vector3f
/* 80585764 80E10070 */ lwz         r7, 0x70(r1)
/* 80585768 38610028 */ addi        r3, r1, 0x28
/* 8058576C 80C10074 */ lwz         r6, 0x74(r1)
/* 80585770 38810048 */ addi        r4, r1, 0x48
/* 80585774 80010078 */ lwz         r0, 0x78(r1)
/* 80585778 38A10054 */ addi        r5, r1, 0x54
/* 8058577C C001007C */ lfs         f0, 0x7c(r1)
/* 80585780 90E10038 */ stw         r7, 0x38(r1)
/* 80585784 90C1003C */ stw         r6, 0x3c(r1)
/* 80585788 90010040 */ stw         r0, 0x40(r1)
/* 8058578C D0010044 */ stfs        f0, 0x44(r1)
/* 80585790 4BCB4FF9 */ bl          makeVectorRotation__Q23EGG5QuatfFRQ23EGG8Vector3fRQ23EGG8Vector3f
/* 80585794 C1410034 */ lfs         f10, 0x34(r1)
/* 80585798 38610018 */ addi        r3, r1, 0x18
/* 8058579C C0010044 */ lfs         f0, 0x44(r1)
/* 805857A0 C3C10028 */ lfs         f30, 0x28(r1)
/* 805857A4 C1A10038 */ lfs         f13, 0x38(r1)
/* 805857A8 ECEA0032 */ fmuls       f7, f10, f0
/* 805857AC C181002C */ lfs         f12, 0x2c(r1)
/* 805857B0 ECBE0032 */ fmuls       f5, f30, f0
/* 805857B4 C161003C */ lfs         f11, 0x3c(r1)
/* 805857B8 EC8A0372 */ fmuls       f4, f10, f13
/* 805857BC C1210030 */ lfs         f9, 0x30(r1)
/* 805857C0 C1010040 */ lfs         f8, 0x40(r1)
/* 805857C4 ECDE0372 */ fmuls       f6, f30, f13
/* 805857C8 ECA5202A */ fadds       f5, f5, f4
/* 805857CC EC6C0032 */ fmuls       f3, f12, f0
/* 805857D0 EC4A02F2 */ fmuls       f2, f10, f11
/* 805857D4 EC290032 */ fmuls       f1, f9, f0
/* 805857D8 EC0A0232 */ fmuls       f0, f10, f8
/* 805857DC ED473028 */ fsubs       f10, f7, f6
/* 805857E0 ECEC02F2 */ fmuls       f7, f12, f11
/* 805857E4 EC63102A */ fadds       f3, f3, f2
/* 805857E8 EC01002A */ fadds       f0, f1, f0
/* 805857EC ECCC0232 */ fmuls       f6, f12, f8
/* 805857F0 ED4A3828 */ fsubs       f10, f10, f7
/* 805857F4 EC290232 */ fmuls       f1, f9, f8
/* 805857F8 ECE6282A */ fadds       f7, f6, f5
/* 805857FC EC890372 */ fmuls       f4, f9, f13
/* 80585800 EC5E02F2 */ fmuls       f2, f30, f11
/* 80585804 ECC902F2 */ fmuls       f6, f9, f11
/* 80585808 ECA4182A */ fadds       f5, f4, f3
/* 8058580C EC82002A */ fadds       f4, f2, f0
/* 80585810 EC7E0232 */ fmuls       f3, f30, f8
/* 80585814 EC0C0372 */ fmuls       f0, f12, f13
/* 80585818 EC2A0828 */ fsubs       f1, f10, f1
/* 8058581C EC473028 */ fsubs       f2, f7, f6
/* 80585820 EC651828 */ fsubs       f3, f5, f3
/* 80585824 EC840028 */ fsubs       f4, f4, f0
/* 80585828 4BCB45D5 */ bl          set__Q23EGG5QuatfFffff
/* 8058582C FC20F890 */ fmr         f1, f31
/* 80585830 38610038 */ addi        r3, r1, 0x38
/* 80585834 38810018 */ addi        r4, r1, 0x18
/* 80585838 38A10070 */ addi        r5, r1, 0x70
/* 8058583C 4BCB4D89 */ bl          slerpTo__Q23EGG5QuatfCFRCQ23EGG5QuatffRQ23EGG5Quatf
/* 80585840 C0010070 */ lfs         f0, 0x70(r1)
/* 80585844 D01F0100 */ stfs        f0, 0x100(r31)
/* 80585848 FC600018 */ frsp        f3, f0
/* 8058584C C0010074 */ lfs         f0, 0x74(r1)
/* 80585850 D01F0104 */ stfs        f0, 0x104(r31)
/* 80585854 FC400018 */ frsp        f2, f0
/* 80585858 C0010078 */ lfs         f0, 0x78(r1)
/* 8058585C D01F0108 */ stfs        f0, 0x108(r31)
/* 80585860 FC200018 */ frsp        f1, f0
/* 80585864 C001007C */ lfs         f0, 0x7c(r1)
/* 80585868 D01F010C */ stfs        f0, 0x10c(r31)
/* 8058586C FC000018 */ frsp        f0, f0
/* 80585870 D07F00F0 */ stfs        f3, 0xf0(r31)
/* 80585874 D05F00F4 */ stfs        f2, 0xf4(r31)
/* 80585878 D03F00F8 */ stfs        f1, 0xf8(r31)
/* 8058587C D01F00FC */ stfs        f0, 0xfc(r31)
/* 80585880 E3E100D8 */ psq_l       f31, 0xd8(r1), 0, 0
/* 80585884 CBE100D0 */ lfd         f31, 0xd0(r1)
/* 80585888 E3C100C8 */ psq_l       f30, 0xc8(r1), 0, 0
/* 8058588C CBC100C0 */ lfd         f30, 0xc0(r1)
/* 80585890 83E100BC */ lwz         r31, 0xbc(r1)
/* 80585894 83C100B8 */ lwz         r30, 0xb8(r1)
/* 80585898 83A100B4 */ lwz         r29, 0xb4(r1)
/* 8058589C 800100E4 */ lwz         r0, 0xe4(r1)
/* 805858A0 7C0803A6 */ mtlr        r0
/* 805858A4 382100E0 */ addi        r1, r1, 0xe0
/* 805858A8 4E800020 */ blr         