nofralloc
/* 80571C5C 9421FFD0 */ stwu        r1, -0x30(r1)
/* 80571C60 7C0802A6 */ mflr        r0
/* 80571C64 90010034 */ stw         r0, 0x34(r1)
/* 80571C68 DBE10020 */ stfd        f31, 0x20(r1)
/* 80571C6C F3E10028 */ psq_st      f31, 0x28(r1), 0, 0
/* 80571C70 93E1001C */ stw         r31, 0x1c(r1)
/* 80571C74 7C7F1B78 */ mr          r31, r3
/* 80571C78 80830004 */ lwz         r4, 4(r3)
/* 80571C7C 80840004 */ lwz         r4, 4(r4)
/* 80571C80 80040004 */ lwz         r0, 4(r4)
/* 80571C84 54000675 */ rlwinm.     r0, r0, 0, 0x19, 0x1a
/* 80571C88 41820060 */ beq-        lbl_80571ce8
/* 80571C8C 38000000 */ li          r0, 0
/* 80571C90 90010008 */ stw         r0, 8(r1)
/* 80571C94 C3E30014 */ lfs         f31, 0x14(r3)
/* 80571C98 38630004 */ addi        r3, r3, 4
/* 80571C9C 4801E571 */ bl          getPos__Q24Kart15KartObjectProxyCFv
/* 80571CA0 3CC0808A */ lis         r6, gColInfo@ha
/* 80571CA4 FC20F890 */ fmr         f1, f31
/* 80571CA8 3CA0809C */ lis         r5, VEC_INFINITY@ha
/* 80571CAC 3CE0809C */ lis         r7, spInstance__Q25Field11CourseModel@ha
/* 80571CB0 7C641B78 */ mr          r4, r3
/* 80571CB4 80672F44 */ lwz         r3, spInstance__Q25Field11CourseModel@l(r7)
/* 80571CB8 80E66700 */ lwz         r7, gColInfo@l(r6)
/* 80571CBC 38A53C04 */ addi        r5, r5, VEC_INFINITY@l
/* 80571CC0 39010008 */ addi        r8, r1, 8
/* 80571CC4 3CC00001 */ lis         r6, 0x1
/* 80571CC8 39200000 */ li          r9, 0
/* 80571CCC 4821E6F1 */ bl          checkSphereCachedPartialPush__Q25Field11CourseModelFRCQ23EGG8Vector3fRCQ23EGG8Vector3fUlPQ25Field14ColInfoPartialPUlfUl
/* 80571CD0 2C030000 */ cmpwi       r3, 0
/* 80571CD4 41820014 */ beq-        lbl_80571ce8
/* 80571CD8 7FE3FB78 */ mr          r3, r31
/* 80571CDC 38810008 */ addi        r4, r1, 8
/* 80571CE0 38A00001 */ li          r5, 1
/* 80571CE4 480000B5 */ bl          unk_80571d98
lbl_80571ce8:
/* 80571CE8 E3E10028 */ psq_l       f31, 0x28(r1), 0, 0
/* 80571CEC 80010034 */ lwz         r0, 0x34(r1)
/* 80571CF0 CBE10020 */ lfd         f31, 0x20(r1)
/* 80571CF4 83E1001C */ lwz         r31, 0x1c(r1)
/* 80571CF8 7C0803A6 */ mtlr        r0
/* 80571CFC 38210030 */ addi        r1, r1, 0x30
/* 80571D00 4E800020 */ blr         