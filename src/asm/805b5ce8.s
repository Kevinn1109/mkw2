nofralloc
/* 805B5CE8 9421FFA0 */ stwu        r1, -0x60(r1)
/* 805B5CEC 7C0802A6 */ mflr        r0
/* 805B5CF0 90010064 */ stw         r0, 0x64(r1)
/* 805B5CF4 DBE10050 */ stfd        f31, 0x50(r1)
/* 805B5CF8 F3E10058 */ psq_st      f31, 0x58(r1), 0, 0
/* 805B5CFC FFE00890 */ fmr         f31, f1
/* 805B5D00 80E40000 */ lwz         r7, 0(r4)
/* 805B5D04 93E1004C */ stw         r31, 0x4c(r1)
/* 805B5D08 7C9F2378 */ mr          r31, r4
/* 805B5D0C 80C40004 */ lwz         r6, 4(r4)
/* 805B5D10 93C10048 */ stw         r30, 0x48(r1)
/* 805B5D14 7C7E1B78 */ mr          r30, r3
/* 805B5D18 80040008 */ lwz         r0, 8(r4)
/* 805B5D1C 7CA42B78 */ mr          r4, r5
/* 805B5D20 C0430110 */ lfs         f2, 0x110(r3)
/* 805B5D24 C0050000 */ lfs         f0, 0(r5)
/* 805B5D28 C0230114 */ lfs         f1, 0x114(r3)
/* 805B5D2C EC02002A */ fadds       f0, f2, f0
/* 805B5D30 90E10038 */ stw         r7, 0x38(r1)
/* 805B5D34 D0030110 */ stfs        f0, 0x110(r3)
/* 805B5D38 C0050004 */ lfs         f0, 4(r5)
/* 805B5D3C 90C1003C */ stw         r6, 0x3c(r1)
/* 805B5D40 EC01002A */ fadds       f0, f1, f0
/* 805B5D44 C0230118 */ lfs         f1, 0x118(r3)
/* 805B5D48 90010040 */ stw         r0, 0x40(r1)
/* 805B5D4C D0030114 */ stfs        f0, 0x114(r3)
/* 805B5D50 C0050008 */ lfs         f0, 8(r5)
/* 805B5D54 38A1002C */ addi        r5, r1, 0x2c
/* 805B5D58 EC01002A */ fadds       f0, f1, f0
/* 805B5D5C D0030118 */ stfs        f0, 0x118(r3)
/* 805B5D60 38630100 */ addi        r3, r3, 0x100
/* 805B5D64 4BC846A1 */ bl          rotateVectorInv__Q23EGG5QuatfFRCQ23EGG8Vector3fRQ23EGG8Vector3f
/* 805B5D68 C03F0000 */ lfs         f1, 0(r31)
/* 805B5D6C 387E0100 */ addi        r3, r30, 0x100
/* 805B5D70 C01E0068 */ lfs         f0, 0x68(r30)
/* 805B5D74 38810020 */ addi        r4, r1, 0x20
/* 805B5D78 C05F0004 */ lfs         f2, 4(r31)
/* 805B5D7C 38A10014 */ addi        r5, r1, 0x14
/* 805B5D80 EC010028 */ fsubs       f0, f1, f0
/* 805B5D84 C03F0008 */ lfs         f1, 8(r31)
/* 805B5D88 D0010020 */ stfs        f0, 0x20(r1)
/* 805B5D8C C01E006C */ lfs         f0, 0x6c(r30)
/* 805B5D90 EC020028 */ fsubs       f0, f2, f0
/* 805B5D94 D0010024 */ stfs        f0, 0x24(r1)
/* 805B5D98 C01E0070 */ lfs         f0, 0x70(r30)
/* 805B5D9C EC010028 */ fsubs       f0, f1, f0
/* 805B5DA0 D0010028 */ stfs        f0, 0x28(r1)
/* 805B5DA4 4BC84661 */ bl          rotateVectorInv__Q23EGG5QuatfFRCQ23EGG8Vector3fRQ23EGG8Vector3f
/* 805B5DA8 C0810014 */ lfs         f4, 0x14(r1)
/* 805B5DAC C0010030 */ lfs         f0, 0x30(r1)
/* 805B5DB0 C041001C */ lfs         f2, 0x1c(r1)
/* 805B5DB4 C061002C */ lfs         f3, 0x2c(r1)
/* 805B5DB8 ED040032 */ fmuls       f8, f4, f0
/* 805B5DBC C0E10018 */ lfs         f7, 0x18(r1)
/* 805B5DC0 EC020032 */ fmuls       f0, f2, f0
/* 805B5DC4 C0210034 */ lfs         f1, 0x34(r1)
/* 805B5DC8 ECA200F2 */ fmuls       f5, f2, f3
/* 805B5DCC ECC700F2 */ fmuls       f6, f7, f3
/* 805B5DD0 EC840072 */ fmuls       f4, f4, f1
/* 805B5DD4 C05E011C */ lfs         f2, 0x11c(r30)
/* 805B5DD8 EC670072 */ fmuls       f3, f7, f1
/* 805B5DDC C03E0120 */ lfs         f1, 0x120(r30)
/* 805B5DE0 ECC83028 */ fsubs       f6, f8, f6
/* 805B5DE4 EC852028 */ fsubs       f4, f5, f4
/* 805B5DE8 ECA30028 */ fsubs       f5, f3, f0
/* 805B5DEC C01E0124 */ lfs         f0, 0x124(r30)
/* 805B5DF0 EC6607F2 */ fmuls       f3, f6, f31
/* 805B5DF4 EC8407F2 */ fmuls       f4, f4, f31
/* 805B5DF8 ECA507F2 */ fmuls       f5, f5, f31
/* 805B5DFC D0610010 */ stfs        f3, 0x10(r1)
/* 805B5E00 EC00182A */ fadds       f0, f0, f3
/* 805B5E04 EC21202A */ fadds       f1, f1, f4
/* 805B5E08 D0A10008 */ stfs        f5, 8(r1)
/* 805B5E0C EC42282A */ fadds       f2, f2, f5
/* 805B5E10 D03E0120 */ stfs        f1, 0x120(r30)
/* 805B5E14 D05E011C */ stfs        f2, 0x11c(r30)
/* 805B5E18 D01E0124 */ stfs        f0, 0x124(r30)
/* 805B5E1C D081000C */ stfs        f4, 0xc(r1)
/* 805B5E20 E3E10058 */ psq_l       f31, 0x58(r1), 0, 0
/* 805B5E24 CBE10050 */ lfd         f31, 0x50(r1)
/* 805B5E28 83E1004C */ lwz         r31, 0x4c(r1)
/* 805B5E2C 83C10048 */ lwz         r30, 0x48(r1)
/* 805B5E30 80010064 */ lwz         r0, 0x64(r1)
/* 805B5E34 7C0803A6 */ mtlr        r0
/* 805B5E38 38210060 */ addi        r1, r1, 0x60
/* 805B5E3C 4E800020 */ blr         