nofralloc
/* 80634FBC 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80634FC0 7C0802A6 */ mflr        r0
/* 80634FC4 90010014 */ stw         r0, 0x14(r1)
/* 80634FC8 93E1000C */ stw         r31, 0xc(r1)
/* 80634FCC 93C10008 */ stw         r30, 8(r1)
/* 80634FD0 7C7E1B78 */ mr          r30, r3
/* 80634FD4 88030020 */ lbz         r0, 0x20(r3)
/* 80634FD8 2C000000 */ cmpwi       r0, 0
/* 80634FDC 41820020 */ beq-        lbl_80634ffc
/* 80634FE0 3C808038 */ lis         r4, sInstance__Q26System13SystemManager@ha
/* 80634FE4 80846000 */ lwz         r4, sInstance__Q26System13SystemManager@l(r4)
/* 80634FE8 80040070 */ lwz         r0, 0x70(r4)
/* 80634FEC 2C000001 */ cmpwi       r0, 1
/* 80634FF0 4082000C */ bne-        lbl_80634ffc
/* 80634FF4 38630034 */ addi        r3, r3, 0x34
/* 80634FF8 4BFE65AD */ bl          unk_8061b5a4
lbl_80634ffc:
/* 80634FFC 807E0018 */ lwz         r3, 0x18(r30)
/* 80635000 38000000 */ li          r0, 0
/* 80635004 83FE000C */ lwz         r31, 0xc(r30)
/* 80635008 3880FFFF */ li          r4, -1
/* 8063500C 907E0014 */ stw         r3, 0x14(r30)
/* 80635010 7FE3FB78 */ mr          r3, r31
/* 80635014 909E000C */ stw         r4, 0xc(r30)
/* 80635018 901E001C */ stw         r0, 0x1c(r30)
/* 8063501C 901E0018 */ stw         r0, 0x18(r30)
/* 80635020 909E002C */ stw         r4, 0x2c(r30)
/* 80635024 901E0030 */ stw         r0, 0x30(r30)
/* 80635028 4BFFC561 */ bl          Section_getSceneId
/* 8063502C 3803FFFE */ addi        r0, r3, -2
/* 80635030 387E0034 */ addi        r3, r30, 0x34
/* 80635034 7C000034 */ cntlzw      r0, r0
/* 80635038 5400D97E */ srwi        r0, r0, 5
/* 8063503C 7C000034 */ cntlzw      r0, r0
/* 80635040 5404D97E */ srwi        r4, r0, 5
/* 80635044 4BFE62F5 */ bl          unk_8061b338
/* 80635048 38600408 */ li          r3, 0x408
/* 8063504C 4BBF4D81 */ bl          __nw__FUl
/* 80635050 2C030000 */ cmpwi       r3, 0
/* 80635054 41820008 */ beq-        lbl_8063505c
/* 80635058 4BFECCB5 */ bl          Section_construct
lbl_8063505c:
/* 8063505C 907E0000 */ stw         r3, 0(r30)
/* 80635060 7FE4FB78 */ mr          r4, r31
/* 80635064 4BFECD9D */ bl          Section_init
/* 80635068 80010014 */ lwz         r0, 0x14(r1)
/* 8063506C 83E1000C */ lwz         r31, 0xc(r1)
/* 80635070 83C10008 */ lwz         r30, 8(r1)
/* 80635074 7C0803A6 */ mtlr        r0
/* 80635078 38210010 */ addi        r1, r1, 0x10
/* 8063507C 4E800020 */ blr         