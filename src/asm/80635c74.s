nofralloc
/* 80635C74 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80635C78 7C0802A6 */ mflr        r0
/* 80635C7C 38800000 */ li          r4, 0
/* 80635C80 38A00000 */ li          r5, 0
/* 80635C84 90010014 */ stw         r0, 0x14(r1)
/* 80635C88 93E1000C */ stw         r31, 0xc(r1)
/* 80635C8C 7C7F1B78 */ mr          r31, r3
/* 80635C90 4BFFFDAD */ bl          SectionManager_setNextSection
/* 80635C94 7FE3FB78 */ mr          r3, r31
/* 80635C98 38800000 */ li          r4, 0
/* 80635C9C 38A000FF */ li          r5, 0xff
/* 80635CA0 4BFFFE29 */ bl          SectionManager_startChangeSection
/* 80635CA4 3FE08038 */ lis         r31, sInstance__Q26System13SystemManager@ha
/* 80635CA8 807F6000 */ lwz         r3, sInstance__Q26System13SystemManager@l(r31)
/* 80635CAC 4B9D5581 */ bl          unk_8000b22c
/* 80635CB0 809F6000 */ lwz         r4, sInstance__Q26System13SystemManager@l(r31)
/* 80635CB4 38000000 */ li          r0, 0
/* 80635CB8 3C60809C */ lis         r3, lbl_809c2898@ha
/* 80635CBC 980400B6 */ stb         r0, 0xb6(r4)
/* 80635CC0 80632898 */ lwz         r3, lbl_809c2898@l(r3)
/* 80635CC4 480E1C29 */ bl          unk_807178ec
/* 80635CC8 80010014 */ lwz         r0, 0x14(r1)
/* 80635CCC 83E1000C */ lwz         r31, 0xc(r1)
/* 80635CD0 7C0803A6 */ mtlr        r0
/* 80635CD4 38210010 */ addi        r1, r1, 0x10
/* 80635CD8 4E800020 */ blr         