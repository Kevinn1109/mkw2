nofralloc
/* 8057CDD4 9421FFC0 */ stwu        r1, -0x40(r1)
/* 8057CDD8 7C0802A6 */ mflr        r0
/* 8057CDDC 90010044 */ stw         r0, 0x44(r1)
/* 8057CDE0 DBE10030 */ stfd        f31, 0x30(r1)
/* 8057CDE4 F3E10038 */ psq_st      f31, 0x38(r1), 0, 0
/* 8057CDE8 93E1002C */ stw         r31, 0x2c(r1)
/* 8057CDEC 3FE08089 */ lis         r31, lbl_80891a00@ha
/* 8057CDF0 3BFF1A00 */ addi        r31, r31, lbl_80891a00@l
/* 8057CDF4 93C10028 */ stw         r30, 0x28(r1)
/* 8057CDF8 7C9E2378 */ mr          r30, r4
/* 8057CDFC 93A10024 */ stw         r29, 0x24(r1)
/* 8057CE00 7C7D1B78 */ mr          r29, r3
/* 8057CE04 480135C9 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057CE08 3C80802A */ lis         r4, lbl_802a4148@ha
/* 8057CE0C 38A10014 */ addi        r5, r1, 0x14
/* 8057CE10 38844148 */ addi        r4, r4, lbl_802a4148@l
/* 8057CE14 386300F0 */ addi        r3, r3, 0xf0
/* 8057CE18 4BCBD4B9 */ bl          rotateVector__Q23EGG5QuatfFRCQ23EGG8Vector3fRQ23EGG8Vector3f
/* 8057CE1C C0610014 */ lfs         f3, 0x14(r1)
/* 8057CE20 38610008 */ addi        r3, r1, 8
/* 8057CE24 C05D005C */ lfs         f2, 0x5c(r29)
/* 8057CE28 38810014 */ addi        r4, r1, 0x14
/* 8057CE2C C0210018 */ lfs         f1, 0x18(r1)
/* 8057CE30 38BD005C */ addi        r5, r29, 0x5c
/* 8057CE34 C01D0060 */ lfs         f0, 0x60(r29)
/* 8057CE38 EC4300B2 */ fmuls       f2, f3, f2
/* 8057CE3C C061001C */ lfs         f3, 0x1c(r1)
/* 8057CE40 EC010032 */ fmuls       f0, f1, f0
/* 8057CE44 C03D0064 */ lfs         f1, 0x64(r29)
/* 8057CE48 EC230072 */ fmuls       f1, f3, f1
/* 8057CE4C EC02002A */ fadds       f0, f2, f0
/* 8057CE50 EFE1002A */ fadds       f31, f1, f0
/* 8057CE54 4BFBA9DD */ bl          VEC3_fromCross
/* 8057CE58 C0210008 */ lfs         f1, 8(r1)
/* 8057CE5C C001000C */ lfs         f0, 0xc(r1)
/* 8057CE60 EC210072 */ fmuls       f1, f1, f1
/* 8057CE64 C0410010 */ lfs         f2, 0x10(r1)
/* 8057CE68 EC000032 */ fmuls       f0, f0, f0
/* 8057CE6C EC4200B2 */ fmuls       f2, f2, f2
/* 8057CE70 EC01002A */ fadds       f0, f1, f0
/* 8057CE74 EC22002A */ fadds       f1, f2, f0
/* 8057CE78 4BCB2995 */ bl          sqrt__Q23EGG5MathfFf
/* 8057CE7C FC40F890 */ fmr         f2, f31
/* 8057CE80 4BCB2A65 */ bl          atan2_Q23EGG5MathfFff
/* 8057CE84 C01F0000 */ lfs         f0, 0(r31)
/* 8057CE88 FC010040 */ fcmpo       cr0, f1, f0
/* 8057CE8C 40810008 */ ble-        lbl_8057ce94
/* 8057CE90 48000008 */ b           lbl_8057ce98
lbl_8057ce94:
/* 8057CE94 FC200850 */ fneg        f1, f1
lbl_8057ce98:
/* 8057CE98 C01F0058 */ lfs         f0, 0x58(r31)
/* 8057CE9C 3C60808B */ lis         r3, lbl_808b5b64@ha
/* 8057CEA0 C0435B64 */ lfs         f2, lbl_808b5b64@l(r3)
/* 8057CEA4 EC000072 */ fmuls       f0, f0, f1
/* 8057CEA8 FC001040 */ fcmpo       cr0, f0, f2
/* 8057CEAC 4081003C */ ble-        lbl_8057cee8
/* 8057CEB0 3C60808B */ lis         r3, lbl_808b5b68@ha
/* 8057CEB4 EC601028 */ fsubs       f3, f0, f2
/* 8057CEB8 C0035B68 */ lfs         f0, lbl_808b5b68@l(r3)
/* 8057CEBC C03F0004 */ lfs         f1, 4(r31)
/* 8057CEC0 EC401028 */ fsubs       f2, f0, f2
/* 8057CEC4 C01F0000 */ lfs         f0, 0(r31)
/* 8057CEC8 EC431024 */ fdivs       f2, f3, f2
/* 8057CECC EC211028 */ fsubs       f1, f1, f2
/* 8057CED0 FC000840 */ fcmpo       cr0, f0, f1
/* 8057CED4 40810008 */ ble-        lbl_8057cedc
/* 8057CED8 FC200090 */ fmr         f1, f0
lbl_8057cedc:
/* 8057CEDC C01E0000 */ lfs         f0, 0(r30)
/* 8057CEE0 EC000072 */ fmuls       f0, f0, f1
/* 8057CEE4 D01E0000 */ stfs        f0, 0(r30)
lbl_8057cee8:
/* 8057CEE8 E3E10038 */ psq_l       f31, 0x38(r1), 0, 0
/* 8057CEEC 80010044 */ lwz         r0, 0x44(r1)
/* 8057CEF0 CBE10030 */ lfd         f31, 0x30(r1)
/* 8057CEF4 83E1002C */ lwz         r31, 0x2c(r1)
/* 8057CEF8 83C10028 */ lwz         r30, 0x28(r1)
/* 8057CEFC 83A10024 */ lwz         r29, 0x24(r1)
/* 8057CF00 7C0803A6 */ mtlr        r0
/* 8057CF04 38210040 */ addi        r1, r1, 0x40
/* 8057CF08 4E800020 */ blr         