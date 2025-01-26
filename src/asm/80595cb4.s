nofralloc
/* 80595CB4 80030014 */ lwz         r0, 0x14(r3)
/* 80595CB8 540006F2 */ rlwinm      r0, r0, 0, 0x1b, 0x19
/* 80595CBC 90030014 */ stw         r0, 0x14(r3)
/* 80595CC0 4E800020 */ blr         