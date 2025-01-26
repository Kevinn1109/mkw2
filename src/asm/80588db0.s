nofralloc
/* 80588DB0 5480063E */ clrlwi      r0, r4, 0x18
/* 80588DB4 38C00001 */ li          r6, 1
/* 80588DB8 7CC80030 */ slw         r8, r6, r0
/* 80588DBC A0C30010 */ lhz         r6, 0x10(r3)
/* 80588DC0 5500043E */ clrlwi      r0, r8, 0x10
/* 80588DC4 5487083C */ slwi        r7, r4, 1
/* 80588DC8 7CC00039 */ and.        r0, r6, r0
/* 80588DCC 39200000 */ li          r9, 0
/* 80588DD0 7CC33A14 */ add         r6, r3, r7
/* 80588DD4 41820010 */ beq-        lbl_80588de4
/* 80588DD8 A8060004 */ lha         r0, 4(r6)
/* 80588DDC 7C050000 */ cmpw        r5, r0
/* 80588DE0 40810030 */ ble-        lbl_80588e10
lbl_80588de4:
/* 80588DE4 B0A60004 */ sth         r5, 4(r6)
/* 80588DE8 5480103A */ slwi        r0, r4, 2
/* 80588DEC 3CA0808B */ lis         r5, lbl_808b5c90@ha
/* 80588DF0 5506043E */ clrlwi      r6, r8, 0x10
/* 80588DF4 A0830010 */ lhz         r4, 0x10(r3)
/* 80588DF8 38A55C90 */ addi        r5, r5, lbl_808b5c90@l
/* 80588DFC 39200001 */ li          r9, 1
/* 80588E00 7C843378 */ or          r4, r4, r6
/* 80588E04 B0830010 */ sth         r4, 0x10(r3)
/* 80588E08 7C05042E */ lfsx        f0, r5, r0
/* 80588E0C D003001C */ stfs        f0, 0x1c(r3)
lbl_80588e10:
/* 80588E10 7D234B78 */ mr          r3, r9
/* 80588E14 4E800020 */ blr         