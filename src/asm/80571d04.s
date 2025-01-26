nofralloc
/* 80571D04 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80571D08 7C0802A6 */ mflr        r0
/* 80571D0C 90010014 */ stw         r0, 0x14(r1)
/* 80571D10 93E1000C */ stw         r31, 0xc(r1)
/* 80571D14 93C10008 */ stw         r30, 8(r1)
/* 80571D18 7C7E1B78 */ mr          r30, r3
/* 80571D1C ABE3006C */ lha         r31, 0x6c(r3)
/* 80571D20 38630004 */ addi        r3, r3, 4
/* 80571D24 4801E4E9 */ bl          getPos__Q24Kart15KartObjectProxyCFv
/* 80571D28 3CA0809C */ lis         r5, spInstance__Q26System9CourseMap@ha
/* 80571D2C 7C641B78 */ mr          r4, r3
/* 80571D30 8065D6E8 */ lwz         r3, spInstance__Q26System9CourseMap@l(r5)
/* 80571D34 7FE5FB78 */ mr          r5, r31
/* 80571D38 38C0000A */ li          r6, 0xa
/* 80571D3C 4BFA4ACD */ bl          unk_80516808
/* 80571D40 7C600735 */ extsh.      r0, r3
/* 80571D44 4180003C */ blt-        lbl_80571d80
/* 80571D48 B07E006C */ sth         r3, 0x6c(r30)
/* 80571D4C 807E0004 */ lwz         r3, 4(r30)
/* 80571D50 80630004 */ lwz         r3, 4(r3)
/* 80571D54 80030004 */ lwz         r0, 4(r3)
/* 80571D58 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 80571D5C 40820024 */ bne-        lbl_80571d80
/* 80571D60 387E0004 */ addi        r3, r30, 4
/* 80571D64 4801F195 */ bl          unk_80590ef8
/* 80571D68 7FC3F378 */ mr          r3, r30
/* 80571D6C 38800000 */ li          r4, 0
/* 80571D70 38A00000 */ li          r5, 0
/* 80571D74 38C00000 */ li          r6, 0
/* 80571D78 38E00000 */ li          r7, 0
/* 80571D7C 48001D85 */ bl          PlayerSub18_activateOob
lbl_80571d80:
/* 80571D80 80010014 */ lwz         r0, 0x14(r1)
/* 80571D84 83E1000C */ lwz         r31, 0xc(r1)
/* 80571D88 83C10008 */ lwz         r30, 8(r1)
/* 80571D8C 7C0803A6 */ mtlr        r0
/* 80571D90 38210010 */ addi        r1, r1, 0x10
/* 80571D94 4E800020 */ blr         