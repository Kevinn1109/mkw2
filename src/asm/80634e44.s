nofralloc
/* 80634E44 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80634E48 7C0802A6 */ mflr        r0
/* 80634E4C 3C80809C */ lis         r4, spInstance__Q26System9InitScene@ha
/* 80634E50 38A00004 */ li          r5, 4
/* 80634E54 90010024 */ stw         r0, 0x24(r1)
/* 80634E58 38000000 */ li          r0, 0
/* 80634E5C 93E1001C */ stw         r31, 0x1c(r1)
/* 80634E60 7C7F1B78 */ mr          r31, r3
/* 80634E64 90030000 */ stw         r0, 0(r3)
/* 80634E68 38600014 */ li          r3, 0x14
/* 80634E6C 8084D740 */ lwz         r4, spInstance__Q26System9InitScene@l(r4)
/* 80634E70 80840034 */ lwz         r4, 0x34(r4)
/* 80634E74 4BBF4F6D */ bl          __nw__FUlPQ23EGG4Heapi
/* 80634E78 2C030000 */ cmpwi       r3, 0
/* 80634E7C 41820008 */ beq-        lbl_80634e84
/* 80634E80 48002B19 */ bl          SystemMessageGroup_construct
lbl_80634e84:
/* 80634E84 907F0094 */ stw         r3, 0x94(r31)
/* 80634E88 48002B99 */ bl          SystemMessageGroup_load
/* 80634E8C 3C60809C */ lis         r3, lbl_809bd720@ha
/* 80634E90 8063D720 */ lwz         r3, lbl_809bd720@l(r3)
/* 80634E94 4BEF7165 */ bl          NandManager_init
/* 80634E98 3C80809C */ lis         r4, spInstance__Q26System9InitScene@ha
/* 80634E9C 38600128 */ li          r3, 0x128
/* 80634EA0 8084D740 */ lwz         r4, spInstance__Q26System9InitScene@l(r4)
/* 80634EA4 38A00004 */ li          r5, 4
/* 80634EA8 80840034 */ lwz         r4, 0x34(r4)
/* 80634EAC 4BBF4F35 */ bl          __nw__FUlPQ23EGG4Heapi
/* 80634EB0 2C030000 */ cmpwi       r3, 0
/* 80634EB4 41820008 */ beq-        lbl_80634ebc
/* 80634EB8 4BFEBB31 */ bl          SaveGhostManager_construct
lbl_80634ebc:
/* 80634EBC 907F0090 */ stw         r3, 0x90(r31)
/* 80634EC0 4BFEBC45 */ bl          unk_80620b04
/* 80634EC4 807F0090 */ lwz         r3, 0x90(r31)
/* 80634EC8 4BFEBD95 */ bl          unk_80620c5c
/* 80634ECC 907F0004 */ stw         r3, 4(r31)
/* 80634ED0 38600510 */ li          r3, 0x510
/* 80634ED4 4BBF4EF9 */ bl          __nw__FUl
/* 80634ED8 2C030000 */ cmpwi       r3, 0
/* 80634EDC 41820008 */ beq-        lbl_80634ee4
/* 80634EE0 4BFAE081 */ bl          SM98_construct
lbl_80634ee4:
/* 80634EE4 907F0098 */ stw         r3, 0x98(r31)
/* 80634EE8 4BA43A39 */ bl          LytInit__Q24nw4r3lytFv
/* 80634EEC 387F0034 */ addi        r3, r31, 0x34
/* 80634EF0 4BFE5FCD */ bl          SM34_init
/* 80634EF4 4BEF27ED */ bl          unk_805276e0
/* 80634EF8 2C030000 */ cmpwi       r3, 0
/* 80634EFC 41820018 */ beq-        lbl_80634f14
/* 80634F00 801F0004 */ lwz         r0, 4(r31)
/* 80634F04 2C000014 */ cmpwi       r0, 0x14
/* 80634F08 4182000C */ beq-        lbl_80634f14
/* 80634F0C 38000015 */ li          r0, 0x15
/* 80634F10 901F0004 */ stw         r0, 4(r31)
lbl_80634f14:
/* 80634F14 38610008 */ addi        r3, r1, 8
/* 80634F18 4BF843E9 */ bl          unk_805b9300
/* 80634F1C 38610008 */ addi        r3, r1, 8
/* 80634F20 4BF84425 */ bl          unk_805b9344
/* 80634F24 801F0004 */ lwz         r0, 4(r31)
/* 80634F28 2C00FFFF */ cmpwi       r0, -1
/* 80634F2C 40820008 */ bne-        lbl_80634f34
/* 80634F30 907F0004 */ stw         r3, 4(r31)
lbl_80634f34:
/* 80634F34 801F0004 */ lwz         r0, 4(r31)
/* 80634F38 2C00FFFF */ cmpwi       r0, -1
/* 80634F3C 4082000C */ bne-        lbl_80634f48
/* 80634F40 3800003F */ li          r0, 0x3f
/* 80634F44 901F0004 */ stw         r0, 4(r31)
lbl_80634f48:
/* 80634F48 801F0008 */ lwz         r0, 8(r31)
/* 80634F4C 2C00FFFF */ cmpwi       r0, -1
/* 80634F50 4182000C */ beq-        lbl_80634f5c
/* 80634F54 901F000C */ stw         r0, 0xc(r31)
/* 80634F58 4800000C */ b           lbl_80634f64
lbl_80634f5c:
/* 80634F5C 801F0004 */ lwz         r0, 4(r31)
/* 80634F60 901F000C */ stw         r0, 0xc(r31)
lbl_80634f64:
/* 80634F64 38600000 */ li          r3, 0
/* 80634F68 38000001 */ li          r0, 1
/* 80634F6C 907F0018 */ stw         r3, 0x18(r31)
/* 80634F70 3CA08038 */ lis         r5, sInstance__Q23EGG14AsyncDvdStatus@ha
/* 80634F74 38610008 */ addi        r3, r1, 8
/* 80634F78 3880FFFF */ li          r4, -1
/* 80634F7C 981F0020 */ stb         r0, 0x20(r31)
/* 80634F80 80A55FC0 */ lwz         r5, sInstance__Q23EGG14AsyncDvdStatus@l(r5)
/* 80634F84 98050050 */ stb         r0, 0x50(r5)
/* 80634F88 4BF8437D */ bl          unk_805b9304
/* 80634F8C 80010024 */ lwz         r0, 0x24(r1)
/* 80634F90 83E1001C */ lwz         r31, 0x1c(r1)
/* 80634F94 7C0803A6 */ mtlr        r0
/* 80634F98 38210020 */ addi        r1, r1, 0x20
/* 80634F9C 4E800020 */ blr         