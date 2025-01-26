nofralloc
/* 80572B94 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80572B98 7C0802A6 */ mflr        r0
/* 80572B9C 90010014 */ stw         r0, 0x14(r1)
/* 80572BA0 80040004 */ lwz         r0, 4(r4)
/* 80572BA4 2C000000 */ cmpwi       r0, 0
/* 80572BA8 4180000C */ blt-        lbl_80572bb4
/* 80572BAC 2C000002 */ cmpwi       r0, 2
/* 80572BB0 4081000C */ ble-        lbl_80572bbc
lbl_80572bb4:
/* 80572BB4 2C000007 */ cmpwi       r0, 7
/* 80572BB8 40820058 */ bne-        lbl_80572c10
lbl_80572bbc:
/* 80572BBC 2C050000 */ cmpwi       r5, 0
/* 80572BC0 4082002C */ bne-        lbl_80572bec
/* 80572BC4 80830004 */ lwz         r4, 4(r3)
/* 80572BC8 80840004 */ lwz         r4, 4(r4)
/* 80572BCC 80040008 */ lwz         r0, 8(r4)
/* 80572BD0 54000001 */ rlwinm.     r0, r0, 0, 0, 0
/* 80572BD4 40820018 */ bne-        lbl_80572bec
/* 80572BD8 8084000C */ lwz         r4, 0xc(r4)
/* 80572BDC 54800109 */ rlwinm.     r0, r4, 0, 4, 4
/* 80572BE0 4082000C */ bne-        lbl_80572bec
/* 80572BE4 54800421 */ rlwinm.     r0, r4, 0, 0x10, 0x10
/* 80572BE8 41820028 */ beq-        lbl_80572c10
lbl_80572bec:
/* 80572BEC 38630004 */ addi        r3, r3, 4
/* 80572BF0 4801DBA5 */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 80572BF4 81830000 */ lwz         r12, 0(r3)
/* 80572BF8 3C808089 */ lis         r4, lbl_80891730@ha
/* 80572BFC C0241730 */ lfs         f1, lbl_80891730@l(r4)
/* 80572C00 3880010F */ li          r4, 0x10f
/* 80572C04 818C00E4 */ lwz         r12, 0xe4(r12)
/* 80572C08 7D8903A6 */ mtctr       r12
/* 80572C0C 4E800421 */ bctrl       
lbl_80572c10:
/* 80572C10 80010014 */ lwz         r0, 0x14(r1)
/* 80572C14 7C0803A6 */ mtlr        r0
/* 80572C18 38210010 */ addi        r1, r1, 0x10
/* 80572C1C 4E800020 */ blr         