nofralloc
/* 80571D98 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80571D9C 7C0802A6 */ mflr        r0
/* 80571DA0 90010024 */ stw         r0, 0x24(r1)
/* 80571DA4 93E1001C */ stw         r31, 0x1c(r1)
/* 80571DA8 7CBF2B78 */ mr          r31, r5
/* 80571DAC 93C10018 */ stw         r30, 0x18(r1)
/* 80571DB0 7C9E2378 */ mr          r30, r4
/* 80571DB4 93A10014 */ stw         r29, 0x14(r1)
/* 80571DB8 7C7D1B78 */ mr          r29, r3
/* 80571DBC 80040000 */ lwz         r0, 0(r4)
/* 80571DC0 540003DF */ rlwinm.     r0, r0, 0, 0xf, 0xf
/* 80571DC4 41820014 */ beq-        lbl_80571dd8
/* 80571DC8 7FC3F378 */ mr          r3, r30
/* 80571DCC 3C800001 */ lis         r4, 0x1
/* 80571DD0 4824BB9D */ bl          findClosestCollisionEntry__5FieldFPUlUl
/* 80571DD4 48000008 */ b           lbl_80571ddc
lbl_80571dd8:
/* 80571DD8 38600000 */ li          r3, 0
lbl_80571ddc:
/* 80571DDC 2C030000 */ cmpwi       r3, 0
/* 80571DE0 41820114 */ beq-        lbl_80571ef4
/* 80571DE4 2C1F0000 */ cmpwi       r31, 0
/* 80571DE8 3BE00000 */ li          r31, 0
/* 80571DEC 41820030 */ beq-        lbl_80571e1c
/* 80571DF0 3C60809C */ lis         r3, closestCollisionEntry__5Field@ha
/* 80571DF4 80633BDC */ lwz         r3, closestCollisionEntry__5Field@l(r3)
/* 80571DF8 A0030004 */ lhz         r0, 4(r3)
/* 80571DFC 5400DF7E */ rlwinm      r0, r0, 0x1b, 0x1d, 0x1f
/* 80571E00 2C000007 */ cmpwi       r0, 7
/* 80571E04 40820014 */ bne-        lbl_80571e18
/* 80571E08 801D002C */ lwz         r0, 0x2c(r29)
/* 80571E0C 60002000 */ ori         r0, r0, 0x2000
/* 80571E10 901D002C */ stw         r0, 0x2c(r29)
/* 80571E14 48000008 */ b           lbl_80571e1c
lbl_80571e18:
/* 80571E18 3BE00001 */ li          r31, 1
lbl_80571e1c:
/* 80571E1C 3C60809C */ lis         r3, closestCollisionEntry__5Field@ha
/* 80571E20 80633BDC */ lwz         r3, closestCollisionEntry__5Field@l(r3)
/* 80571E24 A0030004 */ lhz         r0, 4(r3)
/* 80571E28 5400DF7E */ rlwinm      r0, r0, 0x1b, 0x1d, 0x1f
/* 80571E2C 2C000006 */ cmpwi       r0, 6
/* 80571E30 40820014 */ bne-        lbl_80571e44
/* 80571E34 387D0004 */ addi        r3, r29, 4
/* 80571E38 4801E945 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80571E3C 38800000 */ li          r4, 0
/* 80571E40 48007EA5 */ bl          unk_80579ce4
lbl_80571e44:
/* 80571E44 3C60809C */ lis         r3, lbl_809c18f8@ha
/* 80571E48 806318F8 */ lwz         r3, lbl_809c18f8@l(r3)
/* 80571E4C 80030028 */ lwz         r0, 0x28(r3)
/* 80571E50 54000739 */ rlwinm.     r0, r0, 0, 0x1c, 0x1c
/* 80571E54 41820030 */ beq-        lbl_80571e84
/* 80571E58 807D0004 */ lwz         r3, 4(r29)
/* 80571E5C 80630004 */ lwz         r3, 4(r3)
/* 80571E60 80030008 */ lwz         r0, 8(r3)
/* 80571E64 540007FF */ clrlwi.     r0, r0, 0x1f
/* 80571E68 4182001C */ beq-        lbl_80571e84
/* 80571E6C 387D0004 */ addi        r3, r29, 4
/* 80571E70 4801EEB1 */ bl          kartAction__Q24Kart15KartObjectProxyFv
/* 80571E74 A00300CC */ lhz         r0, 0xcc(r3)
/* 80571E78 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 80571E7C 41820008 */ beq-        lbl_80571e84
/* 80571E80 3BE00001 */ li          r31, 1
lbl_80571e84:
/* 80571E84 2C1F0000 */ cmpwi       r31, 0
/* 80571E88 4082006C */ bne-        lbl_80571ef4
/* 80571E8C 807D0004 */ lwz         r3, 4(r29)
/* 80571E90 80630004 */ lwz         r3, 4(r3)
/* 80571E94 80030004 */ lwz         r0, 4(r3)
/* 80571E98 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 80571E9C 41820010 */ beq-        lbl_80571eac
/* 80571EA0 80030014 */ lwz         r0, 0x14(r3)
/* 80571EA4 54000739 */ rlwinm.     r0, r0, 0, 0x1c, 0x1c
/* 80571EA8 41820034 */ beq-        lbl_80571edc
lbl_80571eac:
/* 80571EAC 3C60809C */ lis         r3, closestCollisionEntry__5Field@ha
/* 80571EB0 80633BDC */ lwz         r3, closestCollisionEntry__5Field@l(r3)
/* 80571EB4 A0030004 */ lhz         r0, 4(r3)
/* 80571EB8 5403DF7E */ rlwinm      r3, r0, 0x1b, 0x1d, 0x1f
/* 80571EBC 3803FFFF */ addi        r0, r3, -1
/* 80571EC0 28000002 */ cmplwi      r0, 2
/* 80571EC4 41810010 */ bgt-        lbl_80571ed4
/* 80571EC8 387D0004 */ addi        r3, r29, 4
/* 80571ECC 4801F04D */ bl          unk_80590f18
/* 80571ED0 4800000C */ b           lbl_80571edc
lbl_80571ed4:
/* 80571ED4 387D0004 */ addi        r3, r29, 4
/* 80571ED8 4801F021 */ bl          unk_80590ef8
lbl_80571edc:
/* 80571EDC 7FA3EB78 */ mr          r3, r29
/* 80571EE0 7FC5F378 */ mr          r5, r30
/* 80571EE4 38800000 */ li          r4, 0
/* 80571EE8 38C00000 */ li          r6, 0
/* 80571EEC 38E00000 */ li          r7, 0
/* 80571EF0 48001C11 */ bl          PlayerSub18_activateOob
lbl_80571ef4:
/* 80571EF4 80010024 */ lwz         r0, 0x24(r1)
/* 80571EF8 83E1001C */ lwz         r31, 0x1c(r1)
/* 80571EFC 83C10018 */ lwz         r30, 0x18(r1)
/* 80571F00 83A10014 */ lwz         r29, 0x14(r1)
/* 80571F04 7C0803A6 */ mtlr        r0
/* 80571F08 38210020 */ addi        r1, r1, 0x20
/* 80571F0C 4E800020 */ blr         