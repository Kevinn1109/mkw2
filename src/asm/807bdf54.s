nofralloc
/* 807BDF54 9421FFC0 */ stwu        r1, -0x40(r1)
/* 807BDF58 7C0802A6 */ mflr        r0
/* 807BDF5C 90010044 */ stw         r0, 0x44(r1)
/* 807BDF60 DBE10030 */ stfd        f31, 0x30(r1)
/* 807BDF64 F3E10038 */ psq_st      f31, 0x38(r1), 0, 0
/* 807BDF68 FFE00890 */ fmr         f31, f1
/* 807BDF6C 93E1002C */ stw         r31, 0x2c(r1)
/* 807BDF70 7CDF3378 */ mr          r31, r6
/* 807BDF74 93C10028 */ stw         r30, 0x28(r1)
/* 807BDF78 7C9E2378 */ mr          r30, r4
/* 807BDF7C 7CE43B78 */ mr          r4, r7
/* 807BDF80 93A10024 */ stw         r29, 0x24(r1)
/* 807BDF84 7C7D1B78 */ mr          r29, r3
/* 807BDF88 7CA32B78 */ mr          r3, r5
/* 807BDF8C 38A10008 */ addi        r5, r1, 8
/* 807BDF90 4B9DCD3D */ bl          PSVECCrossProduct
/* 807BDF94 38610008 */ addi        r3, r1, 8
/* 807BDF98 E0DF0004 */ psq_l       f6, 4(r31), 0, 0
/* 807BDF9C E0E30004 */ psq_l       f7, 4(r3), 0, 0
/* 807BDFA0 E0038000 */ psq_l       f0, 0(r3), 1, 0
/* 807BDFA4 10E701B2 */ ps_mul      f7, f7, f6
/* 807BDFA8 E03F8000 */ psq_l       f1, 0(r31), 1, 0
/* 807BDFAC C0A10008 */ lfs         f5, 8(r1)
/* 807BDFB0 C081000C */ lfs         f4, 0xc(r1)
/* 807BDFB4 10C0387A */ ps_madd     f6, f0, f1, f7
/* 807BDFB8 C0610010 */ lfs         f3, 0x10(r1)
/* 807BDFBC C05E0000 */ lfs         f2, 0(r30)
/* 807BDFC0 C03E0004 */ lfs         f1, 4(r30)
/* 807BDFC4 10C639D4 */ ps_sum0     f6, f6, f7, f7
/* 807BDFC8 C01E0008 */ lfs         f0, 8(r30)
/* 807BDFCC ECDF3024 */ fdivs       f6, f31, f6
/* 807BDFD0 ECA501B2 */ fmuls       f5, f5, f6
/* 807BDFD4 EC8401B2 */ fmuls       f4, f4, f6
/* 807BDFD8 EC6301B2 */ fmuls       f3, f3, f6
/* 807BDFDC EC45102A */ fadds       f2, f5, f2
/* 807BDFE0 EC24082A */ fadds       f1, f4, f1
/* 807BDFE4 EC03002A */ fadds       f0, f3, f0
/* 807BDFE8 D0410008 */ stfs        f2, 8(r1)
/* 807BDFEC D021000C */ stfs        f1, 0xc(r1)
/* 807BDFF0 80610008 */ lwz         r3, 8(r1)
/* 807BDFF4 D0010010 */ stfs        f0, 0x10(r1)
/* 807BDFF8 8001000C */ lwz         r0, 0xc(r1)
/* 807BDFFC 901D0004 */ stw         r0, 4(r29)
/* 807BE000 907D0000 */ stw         r3, 0(r29)
/* 807BE004 80010010 */ lwz         r0, 0x10(r1)
/* 807BE008 901D0008 */ stw         r0, 8(r29)
/* 807BE00C E3E10038 */ psq_l       f31, 0x38(r1), 0, 0
/* 807BE010 CBE10030 */ lfd         f31, 0x30(r1)
/* 807BE014 83E1002C */ lwz         r31, 0x2c(r1)
/* 807BE018 83C10028 */ lwz         r30, 0x28(r1)
/* 807BE01C 83A10024 */ lwz         r29, 0x24(r1)
/* 807BE020 80010044 */ lwz         r0, 0x44(r1)
/* 807BE024 7C0803A6 */ mtlr        r0
/* 807BE028 38210040 */ addi        r1, r1, 0x40
/* 807BE02C 4E800020 */ blr         