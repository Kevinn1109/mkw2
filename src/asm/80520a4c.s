nofralloc
/* 80520A4C 80630090 */ lwz         r3, 0x90(r3)
/* 80520A50 7C0300D0 */ neg         r0, r3
/* 80520A54 7C001B78 */ or          r0, r0, r3
/* 80520A58 54030FFE */ srwi        r3, r0, 0x1f
/* 80520A5C 4E800020 */ blr         