nofralloc
/* 80589480 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80589484 7C0802A6 */ mflr        r0
/* 80589488 3C808089 */ lis         r4, lbl_80891a00@ha
/* 8058948C 38E00000 */ li          r7, 0
/* 80589490 90010014 */ stw         r0, 0x14(r1)
/* 80589494 38000001 */ li          r0, 1
/* 80589498 C0041A00 */ lfs         f0, lbl_80891a00@l(r4)
/* 8058949C 3CC0808B */ lis         r6, lbl_808b5ac8@ha
/* 805894A0 93E1000C */ stw         r31, 0xc(r1)
/* 805894A4 7C7F1B78 */ mr          r31, r3
/* 805894A8 80A30000 */ lwz         r5, 0(r3)
/* 805894AC 81050004 */ lwz         r8, 4(r5)
/* 805894B0 3CA0808B */ lis         r5, lbl_808b5aec@ha
/* 805894B4 80880004 */ lwz         r4, 4(r8)
/* 805894B8 64842000 */ oris        r4, r4, 0x2000
/* 805894BC 90880004 */ stw         r4, 4(r8)
/* 805894C0 90E302A8 */ stw         r7, 0x2a8(r3)
/* 805894C4 980302AC */ stb         r0, 0x2ac(r3)
/* 805894C8 C0265AC8 */ lfs         f1, lbl_808b5ac8@l(r6)
/* 805894CC D02302A4 */ stfs        f1, 0x2a4(r3)
/* 805894D0 B0E302B4 */ sth         r7, 0x2b4(r3)
/* 805894D4 A8055AEC */ lha         r0, lbl_808b5aec@l(r5)
/* 805894D8 B00302B6 */ sth         r0, 0x2b6(r3)
/* 805894DC D00302B8 */ stfs        f0, 0x2b8(r3)
/* 805894E0 B0E302BC */ sth         r7, 0x2bc(r3)
/* 805894E4 480072BD */ bl          unk_805907a0
/* 805894E8 482DBEA9 */ bl          unk_80865390
/* 805894EC 7FE3FB78 */ mr          r3, r31
/* 805894F0 48007F69 */ bl          PlayerPointers_getRacedataFactoryFlags
/* 805894F4 80030014 */ lwz         r0, 0x14(r3)
/* 805894F8 68000800 */ xori        r0, r0, 0x800
/* 805894FC 90030014 */ stw         r0, 0x14(r3)
/* 80589500 83E1000C */ lwz         r31, 0xc(r1)
/* 80589504 80010014 */ lwz         r0, 0x14(r1)
/* 80589508 7C0803A6 */ mtlr        r0
/* 8058950C 38210010 */ addi        r1, r1, 0x10
/* 80589510 4E800020 */ blr         