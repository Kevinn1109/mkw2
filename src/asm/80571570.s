nofralloc
/* 80571570 2C060000 */ cmpwi       r6, 0
/* 80571574 38600000 */ li          r3, 0
/* 80571578 41820028 */ beq-        lbl_805715a0
/* 8057157C 3C80809C */ lis         r4, closestCollisionEntry__5Field@ha
/* 80571580 80843BDC */ lwz         r4, closestCollisionEntry__5Field@l(r4)
/* 80571584 A0040004 */ lhz         r0, 4(r4)
/* 80571588 5400DF7F */ rlwinm.     r0, r0, 0x1b, 0x1d, 0x1f
/* 8057158C 4C820020 */ bnelr-      
/* 80571590 38000017 */ li          r0, 0x17
/* 80571594 90050000 */ stw         r0, 0(r5)
/* 80571598 38600001 */ li          r3, 1
/* 8057159C 4E800020 */ blr         
lbl_805715a0:
/* 805715A0 3C80809C */ lis         r4, closestCollisionEntry__5Field@ha
/* 805715A4 80843BDC */ lwz         r4, closestCollisionEntry__5Field@l(r4)
/* 805715A8 A0040004 */ lhz         r0, 4(r4)
/* 805715AC 5404DF7E */ rlwinm      r4, r0, 0x1b, 0x1d, 0x1f
/* 805715B0 3804FFFF */ addi        r0, r4, -1
/* 805715B4 28000002 */ cmplwi      r0, 2
/* 805715B8 41810028 */ bgt-        lbl_805715e0
/* 805715BC 2C040002 */ cmpwi       r4, 2
/* 805715C0 40820010 */ bne-        lbl_805715d0
/* 805715C4 38000018 */ li          r0, 0x18
/* 805715C8 90050000 */ stw         r0, 0(r5)
/* 805715CC 4E800020 */ blr         
lbl_805715d0:
/* 805715D0 38000017 */ li          r0, 0x17
/* 805715D4 90050000 */ stw         r0, 0(r5)
/* 805715D8 38600001 */ li          r3, 1
/* 805715DC 4E800020 */ blr         
lbl_805715e0:
/* 805715E0 2C040004 */ cmpwi       r4, 4
/* 805715E4 4C820020 */ bnelr-      
/* 805715E8 38000018 */ li          r0, 0x18
/* 805715EC 90050000 */ stw         r0, 0(r5)
/* 805715F0 4E800020 */ blr         