nofralloc
/* 805AF330 9421FFF0 */ stwu        r1, -0x10(r1)
/* 805AF334 7C0802A6 */ mflr        r0
/* 805AF338 2C030000 */ cmpwi       r3, 0
/* 805AF33C 90010014 */ stw         r0, 0x14(r1)
/* 805AF340 93E1000C */ stw         r31, 0xc(r1)
/* 805AF344 7C7F1B78 */ mr          r31, r3
/* 805AF348 41820010 */ beq-        lbl_805af358
/* 805AF34C 2C040000 */ cmpwi       r4, 0
/* 805AF350 40810008 */ ble-        lbl_805af358
/* 805AF354 4BC7AAC1 */ bl          __dl__FPv
lbl_805af358:
/* 805AF358 7FE3FB78 */ mr          r3, r31
/* 805AF35C 83E1000C */ lwz         r31, 0xc(r1)
/* 805AF360 80010014 */ lwz         r0, 0x14(r1)
/* 805AF364 7C0803A6 */ mtlr        r0
/* 805AF368 38210010 */ addi        r1, r1, 0x10
/* 805AF36C 4E800020 */ blr         