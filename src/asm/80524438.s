nofralloc
/* 80524438 9421FFF0 */ stwu        r1, -0x10(r1)
/* 8052443C 7C0802A6 */ mflr        r0
/* 80524440 28050002 */ cmplwi      r5, 2
/* 80524444 90010014 */ stw         r0, 0x14(r1)
/* 80524448 38000003 */ li          r0, 3
/* 8052444C 93E1000C */ stw         r31, 0xc(r1)
/* 80524450 7C9F2378 */ mr          r31, r4
/* 80524454 93C10008 */ stw         r30, 8(r1)
/* 80524458 7C7E1B78 */ mr          r30, r3
/* 8052445C 40810014 */ ble-        lbl_80524470
/* 80524460 2C050003 */ cmpwi       r5, 3
/* 80524464 40820010 */ bne-        lbl_80524474
/* 80524468 38000001 */ li          r0, 1
/* 8052446C 48000008 */ b           lbl_80524474
lbl_80524470:
/* 80524470 38000000 */ li          r0, 0
lbl_80524474:
/* 80524474 2C000001 */ cmpwi       r0, 1
/* 80524478 41820010 */ beq-        lbl_80524488
/* 8052447C 2C000000 */ cmpwi       r0, 0
/* 80524480 4182002C */ beq-        lbl_805244ac
/* 80524484 48000048 */ b           lbl_805244cc
lbl_80524488:
/* 80524488 1C8400EC */ mulli       r4, r4, 0xec
/* 8052448C 38A00000 */ li          r5, 0
/* 80524490 7C632214 */ add         r3, r3, r4
/* 80524494 1C0600B0 */ mulli       r0, r6, 0xb0
/* 80524498 38630004 */ addi        r3, r3, 4
/* 8052449C 7C9E0214 */ add         r4, r30, r0
/* 805244A0 38843BA0 */ addi        r4, r4, 0x3ba0
/* 805244A4 4BFFD0B1 */ bl          setController__Q26System4KPadFPQ26System14KPadControllerPQ26System14KPadController
/* 805244A8 48000024 */ b           lbl_805244cc
lbl_805244ac:
/* 805244AC 1C8400EC */ mulli       r4, r4, 0xec
/* 805244B0 38A00000 */ li          r5, 0
/* 805244B4 7C632214 */ add         r3, r3, r4
/* 805244B8 1C060920 */ mulli       r0, r6, 0x920
/* 805244BC 38630004 */ addi        r3, r3, 4
/* 805244C0 7C9E0214 */ add         r4, r30, r0
/* 805244C4 38841720 */ addi        r4, r4, 0x1720
/* 805244C8 4BFFD08D */ bl          setController__Q26System4KPadFPQ26System14KPadControllerPQ26System14KPadController
lbl_805244cc:
/* 805244CC 1C1F00EC */ mulli       r0, r31, 0xec
/* 805244D0 7C9E0214 */ add         r4, r30, r0
/* 805244D4 80040008 */ lwz         r0, 8(r4)
/* 805244D8 386400CC */ addi        r3, r4, 0xcc
/* 805244DC 90040010 */ stw         r0, 0x10(r4)
/* 805244E0 80840008 */ lwz         r4, 8(r4)
/* 805244E4 4BFFDE81 */ bl          init__Q26System18KPadControllerInfoFPQ26System14KPadController
/* 805244E8 80010014 */ lwz         r0, 0x14(r1)
/* 805244EC 83E1000C */ lwz         r31, 0xc(r1)
/* 805244F0 83C10008 */ lwz         r30, 8(r1)
/* 805244F4 7C0803A6 */ mtlr        r0
/* 805244F8 38210010 */ addi        r1, r1, 0x10
/* 805244FC 4E800020 */ blr         