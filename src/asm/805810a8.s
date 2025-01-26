nofralloc
/* 805810A8 9421FFF0 */ stwu        r1, -0x10(r1)
/* 805810AC 7C0802A6 */ mflr        r0
/* 805810B0 90010014 */ stw         r0, 0x14(r1)
/* 805810B4 93E1000C */ stw         r31, 0xc(r1)
/* 805810B8 7C7F1B78 */ mr          r31, r3
/* 805810BC 93C10008 */ stw         r30, 8(r1)
/* 805810C0 A8830152 */ lha         r4, 0x152(r3)
/* 805810C4 3804FFFF */ addi        r0, r4, -1
/* 805810C8 B0030152 */ sth         r0, 0x152(r3)
/* 805810CC 7C000735 */ extsh.      r0, r0
/* 805810D0 40800014 */ bge-        lbl_805810e4
/* 805810D4 38000000 */ li          r0, 0
/* 805810D8 B0030152 */ sth         r0, 0x152(r3)
/* 805810DC 38000001 */ li          r0, 1
/* 805810E0 48000008 */ b           lbl_805810e8
lbl_805810e4:
/* 805810E4 38000000 */ li          r0, 0
lbl_805810e8:
/* 805810E8 2C000000 */ cmpwi       r0, 0
/* 805810EC 4182006C */ beq-        lbl_80581158
/* 805810F0 7FE3FB78 */ mr          r3, r31
/* 805810F4 4800F301 */ bl          KartAccessor_getInput
/* 805810F8 8803003A */ lbz         r0, 0x3a(r3)
/* 805810FC 2C000001 */ cmpwi       r0, 1
/* 80581100 40820058 */ bne-        lbl_80581158
/* 80581104 7FE3FB78 */ mr          r3, r31
/* 80581108 4800FC9D */ bl          unk_80590da4
/* 8058110C 2C03000B */ cmpwi       r3, 0xb
/* 80581110 41820014 */ beq-        lbl_80581124
/* 80581114 3C60808B */ lis         r3, lbl_808b5aba@ha
/* 80581118 A8035ABA */ lha         r0, lbl_808b5aba@l(r3)
/* 8058111C B01F0152 */ sth         r0, 0x152(r31)
/* 80581120 48000038 */ b           lbl_80581158
lbl_80581124:
/* 80581124 7FE3FB78 */ mr          r3, r31
/* 80581128 4800FBF9 */ bl          kartAction__Q24Kart15KartObjectProxyFv
/* 8058112C 3C80808B */ lis         r4, lbl_808b5abc@ha
/* 80581130 806300C4 */ lwz         r3, 0xc4(r3)
/* 80581134 A8045ABC */ lha         r0, lbl_808b5abc@l(r4)
/* 80581138 7C030040 */ cmplw       r3, r0
/* 8058113C 4080001C */ bge-        lbl_80581158
/* 80581140 7FE3FB78 */ mr          r3, r31
/* 80581144 4800FBDD */ bl          kartAction__Q24Kart15KartObjectProxyFv
/* 80581148 8183000C */ lwz         r12, 0xc(r3)
/* 8058114C 818C0010 */ lwz         r12, 0x10(r12)
/* 80581150 7D8903A6 */ mtctr       r12
/* 80581154 4E800421 */ bctrl       
lbl_80581158:
/* 80581158 7FE3FB78 */ mr          r3, r31
/* 8058115C 4800FBC5 */ bl          kartAction__Q24Kart15KartObjectProxyFv
/* 80581160 4BFE63ED */ bl          unk_8056754c
/* 80581164 2C030000 */ cmpwi       r3, 0
/* 80581168 41820044 */ beq-        lbl_805811ac
/* 8058116C 7FE3FB78 */ mr          r3, r31
/* 80581170 4800F8ED */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80581174 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 80581178 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 8058117C 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 80581180 80630068 */ lwz         r3, 0x68(r3)
/* 80581184 7C63002E */ lwzx        r3, r3, r0
/* 80581188 48129041 */ bl          unk_806aa1c8
/* 8058118C 807F0000 */ lwz         r3, 0(r31)
/* 80581190 80630004 */ lwz         r3, 4(r3)
/* 80581194 80030004 */ lwz         r0, 4(r3)
/* 80581198 5400035B */ rlwinm.     r0, r0, 0, 0xd, 0xd
/* 8058119C 41820010 */ beq-        lbl_805811ac
/* 805811A0 7FE3FB78 */ mr          r3, r31
/* 805811A4 3880000B */ li          r4, 0xb
/* 805811A8 4800FBB5 */ bl          unk_80590d5c
lbl_805811ac:
/* 805811AC 7FE3FB78 */ mr          r3, r31
/* 805811B0 4800FBF5 */ bl          unk_80590da4
/* 805811B4 2C03000B */ cmpwi       r3, 0xb
/* 805811B8 408201CC */ bne-        lbl_80581384
/* 805811BC 7FE3FB78 */ mr          r3, r31
/* 805811C0 4800FB61 */ bl          kartAction__Q24Kart15KartObjectProxyFv
/* 805811C4 3C80808B */ lis         r4, lbl_808b5abc@ha
/* 805811C8 800300C4 */ lwz         r0, 0xc4(r3)
/* 805811CC A8645ABC */ lha         r3, lbl_808b5abc@l(r4)
/* 805811D0 7C030040 */ cmplw       r3, r0
/* 805811D4 408201B0 */ bne-        lbl_80581384
/* 805811D8 7FE3FB78 */ mr          r3, r31
/* 805811DC 4800FB45 */ bl          kartAction__Q24Kart15KartObjectProxyFv
/* 805811E0 A00300CC */ lhz         r0, 0xcc(r3)
/* 805811E4 540007BD */ rlwinm.     r0, r0, 0, 0x1e, 0x1e
/* 805811E8 40820168 */ bne-        lbl_80581350
/* 805811EC 7FE3FB78 */ mr          r3, r31
/* 805811F0 4800F86D */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 805811F4 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 805811F8 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 805811FC 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 80581200 80630068 */ lwz         r3, 0x68(r3)
/* 80581204 7C63002E */ lwzx        r3, r3, r0
/* 80581208 481292C5 */ bl          unk_806aa4cc
/* 8058120C 3C60809C */ lis         r3, spInstance__Q26System10RaceConfig@ha
/* 80581210 38800000 */ li          r4, 0
/* 80581214 80A3D728 */ lwz         r5, spInstance__Q26System10RaceConfig@l(r3)
/* 80581218 80650B70 */ lwz         r3, 0xb70(r5)
/* 8058121C 3863FFFD */ addi        r3, r3, -3
/* 80581220 28030007 */ cmplwi      r3, 7
/* 80581224 41810018 */ bgt-        lbl_8058123c
/* 80581228 38000001 */ li          r0, 1
/* 8058122C 7C001830 */ slw         r0, r0, r3
/* 80581230 700000C1 */ andi.       r0, r0, 0xc1
/* 80581234 41820008 */ beq-        lbl_8058123c
/* 80581238 38800001 */ li          r4, 1
lbl_8058123c:
/* 8058123C 2C040000 */ cmpwi       r4, 0
/* 80581240 41820130 */ beq-        lbl_80581370
/* 80581244 807F0000 */ lwz         r3, 0(r31)
/* 80581248 80630004 */ lwz         r3, 4(r3)
/* 8058124C 80030014 */ lwz         r0, 0x14(r3)
/* 80581250 54000739 */ rlwinm.     r0, r0, 0, 0x1c, 0x1c
/* 80581254 4082011C */ bne-        lbl_80581370
/* 80581258 80050B78 */ lwz         r0, 0xb78(r5)
/* 8058125C 2C000001 */ cmpwi       r0, 1
/* 80581260 40820110 */ bne-        lbl_80581370
/* 80581264 7FE3FB78 */ mr          r3, r31
/* 80581268 4800F7F5 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8058126C 7C7E1B78 */ mr          r30, r3
/* 80581270 7FE3FB78 */ mr          r3, r31
/* 80581274 4800F7E9 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80581278 3C80809C */ lis         r4, spInstance__Q26System10RaceConfig@ha
/* 8058127C 3CA0809C */ lis         r5, spInstance__Q26System11RaceManager@ha
/* 80581280 8084D728 */ lwz         r4, spInstance__Q26System10RaceConfig@l(r4)
/* 80581284 7C601B78 */ mr          r0, r3
/* 80581288 8065D730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r5)
/* 8058128C 80A40B70 */ lwz         r5, 0xb70(r4)
/* 80581290 2C050003 */ cmpwi       r5, 3
/* 80581294 40820058 */ bne-        lbl_805812ec
/* 80581298 80840B78 */ lwz         r4, 0xb78(r4)
/* 8058129C 2C040000 */ cmpwi       r4, 0
/* 805812A0 40820024 */ bne-        lbl_805812c4
/* 805812A4 80630010 */ lwz         r3, 0x10(r3)
/* 805812A8 5404063E */ clrlwi      r4, r0, 0x18
/* 805812AC 57C5063E */ clrlwi      r5, r30, 0x18
/* 805812B0 81830000 */ lwz         r12, 0(r3)
/* 805812B4 818C002C */ lwz         r12, 0x2c(r12)
/* 805812B8 7D8903A6 */ mtctr       r12
/* 805812BC 4E800421 */ bctrl       
/* 805812C0 480000B0 */ b           lbl_80581370
lbl_805812c4:
/* 805812C4 2C040001 */ cmpwi       r4, 1
/* 805812C8 408200A8 */ bne-        lbl_80581370
/* 805812CC 80630010 */ lwz         r3, 0x10(r3)
/* 805812D0 5404063E */ clrlwi      r4, r0, 0x18
/* 805812D4 57C5063E */ clrlwi      r5, r30, 0x18
/* 805812D8 81830000 */ lwz         r12, 0(r3)
/* 805812DC 818C002C */ lwz         r12, 0x2c(r12)
/* 805812E0 7D8903A6 */ mtctr       r12
/* 805812E4 4E800421 */ bctrl       
/* 805812E8 48000088 */ b           lbl_80581370
lbl_805812ec:
/* 805812EC 2C050009 */ cmpwi       r5, 9
/* 805812F0 4182000C */ beq-        lbl_805812fc
/* 805812F4 2C05000A */ cmpwi       r5, 0xa
/* 805812F8 40820078 */ bne-        lbl_80581370
lbl_805812fc:
/* 805812FC 80840B78 */ lwz         r4, 0xb78(r4)
/* 80581300 2C040000 */ cmpwi       r4, 0
/* 80581304 40820024 */ bne-        lbl_80581328
/* 80581308 80630010 */ lwz         r3, 0x10(r3)
/* 8058130C 5404063E */ clrlwi      r4, r0, 0x18
/* 80581310 57C5063E */ clrlwi      r5, r30, 0x18
/* 80581314 81830000 */ lwz         r12, 0(r3)
/* 80581318 818C002C */ lwz         r12, 0x2c(r12)
/* 8058131C 7D8903A6 */ mtctr       r12
/* 80581320 4E800421 */ bctrl       
/* 80581324 4800004C */ b           lbl_80581370
lbl_80581328:
/* 80581328 2C040001 */ cmpwi       r4, 1
/* 8058132C 40820044 */ bne-        lbl_80581370
/* 80581330 80630010 */ lwz         r3, 0x10(r3)
/* 80581334 5404063E */ clrlwi      r4, r0, 0x18
/* 80581338 57C5063E */ clrlwi      r5, r30, 0x18
/* 8058133C 81830000 */ lwz         r12, 0(r3)
/* 80581340 818C002C */ lwz         r12, 0x2c(r12)
/* 80581344 7D8903A6 */ mtctr       r12
/* 80581348 4E800421 */ bctrl       
/* 8058134C 48000024 */ b           lbl_80581370
lbl_80581350:
/* 80581350 7FE3FB78 */ mr          r3, r31
/* 80581354 4800F709 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80581358 3C80809C */ lis         r4, lbl_809c21d0@ha
/* 8058135C 546015BA */ rlwinm      r0, r3, 2, 0x16, 0x1d
/* 80581360 806421D0 */ lwz         r3, lbl_809c21d0@l(r4)
/* 80581364 80630068 */ lwz         r3, 0x68(r3)
/* 80581368 7C63002E */ lwzx        r3, r3, r0
/* 8058136C 4812961D */ bl          unk_806aa988
lbl_80581370:
/* 80581370 7FE3FB78 */ mr          r3, r31
/* 80581374 4801056D */ bl          unk_805918e0
/* 80581378 38000001 */ li          r0, 1
/* 8058137C 981F0154 */ stb         r0, 0x154(r31)
/* 80581380 4800000C */ b           lbl_8058138c
lbl_80581384:
/* 80581384 38000000 */ li          r0, 0
/* 80581388 981F0154 */ stb         r0, 0x154(r31)
lbl_8058138c:
/* 8058138C 80010014 */ lwz         r0, 0x14(r1)
/* 80581390 83E1000C */ lwz         r31, 0xc(r1)
/* 80581394 83C10008 */ lwz         r30, 8(r1)
/* 80581398 7C0803A6 */ mtlr        r0
/* 8058139C 38210010 */ addi        r1, r1, 0x10
/* 805813A0 4E800020 */ blr         