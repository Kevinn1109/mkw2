nofralloc
/* 80622EA0 8083037C */ lwz         r4, 0x37c(r3)
/* 80622EA4 2C040001 */ cmpwi       r4, 1
/* 80622EA8 4080000C */ bge-        lbl_80622eb4
/* 80622EAC 38600000 */ li          r3, 0
/* 80622EB0 4E800020 */ blr         
lbl_80622eb4:
/* 80622EB4 3804FFFF */ addi        r0, r4, -1
/* 80622EB8 5400103A */ slwi        r0, r0, 2
/* 80622EBC 7C630214 */ add         r3, r3, r0
/* 80622EC0 80630354 */ lwz         r3, 0x354(r3)
/* 80622EC4 4E800020 */ blr         