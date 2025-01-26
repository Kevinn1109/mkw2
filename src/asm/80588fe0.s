nofralloc
/* 80588FE0 3C80808B */ lis         r4, lbl_808b5ae0@ha
/* 80588FE4 C02300B0 */ lfs         f1, 0xb0(r3)
/* 80588FE8 C0045AE0 */ lfs         f0, lbl_808b5ae0@l(r4)
/* 80588FEC 38A00001 */ li          r5, 1
/* 80588FF0 FC010040 */ fcmpo       cr0, f1, f0
/* 80588FF4 41800024 */ blt-        lbl_80589018
/* 80588FF8 3C808089 */ lis         r4, lbl_80891a00@ha
/* 80588FFC C0230020 */ lfs         f1, 0x20(r3)
/* 80589000 C0041A00 */ lfs         f0, lbl_80891a00@l(r4)
/* 80589004 FC010040 */ fcmpo       cr0, f1, f0
/* 80589008 7C000026 */ mfcr        r0
/* 8058900C 54000FFF */ rlwinm.     r0, r0, 1, 0x1f, 0x1f
/* 80589010 40820008 */ bne-        lbl_80589018
/* 80589014 38A00000 */ li          r5, 0
lbl_80589018:
/* 80589018 7CA00034 */ cntlzw      r0, r5
/* 8058901C 5403D97E */ srwi        r3, r0, 5
/* 80589020 4E800020 */ blr         