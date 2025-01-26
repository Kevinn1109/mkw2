nofralloc
/* 806DDDA0 7C641B78 */ mr          r4, r3
/* 806DDDA4 806300B0 */ lwz         r3, 0xb0(r3)
/* 806DDDA8 88A400B4 */ lbz         r5, 0xb4(r4)
/* 806DDDAC 81830000 */ lwz         r12, 0(r3)
/* 806DDDB0 818C0120 */ lwz         r12, 0x120(r12)
/* 806DDDB4 7D8903A6 */ mtctr       r12
/* 806DDDB8 4E800420 */ bctr        