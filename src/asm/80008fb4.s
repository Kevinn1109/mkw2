nofralloc
/* 80008FB4 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80008FB8 7C0802A6 */ mflr        r0
/* 80008FBC 90010014 */ stw         r0, 0x14(r1)
/* 80008FC0 93E1000C */ stw         r31, 0xc(r1)
/* 80008FC4 93C10008 */ stw         r30, 8(r1)
/* 80008FC8 7C7E1B78 */ mr          r30, r3
/* 80008FCC 48155A51 */ bl          DVDInit
/* 80008FD0 481A71B1 */ bl          SCInit
/* 80008FD4 819E0000 */ lwz         r12, 0(r30)
/* 80008FD8 7FC3F378 */ mr          r3, r30
/* 80008FDC 818C0030 */ lwz         r12, 0x30(r12)
/* 80008FE0 7D8903A6 */ mtctr       r12
/* 80008FE4 4E800421 */ bctrl       
/* 80008FE8 819E0000 */ lwz         r12, 0(r30)
/* 80008FEC 7FC3F378 */ mr          r3, r30
/* 80008FF0 818C002C */ lwz         r12, 0x2c(r12)
/* 80008FF4 7D8903A6 */ mtctr       r12
/* 80008FF8 4E800421 */ bctrl       
/* 80008FFC 807E0038 */ lwz         r3, 0x38(r30)
/* 80009000 38800000 */ li          r4, 0
/* 80009004 4822053D */ bl          create__Q23EGG12GraphicsFifoFUlPQ23EGG4Heap
/* 80009008 3860000C */ li          r3, 0xc
/* 8000900C 48220DC1 */ bl          __nw__FUl
/* 80009010 2C030000 */ cmpwi       r3, 0
/* 80009014 7C7F1B78 */ mr          r31, r3
/* 80009018 41820020 */ beq-        lbl_80009038
/* 8000901C 809E003C */ lwz         r4, 0x3c(r30)
/* 80009020 38000000 */ li          r0, 0
/* 80009024 38A00000 */ li          r5, 0
/* 80009028 90030000 */ stw         r0, 0(r3)
/* 8000902C 98030004 */ stb         r0, 4(r3)
/* 80009030 90030008 */ stw         r0, 8(r3)
/* 80009034 4823ACE5 */ bl          initialize__Q23EGG5VideoFPC15GXRenderModeObjPCPC15GXRenderModeObj
lbl_80009038:
/* 80009038 93FE0044 */ stw         r31, 0x44(r30)
/* 8000903C 38600010 */ li          r3, 0x10
/* 80009040 48220D8D */ bl          __nw__FUl
/* 80009044 2C030000 */ cmpwi       r3, 0
/* 80009048 41820018 */ beq-        lbl_80009060
/* 8000904C 38000000 */ li          r0, 0
/* 80009050 90030000 */ stw         r0, 0(r3)
/* 80009054 90030004 */ stw         r0, 4(r3)
/* 80009058 90030008 */ stw         r0, 8(r3)
/* 8000905C 9003000C */ stw         r0, 0xc(r3)
lbl_80009060:
/* 80009060 907E0048 */ stw         r3, 0x48(r30)
/* 80009064 3BE00000 */ li          r31, 0
lbl_80009068:
/* 80009068 38600010 */ li          r3, 0x10
/* 8000906C 48220D61 */ bl          __nw__FUl
/* 80009070 2C030000 */ cmpwi       r3, 0
/* 80009074 7C641B78 */ mr          r4, r3
/* 80009078 41820010 */ beq-        lbl_80009088
/* 8000907C 809E001C */ lwz         r4, 0x1c(r30)
/* 80009080 4823B0E1 */ bl          __ct__Q23EGG3XfbFPQ23EGG4Heap
/* 80009084 7C641B78 */ mr          r4, r3
lbl_80009088:
/* 80009088 807E0048 */ lwz         r3, 0x48(r30)
/* 8000908C 4823B175 */ bl          attach__Q23EGG10XfbManagerFPQ23EGG3Xfb
/* 80009090 3BFF0001 */ addi        r31, r31, 1
/* 80009094 2C1F0002 */ cmpwi       r31, 2
/* 80009098 4180FFD0 */ blt+        lbl_80009068
/* 8000909C 38600088 */ li          r3, 0x88
/* 800090A0 48220D2D */ bl          __nw__FUl
/* 800090A4 2C030000 */ cmpwi       r3, 0
/* 800090A8 4182000C */ beq-        lbl_800090b4
/* 800090AC 38800001 */ li          r4, 1
/* 800090B0 48206C69 */ bl          __ct__Q23EGG12AsyncDisplayFUc
lbl_800090b4:
/* 800090B4 907E004C */ stw         r3, 0x4c(r30)
/* 800090B8 4823A4ED */ bl          initialize__Q23EGG6ThreadFv
/* 800090BC 38600048 */ li          r3, 0x48
/* 800090C0 48220D0D */ bl          __nw__FUl
/* 800090C4 2C030000 */ cmpwi       r3, 0
/* 800090C8 7C7F1B78 */ mr          r31, r3
/* 800090CC 4182001C */ beq-        lbl_800090e8
/* 800090D0 481A07E1 */ bl          OSGetCurrentThread
/* 800090D4 7C641B78 */ mr          r4, r3
/* 800090D8 7FE3FB78 */ mr          r3, r31
/* 800090DC 38A00004 */ li          r5, 4
/* 800090E0 4823A2CD */ bl          __ct__Q23EGG6ThreadFP8OSThreadi
/* 800090E4 7C7F1B78 */ mr          r31, r3
lbl_800090e8:
/* 800090E8 93FE0028 */ stw         r31, 0x28(r30)
/* 800090EC 38600154 */ li          r3, 0x154
/* 800090F0 48220CDD */ bl          __nw__FUl
/* 800090F4 2C030000 */ cmpwi       r3, 0
/* 800090F8 4182000C */ beq-        lbl_80009104
/* 800090FC 38800001 */ li          r4, 1
/* 80009100 4822F73D */ bl          __ct__Q23EGG12ProcessMeterFb
lbl_80009104:
/* 80009104 907E0050 */ stw         r3, 0x50(r30)
/* 80009108 48219215 */ bl          initialize__Q23EGG7DvdFileFv
/* 8000910C 4820D5E9 */ bl          createStaticInstance__Q23EGG17CoreControllerMgrFv
/* 80009110 4820DF8D */ bl          createStaticInstance__Q23EGG15GCControllerMgrFv
/* 80009114 38600040 */ li          r3, 0x40
/* 80009118 38800020 */ li          r4, 0x20
/* 8000911C 38A00004 */ li          r5, 4
/* 80009120 38C00000 */ li          r6, 0
/* 80009124 38E00001 */ li          r7, 1
/* 80009128 4821D60D */ bl          Exception_create
/* 8000912C 38600030 */ li          r3, 0x30
/* 80009130 48220C9D */ bl          __nw__FUl
/* 80009134 2C030000 */ cmpwi       r3, 0
/* 80009138 7C7F1B78 */ mr          r31, r3
/* 8000913C 41820018 */ beq-        lbl_80009154
/* 80009140 38800000 */ li          r4, 0
/* 80009144 48231C99 */ bl          __ct__Q23EGG12SceneManagerFPQ23EGG12SceneCreator
/* 80009148 3C608027 */ lis         r3, __vt__Q26System14RKSceneManager@ha
/* 8000914C 38630C68 */ addi        r3, r3, __vt__Q26System14RKSceneManager@l
/* 80009150 907F0000 */ stw         r3, 0(r31)
lbl_80009154:
/* 80009154 93FE0054 */ stw         r31, 0x54(r30)
/* 80009158 807E0018 */ lwz         r3, 0x18(r30)
/* 8000915C 48220C19 */ bl          becomeCurrentHeap__Q23EGG4HeapFv
/* 80009160 386006BC */ li          r3, 0x6bc
/* 80009164 48220C69 */ bl          __nw__FUl
/* 80009168 2C030000 */ cmpwi       r3, 0
/* 8000916C 41820008 */ beq-        lbl_80009174
/* 80009170 4820A12D */ bl          __ct__Q23EGG14SimpleAudioMgrFv
lbl_80009174:
/* 80009174 907E0040 */ stw         r3, 0x40(r30)
/* 80009178 83E1000C */ lwz         r31, 0xc(r1)
/* 8000917C 83C10008 */ lwz         r30, 8(r1)
/* 80009180 80010014 */ lwz         r0, 0x14(r1)
/* 80009184 7C0803A6 */ mtlr        r0
/* 80009188 38210010 */ addi        r1, r1, 0x10
/* 8000918C 4E800020 */ blr         