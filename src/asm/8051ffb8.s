nofralloc
/* 8051FFB8 2C040000 */ cmpwi       r4, 0
/* 8051FFBC 4182000C */ beq-        lbl_8051ffc8
/* 8051FFC0 806308D4 */ lwz         r3, 0x8d4(r3)
/* 8051FFC4 4BC77DF8 */ b           KPADEnableDPD
lbl_8051ffc8:
/* 8051FFC8 806308D4 */ lwz         r3, 0x8d4(r3)
/* 8051FFCC 4BC77DD4 */ b           KPADDisableDPD