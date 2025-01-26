nofralloc
/* 80524944 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80524948 7C0802A6 */ mflr        r0
/* 8052494C 3CC08089 */ lis         r6, lbl_8088fd20@ha
/* 80524950 90010014 */ stw         r0, 0x14(r1)
/* 80524954 3C004330 */ lis         r0, 0x4330
/* 80524958 C826FD20 */ lfd         f1, lbl_8088fd20@l(r6)
/* 8052495C 90A1000C */ stw         r5, 0xc(r1)
/* 80524960 3CA0809C */ lis         r5, spInstance__Q26System12KPadDirector@ha
/* 80524964 90010008 */ stw         r0, 8(r1)
/* 80524968 1C0300EC */ mulli       r0, r3, 0xec
/* 8052496C 8065D70C */ lwz         r3, spInstance__Q26System12KPadDirector@l(r5)
/* 80524970 38A00001 */ li          r5, 1
/* 80524974 C8010008 */ lfd         f0, 8(r1)
/* 80524978 7C630214 */ add         r3, r3, r0
/* 8052497C EC200828 */ fsubs       f1, f0, f1
/* 80524980 38630004 */ addi        r3, r3, 4
/* 80524984 4BFFD0B1 */ bl          unk_80521a34
/* 80524988 80010014 */ lwz         r0, 0x14(r1)
/* 8052498C 7C0803A6 */ mtlr        r0
/* 80524990 38210010 */ addi        r1, r1, 0x10
/* 80524994 4E800020 */ blr         