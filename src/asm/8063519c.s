nofralloc
/* 8063519C 9421FFE0 */ stwu        r1, -0x20(r1)
/* 806351A0 7C0802A6 */ mflr        r0
/* 806351A4 90010024 */ stw         r0, 0x24(r1)
/* 806351A8 BF410008 */ stmw        r26, 8(r1)
/* 806351AC 7C7F1B78 */ mr          r31, r3
/* 806351B0 4BB2DA89 */ bl          DVDResume
/* 806351B4 3C608038 */ lis         r3, sInstance__Q23EGG14AsyncDvdStatus@ha
/* 806351B8 38000001 */ li          r0, 1
/* 806351BC 80635FC0 */ lwz         r3, sInstance__Q23EGG14AsyncDvdStatus@l(r3)
/* 806351C0 98030050 */ stb         r0, 0x50(r3)
/* 806351C4 807F0090 */ lwz         r3, 0x90(r31)
/* 806351C8 4BFEC015 */ bl          SaveGhostManager_processAllRequests
/* 806351CC 807F0000 */ lwz         r3, 0(r31)
/* 806351D0 80030000 */ lwz         r0, 0(r3)
/* 806351D4 901F0010 */ stw         r0, 0x10(r31)
/* 806351D8 4BFED001 */ bl          Section_deinit
/* 806351DC 807F0000 */ lwz         r3, 0(r31)
/* 806351E0 38800001 */ li          r4, 1
/* 806351E4 4BFECBA1 */ bl          Section_destroy
/* 806351E8 3B400000 */ li          r26, 0
/* 806351EC 935F0000 */ stw         r26, 0(r31)
/* 806351F0 807F0090 */ lwz         r3, 0x90(r31)
/* 806351F4 4BFEC241 */ bl          SaveGhostManager_saveLicensesIfDirty
/* 806351F8 807F0090 */ lwz         r3, 0x90(r31)
/* 806351FC 4BFEBFE1 */ bl          SaveGhostManager_processAllRequests
/* 80635200 3FC0809C */ lis         r30, lbl_809c2144@ha
/* 80635204 807E2144 */ lwz         r3, lbl_809c2144@l(r30)
/* 80635208 48033D9D */ bl          unk_80668fa4
/* 8063520C 2C030001 */ cmpwi       r3, 1
/* 80635210 40820058 */ bne-        lbl_80635268
/* 80635214 807E2144 */ lwz         r3, lbl_809c2144@l(r30)
/* 80635218 48036201 */ bl          unk_8066b418
/* 8063521C 3B60000A */ li          r27, 0xa
/* 80635220 3C601062 */ lis         r3, 0x1062
/* 80635224 7F5AD9D6 */ mullw       r26, r26, r27
/* 80635228 3F808000 */ lis         r28, 0x8000
/* 8063522C 3BA34DD3 */ addi        r29, r3, 0x4dd3
lbl_80635230:
/* 80635230 807E2144 */ lwz         r3, lbl_809c2144@l(r30)
/* 80635234 48034031 */ bl          unk_80669264
/* 80635238 801C00F8 */ lwz         r0, 0xf8(r28)
/* 8063523C 5400F0BE */ srwi        r0, r0, 2
/* 80635240 7C1D0016 */ mulhwu      r0, r29, r0
/* 80635244 5403D1BE */ srwi        r3, r0, 6
/* 80635248 7C03D816 */ mulhwu      r0, r3, r27
/* 8063524C 1C83000A */ mulli       r4, r3, 0xa
/* 80635250 7C60D214 */ add         r3, r0, r26
/* 80635254 4BB75A55 */ bl          OSSleepTicks
/* 80635258 807E2144 */ lwz         r3, lbl_809c2144@l(r30)
/* 8063525C 48033D49 */ bl          unk_80668fa4
/* 80635260 2C030001 */ cmpwi       r3, 1
/* 80635264 4182FFCC */ beq+        lbl_80635230
lbl_80635268:
/* 80635268 807F000C */ lwz         r3, 0xc(r31)
/* 8063526C 4BFFF915 */ bl          Section_getPriority
/* 80635270 2C030003 */ cmpwi       r3, 3
/* 80635274 4081005C */ ble-        lbl_806352d0
/* 80635278 3F40809C */ lis         r26, lbl_809c20d8@ha
/* 8063527C 807A20D8 */ lwz         r3, lbl_809c20d8@l(r26)
/* 80635280 48020F29 */ bl          unk_806561a8
/* 80635284 38000000 */ li          r0, 0
/* 80635288 3BA0000A */ li          r29, 0xa
/* 8063528C 7FC0E9D6 */ mullw       r30, r0, r29
/* 80635290 3C601062 */ lis         r3, 0x1062
/* 80635294 3F808000 */ lis         r28, 0x8000
/* 80635298 3B634DD3 */ addi        r27, r3, 0x4dd3
/* 8063529C 48000024 */ b           lbl_806352c0
lbl_806352a0:
/* 806352A0 801C00F8 */ lwz         r0, 0xf8(r28)
/* 806352A4 5400F0BE */ srwi        r0, r0, 2
/* 806352A8 7C1B0016 */ mulhwu      r0, r27, r0
/* 806352AC 5403D1BE */ srwi        r3, r0, 6
/* 806352B0 7C03E816 */ mulhwu      r0, r3, r29
/* 806352B4 1C83000A */ mulli       r4, r3, 0xa
/* 806352B8 7C60F214 */ add         r3, r0, r30
/* 806352BC 4BB759ED */ bl          OSSleepTicks
lbl_806352c0:
/* 806352C0 807A20D8 */ lwz         r3, lbl_809c20d8@l(r26)
/* 806352C4 48021B81 */ bl          unk_80656e44
/* 806352C8 2C030000 */ cmpwi       r3, 0
/* 806352CC 4182FFD4 */ beq+        lbl_806352a0
lbl_806352d0:
/* 806352D0 807F0000 */ lwz         r3, 0(r31)
/* 806352D4 38000000 */ li          r0, 0
/* 806352D8 901F0024 */ stw         r0, 0x24(r31)
/* 806352DC 2C030000 */ cmpwi       r3, 0
/* 806352E0 4182000C */ beq-        lbl_806352ec
/* 806352E4 4BFEDBE5 */ bl          unk_80622ec8
/* 806352E8 907F0024 */ stw         r3, 0x24(r31)
lbl_806352ec:
/* 806352EC 807F0090 */ lwz         r3, 0x90(r31)
/* 806352F0 4BFEC0B5 */ bl          unk_806213a4
/* 806352F4 2C030000 */ cmpwi       r3, 0
/* 806352F8 41820010 */ beq-        lbl_80635308
/* 806352FC 801F0024 */ lwz         r0, 0x24(r31)
/* 80635300 60000002 */ ori         r0, r0, 2
/* 80635304 901F0024 */ stw         r0, 0x24(r31)
lbl_80635308:
/* 80635308 3C608038 */ lis         r3, spInstance__Q26System8RKSystem@ha
/* 8063530C 801F0024 */ lwz         r0, 0x24(r31)
/* 80635310 80635FC8 */ lwz         r3, spInstance__Q26System8RKSystem@l(r3)
/* 80635314 540007FE */ clrlwi      r0, r0, 0x1f
/* 80635318 80630054 */ lwz         r3, 0x54(r3)
/* 8063531C 681E0001 */ xori        r30, r0, 1
/* 80635320 80630024 */ lwz         r3, 0x24(r3)
/* 80635324 81830000 */ lwz         r12, 0(r3)
/* 80635328 818C000C */ lwz         r12, 0xc(r12)
/* 8063532C 7D8903A6 */ mtctr       r12
/* 80635330 4E800421 */ bctrl       
/* 80635334 20830001 */ subfic      r4, r3, 1
/* 80635338 3803FFFF */ addi        r0, r3, -1
/* 8063533C 7C830378 */ or          r3, r4, r0
/* 80635340 801F0030 */ lwz         r0, 0x30(r31)
/* 80635344 54640FFE */ srwi        r4, r3, 0x1f
/* 80635348 68840001 */ xori        r4, r4, 1
/* 8063534C 3C60809C */ lis         r3, lbl_809bd6f8@ha
/* 80635350 7FC62038 */ and         r6, r30, r4
/* 80635354 7C000034 */ cntlzw      r0, r0
/* 80635358 7CA600D0 */ neg         r5, r6
/* 8063535C 8063D6F8 */ lwz         r3, lbl_809bd6f8@l(r3)
/* 80635360 7CA53378 */ or          r5, r5, r6
/* 80635364 5404D97E */ srwi        r4, r0, 5
/* 80635368 54A50FFE */ srwi        r5, r5, 0x1f
/* 8063536C 8803004D */ lbz         r0, 0x4d(r3)
/* 80635370 7CA52038 */ and         r5, r5, r4
/* 80635374 7C8500D0 */ neg         r4, r5
/* 80635378 7C842B78 */ or          r4, r4, r5
/* 8063537C 54840FFE */ srwi        r4, r4, 0x1f
/* 80635380 7C040040 */ cmplw       r4, r0
/* 80635384 41820008 */ beq-        lbl_8063538c
/* 80635388 9883004D */ stb         r4, 0x4d(r3)
lbl_8063538c:
/* 8063538C 801F0024 */ lwz         r0, 0x24(r31)
/* 80635390 540007BD */ rlwinm.     r0, r0, 0, 0x1e, 0x1e
/* 80635394 4182001C */ beq-        lbl_806353b0
/* 80635398 807F000C */ lwz         r3, 0xc(r31)
/* 8063539C 4BFFF7E5 */ bl          Section_getPriority
/* 806353A0 2C030005 */ cmpwi       r3, 5
/* 806353A4 4082000C */ bne-        lbl_806353b0
/* 806353A8 38000005 */ li          r0, 5
/* 806353AC 901F000C */ stw         r0, 0xc(r31)
lbl_806353b0:
/* 806353B0 807F000C */ lwz         r3, 0xc(r31)
/* 806353B4 2C030000 */ cmpwi       r3, 0
/* 806353B8 41820028 */ beq-        lbl_806353e0
/* 806353BC 2C030002 */ cmpwi       r3, 2
/* 806353C0 41820030 */ beq-        lbl_806353f0
/* 806353C4 2C030003 */ cmpwi       r3, 3
/* 806353C8 41820040 */ beq-        lbl_80635408
/* 806353CC 2C030004 */ cmpwi       r3, 4
/* 806353D0 41820054 */ beq-        lbl_80635424
/* 806353D4 2C030005 */ cmpwi       r3, 5
/* 806353D8 4182005C */ beq-        lbl_80635434
/* 806353DC 48000068 */ b           lbl_80635444
lbl_806353e0:
/* 806353E0 3C608038 */ lis         r3, sInstance__Q26System13SystemManager@ha
/* 806353E4 80636000 */ lwz         r3, sInstance__Q26System13SystemManager@l(r3)
/* 806353E8 4B9D5D6D */ bl          SystemManager_shutdownSystem
/* 806353EC 480000A4 */ b           lbl_80635490
lbl_806353f0:
/* 806353F0 3C60809C */ lis         r3, lbl_809bd6e0@ha
/* 806353F4 38800000 */ li          r4, 0
/* 806353F8 8063D6E0 */ lwz         r3, lbl_809bd6e0@l(r3)
/* 806353FC 38A00000 */ li          r5, 0
/* 80635400 4BEDB3D1 */ bl          unk_805107d0
/* 80635404 4800008C */ b           lbl_80635490
lbl_80635408:
/* 80635408 3C60809C */ lis         r3, lbl_809bd6e0@ha
/* 8063540C 38800003 */ li          r4, 3
/* 80635410 8063D6E0 */ lwz         r3, lbl_809bd6e0@l(r3)
/* 80635414 38A00000 */ li          r5, 0
/* 80635418 38C00000 */ li          r6, 0
/* 8063541C 4BEDB471 */ bl          unk_8051088c
/* 80635420 48000070 */ b           lbl_80635490
lbl_80635424:
/* 80635424 3C608038 */ lis         r3, sInstance__Q26System13SystemManager@ha
/* 80635428 80636000 */ lwz         r3, sInstance__Q26System13SystemManager@l(r3)
/* 8063542C 4B9D5D5D */ bl          SystemManager_returnToMenu
/* 80635430 48000060 */ b           lbl_80635490
lbl_80635434:
/* 80635434 3C608038 */ lis         r3, sInstance__Q26System13SystemManager@ha
/* 80635438 80636000 */ lwz         r3, sInstance__Q26System13SystemManager@l(r3)
/* 8063543C 4B9D5D81 */ bl          SystemManager_restart
/* 80635440 48000050 */ b           lbl_80635490
lbl_80635444:
/* 80635444 801F0030 */ lwz         r0, 0x30(r31)
/* 80635448 2C000004 */ cmpwi       r0, 4
/* 8063544C 41820010 */ beq-        lbl_8063545c
/* 80635450 2C000005 */ cmpwi       r0, 5
/* 80635454 4182002C */ beq-        lbl_80635480
/* 80635458 48000038 */ b           lbl_80635490
lbl_8063545c:
/* 8063545C 4BFFC12D */ bl          Section_getSceneId
/* 80635460 7C7E1B78 */ mr          r30, r3
/* 80635464 4B9D3A21 */ bl          getStaticInstance__Q26System8RKSystemFv
/* 80635468 81830000 */ lwz         r12, 0(r3)
/* 8063546C 818C001C */ lwz         r12, 0x1c(r12)
/* 80635470 7D8903A6 */ mtctr       r12
/* 80635474 4E800421 */ bctrl       
/* 80635478 93C30014 */ stw         r30, 0x14(r3)
/* 8063547C 48000014 */ b           lbl_80635490
lbl_80635480:
/* 80635480 4BFFC109 */ bl          Section_getSceneId
/* 80635484 7C7E1B78 */ mr          r30, r3
/* 80635488 4BEE6A49 */ bl          getGameScene
/* 8063548C 93C32544 */ stw         r30, 0x2544(r3)
lbl_80635490:
/* 80635490 881F0020 */ lbz         r0, 0x20(r31)
/* 80635494 2C000000 */ cmpwi       r0, 0
/* 80635498 4182000C */ beq-        lbl_806354a4
/* 8063549C 38000000 */ li          r0, 0
/* 806354A0 981F0020 */ stb         r0, 0x20(r31)
lbl_806354a4:
/* 806354A4 BB410008 */ lmw         r26, 8(r1)
/* 806354A8 80010024 */ lwz         r0, 0x24(r1)
/* 806354AC 7C0803A6 */ mtlr        r0
/* 806354B0 38210020 */ addi        r1, r1, 0x20
/* 806354B4 4E800020 */ blr         