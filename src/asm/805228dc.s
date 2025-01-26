nofralloc
/* 805228DC 808308D8 */ lwz         r4, 0x8d8(r3)
/* 805228E0 20640002 */ subfic      r3, r4, 2
/* 805228E4 3804FFFE */ addi        r0, r4, -2
/* 805228E8 7C600378 */ or          r0, r3, r0
/* 805228EC 54030FFE */ srwi        r3, r0, 0x1f
/* 805228F0 4E800020 */ blr         