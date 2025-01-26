nofralloc
/* 80585A28 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80585A2C 7C0802A6 */ mflr        r0
/* 80585A30 90010014 */ stw         r0, 0x14(r1)
/* 80585A34 80830000 */ lwz         r4, 0(r3)
/* 80585A38 80840004 */ lwz         r4, 4(r4)
/* 80585A3C 8004000C */ lwz         r0, 0xc(r4)
/* 80585A40 54000109 */ rlwinm.     r0, r0, 0, 4, 4
/* 80585A44 4182000C */ beq-        lbl_80585a50
/* 80585A48 4800BBD1 */ bl          kartAccessor_60__Q24Kart15KartObjectProxyFv
/* 80585A4C 480166CD */ bl          cancelBullet
lbl_80585a50:
/* 80585A50 80010014 */ lwz         r0, 0x14(r1)
/* 80585A54 7C0803A6 */ mtlr        r0
/* 80585A58 38210010 */ addi        r1, r1, 0x10
/* 80585A5C 4E800020 */ blr         