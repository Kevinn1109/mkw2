nofralloc
/* 8051F3D0 9421FFF0 */ stwu        r1, -0x10(r1)
/* 8051F3D4 7C0802A6 */ mflr        r0
/* 8051F3D8 7C641B78 */ mr          r4, r3
/* 8051F3DC 3CA08052 */ lis         r5, updateBatteryCallback__Q26System17KPadWiiControllerFii@ha
/* 8051F3E0 90010014 */ stw         r0, 0x14(r1)
/* 8051F3E4 388408E0 */ addi        r4, r4, 0x8e0
/* 8051F3E8 38A5F384 */ addi        r5, r5, updateBatteryCallback__Q26System17KPadWiiControllerFii@l
/* 8051F3EC 806308D4 */ lwz         r3, 0x8d4(r3)
/* 8051F3F0 4BCA18B5 */ bl          WPADGetInfoAsync
/* 8051F3F4 7C0300D0 */ neg         r0, r3
/* 8051F3F8 7C001B78 */ or          r0, r0, r3
/* 8051F3FC 54030FFE */ srwi        r3, r0, 0x1f
/* 8051F400 80010014 */ lwz         r0, 0x14(r1)
/* 8051F404 7C0803A6 */ mtlr        r0
/* 8051F408 38210010 */ addi        r1, r1, 0x10
/* 8051F40C 4E800020 */ blr         