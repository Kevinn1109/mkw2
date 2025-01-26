nofralloc
/* 80579FE4 9421FFC0 */ stwu        r1, -0x40(r1)
/* 80579FE8 7C0802A6 */ mflr        r0
/* 80579FEC 90010044 */ stw         r0, 0x44(r1)
/* 80579FF0 DBE10030 */ stfd        f31, 0x30(r1)
/* 80579FF4 F3E10038 */ psq_st      f31, 0x38(r1), 0, 0
/* 80579FF8 93E1002C */ stw         r31, 0x2c(r1)
/* 80579FFC 3FE08089 */ lis         r31, lbl_80891a00@ha
/* 8057A000 3BFF1A00 */ addi        r31, r31, lbl_80891a00@l
/* 8057A004 93C10028 */ stw         r30, 0x28(r1)
/* 8057A008 3FC0808B */ lis         r30, lbl_808b58f0@ha
/* 8057A00C 3BDE58F0 */ addi        r30, r30, lbl_808b58f0@l
/* 8057A010 93A10024 */ stw         r29, 0x24(r1)
/* 8057A014 7C7D1B78 */ mr          r29, r3
/* 8057A018 80A30000 */ lwz         r5, 0(r3)
/* 8057A01C 80850004 */ lwz         r4, 4(r5)
/* 8057A020 8004000C */ lwz         r0, 0xc(r4)
/* 8057A024 5400077B */ rlwinm.     r0, r0, 0, 0x1d, 0x1d
/* 8057A028 418200F0 */ beq-        lbl_8057a118
/* 8057A02C A883023C */ lha         r4, 0x23c(r3)
/* 8057A030 38040001 */ addi        r0, r4, 1
/* 8057A034 B003023C */ sth         r0, 0x23c(r3)
/* 8057A038 7C040734 */ extsh       r4, r0
/* 8057A03C A81E02B4 */ lha         r0, 0x2b4(r30)
/* 8057A040 7C040000 */ cmpw        r4, r0
/* 8057A044 4081001C */ ble-        lbl_8057a060
/* 8057A048 80630000 */ lwz         r3, 0(r3)
/* 8057A04C 80630004 */ lwz         r3, 4(r3)
/* 8057A050 8003000C */ lwz         r0, 0xc(r3)
/* 8057A054 540007B8 */ rlwinm      r0, r0, 0, 0x1e, 0x1c
/* 8057A058 9003000C */ stw         r0, 0xc(r3)
/* 8057A05C 480000BC */ b           lbl_8057a118
lbl_8057a060:
/* 8057A060 80850004 */ lwz         r4, 4(r5)
/* 8057A064 80040004 */ lwz         r0, 4(r4)
/* 8057A068 5400035B */ rlwinm.     r0, r0, 0, 0xd, 0xd
/* 8057A06C 418200AC */ beq-        lbl_8057a118
/* 8057A070 80040008 */ lwz         r0, 8(r4)
/* 8057A074 540007FF */ clrlwi.     r0, r0, 0x1f
/* 8057A078 408200A0 */ bne-        lbl_8057a118
/* 8057A07C 48016D45 */ bl          getSpeedRatioCapped__Q24Kart15KartObjectProxyFv
/* 8057A080 C05E02A8 */ lfs         f2, 0x2a8(r30)
/* 8057A084 C01F0004 */ lfs         f0, 4(r31)
/* 8057A088 EFE11024 */ fdivs       f31, f1, f2
/* 8057A08C FC00F840 */ fcmpo       cr0, f0, f31
/* 8057A090 40800008 */ bge-        lbl_8057a098
/* 8057A094 FFE00090 */ fmr         f31, f0
lbl_8057a098:
/* 8057A098 A07D023E */ lhz         r3, 0x23e(r29)
/* 8057A09C 38810008 */ addi        r4, r1, 8
/* 8057A0A0 801E02AC */ lwz         r0, 0x2ac(r30)
/* 8057A0A4 7C030214 */ add         r0, r3, r0
/* 8057A0A8 B01D023E */ sth         r0, 0x23e(r29)
/* 8057A0AC B0010008 */ sth         r0, 8(r1)
/* 8057A0B0 E024B000 */ psq_l       f1, 0(r4), 1, 3
/* 8057A0B4 C01F0050 */ lfs         f0, 0x50(r31)
/* 8057A0B8 EC200072 */ fmuls       f1, f0, f1
/* 8057A0BC 4BB0B055 */ bl          SinFIdx__Q24nw4r4mathFf
/* 8057A0C0 C05E02B0 */ lfs         f2, 0x2b0(r30)
/* 8057A0C4 7FA3EB78 */ mr          r3, r29
/* 8057A0C8 C01F0000 */ lfs         f0, 0(r31)
/* 8057A0CC EC220072 */ fmuls       f1, f2, f1
/* 8057A0D0 D001000C */ stfs        f0, 0xc(r1)
/* 8057A0D4 D0010014 */ stfs        f0, 0x14(r1)
/* 8057A0D8 EC1F0072 */ fmuls       f0, f31, f1
/* 8057A0DC D01D0240 */ stfs        f0, 0x240(r29)
/* 8057A0E0 D0010010 */ stfs        f0, 0x10(r1)
/* 8057A0E4 480162E9 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057A0E8 C04300E4 */ lfs         f2, 0xe4(r3)
/* 8057A0EC C001000C */ lfs         f0, 0xc(r1)
/* 8057A0F0 C0210010 */ lfs         f1, 0x10(r1)
/* 8057A0F4 EC42002A */ fadds       f2, f2, f0
/* 8057A0F8 C0010014 */ lfs         f0, 0x14(r1)
/* 8057A0FC D04300E4 */ stfs        f2, 0xe4(r3)
/* 8057A100 C04300E8 */ lfs         f2, 0xe8(r3)
/* 8057A104 EC22082A */ fadds       f1, f2, f1
/* 8057A108 D02300E8 */ stfs        f1, 0xe8(r3)
/* 8057A10C C02300EC */ lfs         f1, 0xec(r3)
/* 8057A110 EC01002A */ fadds       f0, f1, f0
/* 8057A114 D00300EC */ stfs        f0, 0xec(r3)
lbl_8057a118:
/* 8057A118 E3E10038 */ psq_l       f31, 0x38(r1), 0, 0
/* 8057A11C 80010044 */ lwz         r0, 0x44(r1)
/* 8057A120 CBE10030 */ lfd         f31, 0x30(r1)
/* 8057A124 83E1002C */ lwz         r31, 0x2c(r1)
/* 8057A128 83C10028 */ lwz         r30, 0x28(r1)
/* 8057A12C 83A10024 */ lwz         r29, 0x24(r1)
/* 8057A130 7C0803A6 */ mtlr        r0
/* 8057A134 38210040 */ addi        r1, r1, 0x40
/* 8057A138 4E800020 */ blr         