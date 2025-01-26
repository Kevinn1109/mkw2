nofralloc
/* 80585A04 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80585A08 7C0802A6 */ mflr        r0
/* 80585A0C 90010014 */ stw         r0, 0x14(r1)
/* 80585A10 4800BC09 */ bl          kartAccessor_60__Q24Kart15KartObjectProxyFv
/* 80585A14 48016231 */ bl          unk_8059bc44
/* 80585A18 80010014 */ lwz         r0, 0x14(r1)
/* 80585A1C 7C0803A6 */ mtlr        r0
/* 80585A20 38210010 */ addi        r1, r1, 0x10
/* 80585A24 4E800020 */ blr         