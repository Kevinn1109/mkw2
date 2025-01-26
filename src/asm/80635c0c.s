nofralloc
/* 80635C0C 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80635C10 7C0802A6 */ mflr        r0
/* 80635C14 38800004 */ li          r4, 4
/* 80635C18 38A00000 */ li          r5, 0
/* 80635C1C 90010014 */ stw         r0, 0x14(r1)
/* 80635C20 93E1000C */ stw         r31, 0xc(r1)
/* 80635C24 7C7F1B78 */ mr          r31, r3
/* 80635C28 4BFFFE15 */ bl          SectionManager_setNextSection
/* 80635C2C 7FE3FB78 */ mr          r3, r31
/* 80635C30 38800000 */ li          r4, 0
/* 80635C34 38A000FF */ li          r5, 0xff
/* 80635C38 4BFFFE91 */ bl          SectionManager_startChangeSection
/* 80635C3C 3FE08038 */ lis         r31, sInstance__Q26System13SystemManager@ha
/* 80635C40 807F6000 */ lwz         r3, sInstance__Q26System13SystemManager@l(r31)
/* 80635C44 4B9D55E9 */ bl          unk_8000b22c
/* 80635C48 809F6000 */ lwz         r4, sInstance__Q26System13SystemManager@l(r31)
/* 80635C4C 38000000 */ li          r0, 0
/* 80635C50 3C60809C */ lis         r3, lbl_809c2898@ha
/* 80635C54 980400B6 */ stb         r0, 0xb6(r4)
/* 80635C58 80632898 */ lwz         r3, lbl_809c2898@l(r3)
/* 80635C5C 480E1C91 */ bl          unk_807178ec
/* 80635C60 80010014 */ lwz         r0, 0x14(r1)
/* 80635C64 83E1000C */ lwz         r31, 0xc(r1)
/* 80635C68 7C0803A6 */ mtlr        r0
/* 80635C6C 38210010 */ addi        r1, r1, 0x10
/* 80635C70 4E800020 */ blr         