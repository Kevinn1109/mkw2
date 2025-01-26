nofralloc
/* 80581B1C 9421FFD0 */ stwu        r1, -0x30(r1)
/* 80581B20 7C0802A6 */ mflr        r0
/* 80581B24 90010034 */ stw         r0, 0x34(r1)
/* 80581B28 DBE10020 */ stfd        f31, 0x20(r1)
/* 80581B2C F3E10028 */ psq_st      f31, 0x28(r1), 0, 0
/* 80581B30 93E1001C */ stw         r31, 0x1c(r1)
/* 80581B34 7C7F1B78 */ mr          r31, r3
/* 80581B38 93C10018 */ stw         r30, 0x18(r1)
/* 80581B3C 3FC0808B */ lis         r30, lbl_808b58f0@ha
/* 80581B40 3BDE58F0 */ addi        r30, r30, lbl_808b58f0@l
/* 80581B44 93A10014 */ stw         r29, 0x14(r1)
/* 80581B48 93810010 */ stw         r28, 0x10(r1)
/* 80581B4C 80830000 */ lwz         r4, 0(r3)
/* 80581B50 80840004 */ lwz         r4, 4(r4)
/* 80581B54 8004000C */ lwz         r0, 0xc(r4)
/* 80581B58 540000C7 */ rlwinm.     r0, r0, 0, 3, 3
/* 80581B5C 41820080 */ beq-        lbl_80581bdc
/* 80581B60 4800F8C9 */ bl          kartAccessor_44__Q24Kart15KartObjectProxyFv
/* 80581B64 C0430050 */ lfs         f2, 0x50(r3)
/* 80581B68 C01E02B8 */ lfs         f0, 0x2b8(r30)
/* 80581B6C C03E02C0 */ lfs         f1, 0x2c0(r30)
/* 80581B70 EFE20028 */ fsubs       f31, f2, f0
/* 80581B74 FC01F840 */ fcmpo       cr0, f1, f31
/* 80581B78 40810008 */ ble-        lbl_80581b80
/* 80581B7C FFE00890 */ fmr         f31, f1
lbl_80581b80:
/* 80581B80 8BDF0190 */ lbz         r30, 0x190(r31)
/* 80581B84 7FE3FB78 */ mr          r3, r31
/* 80581B88 4800F8A1 */ bl          kartAccessor_44__Q24Kart15KartObjectProxyFv
/* 80581B8C 9BC30054 */ stb         r30, 0x54(r3)
/* 80581B90 FC00F818 */ frsp        f0, f31
/* 80581B94 D0030050 */ stfs        f0, 0x50(r3)
/* 80581B98 7FE3FB78 */ mr          r3, r31
/* 80581B9C 4800EEA5 */ bl          kartModel__Q24Kart15KartObjectProxyFv
/* 80581BA0 FC20F818 */ frsp        f1, f31
/* 80581BA4 4825236D */ bl          unk_807d3f10
/* 80581BA8 A87F018E */ lha         r3, 0x18e(r31)
/* 80581BAC 3803FFFF */ addi        r0, r3, -1
/* 80581BB0 B01F018E */ sth         r0, 0x18e(r31)
/* 80581BB4 7C000735 */ extsh.      r0, r0
/* 80581BB8 40800090 */ bge-        lbl_80581c48
/* 80581BBC 807F0000 */ lwz         r3, 0(r31)
/* 80581BC0 38000000 */ li          r0, 0
/* 80581BC4 80830004 */ lwz         r4, 4(r3)
/* 80581BC8 8064000C */ lwz         r3, 0xc(r4)
/* 80581BCC 54630104 */ rlwinm      r3, r3, 0, 4, 2
/* 80581BD0 9064000C */ stw         r3, 0xc(r4)
/* 80581BD4 B01F018E */ sth         r0, 0x18e(r31)
/* 80581BD8 48000070 */ b           lbl_80581c48
lbl_80581bdc:
/* 80581BDC 8B830190 */ lbz         r28, 0x190(r3)
/* 80581BE0 4800F849 */ bl          kartAccessor_44__Q24Kart15KartObjectProxyFv
/* 80581BE4 8BBF0190 */ lbz         r29, 0x190(r31)
/* 80581BE8 C3E30050 */ lfs         f31, 0x50(r3)
/* 80581BEC 2C1D0000 */ cmpwi       r29, 0
/* 80581BF0 41820034 */ beq-        lbl_80581c24
/* 80581BF4 C03E02BC */ lfs         f1, 0x2bc(r30)
/* 80581BF8 3C608089 */ lis         r3, lbl_80891a04@ha
/* 80581BFC C0031A04 */ lfs         f0, lbl_80891a04@l(r3)
/* 80581C00 EFFF082A */ fadds       f31, f31, f1
/* 80581C04 FC00F840 */ fcmpo       cr0, f0, f31
/* 80581C08 40800010 */ bge-        lbl_80581c18
/* 80581C0C FFE00090 */ fmr         f31, f0
/* 80581C10 38000001 */ li          r0, 1
/* 80581C14 48000008 */ b           lbl_80581c1c
lbl_80581c18:
/* 80581C18 38000000 */ li          r0, 0
lbl_80581c1c:
/* 80581C1C 7C000034 */ cntlzw      r0, r0
/* 80581C20 541CD97E */ srwi        r28, r0, 5
lbl_80581c24:
/* 80581C24 7FE3FB78 */ mr          r3, r31
/* 80581C28 4800F801 */ bl          kartAccessor_44__Q24Kart15KartObjectProxyFv
/* 80581C2C 9BA30054 */ stb         r29, 0x54(r3)
/* 80581C30 D3E30050 */ stfs        f31, 0x50(r3)
/* 80581C34 7FE3FB78 */ mr          r3, r31
/* 80581C38 4800EE09 */ bl          kartModel__Q24Kart15KartObjectProxyFv
/* 80581C3C FC20F890 */ fmr         f1, f31
/* 80581C40 482522D1 */ bl          unk_807d3f10
/* 80581C44 9B9F0190 */ stb         r28, 0x190(r31)
lbl_80581c48:
/* 80581C48 E3E10028 */ psq_l       f31, 0x28(r1), 0, 0
/* 80581C4C 80010034 */ lwz         r0, 0x34(r1)
/* 80581C50 CBE10020 */ lfd         f31, 0x20(r1)
/* 80581C54 83E1001C */ lwz         r31, 0x1c(r1)
/* 80581C58 83C10018 */ lwz         r30, 0x18(r1)
/* 80581C5C 83A10014 */ lwz         r29, 0x14(r1)
/* 80581C60 83810010 */ lwz         r28, 0x10(r1)
/* 80581C64 7C0803A6 */ mtlr        r0
/* 80581C68 38210030 */ addi        r1, r1, 0x30
/* 80581C6C 4E800020 */ blr         