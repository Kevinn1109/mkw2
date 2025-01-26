nofralloc
/* 80635B70 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80635B74 7C0802A6 */ mflr        r0
/* 80635B78 90010014 */ stw         r0, 0x14(r1)
/* 80635B7C 93E1000C */ stw         r31, 0xc(r1)
/* 80635B80 7C7F1B78 */ mr          r31, r3
/* 80635B84 80830024 */ lwz         r4, 0x24(r3)
/* 80635B88 5480077B */ rlwinm.     r0, r4, 0, 0x1d, 0x1d
/* 80635B8C 40820048 */ bne-        lbl_80635bd4
/* 80635B90 548007BD */ rlwinm.     r0, r4, 0, 0x1e, 0x1e
/* 80635B94 41820024 */ beq-        lbl_80635bb8
/* 80635B98 38800005 */ li          r4, 5
/* 80635B9C 38A00000 */ li          r5, 0
/* 80635BA0 4BFFFE9D */ bl          SectionManager_setNextSection
/* 80635BA4 7FE3FB78 */ mr          r3, r31
/* 80635BA8 38800000 */ li          r4, 0
/* 80635BAC 38A000FF */ li          r5, 0xff
/* 80635BB0 4BFFFF19 */ bl          SectionManager_startChangeSection
/* 80635BB4 48000020 */ b           lbl_80635bd4
lbl_80635bb8:
/* 80635BB8 38800040 */ li          r4, 0x40
/* 80635BBC 38A00000 */ li          r5, 0
/* 80635BC0 4BFFFE7D */ bl          SectionManager_setNextSection
/* 80635BC4 7FE3FB78 */ mr          r3, r31
/* 80635BC8 38800000 */ li          r4, 0
/* 80635BCC 38A000FF */ li          r5, 0xff
/* 80635BD0 4BFFFEF9 */ bl          SectionManager_startChangeSection
lbl_80635bd4:
/* 80635BD4 3FE08038 */ lis         r31, sInstance__Q26System13SystemManager@ha
/* 80635BD8 807F6000 */ lwz         r3, sInstance__Q26System13SystemManager@l(r31)
/* 80635BDC 4B9D5651 */ bl          unk_8000b22c
/* 80635BE0 809F6000 */ lwz         r4, sInstance__Q26System13SystemManager@l(r31)
/* 80635BE4 38000000 */ li          r0, 0
/* 80635BE8 3C60809C */ lis         r3, lbl_809c2898@ha
/* 80635BEC 980400B6 */ stb         r0, 0xb6(r4)
/* 80635BF0 80632898 */ lwz         r3, lbl_809c2898@l(r3)
/* 80635BF4 480E1CF9 */ bl          unk_807178ec
/* 80635BF8 80010014 */ lwz         r0, 0x14(r1)
/* 80635BFC 83E1000C */ lwz         r31, 0xc(r1)
/* 80635C00 7C0803A6 */ mtlr        r0
/* 80635C04 38210010 */ addi        r1, r1, 0x10
/* 80635C08 4E800020 */ blr         