nofralloc
/* 80621E00 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80621E04 7C0802A6 */ mflr        r0
/* 80621E08 38A00001 */ li          r5, 1
/* 80621E0C 38E00000 */ li          r7, 0
/* 80621E10 90010024 */ stw         r0, 0x24(r1)
/* 80621E14 3800000D */ li          r0, 0xd
/* 80621E18 93E1001C */ stw         r31, 0x1c(r1)
/* 80621E1C 7C9F2378 */ mr          r31, r4
/* 80621E20 93C10018 */ stw         r30, 0x18(r1)
/* 80621E24 7C7E1B78 */ mr          r30, r3
/* 80621E28 7FC6F378 */ mr          r6, r30
/* 80621E2C 93A10014 */ stw         r29, 0x14(r1)
/* 80621E30 3FA08089 */ lis         r29, lbl_80897d40@ha
/* 80621E34 3BBD7D40 */ addi        r29, r29, lbl_80897d40@l
/* 80621E38 93810010 */ stw         r28, 0x10(r1)
/* 80621E3C 98A3038F */ stb         r5, 0x38f(r3)
/* 80621E40 38A00000 */ li          r5, 0
/* 80621E44 90830000 */ stw         r4, 0(r3)
/* 80621E48 7C0903A6 */ mtctr       r0
lbl_80621e4c:
/* 80621E4C 90A60008 */ stw         r5, 8(r6)
/* 80621E50 38E70010 */ addi        r7, r7, 0x10
/* 80621E54 90A6000C */ stw         r5, 0xc(r6)
/* 80621E58 90A60010 */ stw         r5, 0x10(r6)
/* 80621E5C 90A60014 */ stw         r5, 0x14(r6)
/* 80621E60 90A60018 */ stw         r5, 0x18(r6)
/* 80621E64 90A6001C */ stw         r5, 0x1c(r6)
/* 80621E68 90A60020 */ stw         r5, 0x20(r6)
/* 80621E6C 90A60024 */ stw         r5, 0x24(r6)
/* 80621E70 90A60028 */ stw         r5, 0x28(r6)
/* 80621E74 90A6002C */ stw         r5, 0x2c(r6)
/* 80621E78 90A60030 */ stw         r5, 0x30(r6)
/* 80621E7C 90A60034 */ stw         r5, 0x34(r6)
/* 80621E80 90A60038 */ stw         r5, 0x38(r6)
/* 80621E84 90A6003C */ stw         r5, 0x3c(r6)
/* 80621E88 90A60040 */ stw         r5, 0x40(r6)
/* 80621E8C 90A60044 */ stw         r5, 0x44(r6)
/* 80621E90 38C60040 */ addi        r6, r6, 0x40
/* 80621E94 4200FFB8 */ bdnz        lbl_80621e4c
/* 80621E98 54E4103A */ slwi        r4, r7, 2
/* 80621E9C 38000000 */ li          r0, 0
/* 80621EA0 7C832214 */ add         r4, r3, r4
/* 80621EA4 90040008 */ stw         r0, 8(r4)
/* 80621EA8 9004000C */ stw         r0, 0xc(r4)
/* 80621EAC 90040010 */ stw         r0, 0x10(r4)
/* 80621EB0 90030354 */ stw         r0, 0x354(r3)
/* 80621EB4 90030358 */ stw         r0, 0x358(r3)
/* 80621EB8 9003035C */ stw         r0, 0x35c(r3)
/* 80621EBC 90030360 */ stw         r0, 0x360(r3)
/* 80621EC0 90030364 */ stw         r0, 0x364(r3)
/* 80621EC4 90030368 */ stw         r0, 0x368(r3)
/* 80621EC8 9003036C */ stw         r0, 0x36c(r3)
/* 80621ECC 90030370 */ stw         r0, 0x370(r3)
/* 80621ED0 90030374 */ stw         r0, 0x374(r3)
/* 80621ED4 90030378 */ stw         r0, 0x378(r3)
/* 80621ED8 9003037C */ stw         r0, 0x37c(r3)
/* 80621EDC 90030380 */ stw         r0, 0x380(r3)
/* 80621EE0 90030384 */ stw         r0, 0x384(r3)
/* 80621EE4 80630000 */ lwz         r3, 0(r3)
/* 80621EE8 4800F6A1 */ bl          Section_getSceneId
/* 80621EEC 2C030004 */ cmpwi       r3, 4
/* 80621EF0 4082003C */ bne-        lbl_80621f2c
/* 80621EF4 3860001C */ li          r3, 0x1c
/* 80621EF8 4BC07ED5 */ bl          __nw__FUl
/* 80621EFC 2C030000 */ cmpwi       r3, 0
/* 80621F00 7C7C1B78 */ mr          r28, r3
/* 80621F04 41820020 */ beq-        lbl_80621f24
/* 80621F08 4BEF9FC9 */ bl          getGameScene
/* 80621F0C 7C641B78 */ mr          r4, r3
/* 80621F10 7F83E378 */ mr          r3, r28
/* 80621F14 80840C94 */ lwz         r4, 0xc94(r4)
/* 80621F18 38A00004 */ li          r5, 4
/* 80621F1C 4BBED711 */ bl          __ct__Q23EGG9AllocatorFPQ23EGG4Heapl
/* 80621F20 7C7C1B78 */ mr          r28, r3
lbl_80621f24:
/* 80621F24 939E03E4 */ stw         r28, 0x3e4(r30)
/* 80621F28 48000038 */ b           lbl_80621f60
lbl_80621f2c:
/* 80621F2C 3860001C */ li          r3, 0x1c
/* 80621F30 4BC07E9D */ bl          __nw__FUl
/* 80621F34 2C030000 */ cmpwi       r3, 0
/* 80621F38 7C7C1B78 */ mr          r28, r3
/* 80621F3C 41820020 */ beq-        lbl_80621f5c
/* 80621F40 4BEF9F91 */ bl          getGameScene
/* 80621F44 7C641B78 */ mr          r4, r3
/* 80621F48 7F83E378 */ mr          r3, r28
/* 80621F4C 80840C98 */ lwz         r4, 0xc98(r4)
/* 80621F50 38A00004 */ li          r5, 4
/* 80621F54 4BBED6D9 */ bl          __ct__Q23EGG9AllocatorFPQ23EGG4Heapl
/* 80621F58 7C7C1B78 */ mr          r28, r3
lbl_80621f5c:
/* 80621F5C 939E03E4 */ stw         r28, 0x3e4(r30)
lbl_80621f60:
/* 80621F60 801E03E4 */ lwz         r0, 0x3e4(r30)
/* 80621F64 3C608038 */ lis         r3, lbl_80386170@ha
/* 80621F68 90036170 */ stw         r0, lbl_80386170@l(r3)
/* 80621F6C 38600004 */ li          r3, 4
/* 80621F70 4BC07E5D */ bl          __nw__FUl
/* 80621F74 2C030000 */ cmpwi       r3, 0
/* 80621F78 41820008 */ beq-        lbl_80621f80
/* 80621F7C 4BFC8311 */ bl          UIResourceAccessorList_construct
lbl_80621f80:
/* 80621F80 907E03E8 */ stw         r3, 0x3e8(r30)
/* 80621F84 38600004 */ li          r3, 4
/* 80621F88 4BC07E45 */ bl          __nw__FUl
/* 80621F8C 2C030000 */ cmpwi       r3, 0
/* 80621F90 41820008 */ beq-        lbl_80621f98
/* 80621F94 4BFC7F59 */ bl          LayoutThing3List_construct
lbl_80621f98:
/* 80621F98 907E03EC */ stw         r3, 0x3ec(r30)
/* 80621F9C 807E0000 */ lwz         r3, 0(r30)
/* 80621FA0 4800F5E9 */ bl          Section_getSceneId
/* 80621FA4 2C030002 */ cmpwi       r3, 2
/* 80621FA8 4082002C */ bne-        lbl_80621fd4
/* 80621FAC 3C608038 */ lis         r3, sInstance__Q26System13SystemManager@ha
/* 80621FB0 80636000 */ lwz         r3, sInstance__Q26System13SystemManager@l(r3)
/* 80621FB4 80030058 */ lwz         r0, 0x58(r3)
/* 80621FB8 2C000001 */ cmpwi       r0, 1
/* 80621FBC 40820018 */ bne-        lbl_80621fd4
/* 80621FC0 C03D0024 */ lfs         f1, 0x24(r29)
/* 80621FC4 C01D0028 */ lfs         f0, 0x28(r29)
/* 80621FC8 D03E03F0 */ stfs        f1, 0x3f0(r30)
/* 80621FCC D01E03F4 */ stfs        f0, 0x3f4(r30)
/* 80621FD0 48000014 */ b           lbl_80621fe4
lbl_80621fd4:
/* 80621FD4 C03D002C */ lfs         f1, 0x2c(r29)
/* 80621FD8 C01D0028 */ lfs         f0, 0x28(r29)
/* 80621FDC D03E03F0 */ stfs        f1, 0x3f0(r30)
/* 80621FE0 D01E03F4 */ stfs        f0, 0x3f4(r30)
lbl_80621fe4:
/* 80621FE4 807E0000 */ lwz         r3, 0(r30)
/* 80621FE8 4800F5A1 */ bl          Section_getSceneId
/* 80621FEC 2C030002 */ cmpwi       r3, 2
/* 80621FF0 41820018 */ beq-        lbl_80622008
/* 80621FF4 3C608038 */ lis         r3, sInstance__Q26System13SystemManager@ha
/* 80621FF8 80636000 */ lwz         r3, sInstance__Q26System13SystemManager@l(r3)
/* 80621FFC 80030058 */ lwz         r0, 0x58(r3)
/* 80622000 2C000000 */ cmpwi       r0, 0
/* 80622004 40820014 */ bne-        lbl_80622018
lbl_80622008:
/* 80622008 C01D0004 */ lfs         f0, 4(r29)
/* 8062200C D01E03F8 */ stfs        f0, 0x3f8(r30)
/* 80622010 D01E03FC */ stfs        f0, 0x3fc(r30)
/* 80622014 48000014 */ b           lbl_80622028
lbl_80622018:
/* 80622018 C03D0030 */ lfs         f1, 0x30(r29)
/* 8062201C C01D0034 */ lfs         f0, 0x34(r29)
/* 80622020 D03E03F8 */ stfs        f1, 0x3f8(r30)
/* 80622024 D01E03FC */ stfs        f0, 0x3fc(r30)
lbl_80622028:
/* 80622028 4BFABA99 */ bl          unk_805cdac0
/* 8062202C 7FDCF378 */ mr          r28, r30
/* 80622030 3BA00000 */ li          r29, 0
lbl_80622034:
/* 80622034 809E0000 */ lwz         r4, 0(r30)
/* 80622038 7FA3EB78 */ mr          r3, r29
/* 8062203C 48012A29 */ bl          createSystemPage
/* 80622040 2C030000 */ cmpwi       r3, 0
/* 80622044 907C0380 */ stw         r3, 0x380(r28)
/* 80622048 41820008 */ beq-        lbl_80622050
/* 8062204C 4BFE0E09 */ bl          SystemPage_init
lbl_80622050:
/* 80622050 3BBD0001 */ addi        r29, r29, 1
/* 80622054 3B9C0004 */ addi        r28, r28, 4
/* 80622058 2C1D0002 */ cmpwi       r29, 2
/* 8062205C 4180FFD8 */ blt+        lbl_80622034
/* 80622060 3BA00000 */ li          r29, 0
/* 80622064 9BBE0389 */ stb         r29, 0x389(r30)
/* 80622068 7FC3F378 */ mr          r3, r30
/* 8062206C 7FE4FB78 */ mr          r4, r31
/* 80622070 9BBE038A */ stb         r29, 0x38a(r30)
/* 80622074 9BBE0388 */ stb         r29, 0x388(r30)
/* 80622078 9BBE038B */ stb         r29, 0x38b(r30)
/* 8062207C 9BBE038C */ stb         r29, 0x38c(r30)
/* 80622080 9BBE038D */ stb         r29, 0x38d(r30)
/* 80622084 9BBE038E */ stb         r29, 0x38e(r30)
/* 80622088 4800A31D */ bl          Section_addPages
/* 8062208C 9BBE038F */ stb         r29, 0x38f(r30)
/* 80622090 83E1001C */ lwz         r31, 0x1c(r1)
/* 80622094 83C10018 */ lwz         r30, 0x18(r1)
/* 80622098 83A10014 */ lwz         r29, 0x14(r1)
/* 8062209C 83810010 */ lwz         r28, 0x10(r1)
/* 806220A0 80010024 */ lwz         r0, 0x24(r1)
/* 806220A4 7C0803A6 */ mtlr        r0
/* 806220A8 38210020 */ addi        r1, r1, 0x20
/* 806220AC 4E800020 */ blr         