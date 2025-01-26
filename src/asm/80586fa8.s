nofralloc
/* 80586FA8 9421FF90 */ stwu        r1, -0x70(r1)
/* 80586FAC 7C0802A6 */ mflr        r0
/* 80586FB0 90010074 */ stw         r0, 0x74(r1)
/* 80586FB4 DBE10060 */ stfd        f31, 0x60(r1)
/* 80586FB8 F3E10068 */ psq_st      f31, 0x68(r1), 0, 0
/* 80586FBC DBC10050 */ stfd        f30, 0x50(r1)
/* 80586FC0 F3C10058 */ psq_st      f30, 0x58(r1), 0, 0
/* 80586FC4 39610050 */ addi        r11, r1, 0x50
/* 80586FC8 4BA9A5D1 */ bl          _savegpr_25
/* 80586FCC 3C80809C */ lis         r4, spInstance__Q26System11RaceManager@ha
/* 80586FD0 3FC0808B */ lis         r30, lbl_808b58f0@ha
/* 80586FD4 8084D730 */ lwz         r4, spInstance__Q26System11RaceManager@l(r4)
/* 80586FD8 7C7D1B78 */ mr          r29, r3
/* 80586FDC 3BDE58F0 */ addi        r30, r30, lbl_808b58f0@l
/* 80586FE0 80040038 */ lwz         r0, 0x38(r4)
/* 80586FE4 7C1C0034 */ cntlzw      r28, r0
/* 80586FE8 48009A75 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80586FEC 5460063E */ clrlwi      r0, r3, 0x18
/* 80586FF0 7C00E040 */ cmplw       r0, r28
/* 80586FF4 4082027C */ bne-        lbl_80587270
/* 80586FF8 7FA3EB78 */ mr          r3, r29
/* 80586FFC 4800967D */ bl          PlayerPointers_isGhost
/* 80587000 2C030000 */ cmpwi       r3, 0
/* 80587004 4082026C */ bne-        lbl_80587270
/* 80587008 3FE0809C */ lis         r31, lbl_809c18f8@ha
/* 8058700C 807F18F8 */ lwz         r3, lbl_809c18f8@l(r31)
/* 80587010 80030028 */ lwz         r0, 0x28(r3)
/* 80587014 540007BD */ rlwinm.     r0, r0, 0, 0x1e, 0x1e
/* 80587018 40820258 */ bne-        lbl_80587270
/* 8058701C 807D0000 */ lwz         r3, 0(r29)
/* 80587020 80830004 */ lwz         r4, 4(r3)
/* 80587024 8064000C */ lwz         r3, 0xc(r4)
/* 80587028 54600108 */ rlwinm      r0, r3, 0, 4, 4
/* 8058702C 506007BD */ rlwimi.     r0, r3, 0, 0x1e, 0x1e
/* 80587030 40820240 */ bne-        lbl_80587270
/* 80587034 80040008 */ lwz         r0, 8(r4)
/* 80587038 3B400000 */ li          r26, 0
/* 8058703C 540007FF */ clrlwi.     r0, r0, 0x1f
/* 80587040 408201E4 */ bne-        lbl_80587224
/* 80587044 7FA3EB78 */ mr          r3, r29
/* 80587048 48009D79 */ bl          getSpeedRatioCapped__Q24Kart15KartObjectProxyFv
/* 8058704C C01E0280 */ lfs         f0, 0x280(r30)
/* 80587050 FC010040 */ fcmpo       cr0, f1, f0
/* 80587054 4C411382 */ cror        cr0eq, cr0gt, cr0eq
/* 80587058 408201CC */ bne-        lbl_80587224
/* 8058705C 3B200000 */ li          r25, 0
/* 80587060 480001B0 */ b           lbl_80587210
lbl_80587064:
/* 80587064 807F18F8 */ lwz         r3, lbl_809c18f8@l(r31)
/* 80587068 5724063E */ clrlwi      r4, r25, 0x18
/* 8058706C 48009095 */ bl          PlayerHolder_getPlayer
/* 80587070 7C7B1B78 */ mr          r27, r3
/* 80587074 7FA3EB78 */ mr          r3, r29
/* 80587078 480099E5 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 8058707C 547C063E */ clrlwi      r28, r3, 0x18
/* 80587080 7F63DB78 */ mr          r3, r27
/* 80587084 480099D9 */ bl          getPlayerIdx__Q24Kart15KartObjectProxyCFv
/* 80587088 5460063E */ clrlwi      r0, r3, 0x18
/* 8058708C 7C00E040 */ cmplw       r0, r28
/* 80587090 4182017C */ beq-        lbl_8058720c
/* 80587094 7F63DB78 */ mr          r3, r27
/* 80587098 480095E1 */ bl          PlayerPointers_isGhost
/* 8058709C 2C030000 */ cmpwi       r3, 0
/* 805870A0 4082016C */ bne-        lbl_8058720c
/* 805870A4 7F63DB78 */ mr          r3, r27
/* 805870A8 48009D19 */ bl          getSpeedRatioCapped__Q24Kart15KartObjectProxyFv
/* 805870AC C01E0280 */ lfs         f0, 0x280(r30)
/* 805870B0 FC010040 */ fcmpo       cr0, f1, f0
/* 805870B4 4C411382 */ cror        cr0eq, cr0gt, cr0eq
/* 805870B8 40820154 */ bne-        lbl_8058720c
/* 805870BC 7F63DB78 */ mr          r3, r27
/* 805870C0 4800914D */ bl          getPos__Q24Kart15KartObjectProxyCFv
/* 805870C4 7C7C1B78 */ mr          r28, r3
/* 805870C8 7F63DB78 */ mr          r3, r27
/* 805870CC 480096B1 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 805870D0 C01E0284 */ lfs         f0, 0x284(r30)
/* 805870D4 C023005C */ lfs         f1, 0x5c(r3)
/* 805870D8 FC400050 */ fneg        f2, f0
/* 805870DC C01C0000 */ lfs         f0, 0(r28)
/* 805870E0 EC220072 */ fmuls       f1, f2, f1
/* 805870E4 EC00082A */ fadds       f0, f0, f1
/* 805870E8 D0010018 */ stfs        f0, 0x18(r1)
/* 805870EC C0230060 */ lfs         f1, 0x60(r3)
/* 805870F0 C01C0004 */ lfs         f0, 4(r28)
/* 805870F4 EC220072 */ fmuls       f1, f2, f1
/* 805870F8 EC00082A */ fadds       f0, f0, f1
/* 805870FC D001001C */ stfs        f0, 0x1c(r1)
/* 80587100 C0230064 */ lfs         f1, 0x64(r3)
/* 80587104 7FA3EB78 */ mr          r3, r29
/* 80587108 C01C0008 */ lfs         f0, 8(r28)
/* 8058710C EC220072 */ fmuls       f1, f2, f1
/* 80587110 EC00082A */ fadds       f0, f0, f1
/* 80587114 D0010020 */ stfs        f0, 0x20(r1)
/* 80587118 480090F5 */ bl          getPos__Q24Kart15KartObjectProxyCFv
/* 8058711C 7C7C1B78 */ mr          r28, r3
/* 80587120 7FA3EB78 */ mr          r3, r29
/* 80587124 48009929 */ bl          unk_80590a4c
/* 80587128 C05E0284 */ lfs         f2, 0x284(r30)
/* 8058712C 7F85E378 */ mr          r5, r28
/* 80587130 38610024 */ addi        r3, r1, 0x24
/* 80587134 38810008 */ addi        r4, r1, 8
/* 80587138 38C10018 */ addi        r6, r1, 0x18
/* 8058713C 4BFEA0F9 */ bl          unk_80571234
/* 80587140 2C030000 */ cmpwi       r3, 0
/* 80587144 418200C8 */ beq-        lbl_8058720c
/* 80587148 7FA3EB78 */ mr          r3, r29
/* 8058714C 480090C1 */ bl          getPos__Q24Kart15KartObjectProxyCFv
/* 80587150 7C7C1B78 */ mr          r28, r3
/* 80587154 7F63DB78 */ mr          r3, r27
/* 80587158 480090B5 */ bl          getPos__Q24Kart15KartObjectProxyCFv
/* 8058715C C0430000 */ lfs         f2, 0(r3)
/* 80587160 C01C0000 */ lfs         f0, 0(r28)
/* 80587164 C0230004 */ lfs         f1, 4(r3)
/* 80587168 ECA20028 */ fsubs       f5, f2, f0
/* 8058716C C01C0004 */ lfs         f0, 4(r28)
/* 80587170 C0430008 */ lfs         f2, 8(r3)
/* 80587174 EC810028 */ fsubs       f4, f1, f0
/* 80587178 C01C0008 */ lfs         f0, 8(r28)
/* 8058717C EC250172 */ fmuls       f1, f5, f5
/* 80587180 EC620028 */ fsubs       f3, f2, f0
/* 80587184 D0A1000C */ stfs        f5, 0xc(r1)
/* 80587188 EC040132 */ fmuls       f0, f4, f4
/* 8058718C D0810010 */ stfs        f4, 0x10(r1)
/* 80587190 EC4300F2 */ fmuls       f2, f3, f3
/* 80587194 EC01002A */ fadds       f0, f1, f0
/* 80587198 D0610014 */ stfs        f3, 0x14(r1)
/* 8058719C EC22002A */ fadds       f1, f2, f0
/* 805871A0 4BCA866D */ bl          sqrt__Q23EGG5MathfFf
/* 805871A4 FFE00890 */ fmr         f31, f1
/* 805871A8 7F63DB78 */ mr          r3, r27
/* 805871AC 480098C1 */ bl          PlayerPointers_isBike
/* 805871B0 2C030000 */ cmpwi       r3, 0
/* 805871B4 4082000C */ bne-        lbl_805871c0
/* 805871B8 C3DE0288 */ lfs         f30, 0x288(r30)
/* 805871BC 48000008 */ b           lbl_805871c4
lbl_805871c0:
/* 805871C0 C3DE028C */ lfs         f30, 0x28c(r30)
lbl_805871c4:
/* 805871C4 7F63DB78 */ mr          r3, r27
/* 805871C8 480095B5 */ bl          kartMove__Q24Kart15KartObjectProxyFv
/* 805871CC C083005C */ lfs         f4, 0x5c(r3)
/* 805871D0 EC1F07B2 */ fmuls       f0, f31, f30
/* 805871D4 C061000C */ lfs         f3, 0xc(r1)
/* 805871D8 C0430060 */ lfs         f2, 0x60(r3)
/* 805871DC C0210010 */ lfs         f1, 0x10(r1)
/* 805871E0 EC6400F2 */ fmuls       f3, f4, f3
/* 805871E4 C0830064 */ lfs         f4, 0x64(r3)
/* 805871E8 EC220072 */ fmuls       f1, f2, f1
/* 805871EC C0410014 */ lfs         f2, 0x14(r1)
/* 805871F0 EC4400B2 */ fmuls       f2, f4, f2
/* 805871F4 EC23082A */ fadds       f1, f3, f1
/* 805871F8 EC22082A */ fadds       f1, f2, f1
/* 805871FC FC010040 */ fcmpo       cr0, f1, f0
/* 80587200 4081000C */ ble-        lbl_8058720c
/* 80587204 3B400001 */ li          r26, 1
/* 80587208 4800001C */ b           lbl_80587224
lbl_8058720c:
/* 8058720C 3B390001 */ addi        r25, r25, 1
lbl_80587210:
/* 80587210 807F18F8 */ lwz         r3, lbl_809c18f8@l(r31)
/* 80587214 5724063E */ clrlwi      r4, r25, 0x18
/* 80587218 88030024 */ lbz         r0, 0x24(r3)
/* 8058721C 7C040040 */ cmplw       r4, r0
/* 80587220 4180FE44 */ blt+        lbl_80587064
lbl_80587224:
/* 80587224 2C1A0000 */ cmpwi       r26, 0
/* 80587228 4182001C */ beq-        lbl_80587244
/* 8058722C 807D0000 */ lwz         r3, 0(r29)
/* 80587230 80630004 */ lwz         r3, 4(r3)
/* 80587234 8003000C */ lwz         r0, 0xc(r3)
/* 80587238 60000001 */ ori         r0, r0, 1
/* 8058723C 9003000C */ stw         r0, 0xc(r3)
/* 80587240 48000258 */ b           lbl_80587498
lbl_80587244:
/* 80587244 38000000 */ li          r0, 0
/* 80587248 901D00EC */ stw         r0, 0xec(r29)
/* 8058724C 3C608089 */ lis         r3, lbl_80891a04@ha
/* 80587250 809D0000 */ lwz         r4, 0(r29)
/* 80587254 C0031A04 */ lfs         f0, lbl_80891a04@l(r3)
/* 80587258 80640004 */ lwz         r3, 4(r4)
/* 8058725C 8003000C */ lwz         r0, 0xc(r3)
/* 80587260 5400003C */ rlwinm      r0, r0, 0, 0, 0x1e
/* 80587264 9003000C */ stw         r0, 0xc(r3)
/* 80587268 D01D00F0 */ stfs        f0, 0xf0(r29)
/* 8058726C 4800022C */ b           lbl_80587498
lbl_80587270:
/* 80587270 807D0000 */ lwz         r3, 0(r29)
/* 80587274 80630004 */ lwz         r3, 4(r3)
/* 80587278 8063000C */ lwz         r3, 0xc(r3)
/* 8058727C 546007FF */ clrlwi.     r0, r3, 0x1f
/* 80587280 41820170 */ beq-        lbl_805873f0
/* 80587284 C03D00F0 */ lfs         f1, 0xf0(r29)
/* 80587288 C01E0294 */ lfs         f0, 0x294(r30)
/* 8058728C EC01002A */ fadds       f0, f1, f0
/* 80587290 D01D00F0 */ stfs        f0, 0xf0(r29)
/* 80587294 C03E0298 */ lfs         f1, 0x298(r30)
/* 80587298 FC010040 */ fcmpo       cr0, f1, f0
/* 8058729C 40800008 */ bge-        lbl_805872a4
/* 805872A0 D03D00F0 */ stfs        f1, 0xf0(r29)
lbl_805872a4:
/* 805872A4 7FA3EB78 */ mr          r3, r29
/* 805872A8 480094F9 */ bl          unk_805907a0
/* 805872AC 482DE309 */ bl          unk_808655b4
/* 805872B0 7FA3EB78 */ mr          r3, r29
/* 805872B4 480094E1 */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 805872B8 81830000 */ lwz         r12, 0(r3)
/* 805872BC 3C808089 */ lis         r4, lbl_80891a00@ha
/* 805872C0 C0241A00 */ lfs         f1, lbl_80891a00@l(r4)
/* 805872C4 388001A6 */ li          r4, 0x1a6
/* 805872C8 818C00E8 */ lwz         r12, 0xe8(r12)
/* 805872CC 7D8903A6 */ mtctr       r12
/* 805872D0 4E800421 */ bctrl       
/* 805872D4 807D00EC */ lwz         r3, 0xec(r29)
/* 805872D8 38630001 */ addi        r3, r3, 1
/* 805872DC 907D00EC */ stw         r3, 0xec(r29)
/* 805872E0 A81E0290 */ lha         r0, 0x290(r30)
/* 805872E4 7C030040 */ cmplw       r3, r0
/* 805872E8 418001B0 */ blt-        lbl_80587498
/* 805872EC 80FD0000 */ lwz         r7, 0(r29)
/* 805872F0 3C60080C */ lis         r3, 0x80c
/* 805872F4 38030100 */ addi        r0, r3, 0x100
/* 805872F8 38800001 */ li          r4, 1
/* 805872FC 81070004 */ lwz         r8, 4(r7)
/* 80587300 38A00001 */ li          r5, 1
/* 80587304 38C00001 */ li          r6, 1
/* 80587308 8068000C */ lwz         r3, 0xc(r8)
/* 8058730C 7C600039 */ and.        r0, r3, r0
/* 80587310 40820014 */ bne-        lbl_80587324
/* 80587314 80080004 */ lwz         r0, 4(r8)
/* 80587318 540006F7 */ rlwinm.     r0, r0, 0, 0x1b, 0x1b
/* 8058731C 40820008 */ bne-        lbl_80587324
/* 80587320 38C00000 */ li          r6, 0
lbl_80587324:
/* 80587324 2C060000 */ cmpwi       r6, 0
/* 80587328 40820014 */ bne-        lbl_8058733c
/* 8058732C 80080014 */ lwz         r0, 0x14(r8)
/* 80587330 54000631 */ rlwinm.     r0, r0, 0, 0x18, 0x18
/* 80587334 40820008 */ bne-        lbl_8058733c
/* 80587338 38A00000 */ li          r5, 0
lbl_8058733c:
/* 8058733C 2C050000 */ cmpwi       r5, 0
/* 80587340 40820014 */ bne-        lbl_80587354
/* 80587344 80080008 */ lwz         r0, 8(r8)
/* 80587348 540007FF */ clrlwi.     r0, r0, 0x1f
/* 8058734C 40820008 */ bne-        lbl_80587354
/* 80587350 38800000 */ li          r4, 0
lbl_80587354:
/* 80587354 2C040000 */ cmpwi       r4, 0
/* 80587358 40820140 */ bne-        lbl_80587498
/* 8058735C 80E70004 */ lwz         r7, 4(r7)
/* 80587360 3C608089 */ lis         r3, lbl_80891a04@ha
/* 80587364 C0231A04 */ lfs         f1, lbl_80891a04@l(r3)
/* 80587368 38000000 */ li          r0, 0
/* 8058736C 80C7000C */ lwz         r6, 0xc(r7)
/* 80587370 7FA3EB78 */ mr          r3, r29
/* 80587374 38800003 */ li          r4, 3
/* 80587378 38A00001 */ li          r5, 1
/* 8058737C 54C6003C */ rlwinm      r6, r6, 0, 0, 0x1e
/* 80587380 90C7000C */ stw         r6, 0xc(r7)
/* 80587384 80DD0000 */ lwz         r6, 0(r29)
/* 80587388 80E60004 */ lwz         r7, 4(r6)
/* 8058738C 80C7000C */ lwz         r6, 0xc(r7)
/* 80587390 60C60002 */ ori         r6, r6, 2
/* 80587394 90C7000C */ stw         r6, 0xc(r7)
/* 80587398 901D00EC */ stw         r0, 0xec(r29)
/* 8058739C C01E029C */ lfs         f0, 0x29c(r30)
/* 805873A0 D01D00F0 */ stfs        f0, 0xf0(r29)
/* 805873A4 48009079 */ bl          unk_8059041c
/* 805873A8 7FA3EB78 */ mr          r3, r29
/* 805873AC 38800006 */ li          r4, 6
/* 805873B0 48009401 */ bl          unk_805907b0
/* 805873B4 3C60809C */ lis         r3, spInstance__Q26System10RaceConfig@ha
/* 805873B8 3C80809C */ lis         r4, spInstance__Q26System11RaceManager@ha
/* 805873BC 80A3D728 */ lwz         r5, spInstance__Q26System10RaceConfig@l(r3)
/* 805873C0 8064D730 */ lwz         r3, spInstance__Q26System11RaceManager@l(r4)
/* 805873C4 80050B70 */ lwz         r0, 0xb70(r5)
/* 805873C8 2C000004 */ cmpwi       r0, 4
/* 805873CC 408200CC */ bne-        lbl_80587498
/* 805873D0 A0050B9E */ lhz         r0, 0xb9e(r5)
/* 805873D4 2C00000D */ cmpwi       r0, 0xd
/* 805873D8 408200C0 */ bne-        lbl_80587498
/* 805873DC 80830010 */ lwz         r4, 0x10(r3)
/* 805873E0 80640008 */ lwz         r3, 8(r4)
/* 805873E4 38030001 */ addi        r0, r3, 1
/* 805873E8 90040008 */ stw         r0, 8(r4)
/* 805873EC 480000AC */ b           lbl_80587498
lbl_805873f0:
/* 805873F0 546007BD */ rlwinm.     r0, r3, 0, 0x1e, 0x1e
/* 805873F4 4182001C */ beq-        lbl_80587410
/* 805873F8 807D00EC */ lwz         r3, 0xec(r29)
/* 805873FC 38630001 */ addi        r3, r3, 1
/* 80587400 907D00EC */ stw         r3, 0xec(r29)
/* 80587404 A81E02A0 */ lha         r0, 0x2a0(r30)
/* 80587408 7C030040 */ cmplw       r3, r0
/* 8058740C 4181002C */ bgt-        lbl_80587438
lbl_80587410:
/* 80587410 7FA3EB78 */ mr          r3, r29
/* 80587414 480099AD */ bl          getSpeedRatioCapped__Q24Kart15KartObjectProxyFv
/* 80587418 C01E0280 */ lfs         f0, 0x280(r30)
/* 8058741C FC010040 */ fcmpo       cr0, f1, f0
/* 80587420 41800018 */ blt-        lbl_80587438
/* 80587424 807D0000 */ lwz         r3, 0(r29)
/* 80587428 80630004 */ lwz         r3, 4(r3)
/* 8058742C 80030008 */ lwz         r0, 8(r3)
/* 80587430 540007FF */ clrlwi.     r0, r0, 0x1f
/* 80587434 4182002C */ beq-        lbl_80587460
lbl_80587438:
/* 80587438 3C608089 */ lis         r3, lbl_80891a04@ha
/* 8058743C 38000000 */ li          r0, 0
/* 80587440 C0031A04 */ lfs         f0, lbl_80891a04@l(r3)
/* 80587444 901D00EC */ stw         r0, 0xec(r29)
/* 80587448 807D0000 */ lwz         r3, 0(r29)
/* 8058744C D01D00F0 */ stfs        f0, 0xf0(r29)
/* 80587450 80630004 */ lwz         r3, 4(r3)
/* 80587454 8003000C */ lwz         r0, 0xc(r3)
/* 80587458 540007FA */ rlwinm      r0, r0, 0, 0x1f, 0x1d
/* 8058745C 9003000C */ stw         r0, 0xc(r3)
lbl_80587460:
/* 80587460 807D0000 */ lwz         r3, 0(r29)
/* 80587464 80630004 */ lwz         r3, 4(r3)
/* 80587468 8003000C */ lwz         r0, 0xc(r3)
/* 8058746C 540007BD */ rlwinm.     r0, r0, 0, 0x1e, 0x1e
/* 80587470 41820028 */ beq-        lbl_80587498
/* 80587474 7FA3EB78 */ mr          r3, r29
/* 80587478 4800931D */ bl          kartSnd__Q24Kart15KartObjectProxyFv
/* 8058747C 81830000 */ lwz         r12, 0(r3)
/* 80587480 3C808089 */ lis         r4, lbl_80891a00@ha
/* 80587484 C0241A00 */ lfs         f1, lbl_80891a00@l(r4)
/* 80587488 388001A7 */ li          r4, 0x1a7
/* 8058748C 818C00E8 */ lwz         r12, 0xe8(r12)
/* 80587490 7D8903A6 */ mtctr       r12
/* 80587494 4E800421 */ bctrl       
lbl_80587498:
/* 80587498 E3E10068 */ psq_l       f31, 0x68(r1), 0, 0
/* 8058749C CBE10060 */ lfd         f31, 0x60(r1)
/* 805874A0 E3C10058 */ psq_l       f30, 0x58(r1), 0, 0
/* 805874A4 39610050 */ addi        r11, r1, 0x50
/* 805874A8 CBC10050 */ lfd         f30, 0x50(r1)
/* 805874AC 4BA9A139 */ bl          _restgpr_25
/* 805874B0 80010074 */ lwz         r0, 0x74(r1)
/* 805874B4 7C0803A6 */ mtlr        r0
/* 805874B8 38210070 */ addi        r1, r1, 0x70
/* 805874BC 4E800020 */ blr         