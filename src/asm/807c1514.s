nofralloc
/* 807C1514 9421FF40 */ stwu        r1, -0xc0(r1)
/* 807C1518 7C0802A6 */ mflr        r0
/* 807C151C 900100C4 */ stw         r0, 0xc4(r1)
/* 807C1520 DBE100B0 */ stfd        f31, 0xb0(r1)
/* 807C1524 F3E100B8 */ psq_st      f31, 0xb8(r1), 0, 0
/* 807C1528 DBC100A0 */ stfd        f30, 0xa0(r1)
/* 807C152C F3C100A8 */ psq_st      f30, 0xa8(r1), 0, 0
/* 807C1530 DBA10090 */ stfd        f29, 0x90(r1)
/* 807C1534 F3A10098 */ psq_st      f29, 0x98(r1), 0, 0
/* 807C1538 DB810080 */ stfd        f28, 0x80(r1)
/* 807C153C F3810088 */ psq_st      f28, 0x88(r1), 0, 0
/* 807C1540 DB610070 */ stfd        f27, 0x70(r1)
/* 807C1544 F3610078 */ psq_st      f27, 0x78(r1), 0, 0
/* 807C1548 39610070 */ addi        r11, r1, 0x70
/* 807C154C 4B860031 */ bl          _savegpr_18
/* 807C1550 80030068 */ lwz         r0, 0x68(r3)
/* 807C1554 7C741B78 */ mr          r20, r3
/* 807C1558 C3830060 */ lfs         f28, 0x60(r3)
/* 807C155C 7C952378 */ mr          r21, r4
/* 807C1560 2C000000 */ cmpwi       r0, 0
/* 807C1564 83430004 */ lwz         r26, 4(r3)
/* 807C1568 7CB62B78 */ mr          r22, r5
/* 807C156C 7CD73378 */ mr          r23, r6
/* 807C1570 4082000C */ bne-        lbl_807c157c
/* 807C1574 38600000 */ li          r3, 0
/* 807C1578 48000554 */ b           lbl_807c1acc
lbl_807c157c:
/* 807C157C 3C80808A */ lis         r4, lbl_808a66d8@ha
/* 807C1580 3C60808A */ lis         r3, lbl_808a66e4@ha
/* 807C1584 C3C466D8 */ lfs         f30, lbl_808a66d8@l(r4)
/* 807C1588 3B610008 */ addi        r27, r1, 8
/* 807C158C C3E366E4 */ lfs         f31, lbl_808a66e4@l(r3)
/* 807C1590 3B810014 */ addi        r28, r1, 0x14
/* 807C1594 3BA10020 */ addi        r29, r1, 0x20
/* 807C1598 3BC1002C */ addi        r30, r1, 0x2c
/* 807C159C 3E40808B */ lis         r18, lbl_808b56f4@ha
/* 807C15A0 3E60808B */ lis         r19, lbl_808b56d0@ha
/* 807C15A4 3BE00001 */ li          r31, 1
/* 807C15A8 48000500 */ b           lbl_807c1aa8
lbl_807c15ac:
/* 807C15AC 80740068 */ lwz         r3, 0x68(r20)
/* 807C15B0 80B40008 */ lwz         r5, 8(r20)
/* 807C15B4 A0030000 */ lhz         r0, 0(r3)
/* 807C15B8 80940000 */ lwz         r4, 0(r20)
/* 807C15BC 54002036 */ slwi        r0, r0, 4
/* 807C15C0 E054003C */ psq_l       f2, 0x3c(r20), 0, 0
/* 807C15C4 7F250214 */ add         r25, r5, r0
/* 807C15C8 A0790004 */ lhz         r3, 4(r25)
/* 807C15CC A0190008 */ lhz         r0, 8(r25)
/* 807C15D0 1C63000C */ mulli       r3, r3, 0xc
/* 807C15D4 7C641A14 */ add         r3, r4, r3
/* 807C15D8 E0230000 */ psq_l       f1, 0(r3), 0, 0
/* 807C15DC 1C00000C */ mulli       r0, r0, 0xc
/* 807C15E0 10020828 */ ps_sub      f0, f2, f1
/* 807C15E4 E0548044 */ psq_l       f2, 0x44(r20), 1, 0
/* 807C15E8 E0238008 */ psq_l       f1, 8(r3), 1, 0
/* 807C15EC 7C9A0214 */ add         r4, r26, r0
/* 807C15F0 F01E0000 */ psq_st      f0, 0(r30), 0, 0
/* 807C15F4 10020828 */ ps_sub      f0, f2, f1
/* 807C15F8 E0240004 */ psq_l       f1, 4(r4), 0, 0
/* 807C15FC F01E8008 */ psq_st      f0, 8(r30), 1, 0
/* 807C1600 E07E8000 */ psq_l       f3, 0(r30), 1, 0
/* 807C1604 E01E0004 */ psq_l       f0, 4(r30), 0, 0
/* 807C1608 E0848000 */ psq_l       f4, 0(r4), 1, 0
/* 807C160C 10000072 */ ps_mul      f0, f0, f1
/* 807C1610 1023013A */ ps_madd     f1, f3, f4, f0
/* 807C1614 10010014 */ ps_sum0     f0, f1, f0, f0
/* 807C1618 FC00E040 */ fcmpo       cr0, f0, f28
/* 807C161C 4C411382 */ cror        cr0eq, cr0gt, cr0eq
/* 807C1620 41820488 */ beq-        lbl_807c1aa8
/* 807C1624 A019000A */ lhz         r0, 0xa(r25)
/* 807C1628 E05E0004 */ psq_l       f2, 4(r30), 0, 0
/* 807C162C 1C00000C */ mulli       r0, r0, 0xc
/* 807C1630 7CBA0214 */ add         r5, r26, r0
/* 807C1634 E0250004 */ psq_l       f1, 4(r5), 0, 0
/* 807C1638 E0A58000 */ psq_l       f5, 0(r5), 1, 0
/* 807C163C 10420072 */ ps_mul      f2, f2, f1
/* 807C1640 1023117A */ ps_madd     f1, f3, f5, f2
/* 807C1644 10211094 */ ps_sum0     f1, f1, f2, f2
/* 807C1648 FC01E040 */ fcmpo       cr0, f1, f28
/* 807C164C 4C411382 */ cror        cr0eq, cr0gt, cr0eq
/* 807C1650 41820458 */ beq-        lbl_807c1aa8
/* 807C1654 A019000C */ lhz         r0, 0xc(r25)
/* 807C1658 E11E0004 */ psq_l       f8, 4(r30), 0, 0
/* 807C165C 1C00000C */ mulli       r0, r0, 0xc
/* 807C1660 C0590000 */ lfs         f2, 0(r25)
/* 807C1664 7CDA0214 */ add         r6, r26, r0
/* 807C1668 E0E60004 */ psq_l       f7, 4(r6), 0, 0
/* 807C166C E0C68000 */ psq_l       f6, 0(r6), 1, 0
/* 807C1670 110801F2 */ ps_mul      f8, f8, f7
/* 807C1674 10E341BA */ ps_madd     f7, f3, f6, f8
/* 807C1678 10E74214 */ ps_sum0     f7, f7, f8, f8
/* 807C167C EC471028 */ fsubs       f2, f7, f2
/* 807C1680 FC02E040 */ fcmpo       cr0, f2, f28
/* 807C1684 4C411382 */ cror        cr0eq, cr0gt, cr0eq
/* 807C1688 41820420 */ beq-        lbl_807c1aa8
/* 807C168C A0190006 */ lhz         r0, 6(r25)
/* 807C1690 E13E0004 */ psq_l       f9, 4(r30), 0, 0
/* 807C1694 1C00000C */ mulli       r0, r0, 0xc
/* 807C1698 7F1A0214 */ add         r24, r26, r0
/* 807C169C E1180004 */ psq_l       f8, 4(r24), 0, 0
/* 807C16A0 E0F88000 */ psq_l       f7, 0(r24), 1, 0
/* 807C16A4 11290232 */ ps_mul      f9, f9, f8
/* 807C16A8 110349FA */ ps_madd     f8, f3, f7, f9
/* 807C16AC 13A84A54 */ ps_sum0     f29, f8, f9, f9
/* 807C16B0 ECFCE828 */ fsubs       f7, f28, f29
/* 807C16B4 FC07F040 */ fcmpo       cr0, f7, f30
/* 807C16B8 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C16BC 418203EC */ beq-        lbl_807c1aa8
/* 807C16C0 C0740010 */ lfs         f3, 0x10(r20)
/* 807C16C4 FC033840 */ fcmpo       cr0, f3, f7
/* 807C16C8 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C16CC 418203DC */ beq-        lbl_807c1aa8
/* 807C16D0 A079000E */ lhz         r3, 0xe(r25)
/* 807C16D4 80140064 */ lwz         r0, 0x64(r20)
/* 807C16D8 546306FE */ clrlwi      r3, r3, 0x1b
/* 807C16DC 7FE31830 */ slw         r3, r31, r3
/* 807C16E0 7C600039 */ and.        r0, r3, r0
/* 807C16E4 418203C4 */ beq-        lbl_807c1aa8
/* 807C16E8 FC000840 */ fcmpo       cr0, f0, f1
/* 807C16EC EC7C0732 */ fmuls       f3, f28, f28
/* 807C16F0 40810010 */ ble-        lbl_807c1700
/* 807C16F4 FC001040 */ fcmpo       cr0, f0, f2
/* 807C16F8 408100CC */ ble-        lbl_807c17c4
/* 807C16FC 48000010 */ b           lbl_807c170c
lbl_807c1700:
/* 807C1700 FC011040 */ fcmpo       cr0, f1, f2
/* 807C1704 408100C0 */ ble-        lbl_807c17c4
/* 807C1708 48000060 */ b           lbl_807c1768
lbl_807c170c:
/* 807C170C FC00F040 */ fcmpo       cr0, f0, f30
/* 807C1710 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C1714 41820350 */ beq-        lbl_807c1a64
/* 807C1718 FC011040 */ fcmpo       cr0, f1, f2
/* 807C171C 40810028 */ ble-        lbl_807c1744
/* 807C1720 E0C40004 */ psq_l       f6, 4(r4), 0, 0
/* 807C1724 E0450004 */ psq_l       f2, 4(r5), 0, 0
/* 807C1728 10C600B2 */ ps_mul      f6, f6, f2
/* 807C172C 1044317A */ ps_madd     f2, f4, f5, f6
/* 807C1730 11423194 */ ps_sum0     f10, f2, f6, f6
/* 807C1734 EC4A0032 */ fmuls       f2, f10, f0
/* 807C1738 FC020840 */ fcmpo       cr0, f2, f1
/* 807C173C 40810130 */ ble-        lbl_807c186c
/* 807C1740 480000F0 */ b           lbl_807c1830
lbl_807c1744:
/* 807C1744 E0A40004 */ psq_l       f5, 4(r4), 0, 0
/* 807C1748 E0260004 */ psq_l       f1, 4(r6), 0, 0
/* 807C174C 10A50072 */ ps_mul      f5, f5, f1
/* 807C1750 102429BA */ ps_madd     f1, f4, f6, f5
/* 807C1754 11612954 */ ps_sum0     f11, f1, f5, f5
/* 807C1758 EC2B0032 */ fmuls       f1, f11, f0
/* 807C175C FC011040 */ fcmpo       cr0, f1, f2
/* 807C1760 408101FC */ ble-        lbl_807c195c
/* 807C1764 480000CC */ b           lbl_807c1830
lbl_807c1768:
/* 807C1768 FC01F040 */ fcmpo       cr0, f1, f30
/* 807C176C 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C1770 418202F4 */ beq-        lbl_807c1a64
/* 807C1774 FC020040 */ fcmpo       cr0, f2, f0
/* 807C1778 40810028 */ ble-        lbl_807c17a0
/* 807C177C E0850004 */ psq_l       f4, 4(r5), 0, 0
/* 807C1780 E0060004 */ psq_l       f0, 4(r6), 0, 0
/* 807C1784 10840032 */ ps_mul      f4, f4, f0
/* 807C1788 100521BA */ ps_madd     f0, f5, f6, f4
/* 807C178C 11602114 */ ps_sum0     f11, f0, f4, f4
/* 807C1790 EC0B0072 */ fmuls       f0, f11, f1
/* 807C1794 FC001040 */ fcmpo       cr0, f0, f2
/* 807C1798 4081014C */ ble-        lbl_807c18e4
/* 807C179C 480000A8 */ b           lbl_807c1844
lbl_807c17a0:
/* 807C17A0 E0C50004 */ psq_l       f6, 4(r5), 0, 0
/* 807C17A4 E0440004 */ psq_l       f2, 4(r4), 0, 0
/* 807C17A8 10C600B2 */ ps_mul      f6, f6, f2
/* 807C17AC 1045313A */ ps_madd     f2, f5, f4, f6
/* 807C17B0 11423194 */ ps_sum0     f10, f2, f6, f6
/* 807C17B4 EC4A0072 */ fmuls       f2, f10, f1
/* 807C17B8 FC020040 */ fcmpo       cr0, f2, f0
/* 807C17BC 408100B0 */ ble-        lbl_807c186c
/* 807C17C0 48000084 */ b           lbl_807c1844
lbl_807c17c4:
/* 807C17C4 FC02F040 */ fcmpo       cr0, f2, f30
/* 807C17C8 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C17CC 41820298 */ beq-        lbl_807c1a64
/* 807C17D0 FC000840 */ fcmpo       cr0, f0, f1
/* 807C17D4 40810030 */ ble-        lbl_807c1804
/* 807C17D8 E0A60004 */ psq_l       f5, 4(r6), 0, 0
/* 807C17DC E0840004 */ psq_l       f4, 4(r4), 0, 0
/* 807C17E0 E0268000 */ psq_l       f1, 0(r6), 1, 0
/* 807C17E4 10A50132 */ ps_mul      f5, f5, f4
/* 807C17E8 E0848000 */ psq_l       f4, 0(r4), 1, 0
/* 807C17EC 1081293A */ ps_madd     f4, f1, f4, f5
/* 807C17F0 11642954 */ ps_sum0     f11, f4, f5, f5
/* 807C17F4 EC2B00B2 */ fmuls       f1, f11, f2
/* 807C17F8 FC010040 */ fcmpo       cr0, f1, f0
/* 807C17FC 40810160 */ ble-        lbl_807c195c
/* 807C1800 48000058 */ b           lbl_807c1858
lbl_807c1804:
/* 807C1804 E0A60004 */ psq_l       f5, 4(r6), 0, 0
/* 807C1808 E0850004 */ psq_l       f4, 4(r5), 0, 0
/* 807C180C E0068000 */ psq_l       f0, 0(r6), 1, 0
/* 807C1810 10A50132 */ ps_mul      f5, f5, f4
/* 807C1814 E0858000 */ psq_l       f4, 0(r5), 1, 0
/* 807C1818 1080293A */ ps_madd     f4, f0, f4, f5
/* 807C181C 11642954 */ ps_sum0     f11, f4, f5, f5
/* 807C1820 EC0B00B2 */ fmuls       f0, f11, f2
/* 807C1824 FC000840 */ fcmpo       cr0, f0, f1
/* 807C1828 408100BC */ ble-        lbl_807c18e4
/* 807C182C 4800002C */ b           lbl_807c1858
lbl_807c1830:
/* 807C1830 FC00E840 */ fcmpo       cr0, f0, f29
/* 807C1834 41810274 */ bgt-        lbl_807c1aa8
/* 807C1838 EC000032 */ fmuls       f0, f0, f0
/* 807C183C EF630028 */ fsubs       f27, f3, f0
/* 807C1840 480001AC */ b           lbl_807c19ec
lbl_807c1844:
/* 807C1844 FC01E840 */ fcmpo       cr0, f1, f29
/* 807C1848 41810260 */ bgt-        lbl_807c1aa8
/* 807C184C EC010072 */ fmuls       f0, f1, f1
/* 807C1850 EF630028 */ fsubs       f27, f3, f0
/* 807C1854 48000198 */ b           lbl_807c19ec
lbl_807c1858:
/* 807C1858 FC02E840 */ fcmpo       cr0, f2, f29
/* 807C185C 4181024C */ bgt-        lbl_807c1aa8
/* 807C1860 EC0200B2 */ fmuls       f0, f2, f2
/* 807C1864 EF630028 */ fsubs       f27, f3, f0
/* 807C1868 48000184 */ b           lbl_807c19ec
lbl_807c186c:
/* 807C186C ECEA0072 */ fmuls       f7, f10, f1
/* 807C1870 C0A40004 */ lfs         f5, 4(r4)
/* 807C1874 ECCA02B2 */ fmuls       f6, f10, f10
/* 807C1878 C0850004 */ lfs         f4, 4(r5)
/* 807C187C C0440000 */ lfs         f2, 0(r4)
/* 807C1880 ED270028 */ fsubs       f9, f7, f0
/* 807C1884 ED06F828 */ fsubs       f8, f6, f31
/* 807C1888 C0050000 */ lfs         f0, 0(r5)
/* 807C188C C0E40008 */ lfs         f7, 8(r4)
/* 807C1890 C0C50008 */ lfs         f6, 8(r5)
/* 807C1894 ED294024 */ fdivs       f9, f9, f8
/* 807C1898 ED0902B2 */ fmuls       f8, f9, f10
/* 807C189C ECA50272 */ fmuls       f5, f5, f9
/* 807C18A0 EC420272 */ fmuls       f2, f2, f9
/* 807C18A4 ED014028 */ fsubs       f8, f1, f8
/* 807C18A8 ECE70272 */ fmuls       f7, f7, f9
/* 807C18AC EC240232 */ fmuls       f1, f4, f8
/* 807C18B0 EC000232 */ fmuls       f0, f0, f8
/* 807C18B4 EC860232 */ fmuls       f4, f6, f8
/* 807C18B8 EC25082A */ fadds       f1, f5, f1
/* 807C18BC EC02002A */ fadds       f0, f2, f0
/* 807C18C0 D0210024 */ stfs        f1, 0x24(r1)
/* 807C18C4 EC27202A */ fadds       f1, f7, f4
/* 807C18C8 D0010020 */ stfs        f0, 0x20(r1)
/* 807C18CC E01D0000 */ psq_l       f0, 0(r29), 0, 0
/* 807C18D0 D0210028 */ stfs        f1, 0x28(r1)
/* 807C18D4 10000032 */ ps_mul      f0, f0, f0
/* 807C18D8 1021007A */ ps_madd     f1, f1, f1, f0
/* 807C18DC 10210014 */ ps_sum0     f1, f1, f0, f0
/* 807C18E0 480000F0 */ b           lbl_807c19d0
lbl_807c18e4:
/* 807C18E4 ECEB00B2 */ fmuls       f7, f11, f2
/* 807C18E8 C0850000 */ lfs         f4, 0(r5)
/* 807C18EC EC0B02F2 */ fmuls       f0, f11, f11
/* 807C18F0 C0C50004 */ lfs         f6, 4(r5)
/* 807C18F4 C0A60004 */ lfs         f5, 4(r6)
/* 807C18F8 ED270828 */ fsubs       f9, f7, f1
/* 807C18FC EC20F828 */ fsubs       f1, f0, f31
/* 807C1900 C0060000 */ lfs         f0, 0(r6)
/* 807C1904 C1050008 */ lfs         f8, 8(r5)
/* 807C1908 C0E60008 */ lfs         f7, 8(r6)
/* 807C190C ED490824 */ fdivs       f10, f9, f1
/* 807C1910 ED2A02F2 */ fmuls       f9, f10, f11
/* 807C1914 EC2402B2 */ fmuls       f1, f4, f10
/* 807C1918 ECC602B2 */ fmuls       f6, f6, f10
/* 807C191C EC824828 */ fsubs       f4, f2, f9
/* 807C1920 ED0802B2 */ fmuls       f8, f8, f10
/* 807C1924 EC450132 */ fmuls       f2, f5, f4
/* 807C1928 EC000132 */ fmuls       f0, f0, f4
/* 807C192C EC870132 */ fmuls       f4, f7, f4
/* 807C1930 EC46102A */ fadds       f2, f6, f2
/* 807C1934 EC01002A */ fadds       f0, f1, f0
/* 807C1938 D0410018 */ stfs        f2, 0x18(r1)
/* 807C193C EC28202A */ fadds       f1, f8, f4
/* 807C1940 D0010014 */ stfs        f0, 0x14(r1)
/* 807C1944 E01C0000 */ psq_l       f0, 0(r28), 0, 0
/* 807C1948 D021001C */ stfs        f1, 0x1c(r1)
/* 807C194C 10000032 */ ps_mul      f0, f0, f0
/* 807C1950 1021007A */ ps_madd     f1, f1, f1, f0
/* 807C1954 10210014 */ ps_sum0     f1, f1, f0, f0
/* 807C1958 48000078 */ b           lbl_807c19d0
lbl_807c195c:
/* 807C195C ECEB0032 */ fmuls       f7, f11, f0
/* 807C1960 C0C60004 */ lfs         f6, 4(r6)
/* 807C1964 EC2B02F2 */ fmuls       f1, f11, f11
/* 807C1968 C0A40004 */ lfs         f5, 4(r4)
/* 807C196C C0860000 */ lfs         f4, 0(r6)
/* 807C1970 ED271028 */ fsubs       f9, f7, f2
/* 807C1974 EC41F828 */ fsubs       f2, f1, f31
/* 807C1978 C0240000 */ lfs         f1, 0(r4)
/* 807C197C C1060008 */ lfs         f8, 8(r6)
/* 807C1980 C0E40008 */ lfs         f7, 8(r4)
/* 807C1984 ED491024 */ fdivs       f10, f9, f2
/* 807C1988 ED2A02F2 */ fmuls       f9, f10, f11
/* 807C198C ECC602B2 */ fmuls       f6, f6, f10
/* 807C1990 EC4402B2 */ fmuls       f2, f4, f10
/* 807C1994 ED204828 */ fsubs       f9, f0, f9
/* 807C1998 ED0802B2 */ fmuls       f8, f8, f10
/* 807C199C EC010272 */ fmuls       f0, f1, f9
/* 807C19A0 EC850272 */ fmuls       f4, f5, f9
/* 807C19A4 EC270272 */ fmuls       f1, f7, f9
/* 807C19A8 EC02002A */ fadds       f0, f2, f0
/* 807C19AC EC86202A */ fadds       f4, f6, f4
/* 807C19B0 D0010008 */ stfs        f0, 8(r1)
/* 807C19B4 EC28082A */ fadds       f1, f8, f1
/* 807C19B8 D081000C */ stfs        f4, 0xc(r1)
/* 807C19BC E01B0000 */ psq_l       f0, 0(r27), 0, 0
/* 807C19C0 D0210010 */ stfs        f1, 0x10(r1)
/* 807C19C4 10000032 */ ps_mul      f0, f0, f0
/* 807C19C8 1021007A */ ps_madd     f1, f1, f1, f0
/* 807C19CC 10210014 */ ps_sum0     f1, f1, f0, f0
lbl_807c19d0:
/* 807C19D0 EF630828 */ fsubs       f27, f3, f1
/* 807C19D4 FC1BF040 */ fcmpo       cr0, f27, f30
/* 807C19D8 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C19DC 418200CC */ beq-        lbl_807c1aa8
/* 807C19E0 EC1D0772 */ fmuls       f0, f29, f29
/* 807C19E4 FC010040 */ fcmpo       cr0, f1, f0
/* 807C19E8 418100C0 */ bgt-        lbl_807c1aa8
lbl_807c19ec:
/* 807C19EC EC1D0772 */ fmuls       f0, f29, f29
/* 807C19F0 FC1B0040 */ fcmpo       cr0, f27, f0
/* 807C19F4 418000B4 */ blt-        lbl_807c1aa8
/* 807C19F8 FC1BF040 */ fcmpo       cr0, f27, f30
/* 807C19FC 4C411382 */ cror        cr0eq, cr0gt, cr0eq
/* 807C1A00 7C000026 */ mfcr        r0
/* 807C1A04 54001FFE */ rlwinm      r0, r0, 3, 0x1f, 0x1f
/* 807C1A08 7C000034 */ cntlzw      r0, r0
/* 807C1A0C 5400D97F */ rlwinm.     r0, r0, 0x1b, 5, 0x1f
/* 807C1A10 40820098 */ bne-        lbl_807c1aa8
/* 807C1A14 FC1BF040 */ fcmpo       cr0, f27, f30
/* 807C1A18 4C411382 */ cror        cr0eq, cr0gt, cr0eq
/* 807C1A1C 41820018 */ beq-        lbl_807c1a34
/* 807C1A20 387256F4 */ addi        r3, r18, lbl_808b56f4@l
/* 807C1A24 38B356D0 */ addi        r5, r19, lbl_808b56d0@l
/* 807C1A28 38800273 */ li          r4, 0x273
/* 807C1A2C 4CC63182 */ crclr       cr1eq
/* 807C1A30 4B864621 */ bl          VWarning
lbl_807c1a34:
/* 807C1A34 FC1BF040 */ fcmpo       cr0, f27, f30
/* 807C1A38 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C1A3C 4082000C */ bne-        lbl_807c1a48
/* 807C1A40 FC00F090 */ fmr         f0, f30
/* 807C1A44 48000010 */ b           lbl_807c1a54
lbl_807c1a48:
/* 807C1A48 FC20D890 */ fmr         f1, f27
/* 807C1A4C 4B8C35F5 */ bl          FrSqrt
/* 807C1A50 EC1B0072 */ fmuls       f0, f27, f1
lbl_807c1a54:
/* 807C1A54 ECE0E828 */ fsubs       f7, f0, f29
/* 807C1A58 FC07F040 */ fcmpo       cr0, f7, f30
/* 807C1A5C 4C401382 */ cror        cr0eq, cr0lt, cr0eq
/* 807C1A60 41820048 */ beq-        lbl_807c1aa8
lbl_807c1a64:
/* 807C1A64 2C150000 */ cmpwi       r21, 0
/* 807C1A68 41820008 */ beq-        lbl_807c1a70
/* 807C1A6C D0F50000 */ stfs        f7, 0(r21)
lbl_807c1a70:
/* 807C1A70 2C160000 */ cmpwi       r22, 0
/* 807C1A74 4182001C */ beq-        lbl_807c1a90
/* 807C1A78 C0180000 */ lfs         f0, 0(r24)
/* 807C1A7C D0160000 */ stfs        f0, 0(r22)
/* 807C1A80 C0180004 */ lfs         f0, 4(r24)
/* 807C1A84 D0160004 */ stfs        f0, 4(r22)
/* 807C1A88 C0180008 */ lfs         f0, 8(r24)
/* 807C1A8C D0160008 */ stfs        f0, 8(r22)
lbl_807c1a90:
/* 807C1A90 2C170000 */ cmpwi       r23, 0
/* 807C1A94 4182000C */ beq-        lbl_807c1aa0
/* 807C1A98 A019000E */ lhz         r0, 0xe(r25)
/* 807C1A9C B0170000 */ sth         r0, 0(r23)
lbl_807c1aa0:
/* 807C1AA0 38600001 */ li          r3, 1
/* 807C1AA4 48000028 */ b           lbl_807c1acc
lbl_807c1aa8:
/* 807C1AA8 80740068 */ lwz         r3, 0x68(r20)
/* 807C1AAC 38630002 */ addi        r3, r3, 2
/* 807C1AB0 90740068 */ stw         r3, 0x68(r20)
/* 807C1AB4 A0030000 */ lhz         r0, 0(r3)
/* 807C1AB8 2C000000 */ cmpwi       r0, 0
/* 807C1ABC 4082FAF0 */ bne+        lbl_807c15ac
/* 807C1AC0 38000000 */ li          r0, 0
/* 807C1AC4 90140068 */ stw         r0, 0x68(r20)
/* 807C1AC8 38600000 */ li          r3, 0
lbl_807c1acc:
/* 807C1ACC E3E100B8 */ psq_l       f31, 0xb8(r1), 0, 0
/* 807C1AD0 CBE100B0 */ lfd         f31, 0xb0(r1)
/* 807C1AD4 E3C100A8 */ psq_l       f30, 0xa8(r1), 0, 0
/* 807C1AD8 CBC100A0 */ lfd         f30, 0xa0(r1)
/* 807C1ADC E3A10098 */ psq_l       f29, 0x98(r1), 0, 0
/* 807C1AE0 CBA10090 */ lfd         f29, 0x90(r1)
/* 807C1AE4 E3810088 */ psq_l       f28, 0x88(r1), 0, 0
/* 807C1AE8 CB810080 */ lfd         f28, 0x80(r1)
/* 807C1AEC E3610078 */ psq_l       f27, 0x78(r1), 0, 0
/* 807C1AF0 39610070 */ addi        r11, r1, 0x70
/* 807C1AF4 CB610070 */ lfd         f27, 0x70(r1)
/* 807C1AF8 4B85FAD1 */ bl          _restgpr_18
/* 807C1AFC 800100C4 */ lwz         r0, 0xc4(r1)
/* 807C1B00 7C0803A6 */ mtlr        r0
/* 807C1B04 382100C0 */ addi        r1, r1, 0xc0
/* 807C1B08 4E800020 */ blr         