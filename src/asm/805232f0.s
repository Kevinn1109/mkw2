nofralloc
/* 805232F0 9421FFE0 */ stwu        r1, -0x20(r1)
/* 805232F4 7C0802A6 */ mflr        r0
/* 805232F8 3CC0808B */ lis         r6, lbl_808b2fc8@ha
/* 805232FC 3C808052 */ lis         r4, __ct__Q26System10KPadPlayerFv@ha
/* 80523300 90010024 */ stw         r0, 0x24(r1)
/* 80523304 3CA08052 */ lis         r5, __dt__Q26System10KPadPlayerFv@ha
/* 80523308 38C62FC8 */ addi        r6, r6, lbl_808b2fc8@l
/* 8052330C 388420BC */ addi        r4, r4, __ct__Q26System10KPadPlayerFv@l
/* 80523310 93E1001C */ stw         r31, 0x1c(r1)
/* 80523314 38A522F4 */ addi        r5, r5, __dt__Q26System10KPadPlayerFv@l
/* 80523318 38E00004 */ li          r7, 4
/* 8052331C 93C10018 */ stw         r30, 0x18(r1)
/* 80523320 93A10014 */ stw         r29, 0x14(r1)
/* 80523324 7C7D1B78 */ mr          r29, r3
/* 80523328 90C30000 */ stw         r6, 0(r3)
/* 8052332C 38C000EC */ li          r6, 0xec
/* 80523330 38630004 */ addi        r3, r3, 4
/* 80523334 4BAFDCC1 */ bl          __construct_array
/* 80523338 3C808052 */ lis         r4, __ct__Q26System6KPadAIFv@ha
/* 8052333C 3CA08052 */ lis         r5, __dt__Q26System6KPadAIFv@ha
/* 80523340 387D03B4 */ addi        r3, r29, 0x3b4
/* 80523344 38C00180 */ li          r6, 0x180
/* 80523348 388434A0 */ addi        r4, r4, __ct__Q26System6KPadAIFv@l
/* 8052334C 38A5279C */ addi        r5, r5, __dt__Q26System6KPadAIFv@l
/* 80523350 38E0000C */ li          r7, 0xc
/* 80523354 4BAFDCA1 */ bl          __construct_array
/* 80523358 387D15B4 */ addi        r3, r29, 0x15b4
/* 8052335C 4BFFDC09 */ bl          __ct__Q26System4KPadFv
/* 80523360 3BDD1690 */ addi        r30, r29, 0x1690
/* 80523364 7FC3F378 */ mr          r3, r30
/* 80523368 4BFFB841 */ bl          __ct__Q26System14KPadControllerFv
/* 8052336C 3C60808B */ lis         r3, lbl_808b3020@ha
/* 80523370 3BE00001 */ li          r31, 1
/* 80523374 38633020 */ addi        r3, r3, lbl_808b3020@l
/* 80523378 3C808052 */ lis         r4, __ct__Q26System17KPadWiiControllerFv@ha
/* 8052337C 3CA08052 */ lis         r5, __dt__Q26System17KPadWiiControllerFv@ha
/* 80523380 907E0000 */ stw         r3, 0(r30)
/* 80523384 387D1720 */ addi        r3, r29, 0x1720
/* 80523388 3884F088 */ addi        r4, r4, __ct__Q26System17KPadWiiControllerFv@l
/* 8052338C 9BFE0050 */ stb         r31, 0x50(r30)
/* 80523390 38A52934 */ addi        r5, r5, __dt__Q26System17KPadWiiControllerFv@l
/* 80523394 38C00920 */ li          r6, 0x920
/* 80523398 38E00004 */ li          r7, 4
/* 8052339C 4BAFDC59 */ bl          __construct_array
/* 805233A0 3C808052 */ lis         r4, __ct__Q26System16KPadGCControllerFv@ha
/* 805233A4 3CA08052 */ lis         r5, __dt__Q26System16KPadGCControllerFv@ha
/* 805233A8 387D3BA0 */ addi        r3, r29, 0x3ba0
/* 805233AC 38C000B0 */ li          r6, 0xb0
/* 805233B0 3884FFD0 */ addi        r4, r4, __ct__Q26System16KPadGCControllerFv@l
/* 805233B4 38A52874 */ addi        r5, r5, __dt__Q26System16KPadGCControllerFv@l
/* 805233B8 38E00004 */ li          r7, 4
/* 805233BC 4BAFDC39 */ bl          __construct_array
/* 805233C0 3C808052 */ lis         r4, __ct__Q26System19KPadGhostControllerFv@ha
/* 805233C4 3CA08052 */ lis         r5, __dt__Q26System19KPadGhostControllerFv@ha
/* 805233C8 387D3E60 */ addi        r3, r29, 0x3e60
/* 805233CC 38C000A8 */ li          r6, 0xa8
/* 805233D0 38840730 */ addi        r4, r4, __ct__Q26System19KPadGhostControllerFv@l
/* 805233D4 38A50924 */ addi        r5, r5, __dt__Q26System19KPadGhostControllerFv@l
/* 805233D8 38E00004 */ li          r7, 4
/* 805233DC 4BAFDC19 */ bl          __construct_array
/* 805233E0 3C80808B */ lis         r4, lbl_808b30fc@ha
/* 805233E4 387D4100 */ addi        r3, r29, 0x4100
/* 805233E8 388430FC */ addi        r4, r4, lbl_808b30fc@l
/* 805233EC 909D4100 */ stw         r4, 0x4100(r29)
/* 805233F0 38800000 */ li          r4, 0
/* 805233F4 48001CD5 */ bl          RumbleSettings_load
/* 805233F8 38E00000 */ li          r7, 0
/* 805233FC 38C00002 */ li          r6, 2
/* 80523400 38000003 */ li          r0, 3
/* 80523404 90FD1FF4 */ stw         r7, 0x1ff4(r29)
/* 80523408 387D15B4 */ addi        r3, r29, 0x15b4
/* 8052340C 7FC4F378 */ mr          r4, r30
/* 80523410 93FD2914 */ stw         r31, 0x2914(r29)
/* 80523414 38A00000 */ li          r5, 0
/* 80523418 90DD3234 */ stw         r6, 0x3234(r29)
/* 8052341C 901D3B54 */ stw         r0, 0x3b54(r29)
/* 80523420 90FD3C3C */ stw         r7, 0x3c3c(r29)
/* 80523424 93FD3CEC */ stw         r31, 0x3cec(r29)
/* 80523428 90DD3D9C */ stw         r6, 0x3d9c(r29)
/* 8052342C 901D3E4C */ stw         r0, 0x3e4c(r29)
/* 80523430 4BFFE125 */ bl          setController__Q26System4KPadFPQ26System14KPadControllerPQ26System14KPadController
/* 80523434 3BC00000 */ li          r30, 0
lbl_80523438:
/* 80523438 57C0063E */ clrlwi      r0, r30, 0x18
/* 8052343C 389D1690 */ addi        r4, r29, 0x1690
/* 80523440 1C0000EC */ mulli       r0, r0, 0xec
/* 80523444 38A00000 */ li          r5, 0
/* 80523448 7CDD0214 */ add         r6, r29, r0
/* 8052344C 9BC60020 */ stb         r30, 0x20(r6)
/* 80523450 38660004 */ addi        r3, r6, 4
/* 80523454 80C600EC */ lwz         r6, 0xec(r6)
/* 80523458 9BC60018 */ stb         r30, 0x18(r6)
/* 8052345C 4BFFE0F9 */ bl          setController__Q26System4KPadFPQ26System14KPadControllerPQ26System14KPadController
/* 80523460 3BDE0001 */ addi        r30, r30, 1
/* 80523464 281E0004 */ cmplwi      r30, 4
/* 80523468 4180FFD0 */ blt+        lbl_80523438
/* 8052346C 3C608052 */ lis         r3, syncDeviceCallback__Q26System12KPadDirectorFi@ha
/* 80523470 386330E0 */ addi        r3, r3, syncDeviceCallback__Q26System12KPadDirectorFi@l
/* 80523474 4BC9C1CD */ bl          WPADSetSyncDeviceCallback
/* 80523478 38000000 */ li          r0, 0
/* 8052347C 901D4158 */ stw         r0, 0x4158(r29)
/* 80523480 7FA3EB78 */ mr          r3, r29
/* 80523484 83E1001C */ lwz         r31, 0x1c(r1)
/* 80523488 83C10018 */ lwz         r30, 0x18(r1)
/* 8052348C 83A10014 */ lwz         r29, 0x14(r1)
/* 80523490 80010024 */ lwz         r0, 0x24(r1)
/* 80523494 7C0803A6 */ mtlr        r0
/* 80523498 38210020 */ addi        r1, r1, 0x20
/* 8052349C 4E800020 */ blr         