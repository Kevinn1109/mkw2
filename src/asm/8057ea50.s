nofralloc
/* 8057EA50 38A00000 */ li          r5, 0
/* 8057EA54 90A300CC */ stw         r5, 0xcc(r3)
/* 8057EA58 80830000 */ lwz         r4, 0(r3)
/* 8057EA5C 90A300D0 */ stw         r5, 0xd0(r3)
/* 8057EA60 80840004 */ lwz         r4, 4(r4)
/* 8057EA64 80040004 */ lwz         r0, 4(r4)
/* 8057EA68 54000356 */ rlwinm      r0, r0, 0, 0xd, 0xb
/* 8057EA6C 90040004 */ stw         r0, 4(r4)
/* 8057EA70 80830000 */ lwz         r4, 0(r3)
/* 8057EA74 80840004 */ lwz         r4, 4(r4)
/* 8057EA78 80040004 */ lwz         r0, 4(r4)
/* 8057EA7C 54000776 */ rlwinm      r0, r0, 0, 0x1d, 0x1b
/* 8057EA80 90040004 */ stw         r0, 4(r4)
/* 8057EA84 B0A300FC */ sth         r5, 0xfc(r3)
/* 8057EA88 B0A30100 */ sth         r5, 0x100(r3)
/* 8057EA8C B0A300FE */ sth         r5, 0xfe(r3)
/* 8057EA90 4E800020 */ blr         