nofralloc
/* 805B5B68 9421FF90 */ stwu        r1, -0x70(r1)
/* 805B5B6C 7C0802A6 */ mflr        r0
/* 805B5B70 90010074 */ stw         r0, 0x74(r1)
/* 805B5B74 DBE10060 */ stfd        f31, 0x60(r1)
/* 805B5B78 F3E10068 */ psq_st      f31, 0x68(r1), 0, 0
/* 805B5B7C 3C80802A */ lis         r4, RKSystem_ey@ha
/* 805B5B80 38844130 */ addi        r4, r4, RKSystem_ey@l
/* 805B5B84 38A10038 */ addi        r5, r1, 0x38
/* 805B5B88 93E1005C */ stw         r31, 0x5c(r1)
/* 805B5B8C 7C7F1B78 */ mr          r31, r3
/* 805B5B90 80C30158 */ lwz         r6, 0x158(r3)
/* 805B5B94 8003015C */ lwz         r0, 0x15c(r3)
/* 805B5B98 90010048 */ stw         r0, 0x48(r1)
/* 805B5B9C 90C10044 */ stw         r6, 0x44(r1)
/* 805B5BA0 80030160 */ lwz         r0, 0x160(r3)
/* 805B5BA4 386300F0 */ addi        r3, r3, 0xf0
/* 805B5BA8 9001004C */ stw         r0, 0x4c(r1)
/* 805B5BAC 4BC84725 */ bl          rotateVector__Q23EGG5QuatfFRCQ23EGG8Vector3fRQ23EGG8Vector3f
/* 805B5BB0 C0610038 */ lfs         f3, 0x38(r1)
/* 805B5BB4 3C608089 */ lis         r3, lbl_80892784@ha
/* 805B5BB8 C0410044 */ lfs         f2, 0x44(r1)
/* 805B5BBC C021003C */ lfs         f1, 0x3c(r1)
/* 805B5BC0 C0010048 */ lfs         f0, 0x48(r1)
/* 805B5BC4 EC4300B2 */ fmuls       f2, f3, f2
/* 805B5BC8 C0610040 */ lfs         f3, 0x40(r1)
/* 805B5BCC EC010032 */ fmuls       f0, f1, f0
/* 805B5BD0 C021004C */ lfs         f1, 0x4c(r1)
/* 805B5BD4 809F00F0 */ lwz         r4, 0xf0(r31)
/* 805B5BD8 801F00F4 */ lwz         r0, 0xf4(r31)
/* 805B5BDC EC630072 */ fmuls       f3, f3, f1
/* 805B5BE0 EC22002A */ fadds       f1, f2, f0
/* 805B5BE4 90810028 */ stw         r4, 0x28(r1)
/* 805B5BE8 C0032784 */ lfs         f0, lbl_80892784@l(r3)
/* 805B5BEC EC23082A */ fadds       f1, f3, f1
/* 805B5BF0 9001002C */ stw         r0, 0x2c(r1)
/* 805B5BF4 801F00F8 */ lwz         r0, 0xf8(r31)
/* 805B5BF8 FC400A10 */ fabs        f2, f1
/* 805B5BFC 90010030 */ stw         r0, 0x30(r1)
/* 805B5C00 C03F00FC */ lfs         f1, 0xfc(r31)
/* 805B5C04 FC020040 */ fcmpo       cr0, f2, f0
/* 805B5C08 D0210034 */ stfs        f1, 0x34(r1)
/* 805B5C0C 408000C0 */ bge-        lbl_805b5ccc
/* 805B5C10 38610018 */ addi        r3, r1, 0x18
/* 805B5C14 38810038 */ addi        r4, r1, 0x38
/* 805B5C18 38A10044 */ addi        r5, r1, 0x44
/* 805B5C1C 4BC84B6D */ bl          makeVectorRotation__Q23EGG5QuatfFRQ23EGG8Vector3fRQ23EGG8Vector3f
/* 805B5C20 C1410024 */ lfs         f10, 0x24(r1)
/* 805B5C24 38610008 */ addi        r3, r1, 8
/* 805B5C28 C0010034 */ lfs         f0, 0x34(r1)
/* 805B5C2C C3E10018 */ lfs         f31, 0x18(r1)
/* 805B5C30 C1A10028 */ lfs         f13, 0x28(r1)
/* 805B5C34 ECEA0032 */ fmuls       f7, f10, f0
/* 805B5C38 C181001C */ lfs         f12, 0x1c(r1)
/* 805B5C3C ECBF0032 */ fmuls       f5, f31, f0
/* 805B5C40 C161002C */ lfs         f11, 0x2c(r1)
/* 805B5C44 EC8A0372 */ fmuls       f4, f10, f13
/* 805B5C48 C1210020 */ lfs         f9, 0x20(r1)
/* 805B5C4C C1010030 */ lfs         f8, 0x30(r1)
/* 805B5C50 ECDF0372 */ fmuls       f6, f31, f13
/* 805B5C54 ECA5202A */ fadds       f5, f5, f4
/* 805B5C58 EC6C0032 */ fmuls       f3, f12, f0
/* 805B5C5C EC4A02F2 */ fmuls       f2, f10, f11
/* 805B5C60 EC290032 */ fmuls       f1, f9, f0
/* 805B5C64 EC0A0232 */ fmuls       f0, f10, f8
/* 805B5C68 ED473028 */ fsubs       f10, f7, f6
/* 805B5C6C ECEC02F2 */ fmuls       f7, f12, f11
/* 805B5C70 EC63102A */ fadds       f3, f3, f2
/* 805B5C74 EC01002A */ fadds       f0, f1, f0
/* 805B5C78 ECCC0232 */ fmuls       f6, f12, f8
/* 805B5C7C ED4A3828 */ fsubs       f10, f10, f7
/* 805B5C80 EC290232 */ fmuls       f1, f9, f8
/* 805B5C84 ECE6282A */ fadds       f7, f6, f5
/* 805B5C88 EC890372 */ fmuls       f4, f9, f13
/* 805B5C8C EC5F02F2 */ fmuls       f2, f31, f11
/* 805B5C90 ECC902F2 */ fmuls       f6, f9, f11
/* 805B5C94 ECA4182A */ fadds       f5, f4, f3
/* 805B5C98 EC82002A */ fadds       f4, f2, f0
/* 805B5C9C EC7F0232 */ fmuls       f3, f31, f8
/* 805B5CA0 EC0C0372 */ fmuls       f0, f12, f13
/* 805B5CA4 EC2A0828 */ fsubs       f1, f10, f1
/* 805B5CA8 EC473028 */ fsubs       f2, f7, f6
/* 805B5CAC EC651828 */ fsubs       f3, f5, f3
/* 805B5CB0 EC840028 */ fsubs       f4, f4, f0
/* 805B5CB4 4BC84149 */ bl          set__Q23EGG5QuatfFffff
/* 805B5CB8 C03F0178 */ lfs         f1, 0x178(r31)
/* 805B5CBC 38610028 */ addi        r3, r1, 0x28
/* 805B5CC0 38810008 */ addi        r4, r1, 8
/* 805B5CC4 38BF00F0 */ addi        r5, r31, 0xf0
/* 805B5CC8 4BC848FD */ bl          slerpTo__Q23EGG5QuatfCFRCQ23EGG5QuatffRQ23EGG5Quatf
lbl_805b5ccc:
/* 805B5CCC E3E10068 */ psq_l       f31, 0x68(r1), 0, 0
/* 805B5CD0 80010074 */ lwz         r0, 0x74(r1)
/* 805B5CD4 CBE10060 */ lfd         f31, 0x60(r1)
/* 805B5CD8 83E1005C */ lwz         r31, 0x5c(r1)
/* 805B5CDC 7C0803A6 */ mtlr        r0
/* 805B5CE0 38210070 */ addi        r1, r1, 0x70
/* 805B5CE4 4E800020 */ blr         