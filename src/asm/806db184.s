nofralloc
/* 806DB184 9421FFD0 */ stwu        r1, -0x30(r1)
/* 806DB188 7C0802A6 */ mflr        r0
/* 806DB18C 3CA0808A */ lis         r5, lbl_808a03dc@ha
/* 806DB190 90010034 */ stw         r0, 0x34(r1)
/* 806DB194 38A503DC */ addi        r5, r5, lbl_808a03dc@l
/* 806DB198 93E1002C */ stw         r31, 0x2c(r1)
/* 806DB19C 93C10028 */ stw         r30, 0x28(r1)
/* 806DB1A0 93A10024 */ stw         r29, 0x24(r1)
/* 806DB1A4 7C7D1B78 */ mr          r29, r3
/* 806DB1A8 93810020 */ stw         r28, 0x20(r1)
/* 806DB1AC 48143E41 */ bl          unk_8081efec
/* 806DB1B0 3D00808C */ lis         r8, lbl_808c5e10@ha
/* 806DB1B4 3BC00000 */ li          r30, 0
/* 806DB1B8 39085E10 */ addi        r8, r8, lbl_808c5e10@l
/* 806DB1BC 3C804330 */ lis         r4, 0x4330
/* 806DB1C0 38E800EC */ addi        r7, r8, 0xec
/* 806DB1C4 3800FFFF */ li          r0, -1
/* 806DB1C8 901D00B8 */ stw         r0, 0xb8(r29)
/* 806DB1CC 3CA0808A */ lis         r5, lbl_808a03a0@ha
/* 806DB1D0 80DD00A0 */ lwz         r6, 0xa0(r29)
/* 806DB1D4 3C60808A */ lis         r3, lbl_808a039c@ha
/* 806DB1D8 B3DD00B4 */ sth         r30, 0xb4(r29)
/* 806DB1DC 3F80808C */ lis         r28, lbl_808c5da0@ha
/* 806DB1E0 C84503A0 */ lfd         f2, lbl_808a03a0@l(r5)
/* 806DB1E4 3BFC5DA0 */ addi        r31, r28, lbl_808c5da0@l
/* 806DB1E8 93DD00BC */ stw         r30, 0xbc(r29)
/* 806DB1EC 38000004 */ li          r0, 4
/* 806DB1F0 C023039C */ lfs         f1, lbl_808a039c@l(r3)
/* 806DB1F4 38600008 */ li          r3, 8
/* 806DB1F8 B3DD00C0 */ sth         r30, 0xc0(r29)
/* 806DB1FC 93DD00C8 */ stw         r30, 0xc8(r29)
/* 806DB200 93DD00CC */ stw         r30, 0xcc(r29)
/* 806DB204 911D0000 */ stw         r8, 0(r29)
/* 806DB208 90FD00B0 */ stw         r7, 0xb0(r29)
/* 806DB20C 80A60000 */ lwz         r5, 0(r6)
/* 806DB210 90810008 */ stw         r4, 8(r1)
/* 806DB214 A8A5002A */ lha         r5, 0x2a(r5)
/* 806DB218 B0BD00D0 */ sth         r5, 0xd0(r29)
/* 806DB21C 80A60000 */ lwz         r5, 0(r6)
/* 806DB220 90810010 */ stw         r4, 0x10(r1)
/* 806DB224 A885002E */ lha         r4, 0x2e(r5)
/* 806DB228 6C848000 */ xoris       r4, r4, 0x8000
/* 806DB22C 9081000C */ stw         r4, 0xc(r1)
/* 806DB230 C8010008 */ lfd         f0, 8(r1)
/* 806DB234 EC001028 */ fsubs       f0, f0, f2
/* 806DB238 EC000824 */ fdivs       f0, f0, f1
/* 806DB23C D01D00D8 */ stfs        f0, 0xd8(r29)
/* 806DB240 80860000 */ lwz         r4, 0(r6)
/* 806DB244 A884002C */ lha         r4, 0x2c(r4)
/* 806DB248 6C848000 */ xoris       r4, r4, 0x8000
/* 806DB24C 90810014 */ stw         r4, 0x14(r1)
/* 806DB250 C8010010 */ lfd         f0, 0x10(r1)
/* 806DB254 93BD00CC */ stw         r29, 0xcc(r29)
/* 806DB258 EC001028 */ fsubs       f0, f0, f2
/* 806DB25C 93FD00C8 */ stw         r31, 0xc8(r29)
/* 806DB260 EC000824 */ fdivs       f0, f0, f1
/* 806DB264 B01D00C0 */ sth         r0, 0xc0(r29)
/* 806DB268 D01D00D4 */ stfs        f0, 0xd4(r29)
/* 806DB26C 4BB4EB85 */ bl          __nwa__FUl
/* 806DB270 907D00C4 */ stw         r3, 0xc4(r29)
/* 806DB274 3C800001 */ lis         r4, 0x1
/* 806DB278 38A4FFFF */ addi        r5, r4, -1
/* 806DB27C 39000001 */ li          r8, 1
/* 806DB280 B0A30000 */ sth         r5, 0(r3)
/* 806DB284 38E00002 */ li          r7, 2
/* 806DB288 38C00003 */ li          r6, 3
/* 806DB28C 3C60809C */ lis         r3, lbl_809c4330@ha
/* 806DB290 809D00C4 */ lwz         r4, 0xc4(r29)
/* 806DB294 38000000 */ li          r0, 0
/* 806DB298 B0A40002 */ sth         r5, 2(r4)
/* 806DB29C 809D00C4 */ lwz         r4, 0xc4(r29)
/* 806DB2A0 B0A40004 */ sth         r5, 4(r4)
/* 806DB2A4 809D00C4 */ lwz         r4, 0xc4(r29)
/* 806DB2A8 B0A40006 */ sth         r5, 6(r4)
/* 806DB2AC A09C5DA0 */ lhz         r4, lbl_808c5da0@l(r28)
/* 806DB2B0 80BD00C4 */ lwz         r5, 0xc4(r29)
/* 806DB2B4 5484083C */ slwi        r4, r4, 1
/* 806DB2B8 7FC5232E */ sthx        r30, r5, r4
/* 806DB2BC A09F001C */ lhz         r4, 0x1c(r31)
/* 806DB2C0 80BD00C4 */ lwz         r5, 0xc4(r29)
/* 806DB2C4 5484083C */ slwi        r4, r4, 1
/* 806DB2C8 7D05232E */ sthx        r8, r5, r4
/* 806DB2CC A09F0038 */ lhz         r4, 0x38(r31)
/* 806DB2D0 80BD00C4 */ lwz         r5, 0xc4(r29)
/* 806DB2D4 5484083C */ slwi        r4, r4, 1
/* 806DB2D8 7CE5232E */ sthx        r7, r5, r4
/* 806DB2DC A09F0054 */ lhz         r4, 0x54(r31)
/* 806DB2E0 80BD00C4 */ lwz         r5, 0xc4(r29)
/* 806DB2E4 5484083C */ slwi        r4, r4, 1
/* 806DB2E8 7CC5232E */ sthx        r6, r5, r4
/* 806DB2EC 80634330 */ lwz         r3, lbl_809c4330@l(r3)
/* 806DB2F0 88630055 */ lbz         r3, 0x55(r3)
/* 806DB2F4 2C030000 */ cmpwi       r3, 0
/* 806DB2F8 4082001C */ bne-        lbl_806db314
/* 806DB2FC 3C60809C */ lis         r3, spInstance__Q26System10RaceConfig@ha
/* 806DB300 8063D728 */ lwz         r3, spInstance__Q26System10RaceConfig@l(r3)
/* 806DB304 80630B80 */ lwz         r3, 0xb80(r3)
/* 806DB308 2C030003 */ cmpwi       r3, 3
/* 806DB30C 41820008 */ beq-        lbl_806db314
/* 806DB310 38000001 */ li          r0, 1
lbl_806db314:
/* 806DB314 981D0104 */ stb         r0, 0x104(r29)
/* 806DB318 7FA3EB78 */ mr          r3, r29
/* 806DB31C 83E1002C */ lwz         r31, 0x2c(r1)
/* 806DB320 83C10028 */ lwz         r30, 0x28(r1)
/* 806DB324 83A10024 */ lwz         r29, 0x24(r1)
/* 806DB328 83810020 */ lwz         r28, 0x20(r1)
/* 806DB32C 80010034 */ lwz         r0, 0x34(r1)
/* 806DB330 7C0803A6 */ mtlr        r0
/* 806DB334 38210030 */ addi        r1, r1, 0x30
/* 806DB338 4E800020 */ blr         