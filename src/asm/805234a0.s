nofralloc
/* 805234A0 9421FFF0 */ stwu        r1, -0x10(r1)
/* 805234A4 7C0802A6 */ mflr        r0
/* 805234A8 90010014 */ stw         r0, 0x14(r1)
/* 805234AC 93E1000C */ stw         r31, 0xc(r1)
/* 805234B0 93C10008 */ stw         r30, 8(r1)
/* 805234B4 7C7E1B78 */ mr          r30, r3
/* 805234B8 4BFFDAAD */ bl          __ct__Q26System4KPadFv
/* 805234BC 3C60808B */ lis         r3, lbl_808b2db4@ha
/* 805234C0 3BFE00D8 */ addi        r31, r30, 0xd8
/* 805234C4 38632DB4 */ addi        r3, r3, lbl_808b2db4@l
/* 805234C8 907E0000 */ stw         r3, 0(r30)
/* 805234CC 7FE3FB78 */ mr          r3, r31
/* 805234D0 4BFFB6D9 */ bl          __ct__Q26System14KPadControllerFv
/* 805234D4 3CA0808B */ lis         r5, lbl_808b2fd8@ha
/* 805234D8 3C80808B */ lis         r4, lbl_808b2f2c@ha
/* 805234DC 38A52FD8 */ addi        r5, r5, lbl_808b2fd8@l
/* 805234E0 90BF0000 */ stw         r5, 0(r31)
/* 805234E4 38842F2C */ addi        r4, r4, lbl_808b2f2c@l
/* 805234E8 387F0090 */ addi        r3, r31, 0x90
/* 805234EC 909F0090 */ stw         r4, 0x90(r31)
/* 805234F0 4BFFB36D */ bl          reset__Q26System18KPadRaceInputStateFv
/* 805234F4 7FC3F378 */ mr          r3, r30
/* 805234F8 7FE4FB78 */ mr          r4, r31
/* 805234FC 38A00000 */ li          r5, 0
/* 80523500 4BFFE055 */ bl          setController__Q26System4KPadFPQ26System14KPadControllerPQ26System14KPadController
/* 80523504 7FC3F378 */ mr          r3, r30
/* 80523508 83E1000C */ lwz         r31, 0xc(r1)
/* 8052350C 83C10008 */ lwz         r30, 8(r1)
/* 80523510 80010014 */ lwz         r0, 0x14(r1)
/* 80523514 7C0803A6 */ mtlr        r0
/* 80523518 38210010 */ addi        r1, r1, 0x10
/* 8052351C 4E800020 */ blr         