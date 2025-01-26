nofralloc
/* 8058473C 9421FFB0 */ stwu        r1, -0x50(r1)
/* 80584740 7C0802A6 */ mflr        r0
/* 80584744 90010054 */ stw         r0, 0x54(r1)
/* 80584748 39610050 */ addi        r11, r1, 0x50
/* 8058474C 4BA9CE55 */ bl          _savegpr_27
/* 80584750 7C7F1B78 */ mr          r31, r3
/* 80584754 4800C309 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80584758 7C7B1B78 */ mr          r27, r3
/* 8058475C 7FE3FB78 */ mr          r3, r31
/* 80584760 4800BEF1 */ bl          PlayerPointers_isReal
/* 80584764 2C030000 */ cmpwi       r3, 0
/* 80584768 41820024 */ beq-        lbl_8058478c
/* 8058476C 807F0000 */ lwz         r3, 0(r31)
/* 80584770 80630004 */ lwz         r3, 4(r3)
/* 80584774 80030014 */ lwz         r0, 0x14(r3)
/* 80584778 5400077B */ rlwinm.     r0, r0, 0, 0x1d, 0x1d
/* 8058477C 41820010 */ beq-        lbl_8058478c
/* 80584780 7FE3FB78 */ mr          r3, r31
/* 80584784 4800C681 */ bl          unk_80590e04
/* 80584788 547B063E */ clrlwi      r27, r3, 0x18
lbl_8058478c:
/* 8058478C 807F0000 */ lwz         r3, 0(r31)
/* 80584790 80630004 */ lwz         r3, 4(r3)
/* 80584794 80030014 */ lwz         r0, 0x14(r3)
/* 80584798 54000739 */ rlwinm.     r0, r0, 0, 0x1c, 0x1c
/* 8058479C 41820008 */ beq-        lbl_805847a4
/* 805847A0 3B600000 */ li          r27, 0
lbl_805847a4:
/* 805847A4 3C60809C */ lis         r3, spInstance__Q26System9CourseMap@ha
/* 805847A8 5764063E */ clrlwi      r4, r27, 0x18
/* 805847AC 8063D6E8 */ lwz         r3, spInstance__Q26System9CourseMap@l(r3)
/* 805847B0 4BF9437D */ bl          getMissionPoint__Q26System9CourseMapCFUs
/* 805847B4 80C30000 */ lwz         r6, 0(r3)
/* 805847B8 38810024 */ addi        r4, r1, 0x24
/* 805847BC 38A10018 */ addi        r5, r1, 0x18
/* 805847C0 C0060008 */ lfs         f0, 8(r6)
/* 805847C4 C0260004 */ lfs         f1, 4(r6)
/* 805847C8 C0460000 */ lfs         f2, 0(r6)
/* 805847CC D0410024 */ stfs        f2, 0x24(r1)
/* 805847D0 D0210028 */ stfs        f1, 0x28(r1)
/* 805847D4 D001002C */ stfs        f0, 0x2c(r1)
/* 805847D8 80C30000 */ lwz         r6, 0(r3)
/* 805847DC 7FE3FB78 */ mr          r3, r31
/* 805847E0 C0060014 */ lfs         f0, 0x14(r6)
/* 805847E4 C0260010 */ lfs         f1, 0x10(r6)
/* 805847E8 C046000C */ lfs         f2, 0xc(r6)
/* 805847EC D0410018 */ stfs        f2, 0x18(r1)
/* 805847F0 D021001C */ stfs        f1, 0x1c(r1)
/* 805847F4 D0010020 */ stfs        f0, 0x20(r1)
/* 805847F8 4BFFF84D */ bl          PlayerSub10_setInitialPhysicsValues
/* 805847FC 7FE3FB78 */ mr          r3, r31
/* 80584800 4800C629 */ bl          unk_80590e28
/* 80584804 7FE3FB78 */ mr          r3, r31
/* 80584808 4800C255 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8058480C 3C80809C */ lis         r4, lbl_809c3618@ha
/* 80584810 5460063E */ clrlwi      r0, r3, 0x18
/* 80584814 80643618 */ lwz         r3, lbl_809c3618@l(r4)
/* 80584818 1C000248 */ mulli       r0, r0, 0x248
/* 8058481C 38800000 */ li          r4, 0
/* 80584820 80630014 */ lwz         r3, 0x14(r3)
/* 80584824 7C630214 */ add         r3, r3, r0
/* 80584828 48214021 */ bl          unk_80798848
/* 8058482C 7FE3FB78 */ mr          r3, r31
/* 80584830 4800B9DD */ bl          getPos__Q24Kart15KartObjectProxyCFv
/* 80584834 7C7B1B78 */ mr          r27, r3
/* 80584838 7FE3FB78 */ mr          r3, r31
/* 8058483C 4800BF41 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 80584840 3BA00000 */ li          r29, 0
/* 80584844 93A10008 */ stw         r29, 8(r1)
/* 80584848 3CA08089 */ lis         r5, lbl_80891ad4@ha
/* 8058484C 3CC08089 */ lis         r6, lbl_80891ad0@ha
/* 80584850 809B0000 */ lwz         r4, 0(r27)
/* 80584854 3CE0808A */ lis         r7, gColInfo@ha
/* 80584858 801B0004 */ lwz         r0, 4(r27)
/* 8058485C 3D20809C */ lis         r9, spInstance__Q25Field11CourseModel@ha
/* 80584860 90010010 */ stw         r0, 0x10(r1)
/* 80584864 7C7C1B78 */ mr          r28, r3
/* 80584868 C0051AD4 */ lfs         f0, lbl_80891ad4@l(r5)
/* 8058486C 3FC020E8 */ lis         r30, 0x20e8
/* 80584870 9081000C */ stw         r4, 0xc(r1)
/* 80584874 7F64DB78 */ mr          r4, r27
/* 80584878 C0410010 */ lfs         f2, 0x10(r1)
/* 8058487C 38A1000C */ addi        r5, r1, 0xc
/* 80584880 801B0008 */ lwz         r0, 8(r27)
/* 80584884 39010008 */ addi        r8, r1, 8
/* 80584888 EC02002A */ fadds       f0, f2, f0
/* 8058488C C0261AD0 */ lfs         f1, lbl_80891ad0@l(r6)
/* 80584890 80692F44 */ lwz         r3, spInstance__Q25Field11CourseModel@l(r9)
/* 80584894 38DE0DFF */ addi        r6, r30, 0xdff
/* 80584898 90010014 */ stw         r0, 0x14(r1)
/* 8058489C 3B600000 */ li          r27, 0
/* 805848A0 D0010010 */ stfs        f0, 0x10(r1)
/* 805848A4 39200000 */ li          r9, 0
/* 805848A8 80E76700 */ lwz         r7, gColInfo@l(r7)
/* 805848AC 4820AA75 */ bl          checkSpherePartialPush__Q25Field11CourseModelFRCQ23EGG8Vector3fRCQ23EGG8Vector3fUlPQ25Field14ColInfoPartialPUlfUl
/* 805848B0 2C030000 */ cmpwi       r3, 0
/* 805848B4 4182003C */ beq-        lbl_805848f0
/* 805848B8 80010008 */ lwz         r0, 8(r1)
/* 805848BC 389E0FFF */ addi        r4, r30, 0xfff
/* 805848C0 7C002039 */ and.        r0, r0, r4
/* 805848C4 41820010 */ beq-        lbl_805848d4
/* 805848C8 38610008 */ addi        r3, r1, 8
/* 805848CC 482390A1 */ bl          findClosestCollisionEntry__5FieldFPUlUl
/* 805848D0 48000008 */ b           lbl_805848d8
lbl_805848d4:
/* 805848D4 7FA3EB78 */ mr          r3, r29
lbl_805848d8:
/* 805848D8 2C030000 */ cmpwi       r3, 0
/* 805848DC 41820014 */ beq-        lbl_805848f0
/* 805848E0 3C60809C */ lis         r3, closestCollisionEntry__5Field@ha
/* 805848E4 80633BDC */ lwz         r3, closestCollisionEntry__5Field@l(r3)
/* 805848E8 A0030004 */ lhz         r0, 4(r3)
/* 805848EC 541BC77E */ rlwinm      r27, r0, 0x18, 0x1d, 0x1f
lbl_805848f0:
/* 805848F0 7F83E378 */ mr          r3, r28
/* 805848F4 5764063E */ clrlwi      r4, r27, 0x18
/* 805848F8 4800D02D */ bl          unk_80591924
/* 805848FC 807F0000 */ lwz         r3, 0(r31)
/* 80584900 39610050 */ addi        r11, r1, 0x50
/* 80584904 80630004 */ lwz         r3, 4(r3)
/* 80584908 80030014 */ lwz         r0, 0x14(r3)
/* 8058490C 60000200 */ ori         r0, r0, 0x200
/* 80584910 90030014 */ stw         r0, 0x14(r3)
/* 80584914 4BA9CCD9 */ bl          _restgpr_27
/* 80584918 80010054 */ lwz         r0, 0x54(r1)
/* 8058491C 7C0803A6 */ mtlr        r0
/* 80584920 38210050 */ addi        r1, r1, 0x50
/* 80584924 4E800020 */ blr         