nofralloc
/* 8057E99C 9421FFD0 */ stwu        r1, -0x30(r1)
/* 8057E9A0 7C0802A6 */ mflr        r0
/* 8057E9A4 90010034 */ stw         r0, 0x34(r1)
/* 8057E9A8 DBE10020 */ stfd        f31, 0x20(r1)
/* 8057E9AC F3E10028 */ psq_st      f31, 0x28(r1), 0, 0
/* 8057E9B0 C1440000 */ lfs         f10, 0(r4)
/* 8057E9B4 C1250004 */ lfs         f9, 4(r5)
/* 8057E9B8 C0E40004 */ lfs         f7, 4(r4)
/* 8057E9BC C0850000 */ lfs         f4, 0(r5)
/* 8057E9C0 ED0A0272 */ fmuls       f8, f10, f9
/* 8057E9C4 C0C40008 */ lfs         f6, 8(r4)
/* 8057E9C8 EC670272 */ fmuls       f3, f7, f9
/* 8057E9CC C0A50008 */ lfs         f5, 8(r5)
/* 8057E9D0 EC470132 */ fmuls       f2, f7, f4
/* 8057E9D4 EC260132 */ fmuls       f1, f6, f4
/* 8057E9D8 EC0A0172 */ fmuls       f0, f10, f5
/* 8057E9DC ED081028 */ fsubs       f8, f8, f2
/* 8057E9E0 EC470172 */ fmuls       f2, f7, f5
/* 8057E9E4 EC010028 */ fsubs       f0, f1, f0
/* 8057E9E8 D1010010 */ stfs        f8, 0x10(r1)
/* 8057E9EC EC260272 */ fmuls       f1, f6, f9
/* 8057E9F0 EC8A0132 */ fmuls       f4, f10, f4
/* 8057E9F4 D001000C */ stfs        f0, 0xc(r1)
/* 8057E9F8 EC000032 */ fmuls       f0, f0, f0
/* 8057E9FC EC220828 */ fsubs       f1, f2, f1
/* 8057EA00 EC480232 */ fmuls       f2, f8, f8
/* 8057EA04 D0210008 */ stfs        f1, 8(r1)
/* 8057EA08 ECA60172 */ fmuls       f5, f6, f5
/* 8057EA0C EC210072 */ fmuls       f1, f1, f1
/* 8057EA10 EC64182A */ fadds       f3, f4, f3
/* 8057EA14 EC01002A */ fadds       f0, f1, f0
/* 8057EA18 EFE5182A */ fadds       f31, f5, f3
/* 8057EA1C EC22002A */ fadds       f1, f2, f0
/* 8057EA20 4BCB0DED */ bl          sqrt__Q23EGG5MathfFf
/* 8057EA24 FC40F890 */ fmr         f2, f31
/* 8057EA28 4BCB0EBD */ bl          atan2_Q23EGG5MathfFff
/* 8057EA2C 3C608089 */ lis         r3, lbl_80891a58@ha
/* 8057EA30 C0031A58 */ lfs         f0, lbl_80891a58@l(r3)
/* 8057EA34 EC200072 */ fmuls       f1, f0, f1
/* 8057EA38 E3E10028 */ psq_l       f31, 0x28(r1), 0, 0
/* 8057EA3C CBE10020 */ lfd         f31, 0x20(r1)
/* 8057EA40 80010034 */ lwz         r0, 0x34(r1)
/* 8057EA44 7C0803A6 */ mtlr        r0
/* 8057EA48 38210030 */ addi        r1, r1, 0x30
/* 8057EA4C 4E800020 */ blr         