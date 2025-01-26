nofralloc
/* 80582DB4 3CA08089 */ lis         r5, lbl_80891a00@ha
/* 80582DB8 80830000 */ lwz         r4, 0(r3)
/* 80582DBC C0051A00 */ lfs         f0, lbl_80891a00@l(r5)
/* 80582DC0 D00301B0 */ stfs        f0, 0x1b0(r3)
/* 80582DC4 80640004 */ lwz         r3, 4(r4)
/* 80582DC8 80030004 */ lwz         r0, 4(r3)
/* 80582DCC 54000080 */ rlwinm      r0, r0, 0, 2, 0
/* 80582DD0 90030004 */ stw         r0, 4(r3)
/* 80582DD4 4E800020 */ blr         