nofralloc
/* 8057AB68 9421FFD0 */ stwu        r1, -0x30(r1)
/* 8057AB6C 7C0802A6 */ mflr        r0
/* 8057AB70 90010034 */ stw         r0, 0x34(r1)
/* 8057AB74 DBE10020 */ stfd        f31, 0x20(r1)
/* 8057AB78 F3E10028 */ psq_st      f31, 0x28(r1), 0, 0
/* 8057AB7C 38800002 */ li          r4, 2
/* 8057AB80 93E1001C */ stw         r31, 0x1c(r1)
/* 8057AB84 3FE08089 */ lis         r31, lbl_80891a00@ha
/* 8057AB88 3BFF1A00 */ addi        r31, r31, lbl_80891a00@l
/* 8057AB8C 93C10018 */ stw         r30, 0x18(r1)
/* 8057AB90 3FC0808B */ lis         r30, lbl_808b58f0@ha
/* 8057AB94 3BDE58F0 */ addi        r30, r30, lbl_808b58f0@l
/* 8057AB98 93A10014 */ stw         r29, 0x14(r1)
/* 8057AB9C 7C7D1B78 */ mr          r29, r3
/* 8057ABA0 93810010 */ stw         r28, 0x10(r1)
/* 8057ABA4 3F80809C */ lis         r28, spInstance__Q26System11RaceManager@ha
/* 8057ABA8 807CD730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r28)
/* 8057ABAC 4BFBB685 */ bl          Raceinfo_isAtLeastStage
/* 8057ABB0 2C030000 */ cmpwi       r3, 0
/* 8057ABB4 4182007C */ beq-        lbl_8057ac30
/* 8057ABB8 7FA3EB78 */ mr          r3, r29
/* 8057ABBC 48015811 */ bl          kartDynamics__Q24Kart15KartObjectProxyFv
/* 8057ABC0 C3E3017C */ lfs         f31, 0x17c(r3)
/* 8057ABC4 38800002 */ li          r4, 2
/* 8057ABC8 807CD730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r28)
/* 8057ABCC 4BFBB665 */ bl          Raceinfo_isAtLeastStage
/* 8057ABD0 2C030000 */ cmpwi       r3, 0
/* 8057ABD4 4182004C */ beq-        lbl_8057ac20
/* 8057ABD8 807D0000 */ lwz         r3, 0(r29)
/* 8057ABDC 80830004 */ lwz         r4, 4(r3)
/* 8057ABE0 80040008 */ lwz         r0, 8(r4)
/* 8057ABE4 540007FF */ clrlwi.     r0, r0, 0x1f
/* 8057ABE8 4082003C */ bne-        lbl_8057ac24
/* 8057ABEC 80840004 */ lwz         r4, 4(r4)
/* 8057ABF0 54800463 */ rlwinm.     r0, r4, 0, 0x11, 0x11
/* 8057ABF4 40820024 */ bne-        lbl_8057ac18
/* 8057ABF8 80630004 */ lwz         r3, 4(r3)
/* 8057ABFC A80300A4 */ lha         r0, 0xa4(r3)
/* 8057AC00 2C000000 */ cmpwi       r0, 0
/* 8057AC04 40810014 */ ble-        lbl_8057ac18
/* 8057AC08 FC20FA10 */ fabs        f1, f31
/* 8057AC0C C01E0224 */ lfs         f0, 0x224(r30)
/* 8057AC10 FC010040 */ fcmpo       cr0, f1, f0
/* 8057AC14 4180000C */ blt-        lbl_8057ac20
lbl_8057ac18:
/* 8057AC18 54800739 */ rlwinm.     r0, r4, 0, 0x1c, 0x1c
/* 8057AC1C 41820008 */ beq-        lbl_8057ac24
lbl_8057ac20:
/* 8057AC20 C3FF0000 */ lfs         f31, 0(r31)
lbl_8057ac24:
/* 8057AC24 C01D0020 */ lfs         f0, 0x20(r29)
/* 8057AC28 EC00F82A */ fadds       f0, f0, f31
/* 8057AC2C D01D0020 */ stfs        f0, 0x20(r29)
lbl_8057ac30:
/* 8057AC30 C03D0020 */ lfs         f1, 0x20(r29)
/* 8057AC34 C01F0068 */ lfs         f0, 0x68(r31)
/* 8057AC38 FC010040 */ fcmpo       cr0, f1, f0
/* 8057AC3C 40800010 */ bge-        lbl_8057ac4c
/* 8057AC40 C01F001C */ lfs         f0, 0x1c(r31)
/* 8057AC44 EC01002A */ fadds       f0, f1, f0
/* 8057AC48 D01D0020 */ stfs        f0, 0x20(r29)
lbl_8057ac4c:
/* 8057AC4C 807D0000 */ lwz         r3, 0(r29)
/* 8057AC50 38000000 */ li          r0, 0
/* 8057AC54 80E30004 */ lwz         r7, 4(r3)
/* 8057AC58 80670010 */ lwz         r3, 0x10(r7)
/* 8057AC5C 546305AD */ rlwinm.     r3, r3, 0, 0x16, 0x16
/* 8057AC60 40820078 */ bne-        lbl_8057acd8
/* 8057AC64 81070008 */ lwz         r8, 8(r7)
/* 8057AC68 38A00001 */ li          r5, 1
/* 8057AC6C 38C00001 */ li          r6, 1
/* 8057AC70 5503014B */ rlwinm.     r3, r8, 0, 5, 5
/* 8057AC74 4082001C */ bne-        lbl_8057ac90
/* 8057AC78 3C602801 */ lis         r3, 0x2801
/* 8057AC7C 8087000C */ lwz         r4, 0xc(r7)
/* 8057AC80 38638000 */ addi        r3, r3, -0x8000
/* 8057AC84 7C831839 */ and.        r3, r4, r3
/* 8057AC88 40820008 */ bne-        lbl_8057ac90
/* 8057AC8C 38C00000 */ li          r6, 0
lbl_8057ac90:
/* 8057AC90 2C060000 */ cmpwi       r6, 0
/* 8057AC94 40820010 */ bne-        lbl_8057aca4
/* 8057AC98 55030001 */ rlwinm.     r3, r8, 0, 0, 0
/* 8057AC9C 40820008 */ bne-        lbl_8057aca4
/* 8057ACA0 38A00000 */ li          r5, 0
lbl_8057aca4:
/* 8057ACA4 2C050000 */ cmpwi       r5, 0
/* 8057ACA8 40820050 */ bne-        lbl_8057acf8
/* 8057ACAC 8067000C */ lwz         r3, 0xc(r7)
/* 8057ACB0 54630295 */ rlwinm.     r3, r3, 0, 0xa, 0xa
/* 8057ACB4 41820044 */ beq-        lbl_8057acf8
/* 8057ACB8 80670004 */ lwz         r3, 4(r7)
/* 8057ACBC 5463014B */ rlwinm.     r3, r3, 0, 5, 5
/* 8057ACC0 40820038 */ bne-        lbl_8057acf8
/* 8057ACC4 C03D0020 */ lfs         f1, 0x20(r29)
/* 8057ACC8 C01F006C */ lfs         f0, 0x6c(r31)
/* 8057ACCC FC200A10 */ fabs        f1, f1
/* 8057ACD0 FC010040 */ fcmpo       cr0, f1, f0
/* 8057ACD4 40810024 */ ble-        lbl_8057acf8
lbl_8057acd8:
/* 8057ACD8 7FA3EB78 */ mr          r3, r29
/* 8057ACDC 48015B71 */ bl          kartCollide__Q24Kart15KartObjectProxyFv
/* 8057ACE0 80630010 */ lwz         r3, 0x10(r3)
/* 8057ACE4 38000001 */ li          r0, 1
/* 8057ACE8 C01D0020 */ lfs         f0, 0x20(r29)
/* 8057ACEC C0230038 */ lfs         f1, 0x38(r3)
/* 8057ACF0 EC000072 */ fmuls       f0, f0, f1
/* 8057ACF4 D01D0020 */ stfs        f0, 0x20(r29)
lbl_8057acf8:
/* 8057ACF8 C03F0000 */ lfs         f1, 0(r31)
/* 8057ACFC C01F0004 */ lfs         f0, 4(r31)
/* 8057AD00 D03D0030 */ stfs        f1, 0x30(r29)
/* 8057AD04 80BD0000 */ lwz         r5, 0(r29)
/* 8057AD08 D01D0034 */ stfs        f0, 0x34(r29)
/* 8057AD0C 80C50004 */ lwz         r6, 4(r5)
/* 8057AD10 80E60008 */ lwz         r7, 8(r6)
/* 8057AD14 54E307FF */ clrlwi.     r3, r7, 0x1f
/* 8057AD18 41820018 */ beq-        lbl_8057ad30
/* 8057AD1C 7FA3EB78 */ mr          r3, r29
/* 8057AD20 48015A45 */ bl          kartPhysicsEngine__Q24Kart15KartObjectProxyFv
/* 8057AD24 80630014 */ lwz         r3, 0x14(r3)
/* 8057AD28 4BFECFBD */ bl          PlayerSub14_updateCollisionSpeed
/* 8057AD2C 480002D4 */ b           lbl_8057b000
lbl_8057ad30:
/* 8057AD30 80660010 */ lwz         r3, 0x10(r6)
/* 8057AD34 39200000 */ li          r9, 0
/* 8057AD38 38800000 */ li          r4, 0
/* 8057AD3C 54680739 */ rlwinm.     r8, r3, 0, 0x1c, 0x1c
/* 8057AD40 41820014 */ beq-        lbl_8057ad54
/* 8057AD44 80660004 */ lwz         r3, 4(r6)
/* 8057AD48 5463035B */ rlwinm.     r3, r3, 0, 0xd, 0xd
/* 8057AD4C 41820008 */ beq-        lbl_8057ad54
/* 8057AD50 38800001 */ li          r4, 1
lbl_8057ad54:
/* 8057AD54 2C040000 */ cmpwi       r4, 0
/* 8057AD58 41820014 */ beq-        lbl_8057ad6c
/* 8057AD5C 80660004 */ lwz         r3, 4(r6)
/* 8057AD60 54630529 */ rlwinm.     r3, r3, 0, 0x14, 0x14
/* 8057AD64 40820008 */ bne-        lbl_8057ad6c
/* 8057AD68 39200001 */ li          r9, 1
lbl_8057ad6c:
/* 8057AD6C 80860004 */ lwz         r4, 4(r6)
/* 8057AD70 54830253 */ rlwinm.     r3, r4, 0, 9, 9
/* 8057AD74 41820008 */ beq-        lbl_8057ad7c
/* 8057AD78 39200001 */ li          r9, 1
lbl_8057ad7c:
/* 8057AD7C 2C090000 */ cmpwi       r9, 0
/* 8057AD80 40820200 */ bne-        lbl_8057af80
/* 8057AD84 5483035B */ rlwinm.     r3, r4, 0, 0xd, 0xd
/* 8057AD88 418201F8 */ beq-        lbl_8057af80
/* 8057AD8C 54E3018D */ rlwinm.     r3, r7, 0, 6, 6
/* 8057AD90 408201F0 */ bne-        lbl_8057af80
/* 8057AD94 548302D7 */ rlwinm.     r3, r4, 0, 0xb, 0xb
/* 8057AD98 41820028 */ beq-        lbl_8057adc0
/* 8057AD9C 2C000000 */ cmpwi       r0, 0
/* 8057ADA0 41820014 */ beq-        lbl_8057adb4
/* 8057ADA4 7FA3EB78 */ mr          r3, r29
/* 8057ADA8 48000AC1 */ bl          get_acceleration_from_speed
/* 8057ADAC D03D0030 */ stfs        f1, 0x30(r29)
/* 8057ADB0 48000250 */ b           lbl_8057b000
lbl_8057adb4:
/* 8057ADB4 C01D0120 */ lfs         f0, 0x120(r29)
/* 8057ADB8 D01D0030 */ stfs        f0, 0x30(r29)
/* 8057ADBC 48000244 */ b           lbl_8057b000
lbl_8057adc0:
/* 8057ADC0 54830003 */ rlwinm.     r3, r4, 0, 0, 1
/* 8057ADC4 41820028 */ beq-        lbl_8057adec
/* 8057ADC8 2C000000 */ cmpwi       r0, 0
/* 8057ADCC 41820014 */ beq-        lbl_8057ade0
/* 8057ADD0 7FA3EB78 */ mr          r3, r29
/* 8057ADD4 48000A95 */ bl          get_acceleration_from_speed
/* 8057ADD8 D03D0030 */ stfs        f1, 0x30(r29)
/* 8057ADDC 48000224 */ b           lbl_8057b000
lbl_8057ade0:
/* 8057ADE0 C01E00E0 */ lfs         f0, 0xe0(r30)
/* 8057ADE4 D01D0030 */ stfs        f0, 0x30(r29)
/* 8057ADE8 48000218 */ b           lbl_8057b000
lbl_8057adec:
/* 8057ADEC 548307FF */ clrlwi.     r3, r4, 0x1f
/* 8057ADF0 41820078 */ beq-        lbl_8057ae68
/* 8057ADF4 2C000000 */ cmpwi       r0, 0
/* 8057ADF8 41820014 */ beq-        lbl_8057ae0c
/* 8057ADFC 7FA3EB78 */ mr          r3, r29
/* 8057AE00 48000A69 */ bl          get_acceleration_from_speed
/* 8057AE04 D03D0030 */ stfs        f1, 0x30(r29)
/* 8057AE08 48000100 */ b           lbl_8057af08
lbl_8057ae0c:
/* 8057AE0C 54E00001 */ rlwinm.     r0, r7, 0, 0, 0
/* 8057AE10 40820014 */ bne-        lbl_8057ae24
/* 8057AE14 8066000C */ lwz         r3, 0xc(r6)
/* 8057AE18 54600084 */ rlwinm      r0, r3, 0, 2, 2
/* 8057AE1C 50600421 */ rlwimi.     r0, r3, 0, 0x10, 0x10
/* 8057AE20 41820010 */ beq-        lbl_8057ae30
lbl_8057ae24:
/* 8057AE24 C01E00EC */ lfs         f0, 0xec(r30)
/* 8057AE28 D01D0030 */ stfs        f0, 0x30(r29)
/* 8057AE2C 480000DC */ b           lbl_8057af08
lbl_8057ae30:
/* 8057AE30 546007BD */ rlwinm.     r0, r3, 0, 0x1e, 0x1e
/* 8057AE34 41820010 */ beq-        lbl_8057ae44
/* 8057AE38 C01E02A4 */ lfs         f0, 0x2a4(r30)
/* 8057AE3C D01D0030 */ stfs        f0, 0x30(r29)
/* 8057AE40 480000C8 */ b           lbl_8057af08
lbl_8057ae44:
/* 8057AE44 54600739 */ rlwinm.     r0, r3, 0, 0x1c, 0x1c
/* 8057AE48 41820010 */ beq-        lbl_8057ae58
/* 8057AE4C C01E0250 */ lfs         f0, 0x250(r30)
/* 8057AE50 D01D0030 */ stfs        f0, 0x30(r29)
/* 8057AE54 480000B4 */ b           lbl_8057af08
lbl_8057ae58:
/* 8057AE58 7FA3EB78 */ mr          r3, r29
/* 8057AE5C 48000A0D */ bl          get_acceleration_from_speed
/* 8057AE60 D03D0030 */ stfs        f1, 0x30(r29)
/* 8057AE64 480000A4 */ b           lbl_8057af08
lbl_8057ae68:
/* 8057AE68 548007BD */ rlwinm.     r0, r4, 0, 0x1e, 0x1e
/* 8057AE6C 41820074 */ beq-        lbl_8057aee0
/* 8057AE70 54E003DF */ rlwinm.     r0, r7, 0, 0xf, 0xf
/* 8057AE74 4082006C */ bne-        lbl_8057aee0
/* 8057AE78 2C080000 */ cmpwi       r8, 0
/* 8057AE7C 40820064 */ bne-        lbl_8057aee0
/* 8057AE80 801D0248 */ lwz         r0, 0x248(r29)
/* 8057AE84 2C000001 */ cmpwi       r0, 1
/* 8057AE88 40820010 */ bne-        lbl_8057ae98
/* 8057AE8C C01E0070 */ lfs         f0, 0x70(r30)
/* 8057AE90 D01D0030 */ stfs        f0, 0x30(r29)
/* 8057AE94 48000074 */ b           lbl_8057af08
lbl_8057ae98:
/* 8057AE98 2C000002 */ cmpwi       r0, 2
/* 8057AE9C 4082002C */ bne-        lbl_8057aec8
/* 8057AEA0 A87D024C */ lha         r3, 0x24c(r29)
/* 8057AEA4 38030001 */ addi        r0, r3, 1
/* 8057AEA8 B01D024C */ sth         r0, 0x24c(r29)
/* 8057AEAC 7C030734 */ extsh       r3, r0
/* 8057AEB0 A81E006C */ lha         r0, 0x6c(r30)
/* 8057AEB4 7C030000 */ cmpw        r3, r0
/* 8057AEB8 40810010 */ ble-        lbl_8057aec8
/* 8057AEBC 38000003 */ li          r0, 3
/* 8057AEC0 901D0248 */ stw         r0, 0x248(r29)
/* 8057AEC4 48000044 */ b           lbl_8057af08
lbl_8057aec8:
/* 8057AEC8 801D0248 */ lwz         r0, 0x248(r29)
/* 8057AECC 2C000003 */ cmpwi       r0, 3
/* 8057AED0 40820038 */ bne-        lbl_8057af08
/* 8057AED4 C01E0074 */ lfs         f0, 0x74(r30)
/* 8057AED8 D01D0030 */ stfs        f0, 0x30(r29)
/* 8057AEDC 4800002C */ b           lbl_8057af08
lbl_8057aee0:
/* 8057AEE0 C03D0020 */ lfs         f1, 0x20(r29)
/* 8057AEE4 C01F0000 */ lfs         f0, 0(r31)
/* 8057AEE8 FC010040 */ fcmpo       cr0, f1, f0
/* 8057AEEC 4081000C */ ble-        lbl_8057aef8
/* 8057AEF0 C03E0230 */ lfs         f1, 0x230(r30)
/* 8057AEF4 48000008 */ b           lbl_8057aefc
lbl_8057aef8:
/* 8057AEF8 C03E0234 */ lfs         f1, 0x234(r30)
lbl_8057aefc:
/* 8057AEFC C01D0020 */ lfs         f0, 0x20(r29)
/* 8057AF00 EC000072 */ fmuls       f0, f0, f1
/* 8057AF04 D01D0020 */ stfs        f0, 0x20(r29)
lbl_8057af08:
/* 8057AF08 807D0000 */ lwz         r3, 0(r29)
/* 8057AF0C 80830004 */ lwz         r4, 4(r3)
/* 8057AF10 80640004 */ lwz         r3, 4(r4)
/* 8057AF14 546002D6 */ rlwinm      r0, r3, 0, 0xb, 0xb
/* 8057AF18 50600739 */ rlwimi.     r0, r3, 0, 0x1c, 0x1c
/* 8057AF1C 408200E4 */ bne-        lbl_8057b000
/* 8057AF20 80040014 */ lwz         r0, 0x14(r4)
/* 8057AF24 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 8057AF28 408200D8 */ bne-        lbl_8057b000
/* 8057AF2C C01D015C */ lfs         f0, 0x15c(r29)
/* 8057AF30 7FA3EB78 */ mr          r3, r29
/* 8057AF34 FFE00210 */ fabs        f31, f0
/* 8057AF38 48015E89 */ bl          getSpeedRatioCapped__Q24Kart15KartObjectProxyFv
/* 8057AF3C EC3F0072 */ fmuls       f1, f31, f1
/* 8057AF40 C01F0004 */ lfs         f0, 4(r31)
/* 8057AF44 7FA3EB78 */ mr          r3, r29
/* 8057AF48 EFE00828 */ fsubs       f31, f0, f1
/* 8057AF4C 48015929 */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 8057AF50 C023001C */ lfs         f1, 0x1c(r3)
/* 8057AF54 7FA3EB78 */ mr          r3, r29
/* 8057AF58 C01F0004 */ lfs         f0, 4(r31)
/* 8057AF5C EC000828 */ fsubs       f0, f0, f1
/* 8057AF60 EFE007F2 */ fmuls       f31, f0, f31
/* 8057AF64 48015911 */ bl          kartStats__Q24Kart15KartObjectProxyCFv
/* 8057AF68 C023001C */ lfs         f1, 0x1c(r3)
/* 8057AF6C C01D0020 */ lfs         f0, 0x20(r29)
/* 8057AF70 EC21F82A */ fadds       f1, f1, f31
/* 8057AF74 EC000072 */ fmuls       f0, f0, f1
/* 8057AF78 D01D0020 */ stfs        f0, 0x20(r29)
/* 8057AF7C 48000084 */ b           lbl_8057b000
lbl_8057af80:
/* 8057AF80 54800001 */ rlwinm.     r0, r4, 0, 0, 0
/* 8057AF84 41820024 */ beq-        lbl_8057afa8
/* 8057AF88 80650004 */ lwz         r3, 4(r5)
/* 8057AF8C A81E00E4 */ lha         r0, 0xe4(r30)
/* 8057AF90 8063001C */ lwz         r3, 0x1c(r3)
/* 8057AF94 7C030040 */ cmplw       r3, r0
/* 8057AF98 40800010 */ bge-        lbl_8057afa8
/* 8057AF9C C01E00E0 */ lfs         f0, 0xe0(r30)
/* 8057AFA0 D01D0030 */ stfs        f0, 0x30(r29)
/* 8057AFA4 4800005C */ b           lbl_8057b000
lbl_8057afa8:
/* 8057AFA8 54800043 */ rlwinm.     r0, r4, 0, 1, 1
/* 8057AFAC 41820018 */ beq-        lbl_8057afc4
/* 8057AFB0 548007FF */ clrlwi.     r0, r4, 0x1f
/* 8057AFB4 40820010 */ bne-        lbl_8057afc4
/* 8057AFB8 C01E0048 */ lfs         f0, 0x48(r30)
/* 8057AFBC D01D0034 */ stfs        f0, 0x34(r29)
/* 8057AFC0 48000030 */ b           lbl_8057aff0
lbl_8057afc4:
/* 8057AFC4 54E0056B */ rlwinm.     r0, r7, 0, 0x15, 0x15
/* 8057AFC8 41820010 */ beq-        lbl_8057afd8
/* 8057AFCC C01E0044 */ lfs         f0, 0x44(r30)
/* 8057AFD0 D01D0034 */ stfs        f0, 0x34(r29)
/* 8057AFD4 4800001C */ b           lbl_8057aff0
lbl_8057afd8:
/* 8057AFD8 80650004 */ lwz         r3, 4(r5)
/* 8057AFDC 8003001C */ lwz         r0, 0x1c(r3)
/* 8057AFE0 28000005 */ cmplwi      r0, 5
/* 8057AFE4 4081000C */ ble-        lbl_8057aff0
/* 8057AFE8 C01E0040 */ lfs         f0, 0x40(r30)
/* 8057AFEC D01D0034 */ stfs        f0, 0x34(r29)
lbl_8057aff0:
/* 8057AFF0 C03D0020 */ lfs         f1, 0x20(r29)
/* 8057AFF4 C01D0034 */ lfs         f0, 0x34(r29)
/* 8057AFF8 EC010032 */ fmuls       f0, f1, f0
/* 8057AFFC D01D0020 */ stfs        f0, 0x20(r29)
lbl_8057b000:
/* 8057B000 E3E10028 */ psq_l       f31, 0x28(r1), 0, 0
/* 8057B004 80010034 */ lwz         r0, 0x34(r1)
/* 8057B008 CBE10020 */ lfd         f31, 0x20(r1)
/* 8057B00C 83E1001C */ lwz         r31, 0x1c(r1)
/* 8057B010 83C10018 */ lwz         r30, 0x18(r1)
/* 8057B014 83A10014 */ lwz         r29, 0x14(r1)
/* 8057B018 83810010 */ lwz         r28, 0x10(r1)
/* 8057B01C 7C0803A6 */ mtlr        r0
/* 8057B020 38210030 */ addi        r1, r1, 0x30
/* 8057B024 4E800020 */ blr         