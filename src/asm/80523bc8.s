nofralloc
/* 80523BC8 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80523BCC 7C0802A6 */ mflr        r0
/* 80523BD0 90010014 */ stw         r0, 0x14(r1)
/* 80523BD4 93E1000C */ stw         r31, 0xc(r1)
/* 80523BD8 3BE00000 */ li          r31, 0
/* 80523BDC 93C10008 */ stw         r30, 8(r1)
/* 80523BE0 7C7E1B78 */ mr          r30, r3
/* 80523BE4 800315B8 */ lwz         r0, 0x15b8(r3)
/* 80523BE8 2C000000 */ cmpwi       r0, 0
/* 80523BEC 4182001C */ beq-        lbl_80523c08
/* 80523BF0 7C030378 */ mr          r3, r0
/* 80523BF4 81830000 */ lwz         r12, 0(r3)
/* 80523BF8 818C0010 */ lwz         r12, 0x10(r12)
/* 80523BFC 7D8903A6 */ mtctr       r12
/* 80523C00 4E800421 */ bctrl       
/* 80523C04 48000008 */ b           lbl_80523c0c
lbl_80523c08:
/* 80523C08 3860FFFF */ li          r3, -1
lbl_80523c0c:
/* 80523C0C 2C03FFFF */ cmpwi       r3, -1
/* 80523C10 408200E0 */ bne-        lbl_80523cf0
/* 80523C14 38000004 */ li          r0, 4
/* 80523C18 38A00000 */ li          r5, 0
/* 80523C1C 7C0903A6 */ mtctr       r0
lbl_80523c20:
/* 80523C20 54A0063E */ clrlwi      r0, r5, 0x18
/* 80523C24 1C000920 */ mulli       r0, r0, 0x920
/* 80523C28 7C7E0214 */ add         r3, r30, r0
/* 80523C2C 38831720 */ addi        r4, r3, 0x1720
/* 80523C30 A0631740 */ lhz         r3, 0x1740(r3)
/* 80523C34 A0040060 */ lhz         r0, 0x60(r4)
/* 80523C38 7C600078 */ andc        r0, r3, r0
/* 80523C3C 540007FF */ clrlwi.     r0, r0, 0x1f
/* 80523C40 41820034 */ beq-        lbl_80523c74
/* 80523C44 88040050 */ lbz         r0, 0x50(r4)
/* 80523C48 3BE00001 */ li          r31, 1
/* 80523C4C 2C000000 */ cmpwi       r0, 0
/* 80523C50 4182002C */ beq-        lbl_80523c7c
/* 80523C54 387E15B4 */ addi        r3, r30, 0x15b4
/* 80523C58 38A00000 */ li          r5, 0
/* 80523C5C 4BFFD8F9 */ bl          setController__Q26System4KPadFPQ26System14KPadControllerPQ26System14KPadController
/* 80523C60 809E15B8 */ lwz         r4, 0x15b8(r30)
/* 80523C64 387E167C */ addi        r3, r30, 0x167c
/* 80523C68 909E15C0 */ stw         r4, 0x15c0(r30)
/* 80523C6C 4BFFE6F9 */ bl          init__Q26System18KPadControllerInfoFPQ26System14KPadController
/* 80523C70 4800000C */ b           lbl_80523c7c
lbl_80523c74:
/* 80523C74 38A50001 */ addi        r5, r5, 1
/* 80523C78 4200FFA8 */ bdnz        lbl_80523c20
lbl_80523c7c:
/* 80523C7C 2C1F0000 */ cmpwi       r31, 0
/* 80523C80 40820074 */ bne-        lbl_80523cf4
/* 80523C84 38000004 */ li          r0, 4
/* 80523C88 38A00000 */ li          r5, 0
/* 80523C8C 7C0903A6 */ mtctr       r0
lbl_80523c90:
/* 80523C90 54A0063E */ clrlwi      r0, r5, 0x18
/* 80523C94 1C0000B0 */ mulli       r0, r0, 0xb0
/* 80523C98 7C7E0214 */ add         r3, r30, r0
/* 80523C9C 38833BA0 */ addi        r4, r3, 0x3ba0
/* 80523CA0 A0633BC0 */ lhz         r3, 0x3bc0(r3)
/* 80523CA4 A0040060 */ lhz         r0, 0x60(r4)
/* 80523CA8 7C600078 */ andc        r0, r3, r0
/* 80523CAC 540007FF */ clrlwi.     r0, r0, 0x1f
/* 80523CB0 41820034 */ beq-        lbl_80523ce4
/* 80523CB4 88040050 */ lbz         r0, 0x50(r4)
/* 80523CB8 3BE00001 */ li          r31, 1
/* 80523CBC 2C000000 */ cmpwi       r0, 0
/* 80523CC0 41820034 */ beq-        lbl_80523cf4
/* 80523CC4 387E15B4 */ addi        r3, r30, 0x15b4
/* 80523CC8 38A00000 */ li          r5, 0
/* 80523CCC 4BFFD889 */ bl          setController__Q26System4KPadFPQ26System14KPadControllerPQ26System14KPadController
/* 80523CD0 809E15B8 */ lwz         r4, 0x15b8(r30)
/* 80523CD4 387E167C */ addi        r3, r30, 0x167c
/* 80523CD8 909E15C0 */ stw         r4, 0x15c0(r30)
/* 80523CDC 4BFFE689 */ bl          init__Q26System18KPadControllerInfoFPQ26System14KPadController
/* 80523CE0 48000014 */ b           lbl_80523cf4
lbl_80523ce4:
/* 80523CE4 38A50001 */ addi        r5, r5, 1
/* 80523CE8 4200FFA8 */ bdnz        lbl_80523c90
/* 80523CEC 48000008 */ b           lbl_80523cf4
lbl_80523cf0:
/* 80523CF0 3BE00001 */ li          r31, 1
lbl_80523cf4:
/* 80523CF4 7FE3FB78 */ mr          r3, r31
/* 80523CF8 83E1000C */ lwz         r31, 0xc(r1)
/* 80523CFC 83C10008 */ lwz         r30, 8(r1)
/* 80523D00 80010014 */ lwz         r0, 0x14(r1)
/* 80523D04 7C0803A6 */ mtlr        r0
/* 80523D08 38210010 */ addi        r1, r1, 0x10
/* 80523D0C 4E800020 */ blr         