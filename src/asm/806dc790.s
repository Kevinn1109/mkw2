nofralloc
/* 806DC790 9421FFF0 */ stwu        r1, -0x10(r1)
/* 806DC794 7C0802A6 */ mflr        r0
/* 806DC798 90010014 */ stw         r0, 0x14(r1)
/* 806DC79C 93E1000C */ stw         r31, 0xc(r1)
/* 806DC7A0 7C7F1B78 */ mr          r31, r3
/* 806DC7A4 93C10008 */ stw         r30, 8(r1)
/* 806DC7A8 48000635 */ bl          unk_806dcddc
/* 806DC7AC 809F0140 */ lwz         r4, 0x140(r31)
/* 806DC7B0 A07F0134 */ lhz         r3, 0x134(r31)
/* 806DC7B4 A81F00D0 */ lha         r0, 0xd0(r31)
/* 806DC7B8 7C641A14 */ add         r3, r4, r3
/* 806DC7BC 7C030000 */ cmpw        r3, r0
/* 806DC7C0 4081004C */ ble-        lbl_806dc80c
/* 806DC7C4 3BC00000 */ li          r30, 0
/* 806DC7C8 9BDF013C */ stb         r30, 0x13c(r31)
/* 806DC7CC 7FE3FB78 */ mr          r3, r31
/* 806DC7D0 38800001 */ li          r4, 1
/* 806DC7D4 93DF0140 */ stw         r30, 0x140(r31)
/* 806DC7D8 819F0000 */ lwz         r12, 0(r31)
/* 806DC7DC 818C0068 */ lwz         r12, 0x68(r12)
/* 806DC7E0 7D8903A6 */ mtctr       r12
/* 806DC7E4 4E800421 */ bctrl       
/* 806DC7E8 3C80808A */ lis         r4, lbl_808a037c@ha
/* 806DC7EC 7FE3FB78 */ mr          r3, r31
/* 806DC7F0 C024037C */ lfs         f1, lbl_808a037c@l(r4)
/* 806DC7F4 3880022B */ li          r4, 0x22b
/* 806DC7F8 48143D05 */ bl          unk_808204fc
/* 806DC7FC 38000001 */ li          r0, 1
/* 806DC800 981F0144 */ stb         r0, 0x144(r31)
/* 806DC804 93DF0148 */ stw         r30, 0x148(r31)
/* 806DC808 48000158 */ b           lbl_806dc960
lbl_806dc80c:
/* 806DC80C 2C040047 */ cmpwi       r4, 0x47
/* 806DC810 40810020 */ ble-        lbl_806dc830
/* 806DC814 819F0000 */ lwz         r12, 0(r31)
/* 806DC818 7FE3FB78 */ mr          r3, r31
/* 806DC81C 38800000 */ li          r4, 0
/* 806DC820 818C0068 */ lwz         r12, 0x68(r12)
/* 806DC824 7D8903A6 */ mtctr       r12
/* 806DC828 4E800421 */ bctrl       
/* 806DC82C 48000128 */ b           lbl_806dc954
lbl_806dc830:
/* 806DC830 2C040046 */ cmpwi       r4, 0x46
/* 806DC834 40810060 */ ble-        lbl_806dc894
/* 806DC838 3C606666 */ lis         r3, 0x6666
/* 806DC83C 38036667 */ addi        r0, r3, 0x6667
/* 806DC840 7C002096 */ mulhw       r0, r0, r4
/* 806DC844 7C000E70 */ srawi       r0, r0, 1
/* 806DC848 54030FFE */ srwi        r3, r0, 0x1f
/* 806DC84C 7C001A14 */ add         r0, r0, r3
/* 806DC850 1C000005 */ mulli       r0, r0, 5
/* 806DC854 7C002051 */ subf.       r0, r0, r4
/* 806DC858 41820020 */ beq-        lbl_806dc878
/* 806DC85C 819F0000 */ lwz         r12, 0(r31)
/* 806DC860 7FE3FB78 */ mr          r3, r31
/* 806DC864 38800000 */ li          r4, 0
/* 806DC868 818C0068 */ lwz         r12, 0x68(r12)
/* 806DC86C 7D8903A6 */ mtctr       r12
/* 806DC870 4E800421 */ bctrl       
/* 806DC874 480000E0 */ b           lbl_806dc954
lbl_806dc878:
/* 806DC878 819F0000 */ lwz         r12, 0(r31)
/* 806DC87C 7FE3FB78 */ mr          r3, r31
/* 806DC880 38800001 */ li          r4, 1
/* 806DC884 818C0068 */ lwz         r12, 0x68(r12)
/* 806DC888 7D8903A6 */ mtctr       r12
/* 806DC88C 4E800421 */ bctrl       
/* 806DC890 480000C4 */ b           lbl_806dc954
lbl_806dc894:
/* 806DC894 2C040032 */ cmpwi       r4, 0x32
/* 806DC898 4081005C */ ble-        lbl_806dc8f4
/* 806DC89C 3C605555 */ lis         r3, 0x5555
/* 806DC8A0 38035556 */ addi        r0, r3, 0x5556
/* 806DC8A4 7C602096 */ mulhw       r3, r0, r4
/* 806DC8A8 54600FFE */ srwi        r0, r3, 0x1f
/* 806DC8AC 7C030214 */ add         r0, r3, r0
/* 806DC8B0 1C000003 */ mulli       r0, r0, 3
/* 806DC8B4 7C002051 */ subf.       r0, r0, r4
/* 806DC8B8 40820020 */ bne-        lbl_806dc8d8
/* 806DC8BC 819F0000 */ lwz         r12, 0(r31)
/* 806DC8C0 7FE3FB78 */ mr          r3, r31
/* 806DC8C4 38800000 */ li          r4, 0
/* 806DC8C8 818C0068 */ lwz         r12, 0x68(r12)
/* 806DC8CC 7D8903A6 */ mtctr       r12
/* 806DC8D0 4E800421 */ bctrl       
/* 806DC8D4 48000080 */ b           lbl_806dc954
lbl_806dc8d8:
/* 806DC8D8 819F0000 */ lwz         r12, 0(r31)
/* 806DC8DC 7FE3FB78 */ mr          r3, r31
/* 806DC8E0 38800001 */ li          r4, 1
/* 806DC8E4 818C0068 */ lwz         r12, 0x68(r12)
/* 806DC8E8 7D8903A6 */ mtctr       r12
/* 806DC8EC 4E800421 */ bctrl       
/* 806DC8F0 48000064 */ b           lbl_806dc954
lbl_806dc8f4:
/* 806DC8F4 2C04001E */ cmpwi       r4, 0x1e
/* 806DC8F8 4081005C */ ble-        lbl_806dc954
/* 806DC8FC 3C606666 */ lis         r3, 0x6666
/* 806DC900 38036667 */ addi        r0, r3, 0x6667
/* 806DC904 7C002096 */ mulhw       r0, r0, r4
/* 806DC908 7C001670 */ srawi       r0, r0, 2
/* 806DC90C 54030FFE */ srwi        r3, r0, 0x1f
/* 806DC910 7C001A14 */ add         r0, r0, r3
/* 806DC914 1C00000A */ mulli       r0, r0, 0xa
/* 806DC918 7C002051 */ subf.       r0, r0, r4
/* 806DC91C 40820020 */ bne-        lbl_806dc93c
/* 806DC920 819F0000 */ lwz         r12, 0(r31)
/* 806DC924 7FE3FB78 */ mr          r3, r31
/* 806DC928 38800000 */ li          r4, 0
/* 806DC92C 818C0068 */ lwz         r12, 0x68(r12)
/* 806DC930 7D8903A6 */ mtctr       r12
/* 806DC934 4E800421 */ bctrl       
/* 806DC938 4800001C */ b           lbl_806dc954
lbl_806dc93c:
/* 806DC93C 819F0000 */ lwz         r12, 0(r31)
/* 806DC940 7FE3FB78 */ mr          r3, r31
/* 806DC944 38800001 */ li          r4, 1
/* 806DC948 818C0068 */ lwz         r12, 0x68(r12)
/* 806DC94C 7D8903A6 */ mtctr       r12
/* 806DC950 4E800421 */ bctrl       
lbl_806dc954:
/* 806DC954 807F0140 */ lwz         r3, 0x140(r31)
/* 806DC958 38030001 */ addi        r0, r3, 1
/* 806DC95C 901F0140 */ stw         r0, 0x140(r31)
lbl_806dc960:
/* 806DC960 80010014 */ lwz         r0, 0x14(r1)
/* 806DC964 83E1000C */ lwz         r31, 0xc(r1)
/* 806DC968 83C10008 */ lwz         r30, 8(r1)
/* 806DC96C 7C0803A6 */ mtlr        r0
/* 806DC970 38210010 */ addi        r1, r1, 0x10
/* 806DC974 4E800020 */ blr         