nofralloc
/* 805231DC 9421FFF0 */ stwu        r1, -0x10(r1)
/* 805231E0 7C0802A6 */ mflr        r0
/* 805231E4 2C030000 */ cmpwi       r3, 0
/* 805231E8 90010014 */ stw         r0, 0x14(r1)
/* 805231EC 93E1000C */ stw         r31, 0xc(r1)
/* 805231F0 7C9F2378 */ mr          r31, r4
/* 805231F4 93C10008 */ stw         r30, 8(r1)
/* 805231F8 7C7E1B78 */ mr          r30, r3
/* 805231FC 41820098 */ beq-        lbl_80523294
/* 80523200 3880FFFF */ li          r4, -1
/* 80523204 38634100 */ addi        r3, r3, 0x4100
/* 80523208 48001FFD */ bl          RumbleSettings_dt
/* 8052320C 3C808052 */ lis         r4, __dt__Q26System19KPadGhostControllerFv@ha
/* 80523210 387E3E60 */ addi        r3, r30, 0x3e60
/* 80523214 38840924 */ addi        r4, r4, __dt__Q26System19KPadGhostControllerFv@l
/* 80523218 38A000A8 */ li          r5, 0xa8
/* 8052321C 38C00004 */ li          r6, 4
/* 80523220 4BAFDECD */ bl          __destroy_arr
/* 80523224 3C808052 */ lis         r4, __dt__Q26System16KPadGCControllerFv@ha
/* 80523228 387E3BA0 */ addi        r3, r30, 0x3ba0
/* 8052322C 38842874 */ addi        r4, r4, __dt__Q26System16KPadGCControllerFv@l
/* 80523230 38A000B0 */ li          r5, 0xb0
/* 80523234 38C00004 */ li          r6, 4
/* 80523238 4BAFDEB5 */ bl          __destroy_arr
/* 8052323C 3C808052 */ lis         r4, __dt__Q26System17KPadWiiControllerFv@ha
/* 80523240 387E1720 */ addi        r3, r30, 0x1720
/* 80523244 38842934 */ addi        r4, r4, __dt__Q26System17KPadWiiControllerFv@l
/* 80523248 38A00920 */ li          r5, 0x920
/* 8052324C 38C00004 */ li          r6, 4
/* 80523250 4BAFDE9D */ bl          __destroy_arr
/* 80523254 3C808052 */ lis         r4, __dt__Q26System6KPadAIFv@ha
/* 80523258 387E03B4 */ addi        r3, r30, 0x3b4
/* 8052325C 3884279C */ addi        r4, r4, __dt__Q26System6KPadAIFv@l
/* 80523260 38A00180 */ li          r5, 0x180
/* 80523264 38C0000C */ li          r6, 0xc
/* 80523268 4BAFDE85 */ bl          __destroy_arr
/* 8052326C 3C808052 */ lis         r4, __dt__Q26System10KPadPlayerFv@ha
/* 80523270 387E0004 */ addi        r3, r30, 4
/* 80523274 388422F4 */ addi        r4, r4, __dt__Q26System10KPadPlayerFv@l
/* 80523278 38A000EC */ li          r5, 0xec
/* 8052327C 38C00004 */ li          r6, 4
/* 80523280 4BAFDE6D */ bl          __destroy_arr
/* 80523284 2C1F0000 */ cmpwi       r31, 0
/* 80523288 4081000C */ ble-        lbl_80523294
/* 8052328C 7FC3F378 */ mr          r3, r30
/* 80523290 4BD06B85 */ bl          __dl__FPv
lbl_80523294:
/* 80523294 7FC3F378 */ mr          r3, r30
/* 80523298 83E1000C */ lwz         r31, 0xc(r1)
/* 8052329C 83C10008 */ lwz         r30, 8(r1)
/* 805232A0 80010014 */ lwz         r0, 0x14(r1)
/* 805232A4 7C0803A6 */ mtlr        r0
/* 805232A8 38210010 */ addi        r1, r1, 0x10
/* 805232AC 4E800020 */ blr         