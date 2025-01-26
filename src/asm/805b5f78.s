nofralloc
/* 805B5F78 9421FF00 */ stwu        r1, -0x100(r1)
/* 805B5F7C 7C0802A6 */ mflr        r0
/* 805B5F80 C0050000 */ lfs         f0, 0(r5)
/* 805B5F84 90010104 */ stw         r0, 0x104(r1)
/* 805B5F88 C0450004 */ lfs         f2, 4(r5)
/* 805B5F8C 93E100FC */ stw         r31, 0xfc(r1)
/* 805B5F90 7CBF2B78 */ mr          r31, r5
/* 805B5F94 93C100F8 */ stw         r30, 0xf8(r1)
/* 805B5F98 7C9E2378 */ mr          r30, r4
/* 805B5F9C 93A100F4 */ stw         r29, 0xf4(r1)
/* 805B5FA0 7C7D1B78 */ mr          r29, r3
/* 805B5FA4 389D0100 */ addi        r4, r29, 0x100
/* 805B5FA8 C02300B0 */ lfs         f1, 0xb0(r3)
/* 805B5FAC C06300B4 */ lfs         f3, 0xb4(r3)
/* 805B5FB0 EC81002A */ fadds       f4, f1, f0
/* 805B5FB4 C02300B8 */ lfs         f1, 0xb8(r3)
/* 805B5FB8 C0050008 */ lfs         f0, 8(r5)
/* 805B5FBC EC43102A */ fadds       f2, f3, f2
/* 805B5FC0 D08300B0 */ stfs        f4, 0xb0(r3)
/* 805B5FC4 EC01002A */ fadds       f0, f1, f0
/* 805B5FC8 D04300B4 */ stfs        f2, 0xb4(r3)
/* 805B5FCC D00300B8 */ stfs        f0, 0xb8(r3)
/* 805B5FD0 38610090 */ addi        r3, r1, 0x90
/* 805B5FD4 4BC7A339 */ bl          fromQuat__Q23EGG9Matrix34fFRCQ23EGG5Quatf
/* 805B5FD8 C0410090 */ lfs         f2, 0x90(r1)
/* 805B5FDC 38610090 */ addi        r3, r1, 0x90
/* 805B5FE0 C02100A0 */ lfs         f1, 0xa0(r1)
/* 805B5FE4 389D0034 */ addi        r4, r29, 0x34
/* 805B5FE8 C00100B0 */ lfs         f0, 0xb0(r1)
/* 805B5FEC 38A10030 */ addi        r5, r1, 0x30
/* 805B5FF0 D0410060 */ stfs        f2, 0x60(r1)
/* 805B5FF4 C0410094 */ lfs         f2, 0x94(r1)
/* 805B5FF8 D0210064 */ stfs        f1, 0x64(r1)
/* 805B5FFC C02100A4 */ lfs         f1, 0xa4(r1)
/* 805B6000 D0010068 */ stfs        f0, 0x68(r1)
/* 805B6004 C00100B4 */ lfs         f0, 0xb4(r1)
/* 805B6008 D0410070 */ stfs        f2, 0x70(r1)
/* 805B600C C0410098 */ lfs         f2, 0x98(r1)
/* 805B6010 D0210074 */ stfs        f1, 0x74(r1)
/* 805B6014 C02100A8 */ lfs         f1, 0xa8(r1)
/* 805B6018 D0010078 */ stfs        f0, 0x78(r1)
/* 805B601C C00100B8 */ lfs         f0, 0xb8(r1)
/* 805B6020 D0410080 */ stfs        f2, 0x80(r1)
/* 805B6024 D0210084 */ stfs        f1, 0x84(r1)
/* 805B6028 D0010088 */ stfs        f0, 0x88(r1)
/* 805B602C 4BC7A3E5 */ bl          multiplyTo__Q23EGG9Matrix34fCFRCQ23EGG9Matrix34fRQ23EGG9Matrix34f
/* 805B6030 38610030 */ addi        r3, r1, 0x30
/* 805B6034 38810060 */ addi        r4, r1, 0x60
/* 805B6038 38A100C0 */ addi        r5, r1, 0xc0
/* 805B603C 4BC7A3D5 */ bl          multiplyTo__Q23EGG9Matrix34fCFRCQ23EGG9Matrix34fRQ23EGG9Matrix34f
/* 805B6040 C09E0000 */ lfs         f4, 0(r30)
/* 805B6044 387D0100 */ addi        r3, r29, 0x100
/* 805B6048 C01F0004 */ lfs         f0, 4(r31)
/* 805B604C 38810014 */ addi        r4, r1, 0x14
/* 805B6050 C05E0008 */ lfs         f2, 8(r30)
/* 805B6054 38A10008 */ addi        r5, r1, 8
/* 805B6058 C07F0000 */ lfs         f3, 0(r31)
/* 805B605C ED040032 */ fmuls       f8, f4, f0
/* 805B6060 C0FE0004 */ lfs         f7, 4(r30)
/* 805B6064 EC220032 */ fmuls       f1, f2, f0
/* 805B6068 C01F0008 */ lfs         f0, 8(r31)
/* 805B606C ECA200F2 */ fmuls       f5, f2, f3
/* 805B6070 ECC700F2 */ fmuls       f6, f7, f3
/* 805B6074 EC640032 */ fmuls       f3, f4, f0
/* 805B6078 C08100E0 */ lfs         f4, 0xe0(r1)
/* 805B607C EC470032 */ fmuls       f2, f7, f0
/* 805B6080 C00100E4 */ lfs         f0, 0xe4(r1)
/* 805B6084 ED283028 */ fsubs       f9, f8, f6
/* 805B6088 ED451828 */ fsubs       f10, f5, f3
/* 805B608C ED620828 */ fsubs       f11, f2, f1
/* 805B6090 C02100C0 */ lfs         f1, 0xc0(r1)
/* 805B6094 C06100D0 */ lfs         f3, 0xd0(r1)
/* 805B6098 ECC002B2 */ fmuls       f6, f0, f10
/* 805B609C C00100C4 */ lfs         f0, 0xc4(r1)
/* 805B60A0 ECE402F2 */ fmuls       f7, f4, f11
/* 805B60A4 C10100E8 */ lfs         f8, 0xe8(r1)
/* 805B60A8 EC8302F2 */ fmuls       f4, f3, f11
/* 805B60AC C04100D4 */ lfs         f2, 0xd4(r1)
/* 805B60B0 C0A100D8 */ lfs         f5, 0xd8(r1)
/* 805B60B4 EC2102F2 */ fmuls       f1, f1, f11
/* 805B60B8 EC6202B2 */ fmuls       f3, f2, f10
/* 805B60BC C04100C8 */ lfs         f2, 0xc8(r1)
/* 805B60C0 EC0002B2 */ fmuls       f0, f0, f10
/* 805B60C4 D1610020 */ stfs        f11, 0x20(r1)
/* 805B60C8 ED080272 */ fmuls       f8, f8, f9
/* 805B60CC ECC7302A */ fadds       f6, f7, f6
/* 805B60D0 EC64182A */ fadds       f3, f4, f3
/* 805B60D4 D1410024 */ stfs        f10, 0x24(r1)
/* 805B60D8 ECA50272 */ fmuls       f5, f5, f9
/* 805B60DC EC01002A */ fadds       f0, f1, f0
/* 805B60E0 D1210028 */ stfs        f9, 0x28(r1)
/* 805B60E4 EC420272 */ fmuls       f2, f2, f9
/* 805B60E8 EC88302A */ fadds       f4, f8, f6
/* 805B60EC EC25182A */ fadds       f1, f5, f3
/* 805B60F0 EC02002A */ fadds       f0, f2, f0
/* 805B60F4 D081001C */ stfs        f4, 0x1c(r1)
/* 805B60F8 D0210018 */ stfs        f1, 0x18(r1)
/* 805B60FC D0010014 */ stfs        f0, 0x14(r1)
/* 805B6100 4BC84305 */ bl          rotateVectorInv__Q23EGG5QuatfFRCQ23EGG8Vector3fRQ23EGG8Vector3f
/* 805B6104 C03D00BC */ lfs         f1, 0xbc(r29)
/* 805B6108 C0010008 */ lfs         f0, 8(r1)
/* 805B610C C05D00C0 */ lfs         f2, 0xc0(r29)
/* 805B6110 EC01002A */ fadds       f0, f1, f0
/* 805B6114 C03D00C4 */ lfs         f1, 0xc4(r29)
/* 805B6118 D01D00BC */ stfs        f0, 0xbc(r29)
/* 805B611C C001000C */ lfs         f0, 0xc(r1)
/* 805B6120 EC02002A */ fadds       f0, f2, f0
/* 805B6124 D01D00C0 */ stfs        f0, 0xc0(r29)
/* 805B6128 C0010010 */ lfs         f0, 0x10(r1)
/* 805B612C EC01002A */ fadds       f0, f1, f0
/* 805B6130 D01D00C4 */ stfs        f0, 0xc4(r29)
/* 805B6134 83E100FC */ lwz         r31, 0xfc(r1)
/* 805B6138 83C100F8 */ lwz         r30, 0xf8(r1)
/* 805B613C 83A100F4 */ lwz         r29, 0xf4(r1)
/* 805B6140 80010104 */ lwz         r0, 0x104(r1)
/* 805B6144 7C0803A6 */ mtlr        r0
/* 805B6148 38210100 */ addi        r1, r1, 0x100
/* 805B614C 4E800020 */ blr         