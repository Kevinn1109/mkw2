nofralloc
/* 80135E28 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80135E2C 7C0802A6 */ mflr        r0
/* 80135E30 90010024 */ stw         r0, 0x24(r1)
/* 80135E34 93E1001C */ stw         r31, 0x1c(r1)
/* 80135E38 93C10018 */ stw         r30, 0x18(r1)
/* 80135E3C 7C9E2378 */ mr          r30, r4
/* 80135E40 93A10014 */ stw         r29, 0x14(r1)
/* 80135E44 7C7D1B78 */ mr          r29, r3
/* 80135E48 880D99F0 */ lbz         r0, lbl_803865f0
/* 80135E4C 28000005 */ cmplwi      r0, 5
/* 80135E50 41800018 */ blt-        lbl_80135e68
/* 80135E54 3C808028 */ lis         r4, lbl_80282b30@ha
/* 80135E58 88BE0000 */ lbz         r5, 0(r30)
/* 80135E5C 38842B30 */ addi        r4, r4, lbl_80282b30@l
/* 80135E60 38600504 */ li          r3, 0x504
/* 80135E64 4BFFB8F5 */ bl          LogMsg_1
lbl_80135e68:
/* 80135E68 38610008 */ addi        r3, r1, 8
/* 80135E6C 38800000 */ li          r4, 0
/* 80135E70 38A00008 */ li          r5, 8
/* 80135E74 4BED01C5 */ bl          memset
/* 80135E78 881D0016 */ lbz         r0, 0x16(r29)
/* 80135E7C 38610008 */ addi        r3, r1, 8
/* 80135E80 389D0008 */ addi        r4, r29, 8
/* 80135E84 9801000F */ stb         r0, 0xf(r1)
/* 80135E88 4BFFBF09 */ bl          bdcpy
/* 80135E8C 8BFE0000 */ lbz         r31, 0(r30)
/* 80135E90 2C1F0000 */ cmpwi       r31, 0
/* 80135E94 40820068 */ bne-        lbl_80135efc
/* 80135E98 881D0019 */ lbz         r0, 0x19(r29)
/* 80135E9C 2C000000 */ cmpwi       r0, 0
/* 80135EA0 4082004C */ bne-        lbl_80135eec
/* 80135EA4 889D0014 */ lbz         r4, 0x14(r29)
/* 80135EA8 386D8C68 */ la          r3, lbl_80385868
/* 80135EAC 48011F4D */ bl          HID_HostSetSecurityLevel
/* 80135EB0 887D0016 */ lbz         r3, 0x16(r29)
/* 80135EB4 48011D01 */ bl          HID_HostOpenDev
/* 80135EB8 5465063F */ clrlwi.     r5, r3, 0x18
/* 80135EBC 7C7F1B78 */ mr          r31, r3
/* 80135EC0 4182003C */ beq-        lbl_80135efc
/* 80135EC4 880D99F0 */ lbz         r0, lbl_803865f0
/* 80135EC8 28000005 */ cmplwi      r0, 5
/* 80135ECC 41800014 */ blt-        lbl_80135ee0
/* 80135ED0 3C808028 */ lis         r4, lbl_80282b50@ha
/* 80135ED4 38600504 */ li          r3, 0x504
/* 80135ED8 38842B50 */ addi        r4, r4, lbl_80282b50@l
/* 80135EDC 4BFFB87D */ bl          LogMsg_1
lbl_80135ee0:
/* 80135EE0 887D0016 */ lbz         r3, 0x16(r29)
/* 80135EE4 48011C09 */ bl          HID_HostRemoveDev
/* 80135EE8 48000014 */ b           lbl_80135efc
lbl_80135eec:
/* 80135EEC 7FA3EB78 */ mr          r3, r29
/* 80135EF0 3880170B */ li          r4, 0x170b
/* 80135EF4 38A00000 */ li          r5, 0
/* 80135EF8 48001465 */ bl          bta_hh_sm_execute
lbl_80135efc:
/* 80135EFC 57E0063F */ clrlwi.     r0, r31, 0x18
/* 80135F00 41820074 */ beq-        lbl_80135f74
/* 80135F04 881E0000 */ lbz         r0, 0(r30)
/* 80135F08 280000FF */ cmplwi      r0, 0xff
/* 80135F0C 40820010 */ bne-        lbl_80135f1c
/* 80135F10 3800000A */ li          r0, 0xa
/* 80135F14 9801000E */ stb         r0, 0xe(r1)
/* 80135F18 4800000C */ b           lbl_80135f24
lbl_80135f1c:
/* 80135F1C 38000007 */ li          r0, 7
/* 80135F20 9801000E */ stb         r0, 0xe(r1)
lbl_80135f24:
/* 80135F24 3CA08033 */ lis         r5, lbl_80336048@ha
/* 80135F28 38810008 */ addi        r4, r1, 8
/* 80135F2C 38A56048 */ addi        r5, r5, lbl_80336048@l
/* 80135F30 38600002 */ li          r3, 2
/* 80135F34 81850224 */ lwz         r12, 0x224(r5)
/* 80135F38 7D8903A6 */ mtctr       r12
/* 80135F3C 4E800421 */ bctrl       
/* 80135F40 7FA3EB78 */ mr          r3, r29
/* 80135F44 38801701 */ li          r4, 0x1701
/* 80135F48 38A00000 */ li          r5, 0
/* 80135F4C 48001411 */ bl          bta_hh_sm_execute
/* 80135F50 881D0015 */ lbz         r0, 0x15(r29)
/* 80135F54 2C000000 */ cmpwi       r0, 0
/* 80135F58 40820018 */ bne-        lbl_80135f70
/* 80135F5C 881D0019 */ lbz         r0, 0x19(r29)
/* 80135F60 2C000000 */ cmpwi       r0, 0
/* 80135F64 4082000C */ bne-        lbl_80135f70
/* 80135F68 7FA3EB78 */ mr          r3, r29
/* 80135F6C 48001A81 */ bl          bta_hh_clean_up_kdev
lbl_80135f70:
/* 80135F70 48001C0D */ bl          bta_hh_trace_dev_db
lbl_80135f74:
/* 80135F74 80010024 */ lwz         r0, 0x24(r1)
/* 80135F78 83E1001C */ lwz         r31, 0x1c(r1)
/* 80135F7C 83C10018 */ lwz         r30, 0x18(r1)
/* 80135F80 83A10014 */ lwz         r29, 0x14(r1)
/* 80135F84 7C0803A6 */ mtlr        r0
/* 80135F88 38210020 */ addi        r1, r1, 0x20
/* 80135F8C 4E800020 */ blr         