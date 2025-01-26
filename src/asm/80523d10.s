nofralloc
/* 80523D10 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80523D14 7C0802A6 */ mflr        r0
/* 80523D18 90010024 */ stw         r0, 0x24(r1)
/* 80523D1C 93E1001C */ stw         r31, 0x1c(r1)
/* 80523D20 7C7F1B78 */ mr          r31, r3
/* 80523D24 93C10018 */ stw         r30, 0x18(r1)
/* 80523D28 93A10014 */ stw         r29, 0x14(r1)
/* 80523D2C 7C9D2378 */ mr          r29, r4
/* 80523D30 800315B8 */ lwz         r0, 0x15b8(r3)
/* 80523D34 2C000000 */ cmpwi       r0, 0
/* 80523D38 4182001C */ beq-        lbl_80523d54
/* 80523D3C 7C030378 */ mr          r3, r0
/* 80523D40 81830000 */ lwz         r12, 0(r3)
/* 80523D44 818C0010 */ lwz         r12, 0x10(r12)
/* 80523D48 7D8903A6 */ mtctr       r12
/* 80523D4C 4E800421 */ bctrl       
/* 80523D50 48000008 */ b           lbl_80523d58
lbl_80523d54:
/* 80523D54 3860FFFF */ li          r3, -1
lbl_80523d58:
/* 80523D58 2C03FFFF */ cmpwi       r3, -1
/* 80523D5C 41820130 */ beq-        lbl_80523e8c
/* 80523D60 807F15B8 */ lwz         r3, 0x15b8(r31)
/* 80523D64 2C030000 */ cmpwi       r3, 0
/* 80523D68 41820018 */ beq-        lbl_80523d80
/* 80523D6C 81830000 */ lwz         r12, 0(r3)
/* 80523D70 818C0010 */ lwz         r12, 0x10(r12)
/* 80523D74 7D8903A6 */ mtctr       r12
/* 80523D78 4E800421 */ bctrl       
/* 80523D7C 48000008 */ b           lbl_80523d84
lbl_80523d80:
/* 80523D80 3860FFFF */ li          r3, -1
lbl_80523d84:
/* 80523D84 28030002 */ cmplwi      r3, 2
/* 80523D88 3BC00003 */ li          r30, 3
/* 80523D8C 40810014 */ ble-        lbl_80523da0
/* 80523D90 2C030003 */ cmpwi       r3, 3
/* 80523D94 40820010 */ bne-        lbl_80523da4
/* 80523D98 3BC00001 */ li          r30, 1
/* 80523D9C 48000008 */ b           lbl_80523da4
lbl_80523da0:
/* 80523DA0 3BC00000 */ li          r30, 0
lbl_80523da4:
/* 80523DA4 807F15BC */ lwz         r3, 0x15bc(r31)
/* 80523DA8 2C030000 */ cmpwi       r3, 0
/* 80523DAC 41820018 */ beq-        lbl_80523dc4
/* 80523DB0 81830000 */ lwz         r12, 0(r3)
/* 80523DB4 818C0034 */ lwz         r12, 0x34(r12)
/* 80523DB8 7D8903A6 */ mtctr       r12
/* 80523DBC 4E800421 */ bctrl       
/* 80523DC0 48000008 */ b           lbl_80523dc8
lbl_80523dc4:
/* 80523DC4 3860FFFF */ li          r3, -1
lbl_80523dc8:
/* 80523DC8 2C1E0000 */ cmpwi       r30, 0
/* 80523DCC 38A00000 */ li          r5, 0
/* 80523DD0 41820010 */ beq-        lbl_80523de0
/* 80523DD4 2C1E0001 */ cmpwi       r30, 1
/* 80523DD8 4182005C */ beq-        lbl_80523e34
/* 80523DDC 480000A8 */ b           lbl_80523e84
lbl_80523de0:
/* 80523DE0 5460063E */ clrlwi      r0, r3, 0x18
/* 80523DE4 1C000920 */ mulli       r0, r0, 0x920
/* 80523DE8 7C7F0214 */ add         r3, r31, r0
/* 80523DEC 88031770 */ lbz         r0, 0x1770(r3)
/* 80523DF0 38831720 */ addi        r4, r3, 0x1720
/* 80523DF4 2C000000 */ cmpwi       r0, 0
/* 80523DF8 4182008C */ beq-        lbl_80523e84
/* 80523DFC 1FDD00EC */ mulli       r30, r29, 0xec
/* 80523E00 38A00000 */ li          r5, 0
/* 80523E04 7C7FF214 */ add         r3, r31, r30
/* 80523E08 3BA30004 */ addi        r29, r3, 4
/* 80523E0C 7FA3EB78 */ mr          r3, r29
/* 80523E10 4BFFD745 */ bl          setController__Q26System4KPadFPQ26System14KPadControllerPQ26System14KPadController
/* 80523E14 7C9FF214 */ add         r4, r31, r30
/* 80523E18 387D00C8 */ addi        r3, r29, 0xc8
/* 80523E1C 80040008 */ lwz         r0, 8(r4)
/* 80523E20 90040010 */ stw         r0, 0x10(r4)
/* 80523E24 80840008 */ lwz         r4, 8(r4)
/* 80523E28 4BFFE53D */ bl          init__Q26System18KPadControllerInfoFPQ26System14KPadController
/* 80523E2C 38A00001 */ li          r5, 1
/* 80523E30 48000054 */ b           lbl_80523e84
lbl_80523e34:
/* 80523E34 5460063E */ clrlwi      r0, r3, 0x18
/* 80523E38 1C0000B0 */ mulli       r0, r0, 0xb0
/* 80523E3C 7C7F0214 */ add         r3, r31, r0
/* 80523E40 88033BF0 */ lbz         r0, 0x3bf0(r3)
/* 80523E44 38833BA0 */ addi        r4, r3, 0x3ba0
/* 80523E48 2C000000 */ cmpwi       r0, 0
/* 80523E4C 41820038 */ beq-        lbl_80523e84
/* 80523E50 1FBD00EC */ mulli       r29, r29, 0xec
/* 80523E54 38A00000 */ li          r5, 0
/* 80523E58 7C7FEA14 */ add         r3, r31, r29
/* 80523E5C 3BC30004 */ addi        r30, r3, 4
/* 80523E60 7FC3F378 */ mr          r3, r30
/* 80523E64 4BFFD6F1 */ bl          setController__Q26System4KPadFPQ26System14KPadControllerPQ26System14KPadController
/* 80523E68 7C9FEA14 */ add         r4, r31, r29
/* 80523E6C 387E00C8 */ addi        r3, r30, 0xc8
/* 80523E70 80040008 */ lwz         r0, 8(r4)
/* 80523E74 90040010 */ stw         r0, 0x10(r4)
/* 80523E78 80840008 */ lwz         r4, 8(r4)
/* 80523E7C 4BFFE4E9 */ bl          init__Q26System18KPadControllerInfoFPQ26System14KPadController
/* 80523E80 38A00001 */ li          r5, 1
lbl_80523e84:
/* 80523E84 7CA32B78 */ mr          r3, r5
/* 80523E88 48000008 */ b           lbl_80523e90
lbl_80523e8c:
/* 80523E8C 38600000 */ li          r3, 0
lbl_80523e90:
/* 80523E90 80010024 */ lwz         r0, 0x24(r1)
/* 80523E94 83E1001C */ lwz         r31, 0x1c(r1)
/* 80523E98 83C10018 */ lwz         r30, 0x18(r1)
/* 80523E9C 83A10014 */ lwz         r29, 0x14(r1)
/* 80523EA0 7C0803A6 */ mtlr        r0
/* 80523EA4 38210020 */ addi        r1, r1, 0x20
/* 80523EA8 4E800020 */ blr         