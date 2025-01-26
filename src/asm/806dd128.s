nofralloc
/* 806DD128 9421FFA0 */ stwu        r1, -0x60(r1)
/* 806DD12C 7C0802A6 */ mflr        r0
/* 806DD130 90010064 */ stw         r0, 0x64(r1)
/* 806DD134 93E1005C */ stw         r31, 0x5c(r1)
/* 806DD138 3FE0808A */ lis         r31, lbl_808a0378@ha
/* 806DD13C 3BFF0378 */ addi        r31, r31, lbl_808a0378@l
/* 806DD140 93C10058 */ stw         r30, 0x58(r1)
/* 806DD144 7C9E2378 */ mr          r30, r4
/* 806DD148 93A10054 */ stw         r29, 0x54(r1)
/* 806DD14C 7C7D1B78 */ mr          r29, r3
/* 806DD150 C06300F8 */ lfs         f3, 0xf8(r3)
/* 806DD154 C0440000 */ lfs         f2, 0(r4)
/* 806DD158 C02300FC */ lfs         f1, 0xfc(r3)
/* 806DD15C C0040004 */ lfs         f0, 4(r4)
/* 806DD160 EC4300B2 */ fmuls       f2, f3, f2
/* 806DD164 C0830100 */ lfs         f4, 0x100(r3)
/* 806DD168 38610038 */ addi        r3, r1, 0x38
/* 806DD16C EC010032 */ fmuls       f0, f1, f0
/* 806DD170 C0640008 */ lfs         f3, 8(r4)
/* 806DD174 389D00F8 */ addi        r4, r29, 0xf8
/* 806DD178 EC2400F2 */ fmuls       f1, f4, f3
/* 806DD17C EC02002A */ fadds       f0, f2, f0
/* 806DD180 EC21002A */ fadds       f1, f1, f0
/* 806DD184 4BE3768D */ bl          Vec3_scale
/* 806DD188 7FC4F378 */ mr          r4, r30
/* 806DD18C 3861002C */ addi        r3, r1, 0x2c
/* 806DD190 38A10038 */ addi        r5, r1, 0x38
/* 806DD194 4BE376D9 */ bl          VEC3_sub
/* 806DD198 80DD0020 */ lwz         r6, 0x20(r29)
/* 806DD19C 38610014 */ addi        r3, r1, 0x14
/* 806DD1A0 A0860006 */ lhz         r4, 6(r6)
/* 806DD1A4 80A60008 */ lwz         r5, 8(r6)
/* 806DD1A8 3804FFFF */ addi        r0, r4, -1
/* 806DD1AC 80860008 */ lwz         r4, 8(r6)
/* 806DD1B0 54002036 */ slwi        r0, r0, 4
/* 806DD1B4 7CA50214 */ add         r5, r5, r0
/* 806DD1B8 4BE37681 */ bl          Vec3_add
/* 806DD1BC C03F005C */ lfs         f1, 0x5c(r31)
/* 806DD1C0 38610020 */ addi        r3, r1, 0x20
/* 806DD1C4 38810014 */ addi        r4, r1, 0x14
/* 806DD1C8 4BE37649 */ bl          Vec3_scale
/* 806DD1CC C05D00DC */ lfs         f2, 0xdc(r29)
/* 806DD1D0 38610008 */ addi        r3, r1, 8
/* 806DD1D4 C03D00E0 */ lfs         f1, 0xe0(r29)
/* 806DD1D8 38810020 */ addi        r4, r1, 0x20
/* 806DD1DC C01D00E4 */ lfs         f0, 0xe4(r29)
/* 806DD1E0 38A1002C */ addi        r5, r1, 0x2c
/* 806DD1E4 D05D00EC */ stfs        f2, 0xec(r29)
/* 806DD1E8 D03D00F0 */ stfs        f1, 0xf0(r29)
/* 806DD1EC D01D00F4 */ stfs        f0, 0xf4(r29)
/* 806DD1F0 4BE37649 */ bl          Vec3_add
/* 806DD1F4 80DD0020 */ lwz         r6, 0x20(r29)
/* 806DD1F8 38610008 */ addi        r3, r1, 8
/* 806DD1FC A0860006 */ lhz         r4, 6(r6)
/* 806DD200 80A60008 */ lwz         r5, 8(r6)
/* 806DD204 3804FFFF */ addi        r0, r4, -1
/* 806DD208 80860008 */ lwz         r4, 8(r6)
/* 806DD20C 54002036 */ slwi        r0, r0, 4
/* 806DD210 7CA50214 */ add         r5, r5, r0
/* 806DD214 4BFD6695 */ bl          unk_806b38a8
/* 806DD218 C01F0004 */ lfs         f0, 4(r31)
/* 806DD21C FC010040 */ fcmpo       cr0, f1, f0
/* 806DD220 7C000026 */ mfcr        r0
/* 806DD224 540017FF */ rlwinm.     r0, r0, 2, 0x1f, 0x1f
/* 806DD228 4182002C */ beq-        lbl_806dd254
/* 806DD22C C05D00EC */ lfs         f2, 0xec(r29)
/* 806DD230 C07F0060 */ lfs         f3, 0x60(r31)
/* 806DD234 C03D00F0 */ lfs         f1, 0xf0(r29)
/* 806DD238 C01D00F4 */ lfs         f0, 0xf4(r29)
/* 806DD23C EC4200F2 */ fmuls       f2, f2, f3
/* 806DD240 EC2100F2 */ fmuls       f1, f1, f3
/* 806DD244 EC0000F2 */ fmuls       f0, f0, f3
/* 806DD248 D05D00EC */ stfs        f2, 0xec(r29)
/* 806DD24C D03D00F0 */ stfs        f1, 0xf0(r29)
/* 806DD250 D01D00F4 */ stfs        f0, 0xf4(r29)
lbl_806dd254:
/* 806DD254 80010064 */ lwz         r0, 0x64(r1)
/* 806DD258 83E1005C */ lwz         r31, 0x5c(r1)
/* 806DD25C 83C10058 */ lwz         r30, 0x58(r1)
/* 806DD260 83A10054 */ lwz         r29, 0x54(r1)
/* 806DD264 7C0803A6 */ mtlr        r0
/* 806DD268 38210060 */ addi        r1, r1, 0x60
/* 806DD26C 4E800020 */ blr         