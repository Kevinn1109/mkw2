nofralloc
/* 80623390 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80623394 7C0802A6 */ mflr        r0
/* 80623398 280300D2 */ cmplwi      r3, 0xd2
/* 8062339C 90010014 */ stw         r0, 0x14(r1)
/* 806233A0 418112DC */ bgt-        lbl_8062467c
/* 806233A4 3C80808C */ lis         r4, jtbl_808bba38@ha
/* 806233A8 5460103A */ slwi        r0, r3, 2
/* 806233AC 3884BA38 */ addi        r4, r4, jtbl_808bba38@l
/* 806233B0 7C84002E */ lwzx        r4, r4, r0
/* 806233B4 7C8903A6 */ mtctr       r4
/* 806233B8 4E800420 */ bctr        
lbl_806233bc:
entry jump_806233bc
/* 806233BC 38600054 */ li          r3, 0x54
/* 806233C0 4BC06A0D */ bl          __nw__FUl
/* 806233C4 2C030000 */ cmpwi       r3, 0
/* 806233C8 418212B8 */ beq-        lbl_80624680
/* 806233CC 4BFA63A9 */ bl          unk_805c9774
/* 806233D0 480012B0 */ b           lbl_80624680
lbl_806233d4:
entry jump_806233d4
/* 806233D4 386001C8 */ li          r3, 0x1c8
/* 806233D8 4BC069F5 */ bl          __nw__FUl
/* 806233DC 2C030000 */ cmpwi       r3, 0
/* 806233E0 418212A0 */ beq-        lbl_80624680
/* 806233E4 48014131 */ bl          EsrbPage_construct
/* 806233E8 48001298 */ b           lbl_80624680
lbl_806233ec:
entry jump_806233ec
/* 806233EC 386001CC */ li          r3, 0x1cc
/* 806233F0 4BC069DD */ bl          __nw__FUl
/* 806233F4 2C030000 */ cmpwi       r3, 0
/* 806233F8 41821288 */ beq-        lbl_80624680
/* 806233FC 480142ED */ bl          Pal60Page_construct
/* 80623400 48001280 */ b           lbl_80624680
lbl_80623404:
entry jump_80623404
/* 80623404 3860006C */ li          r3, 0x6c
/* 80623408 4BC069C5 */ bl          __nw__FUl
/* 8062340C 2C030000 */ cmpwi       r3, 0
/* 80623410 41821270 */ beq-        lbl_80624680
/* 80623414 4BFFC2D5 */ bl          unk_8061f6e8
/* 80623418 48001268 */ b           lbl_80624680
lbl_8062341c:
entry jump_8062341c
/* 8062341C 38600068 */ li          r3, 0x68
/* 80623420 4BC069AD */ bl          __nw__FUl
/* 80623424 2C030000 */ cmpwi       r3, 0
/* 80623428 41821258 */ beq-        lbl_80624680
/* 8062342C 4BFFCC91 */ bl          unk_806200bc
/* 80623430 48001250 */ b           lbl_80624680
lbl_80623434:
entry jump_80623434
/* 80623434 386001C8 */ li          r3, 0x1c8
/* 80623438 4BC06995 */ bl          __nw__FUl
/* 8062343C 2C030000 */ cmpwi       r3, 0
/* 80623440 41821240 */ beq-        lbl_80624680
/* 80623444 4BFFCFFD */ bl          unk_80620440
/* 80623448 48001238 */ b           lbl_80624680
lbl_8062344c:
entry jump_8062344c
/* 8062344C 38600644 */ li          r3, 0x644
/* 80623450 4BC0697D */ bl          __nw__FUl
/* 80623454 2C030000 */ cmpwi       r3, 0
/* 80623458 41821228 */ beq-        lbl_80624680
/* 8062345C 4BFFD1DD */ bl          unk_80620638
/* 80623460 48001220 */ b           lbl_80624680
lbl_80623464:
entry jump_80623464
/* 80623464 3860033C */ li          r3, 0x33c
/* 80623468 4BC06965 */ bl          __nw__FUl
/* 8062346C 2C030000 */ cmpwi       r3, 0
/* 80623470 41821210 */ beq-        lbl_80624680
/* 80623474 4800121D */ bl          unk_80624690
/* 80623478 48001208 */ b           lbl_80624680
lbl_8062347c:
entry jump_8062347c
/* 8062347C 3860033C */ li          r3, 0x33c
/* 80623480 4BC0694D */ bl          __nw__FUl
/* 80623484 2C030000 */ cmpwi       r3, 0
/* 80623488 418211F8 */ beq-        lbl_80624680
/* 8062348C 48001205 */ bl          unk_80624690
/* 80623490 480011F0 */ b           lbl_80624680
lbl_80623494:
entry jump_80623494
/* 80623494 3860033C */ li          r3, 0x33c
/* 80623498 4BC06935 */ bl          __nw__FUl
/* 8062349C 2C030000 */ cmpwi       r3, 0
/* 806234A0 418211E0 */ beq-        lbl_80624680
/* 806234A4 480011ED */ bl          unk_80624690
/* 806234A8 480011D8 */ b           lbl_80624680
lbl_806234ac:
entry jump_806234ac
/* 806234AC 3860033C */ li          r3, 0x33c
/* 806234B0 4BC0691D */ bl          __nw__FUl
/* 806234B4 2C030000 */ cmpwi       r3, 0
/* 806234B8 418211C8 */ beq-        lbl_80624680
/* 806234BC 480011D5 */ bl          unk_80624690
/* 806234C0 480011C0 */ b           lbl_80624680
lbl_806234c4:
entry jump_806234c4
/* 806234C4 3860033C */ li          r3, 0x33c
/* 806234C8 4BC06905 */ bl          __nw__FUl
/* 806234CC 2C030000 */ cmpwi       r3, 0
/* 806234D0 418211B0 */ beq-        lbl_80624680
/* 806234D4 480011BD */ bl          unk_80624690
/* 806234D8 480011A8 */ b           lbl_80624680
lbl_806234dc:
entry jump_806234dc
/* 806234DC 386001DC */ li          r3, 0x1dc
/* 806234E0 4BC068ED */ bl          __nw__FUl
/* 806234E4 2C030000 */ cmpwi       r3, 0
/* 806234E8 41821198 */ beq-        lbl_80624680
/* 806234EC 480011F9 */ bl          GpRacePage_construct
/* 806234F0 48001190 */ b           lbl_80624680
lbl_806234f4:
entry jump_806234f4
/* 806234F4 386001DC */ li          r3, 0x1dc
/* 806234F8 4BC068D5 */ bl          __nw__FUl
/* 806234FC 2C030000 */ cmpwi       r3, 0
/* 80623500 41821180 */ beq-        lbl_80624680
/* 80623504 480012C9 */ bl          TtRacePage_construct
/* 80623508 48001178 */ b           lbl_80624680
lbl_8062350c:
entry jump_8062350c
/* 8062350C 386001DC */ li          r3, 0x1dc
/* 80623510 4BC068BD */ bl          __nw__FUl
/* 80623514 2C030000 */ cmpwi       r3, 0
/* 80623518 41821168 */ beq-        lbl_80624680
/* 8062351C 48001359 */ bl          unk_80624874
/* 80623520 48001160 */ b           lbl_80624680
lbl_80623524:
entry jump_80623524
/* 80623524 386001DC */ li          r3, 0x1dc
/* 80623528 4BC068A5 */ bl          __nw__FUl
/* 8062352C 2C030000 */ cmpwi       r3, 0
/* 80623530 41821150 */ beq-        lbl_80624680
/* 80623534 480013C1 */ bl          unk_806248f4
/* 80623538 48001148 */ b           lbl_80624680
lbl_8062353c:
entry jump_8062353c
/* 8062353C 386001DC */ li          r3, 0x1dc
/* 80623540 4BC0688D */ bl          __nw__FUl
/* 80623544 2C030000 */ cmpwi       r3, 0
/* 80623548 41821138 */ beq-        lbl_80624680
/* 8062354C 48001429 */ bl          unk_80624974
/* 80623550 48001130 */ b           lbl_80624680
lbl_80623554:
entry jump_80623554
/* 80623554 386001DC */ li          r3, 0x1dc
/* 80623558 4BC06875 */ bl          __nw__FUl
/* 8062355C 2C030000 */ cmpwi       r3, 0
/* 80623560 41821120 */ beq-        lbl_80624680
/* 80623564 48001491 */ bl          unk_806249f4
/* 80623568 48001118 */ b           lbl_80624680
lbl_8062356c:
entry jump_8062356c
/* 8062356C 386001DC */ li          r3, 0x1dc
/* 80623570 4BC0685D */ bl          __nw__FUl
/* 80623574 2C030000 */ cmpwi       r3, 0
/* 80623578 41821108 */ beq-        lbl_80624680
/* 8062357C 480014F9 */ bl          unk_80624a74
/* 80623580 48001100 */ b           lbl_80624680
lbl_80623584:
entry jump_80623584
/* 80623584 38600344 */ li          r3, 0x344
/* 80623588 4BC06845 */ bl          __nw__FUl
/* 8062358C 2C030000 */ cmpwi       r3, 0
/* 80623590 418210F0 */ beq-        lbl_80624680
/* 80623594 48001561 */ bl          unk_80624af4
/* 80623598 480010E8 */ b           lbl_80624680
lbl_8062359c:
entry jump_8062359c
/* 8062359C 38600344 */ li          r3, 0x344
/* 806235A0 4BC0682D */ bl          __nw__FUl
/* 806235A4 2C030000 */ cmpwi       r3, 0
/* 806235A8 418210D8 */ beq-        lbl_80624680
/* 806235AC 480015F5 */ bl          unk_80624ba0
/* 806235B0 480010D0 */ b           lbl_80624680
lbl_806235b4:
entry jump_806235b4
/* 806235B4 38600344 */ li          r3, 0x344
/* 806235B8 4BC06815 */ bl          __nw__FUl
/* 806235BC 2C030000 */ cmpwi       r3, 0
/* 806235C0 418210C0 */ beq-        lbl_80624680
/* 806235C4 48001621 */ bl          unk_80624be4
/* 806235C8 480010B8 */ b           lbl_80624680
lbl_806235cc:
entry jump_806235cc
/* 806235CC 38600344 */ li          r3, 0x344
/* 806235D0 4BC067FD */ bl          __nw__FUl
/* 806235D4 2C030000 */ cmpwi       r3, 0
/* 806235D8 418210A8 */ beq-        lbl_80624680
/* 806235DC 4800164D */ bl          unk_80624c28
/* 806235E0 480010A0 */ b           lbl_80624680
lbl_806235e4:
entry jump_806235e4
/* 806235E4 38600344 */ li          r3, 0x344
/* 806235E8 4BC067E5 */ bl          __nw__FUl
/* 806235EC 2C030000 */ cmpwi       r3, 0
/* 806235F0 41821090 */ beq-        lbl_80624680
/* 806235F4 48001679 */ bl          unk_80624c6c
/* 806235F8 48001088 */ b           lbl_80624680
lbl_806235fc:
entry jump_806235fc
/* 806235FC 38600344 */ li          r3, 0x344
/* 80623600 4BC067CD */ bl          __nw__FUl
/* 80623604 2C030000 */ cmpwi       r3, 0
/* 80623608 41821078 */ beq-        lbl_80624680
/* 8062360C 480016A5 */ bl          unk_80624cb0
/* 80623610 48001070 */ b           lbl_80624680
lbl_80623614:
entry jump_80623614
/* 80623614 38600344 */ li          r3, 0x344
/* 80623618 4BC067B5 */ bl          __nw__FUl
/* 8062361C 2C030000 */ cmpwi       r3, 0
/* 80623620 41821060 */ beq-        lbl_80624680
/* 80623624 480016D1 */ bl          unk_80624cf4
/* 80623628 48001058 */ b           lbl_80624680
lbl_8062362c:
entry jump_8062362c
/* 8062362C 38600344 */ li          r3, 0x344
/* 80623630 4BC0679D */ bl          __nw__FUl
/* 80623634 2C030000 */ cmpwi       r3, 0
/* 80623638 41821048 */ beq-        lbl_80624680
/* 8062363C 480016FD */ bl          unk_80624d38
/* 80623640 48001040 */ b           lbl_80624680
lbl_80623644:
entry jump_80623644
/* 80623644 38600344 */ li          r3, 0x344
/* 80623648 4BC06785 */ bl          __nw__FUl
/* 8062364C 2C030000 */ cmpwi       r3, 0
/* 80623650 41821030 */ beq-        lbl_80624680
/* 80623654 48001729 */ bl          unk_80624d7c
/* 80623658 48001028 */ b           lbl_80624680
lbl_8062365c:
entry jump_8062365c
/* 8062365C 38600344 */ li          r3, 0x344
/* 80623660 4BC0676D */ bl          __nw__FUl
/* 80623664 2C030000 */ cmpwi       r3, 0
/* 80623668 41821018 */ beq-        lbl_80624680
/* 8062366C 48001755 */ bl          unk_80624dc0
/* 80623670 48001010 */ b           lbl_80624680
lbl_80623674:
entry jump_80623674
/* 80623674 38600344 */ li          r3, 0x344
/* 80623678 4BC06755 */ bl          __nw__FUl
/* 8062367C 2C030000 */ cmpwi       r3, 0
/* 80623680 41821000 */ beq-        lbl_80624680
/* 80623684 48001781 */ bl          unk_80624e04
/* 80623688 48000FF8 */ b           lbl_80624680
lbl_8062368c:
entry jump_8062368c
/* 8062368C 38600344 */ li          r3, 0x344
/* 80623690 4BC0673D */ bl          __nw__FUl
/* 80623694 2C030000 */ cmpwi       r3, 0
/* 80623698 41820FE8 */ beq-        lbl_80624680
/* 8062369C 480017AD */ bl          unk_80624e48
/* 806236A0 48000FE0 */ b           lbl_80624680
lbl_806236a4:
entry jump_806236a4
/* 806236A4 38600344 */ li          r3, 0x344
/* 806236A8 4BC06725 */ bl          __nw__FUl
/* 806236AC 2C030000 */ cmpwi       r3, 0
/* 806236B0 41820FD0 */ beq-        lbl_80624680
/* 806236B4 480017D9 */ bl          unk_80624e8c
/* 806236B8 48000FC8 */ b           lbl_80624680
lbl_806236bc:
entry jump_806236bc
/* 806236BC 38600344 */ li          r3, 0x344
/* 806236C0 4BC0670D */ bl          __nw__FUl
/* 806236C4 2C030000 */ cmpwi       r3, 0
/* 806236C8 41820FB8 */ beq-        lbl_80624680
/* 806236CC 48001805 */ bl          unk_80624ed0
/* 806236D0 48000FB0 */ b           lbl_80624680
lbl_806236d4:
entry jump_806236d4
/* 806236D4 38600344 */ li          r3, 0x344
/* 806236D8 4BC066F5 */ bl          __nw__FUl
/* 806236DC 2C030000 */ cmpwi       r3, 0
/* 806236E0 41820FA0 */ beq-        lbl_80624680
/* 806236E4 48001831 */ bl          unk_80624f14
/* 806236E8 48000F98 */ b           lbl_80624680
lbl_806236ec:
entry jump_806236ec
/* 806236EC 38600344 */ li          r3, 0x344
/* 806236F0 4BC066DD */ bl          __nw__FUl
/* 806236F4 2C030000 */ cmpwi       r3, 0
/* 806236F8 41820F88 */ beq-        lbl_80624680
/* 806236FC 4800185D */ bl          unk_80624f58
/* 80623700 48000F80 */ b           lbl_80624680
lbl_80623704:
entry jump_80623704
/* 80623704 38600344 */ li          r3, 0x344
/* 80623708 4BC066C5 */ bl          __nw__FUl
/* 8062370C 2C030000 */ cmpwi       r3, 0
/* 80623710 41820F70 */ beq-        lbl_80624680
/* 80623714 48001889 */ bl          unk_80624f9c
/* 80623718 48000F68 */ b           lbl_80624680
lbl_8062371c:
entry jump_8062371c
/* 8062371C 38600344 */ li          r3, 0x344
/* 80623720 4BC066AD */ bl          __nw__FUl
/* 80623724 2C030000 */ cmpwi       r3, 0
/* 80623728 41820F58 */ beq-        lbl_80624680
/* 8062372C 480018B5 */ bl          unk_80624fe0
/* 80623730 48000F50 */ b           lbl_80624680
lbl_80623734:
entry jump_80623734
/* 80623734 38600344 */ li          r3, 0x344
/* 80623738 4BC06695 */ bl          __nw__FUl
/* 8062373C 2C030000 */ cmpwi       r3, 0
/* 80623740 41820F40 */ beq-        lbl_80624680
/* 80623744 480018E1 */ bl          unk_80625024
/* 80623748 48000F38 */ b           lbl_80624680
lbl_8062374c:
entry jump_8062374c
/* 8062374C 38600344 */ li          r3, 0x344
/* 80623750 4BC0667D */ bl          __nw__FUl
/* 80623754 2C030000 */ cmpwi       r3, 0
/* 80623758 41820F28 */ beq-        lbl_80624680
/* 8062375C 4800190D */ bl          unk_80625068
/* 80623760 48000F20 */ b           lbl_80624680
lbl_80623764:
entry jump_80623764
/* 80623764 38600344 */ li          r3, 0x344
/* 80623768 4BC06665 */ bl          __nw__FUl
/* 8062376C 2C030000 */ cmpwi       r3, 0
/* 80623770 41820F10 */ beq-        lbl_80624680
/* 80623774 48001939 */ bl          unk_806250ac
/* 80623778 48000F08 */ b           lbl_80624680
lbl_8062377c:
entry jump_8062377c
/* 8062377C 38600344 */ li          r3, 0x344
/* 80623780 4BC0664D */ bl          __nw__FUl
/* 80623784 2C030000 */ cmpwi       r3, 0
/* 80623788 41820EF8 */ beq-        lbl_80624680
/* 8062378C 48001965 */ bl          unk_806250f0
/* 80623790 48000EF0 */ b           lbl_80624680
lbl_80623794:
entry jump_80623794
/* 80623794 386004E4 */ li          r3, 0x4e4
/* 80623798 4BC06635 */ bl          __nw__FUl
/* 8062379C 2C030000 */ cmpwi       r3, 0
/* 806237A0 41820EE0 */ beq-        lbl_80624680
/* 806237A4 48231F41 */ bl          TimeAttackSplitsPage_ct
/* 806237A8 48000ED8 */ b           lbl_80624680
lbl_806237ac:
entry jump_806237ac
/* 806237AC 3860032C */ li          r3, 0x32c
/* 806237B0 4BC0661D */ bl          __nw__FUl
/* 806237B4 2C030000 */ cmpwi       r3, 0
/* 806237B8 41820EC8 */ beq-        lbl_80624680
/* 806237BC 48001979 */ bl          TimeAttackLeaderboardPage_ct
/* 806237C0 48000EC0 */ b           lbl_80624680
lbl_806237c4:
entry jump_806237c4
/* 806237C4 386001A8 */ li          r3, 0x1a8
/* 806237C8 4BC06605 */ bl          __nw__FUl
/* 806237CC 2C030000 */ cmpwi       r3, 0
/* 806237D0 41820EB0 */ beq-        lbl_80624680
/* 806237D4 48001A99 */ bl          unk_8062526c
/* 806237D8 48000EA8 */ b           lbl_80624680
lbl_806237dc:
entry jump_806237dc
/* 806237DC 386001A8 */ li          r3, 0x1a8
/* 806237E0 4BC065ED */ bl          __nw__FUl
/* 806237E4 2C030000 */ cmpwi       r3, 0
/* 806237E8 41820E98 */ beq-        lbl_80624680
/* 806237EC 48001ABD */ bl          unk_806252a8
/* 806237F0 48000E90 */ b           lbl_80624680
lbl_806237f4:
entry jump_806237f4
/* 806237F4 386001A8 */ li          r3, 0x1a8
/* 806237F8 4BC065D5 */ bl          __nw__FUl
/* 806237FC 2C030000 */ cmpwi       r3, 0
/* 80623800 41820E80 */ beq-        lbl_80624680
/* 80623804 48001AE1 */ bl          unk_806252e4
/* 80623808 48000E78 */ b           lbl_80624680
lbl_8062380c:
entry jump_8062380c
/* 8062380C 386018C4 */ li          r3, 0x18c4
/* 80623810 4BC065BD */ bl          __nw__FUl
/* 80623814 2C030000 */ cmpwi       r3, 0
/* 80623818 41820E68 */ beq-        lbl_80624680
/* 8062381C 48001B05 */ bl          unk_80625320
/* 80623820 48000E60 */ b           lbl_80624680
lbl_80623824:
entry jump_80623824
/* 80623824 386018C4 */ li          r3, 0x18c4
/* 80623828 4BC065A5 */ bl          __nw__FUl
/* 8062382C 2C030000 */ cmpwi       r3, 0
/* 80623830 41820E50 */ beq-        lbl_80624680
/* 80623834 48001CB5 */ bl          unk_806254e8
/* 80623838 48000E48 */ b           lbl_80624680
lbl_8062383c:
entry jump_8062383c
/* 8062383C 386018C4 */ li          r3, 0x18c4
/* 80623840 4BC0658D */ bl          __nw__FUl
/* 80623844 2C030000 */ cmpwi       r3, 0
/* 80623848 41820E38 */ beq-        lbl_80624680
/* 8062384C 48001D05 */ bl          unk_80625550
/* 80623850 48000E30 */ b           lbl_80624680
lbl_80623854:
entry jump_80623854
/* 80623854 386001A8 */ li          r3, 0x1a8
/* 80623858 4BC06575 */ bl          __nw__FUl
/* 8062385C 2C030000 */ cmpwi       r3, 0
/* 80623860 41820E20 */ beq-        lbl_80624680
/* 80623864 48001D55 */ bl          unk_806255b8
/* 80623868 48000E18 */ b           lbl_80624680
lbl_8062386c:
entry jump_8062386c
/* 8062386C 386001DC */ li          r3, 0x1dc
/* 80623870 4BC0655D */ bl          __nw__FUl
/* 80623874 2C030000 */ cmpwi       r3, 0
/* 80623878 41820E08 */ beq-        lbl_80624680
/* 8062387C 48001D79 */ bl          unk_806255f4
/* 80623880 48000E00 */ b           lbl_80624680
lbl_80623884:
entry jump_80623884
/* 80623884 386001DC */ li          r3, 0x1dc
/* 80623888 4BC06545 */ bl          __nw__FUl
/* 8062388C 2C030000 */ cmpwi       r3, 0
/* 80623890 41820DF0 */ beq-        lbl_80624680
/* 80623894 48001DE1 */ bl          unk_80625674
/* 80623898 48000DE8 */ b           lbl_80624680
lbl_8062389c:
entry jump_8062389c
/* 8062389C 38600344 */ li          r3, 0x344
/* 806238A0 4BC0652D */ bl          __nw__FUl
/* 806238A4 2C030000 */ cmpwi       r3, 0
/* 806238A8 41820DD8 */ beq-        lbl_80624680
/* 806238AC 48001E49 */ bl          unk_806256f4
/* 806238B0 48000DD0 */ b           lbl_80624680
lbl_806238b4:
entry jump_806238b4
/* 806238B4 38600344 */ li          r3, 0x344
/* 806238B8 4BC06515 */ bl          __nw__FUl
/* 806238BC 2C030000 */ cmpwi       r3, 0
/* 806238C0 41820DC0 */ beq-        lbl_80624680
/* 806238C4 48001E75 */ bl          unk_80625738
/* 806238C8 48000DB8 */ b           lbl_80624680
lbl_806238cc:
entry jump_806238cc
/* 806238CC 386007A8 */ li          r3, 0x7a8
/* 806238D0 4BC064FD */ bl          __nw__FUl
/* 806238D4 2C030000 */ cmpwi       r3, 0
/* 806238D8 41820DA8 */ beq-        lbl_80624680
/* 806238DC 4802E5A5 */ bl          unk_80651e80
/* 806238E0 48000DA0 */ b           lbl_80624680
lbl_806238e4:
entry jump_806238e4
/* 806238E4 38600314 */ li          r3, 0x314
/* 806238E8 4BC064E5 */ bl          __nw__FUl
/* 806238EC 2C030000 */ cmpwi       r3, 0
/* 806238F0 41820D90 */ beq-        lbl_80624680
/* 806238F4 4BF979D1 */ bl          unk_805bb2c4
/* 806238F8 48000D88 */ b           lbl_80624680
lbl_806238fc:
entry jump_806238fc
/* 806238FC 38601770 */ li          r3, 0x1770
/* 80623900 4BC064CD */ bl          __nw__FUl
/* 80623904 2C030000 */ cmpwi       r3, 0
/* 80623908 41820D78 */ beq-        lbl_80624680
/* 8062390C 4BF98731 */ bl          unk_805bc03c
/* 80623910 48000D70 */ b           lbl_80624680
lbl_80623914:
entry jump_80623914
/* 80623914 38600A68 */ li          r3, 0xa68
/* 80623918 4BC064B5 */ bl          __nw__FUl
/* 8062391C 2C030000 */ cmpwi       r3, 0
/* 80623920 41820D60 */ beq-        lbl_80624680
/* 80623924 4BFA76B5 */ bl          unk_805cafd8
/* 80623928 48000D58 */ b           lbl_80624680
lbl_8062392c:
entry jump_8062392c
/* 8062392C 38600354 */ li          r3, 0x354
/* 80623930 4BC0649D */ bl          __nw__FUl
/* 80623934 2C030000 */ cmpwi       r3, 0
/* 80623938 41820D48 */ beq-        lbl_80624680
/* 8062393C 4BFA844D */ bl          unk_805cbd88
/* 80623940 48000D40 */ b           lbl_80624680
lbl_80623944:
entry jump_80623944
/* 80623944 38600CF0 */ li          r3, 0xcf0
/* 80623948 4BC06485 */ bl          __nw__FUl
/* 8062394C 2C030000 */ cmpwi       r3, 0
/* 80623950 41820D30 */ beq-        lbl_80624680
/* 80623954 4BFA8A65 */ bl          unk_805cc3b8
/* 80623958 48000D28 */ b           lbl_80624680
lbl_8062395c:
entry jump_8062395c
/* 8062395C 386001DC */ li          r3, 0x1dc
/* 80623960 4BC0646D */ bl          __nw__FUl
/* 80623964 2C030000 */ cmpwi       r3, 0
/* 80623968 41820D18 */ beq-        lbl_80624680
/* 8062396C 48001E11 */ bl          unk_8062577c
/* 80623970 48000D10 */ b           lbl_80624680
lbl_80623974:
entry jump_80623974
/* 80623974 386001DC */ li          r3, 0x1dc
/* 80623978 4BC06455 */ bl          __nw__FUl
/* 8062397C 2C030000 */ cmpwi       r3, 0
/* 80623980 41820D00 */ beq-        lbl_80624680
/* 80623984 48001E79 */ bl          unk_806257fc
/* 80623988 48000CF8 */ b           lbl_80624680
lbl_8062398c:
entry jump_8062398c
/* 8062398C 386001DC */ li          r3, 0x1dc
/* 80623990 4BC0643D */ bl          __nw__FUl
/* 80623994 2C030000 */ cmpwi       r3, 0
/* 80623998 41820CE8 */ beq-        lbl_80624680
/* 8062399C 48001EE1 */ bl          unk_8062587c
/* 806239A0 48000CE0 */ b           lbl_80624680
lbl_806239a4:
entry jump_806239a4
/* 806239A4 386001DC */ li          r3, 0x1dc
/* 806239A8 4BC06425 */ bl          __nw__FUl
/* 806239AC 2C030000 */ cmpwi       r3, 0
/* 806239B0 41820CD0 */ beq-        lbl_80624680
/* 806239B4 48001F49 */ bl          unk_806258fc
/* 806239B8 48000CC8 */ b           lbl_80624680
lbl_806239bc:
entry jump_806239bc
/* 806239BC 386015FC */ li          r3, 0x15fc
/* 806239C0 4BC0640D */ bl          __nw__FUl
/* 806239C4 2C030000 */ cmpwi       r3, 0
/* 806239C8 41820CB8 */ beq-        lbl_80624680
/* 806239CC 480221FD */ bl          unk_80645bc8
/* 806239D0 48000CB0 */ b           lbl_80624680
lbl_806239d4:
entry jump_806239d4
/* 806239D4 386001E0 */ li          r3, 0x1e0
/* 806239D8 4BC063F5 */ bl          __nw__FUl
/* 806239DC 2C030000 */ cmpwi       r3, 0
/* 806239E0 41820CA0 */ beq-        lbl_80624680
/* 806239E4 48029E51 */ bl          unk_8064d834
/* 806239E8 48000C98 */ b           lbl_80624680
lbl_806239ec:
entry jump_806239ec
/* 806239EC 38600B20 */ li          r3, 0xb20
/* 806239F0 4BC063DD */ bl          __nw__FUl
/* 806239F4 2C030000 */ cmpwi       r3, 0
/* 806239F8 41820C88 */ beq-        lbl_80624680
/* 806239FC 4802A4ED */ bl          unk_8064dee8
/* 80623A00 48000C80 */ b           lbl_80624680
lbl_80623a04:
entry jump_80623a04
/* 80623A04 386008BC */ li          r3, 0x8bc
/* 80623A08 4BC063C5 */ bl          __nw__FUl
/* 80623A0C 2C030000 */ cmpwi       r3, 0
/* 80623A10 41820C70 */ beq-        lbl_80624680
/* 80623A14 4802AFBD */ bl          unk_8064e9d0
/* 80623A18 48000C68 */ b           lbl_80624680
lbl_80623a1c:
entry jump_80623a1c
/* 80623A1C 386001CC */ li          r3, 0x1cc
/* 80623A20 4BC063AD */ bl          __nw__FUl
/* 80623A24 2C030000 */ cmpwi       r3, 0
/* 80623A28 41820C58 */ beq-        lbl_80624680
/* 80623A2C 4802B73D */ bl          unk_8064f168
/* 80623A30 48000C50 */ b           lbl_80624680
lbl_80623a34:
entry jump_80623a34
/* 80623A34 386001DC */ li          r3, 0x1dc
/* 80623A38 4BC06395 */ bl          __nw__FUl
/* 80623A3C 2C030000 */ cmpwi       r3, 0
/* 80623A40 41820C40 */ beq-        lbl_80624680
/* 80623A44 48001F39 */ bl          LiveViewPage_ct
/* 80623A48 48000C38 */ b           lbl_80624680
lbl_80623a4c:
entry jump_80623a4c
/* 80623A4C 386001DC */ li          r3, 0x1dc
/* 80623A50 4BC0637D */ bl          __nw__FUl
/* 80623A54 2C030000 */ cmpwi       r3, 0
/* 80623A58 41820C28 */ beq-        lbl_80624680
/* 80623A5C 48001FA1 */ bl          unk_806259fc
/* 80623A60 48000C20 */ b           lbl_80624680
lbl_80623a64:
entry jump_80623a64
/* 80623A64 386006CC */ li          r3, 0x6cc
/* 80623A68 4BC06365 */ bl          __nw__FUl
/* 80623A6C 2C030000 */ cmpwi       r3, 0
/* 80623A70 41820C10 */ beq-        lbl_80624680
/* 80623A74 48002009 */ bl          RaceConfirmPage_ct
/* 80623A78 48000C08 */ b           lbl_80624680
lbl_80623a7c:
entry jump_80623a7c
/* 80623A7C 386004B4 */ li          r3, 0x4b4
/* 80623A80 4BC0634D */ bl          __nw__FUl
/* 80623A84 2C030000 */ cmpwi       r3, 0
/* 80623A88 41820BF8 */ beq-        lbl_80624680
/* 80623A8C 4BF97205 */ bl          unk_805bac90
/* 80623A90 48000BF0 */ b           lbl_80624680
lbl_80623a94:
entry jump_80623a94
/* 80623A94 38600604 */ li          r3, 0x604
/* 80623A98 4BC06335 */ bl          __nw__FUl
/* 80623A9C 2C030000 */ cmpwi       r3, 0
/* 80623AA0 41820BE0 */ beq-        lbl_80624680
/* 80623AA4 4BFD5509 */ bl          MessageWindowPopupPage_ct
/* 80623AA8 48000BD8 */ b           lbl_80624680
lbl_80623aac:
entry jump_80623aac
/* 80623AAC 38600BA0 */ li          r3, 0xba0
/* 80623AB0 4BC0631D */ bl          __nw__FUl
/* 80623AB4 2C030000 */ cmpwi       r3, 0
/* 80623AB8 41820BC8 */ beq-        lbl_80624680
/* 80623ABC 4802ECB9 */ bl          YesNoPage_construct
/* 80623AC0 48000BC0 */ b           lbl_80624680
lbl_80623ac4:
entry jump_80623ac4
/* 80623AC4 38600348 */ li          r3, 0x348
/* 80623AC8 4BC06305 */ bl          __nw__FUl
/* 80623ACC 2C030000 */ cmpwi       r3, 0
/* 80623AD0 41820BB0 */ beq-        lbl_80624680
/* 80623AD4 4BF973C5 */ bl          unk_805bae98
/* 80623AD8 48000BA8 */ b           lbl_80624680
lbl_80623adc:
entry jump_80623adc
/* 80623ADC 38600608 */ li          r3, 0x608
/* 80623AE0 4BC062ED */ bl          __nw__FUl
/* 80623AE4 2C030000 */ cmpwi       r3, 0
/* 80623AE8 41820B98 */ beq-        lbl_80624680
/* 80623AEC 4BFD5831 */ bl          unk_805f931c
/* 80623AF0 48000B90 */ b           lbl_80624680
lbl_80623af4:
entry jump_80623af4
/* 80623AF4 38600A58 */ li          r3, 0xa58
/* 80623AF8 4BC062D5 */ bl          __nw__FUl
/* 80623AFC 2C030000 */ cmpwi       r3, 0
/* 80623B00 41820B80 */ beq-        lbl_80624680
/* 80623B04 4BF9E1BD */ bl          ConfirmPage_ct
/* 80623B08 48000B78 */ b           lbl_80624680
lbl_80623b0c:
entry jump_80623b0c
/* 80623B0C 38600A2C */ li          r3, 0xa2c
/* 80623B10 4BC062BD */ bl          __nw__FUl
/* 80623B14 2C030000 */ cmpwi       r3, 0
/* 80623B18 41820B68 */ beq-        lbl_80624680
/* 80623B1C 4802F261 */ bl          unk_80652d7c
/* 80623B20 48000B60 */ b           lbl_80624680
lbl_80623b24:
entry jump_80623b24
/* 80623B24 386029F8 */ li          r3, 0x29f8
/* 80623B28 4BC062A5 */ bl          __nw__FUl
/* 80623B2C 2C030000 */ cmpwi       r3, 0
/* 80623B30 41820B50 */ beq-        lbl_80624680
/* 80623B34 4BFC301D */ bl          unk_805e6b50
/* 80623B38 48000B48 */ b           lbl_80624680
lbl_80623b3c:
entry jump_80623b3c
/* 80623B3C 38600058 */ li          r3, 0x58
/* 80623B40 4BC0628D */ bl          __nw__FUl
/* 80623B44 2C030000 */ cmpwi       r3, 0
/* 80623B48 41820B38 */ beq-        lbl_80624680
/* 80623B4C 4BF9FAAD */ bl          unk_805c35f8
/* 80623B50 48000B30 */ b           lbl_80624680
lbl_80623b54:
entry jump_80623b54
/* 80623B54 3860060C */ li          r3, 0x60c
/* 80623B58 4BC06275 */ bl          __nw__FUl
/* 80623B5C 2C030000 */ cmpwi       r3, 0
/* 80623B60 41820B20 */ beq-        lbl_80624680
/* 80623B64 4BF9FC7D */ bl          ControllerBatteryPage_construct
/* 80623B68 48000B18 */ b           lbl_80624680
lbl_80623b6c:
entry jump_80623b6c
/* 80623B6C 38600350 */ li          r3, 0x350
/* 80623B70 4BC0625D */ bl          __nw__FUl
/* 80623B74 2C030000 */ cmpwi       r3, 0
/* 80623B78 41820B08 */ beq-        lbl_80624680
/* 80623B7C 48016E8D */ bl          TitlePage_construct
/* 80623B80 48000B00 */ b           lbl_80624680
lbl_80623b84:
entry jump_80623b84
/* 80623B84 386001C8 */ li          r3, 0x1c8
/* 80623B88 4BC06245 */ bl          __nw__FUl
/* 80623B8C 2C030000 */ cmpwi       r3, 0
/* 80623B90 41820AF0 */ beq-        lbl_80624680
/* 80623B94 48017981 */ bl          TitleBackPage_construct
/* 80623B98 48000AE8 */ b           lbl_80624680
lbl_80623b9c:
entry jump_80623b9c
/* 80623B9C 386001D0 */ li          r3, 0x1d0
/* 80623BA0 4BC0622D */ bl          __nw__FUl
/* 80623BA4 2C030000 */ cmpwi       r3, 0
/* 80623BA8 41820AD8 */ beq-        lbl_80624680
/* 80623BAC 48017F5D */ bl          TitleMoviePage_construct
/* 80623BB0 48000AD0 */ b           lbl_80624680
lbl_80623bb4:
entry jump_80623bb4
/* 80623BB4 38600CB8 */ li          r3, 0xcb8
/* 80623BB8 4BC06215 */ bl          __nw__FUl
/* 80623BBC 2C030000 */ cmpwi       r3, 0
/* 80623BC0 41820AC0 */ beq-        lbl_80624680
/* 80623BC4 480021DD */ bl          MainMenuPage_ct
/* 80623BC8 48000AB8 */ b           lbl_80624680
lbl_80623bcc:
entry jump_80623bcc
/* 80623BCC 38600440 */ li          r3, 0x440
/* 80623BD0 4BC061FD */ bl          __nw__FUl
/* 80623BD4 2C030000 */ cmpwi       r3, 0
/* 80623BD8 41820AA8 */ beq-        lbl_80624680
/* 80623BDC 4800249D */ bl          unk_80626078
/* 80623BE0 48000AA0 */ b           lbl_80624680
lbl_80623be4:
entry jump_80623be4
/* 80623BE4 38600348 */ li          r3, 0x348
/* 80623BE8 4BC061E5 */ bl          __nw__FUl
/* 80623BEC 2C030000 */ cmpwi       r3, 0
/* 80623BF0 41820A90 */ beq-        lbl_80624680
/* 80623BF4 4BFD79C9 */ bl          unk_805fb5bc
/* 80623BF8 48000A88 */ b           lbl_80624680
lbl_80623bfc:
entry jump_80623bfc
/* 80623BFC 38600440 */ li          r3, 0x440
/* 80623C00 4BC061CD */ bl          __nw__FUl
/* 80623C04 2C030000 */ cmpwi       r3, 0
/* 80623C08 41820A78 */ beq-        lbl_80624680
/* 80623C0C 4800246D */ bl          unk_80626078
/* 80623C10 48000A70 */ b           lbl_80624680
lbl_80623c14:
entry jump_80623c14
/* 80623C14 3860044C */ li          r3, 0x44c
/* 80623C18 4BC061B5 */ bl          __nw__FUl
/* 80623C1C 2C030000 */ cmpwi       r3, 0
/* 80623C20 41820A60 */ beq-        lbl_80624680
/* 80623C24 480025C5 */ bl          unk_806261e8
/* 80623C28 48000A58 */ b           lbl_80624680
lbl_80623c2c:
entry jump_80623c2c
/* 80623C2C 386001CC */ li          r3, 0x1cc
/* 80623C30 4BC0619D */ bl          __nw__FUl
/* 80623C34 2C030000 */ cmpwi       r3, 0
/* 80623C38 41820A48 */ beq-        lbl_80624680
/* 80623C3C 48018471 */ bl          unk_8063c0ac
/* 80623C40 48000A40 */ b           lbl_80624680
lbl_80623c44:
entry jump_80623c44
/* 80623C44 38600F20 */ li          r3, 0xf20
/* 80623C48 4BC06185 */ bl          __nw__FUl
/* 80623C4C 2C030000 */ cmpwi       r3, 0
/* 80623C50 41820A30 */ beq-        lbl_80624680
/* 80623C54 48002709 */ bl          MiiSelectPage_ct
/* 80623C58 48000A28 */ b           lbl_80624680
lbl_80623c5c:
entry jump_80623c5c
/* 80623C5C 38600674 */ li          r3, 0x674
/* 80623C60 4BC0616D */ bl          __nw__FUl
/* 80623C64 2C030000 */ cmpwi       r3, 0
/* 80623C68 41820A18 */ beq-        lbl_80624680
/* 80623C6C 4BFDF299 */ bl          unk_80602f04
/* 80623C70 48000A10 */ b           lbl_80624680
lbl_80623c74:
entry jump_80623c74
/* 80623C74 38600D70 */ li          r3, 0xd70
/* 80623C78 4BC06155 */ bl          __nw__FUl
/* 80623C7C 2C030000 */ cmpwi       r3, 0
/* 80623C80 41820A00 */ beq-        lbl_80624680
/* 80623C84 4BFDFAE1 */ bl          unk_80603764
/* 80623C88 480009F8 */ b           lbl_80624680
lbl_80623c8c:
entry jump_80623c8c
/* 80623C8C 38600BF0 */ li          r3, 0xbf0
/* 80623C90 4BC0613D */ bl          __nw__FUl
/* 80623C94 2C030000 */ cmpwi       r3, 0
/* 80623C98 418209E8 */ beq-        lbl_80624680
/* 80623C9C 4BFE08E9 */ bl          unk_80604584
/* 80623CA0 480009E0 */ b           lbl_80624680
lbl_80623ca4:
entry jump_80623ca4
/* 80623CA4 38600CC4 */ li          r3, 0xcc4
/* 80623CA8 4BC06125 */ bl          __nw__FUl
/* 80623CAC 2C030000 */ cmpwi       r3, 0
/* 80623CB0 418209D0 */ beq-        lbl_80624680
/* 80623CB4 4BFE1025 */ bl          unk_80604cd8
/* 80623CB8 480009C8 */ b           lbl_80624680
lbl_80623cbc:
entry jump_80623cbc
/* 80623CBC 3860130C */ li          r3, 0x130c
/* 80623CC0 4BC0610D */ bl          __nw__FUl
/* 80623CC4 2C030000 */ cmpwi       r3, 0
/* 80623CC8 418209B8 */ beq-        lbl_80624680
/* 80623CCC 4BFC6B69 */ bl          LicenseSelectPage_construct
/* 80623CD0 480009B0 */ b           lbl_80624680
lbl_80623cd4:
entry jump_80623cd4
/* 80623CD4 386006CC */ li          r3, 0x6cc
/* 80623CD8 4BC060F5 */ bl          __nw__FUl
/* 80623CDC 2C030000 */ cmpwi       r3, 0
/* 80623CE0 418209A0 */ beq-        lbl_80624680
/* 80623CE4 4BFC80C9 */ bl          LicenseDisplayPage_construct
/* 80623CE8 48000998 */ b           lbl_80624680
lbl_80623cec:
entry jump_80623cec
/* 80623CEC 38601138 */ li          r3, 0x1138
/* 80623CF0 4BC060DD */ bl          __nw__FUl
/* 80623CF4 2C030000 */ cmpwi       r3, 0
/* 80623CF8 41820988 */ beq-        lbl_80624680
/* 80623CFC 4BFC97F1 */ bl          LicenseManagementPage_construct
/* 80623D00 48000980 */ b           lbl_80624680
lbl_80623d04:
entry jump_80623d04
/* 80623D04 38600CAC */ li          r3, 0xcac
/* 80623D08 4BC060C5 */ bl          __nw__FUl
/* 80623D0C 2C030000 */ cmpwi       r3, 0
/* 80623D10 41820970 */ beq-        lbl_80624680
/* 80623D14 4BFCA0E1 */ bl          LicenseDeletePage_ct
/* 80623D18 48000968 */ b           lbl_80624680
lbl_80623d1c:
entry jump_80623d1c
/* 80623D1C 386006C4 */ li          r3, 0x6c4
/* 80623D20 4BC060AD */ bl          __nw__FUl
/* 80623D24 2C030000 */ cmpwi       r3, 0
/* 80623D28 41820958 */ beq-        lbl_80624680
/* 80623D2C 4800296D */ bl          SingleMenuPage_ct
/* 80623D30 48000950 */ b           lbl_80624680
lbl_80623d34:
entry jump_80623d34
/* 80623D34 3860083C */ li          r3, 0x83c
/* 80623D38 4BC06095 */ bl          __nw__FUl
/* 80623D3C 2C030000 */ cmpwi       r3, 0
/* 80623D40 41820940 */ beq-        lbl_80624680
/* 80623D44 48002C0D */ bl          ClassSelectPage_ct
/* 80623D48 48000938 */ b           lbl_80624680
lbl_80623d4c:
entry jump_80623d4c
/* 80623D4C 38600918 */ li          r3, 0x918
/* 80623D50 4BC0607D */ bl          __nw__FUl
/* 80623D54 2C030000 */ cmpwi       r3, 0
/* 80623D58 41820928 */ beq-        lbl_80624680
/* 80623D5C 48002EB5 */ bl          CharacterSelectPage_construct
/* 80623D60 48000920 */ b           lbl_80624680
lbl_80623d64:
entry jump_80623d64
/* 80623D64 38600A0C */ li          r3, 0xa0c
/* 80623D68 4BC06065 */ bl          __nw__FUl
/* 80623D6C 2C030000 */ cmpwi       r3, 0
/* 80623D70 41820910 */ beq-        lbl_80624680
/* 80623D74 480032ED */ bl          VehicleSelectPage_ct
/* 80623D78 48000908 */ b           lbl_80624680
lbl_80623d7c:
entry jump_80623d7c
/* 80623D7C 386006CC */ li          r3, 0x6cc
/* 80623D80 4BC0604D */ bl          __nw__FUl
/* 80623D84 2C030000 */ cmpwi       r3, 0
/* 80623D88 418208F8 */ beq-        lbl_80624680
/* 80623D8C 48003641 */ bl          DriftSelectPage_ct
/* 80623D90 480008F0 */ b           lbl_80624680
lbl_80623d94:
entry jump_80623d94
/* 80623D94 386023E0 */ li          r3, 0x23e0
/* 80623D98 4BC06035 */ bl          __nw__FUl
/* 80623D9C 2C030000 */ cmpwi       r3, 0
/* 80623DA0 418208E0 */ beq-        lbl_80624680
/* 80623DA4 480038E1 */ bl          RaceCupSelectPage_construct
/* 80623DA8 480008D8 */ b           lbl_80624680
lbl_80623dac:
entry jump_80623dac
/* 80623DAC 38602160 */ li          r3, 0x2160
/* 80623DB0 4BC0601D */ bl          __nw__FUl
/* 80623DB4 2C030000 */ cmpwi       r3, 0
/* 80623DB8 418208C8 */ beq-        lbl_80624680
/* 80623DBC 48003E1D */ bl          RaceCourseSelectPage_construct
/* 80623DC0 480008C0 */ b           lbl_80624680
lbl_80623dc4:
entry jump_80623dc4
/* 80623DC4 3860005C */ li          r3, 0x5c
/* 80623DC8 4BC06005 */ bl          __nw__FUl
/* 80623DCC 2C030000 */ cmpwi       r3, 0
/* 80623DD0 418208B0 */ beq-        lbl_80624680
/* 80623DD4 480150B5 */ bl          TimeAttackBackPage_ct
/* 80623DD8 480008A8 */ b           lbl_80624680
lbl_80623ddc:
entry jump_80623ddc
/* 80623DDC 38601924 */ li          r3, 0x1924
/* 80623DE0 4BC05FED */ bl          __nw__FUl
/* 80623DE4 2C030000 */ cmpwi       r3, 0
/* 80623DE8 41820898 */ beq-        lbl_80624680
/* 80623DEC 48015801 */ bl          GhostSelectPage_ct
/* 80623DF0 48000890 */ b           lbl_80624680
lbl_80623df4:
entry jump_80623df4
/* 80623DF4 386006C4 */ li          r3, 0x6c4
/* 80623DF8 4BC05FD5 */ bl          __nw__FUl
/* 80623DFC 2C030000 */ cmpwi       r3, 0
/* 80623E00 41820880 */ beq-        lbl_80624680
/* 80623E04 4800440D */ bl          VsMenuPage_ct
/* 80623E08 48000878 */ b           lbl_80624680
lbl_80623e0c:
entry jump_80623e0c
/* 80623E0C 38601E10 */ li          r3, 0x1e10
/* 80623E10 4BC05FBD */ bl          __nw__FUl
/* 80623E14 2C030000 */ cmpwi       r3, 0
/* 80623E18 41820868 */ beq-        lbl_80624680
/* 80623E1C 480046AD */ bl          VsSettingsPage_ct
/* 80623E20 48000860 */ b           lbl_80624680
lbl_80623e24:
entry jump_80623e24
/* 80623E24 38601B2C */ li          r3, 0x1b2c
/* 80623E28 4BC05FA5 */ bl          __nw__FUl
/* 80623E2C 2C030000 */ cmpwi       r3, 0
/* 80623E30 41820850 */ beq-        lbl_80624680
/* 80623E34 480049AD */ bl          unk_806287e0
/* 80623E38 48000848 */ b           lbl_80624680
lbl_80623e3c:
entry jump_80623e3c
/* 80623E3C 386006C4 */ li          r3, 0x6c4
/* 80623E40 4BC05F8D */ bl          __nw__FUl
/* 80623E44 2C030000 */ cmpwi       r3, 0
/* 80623E48 41820838 */ beq-        lbl_80624680
/* 80623E4C 48004D39 */ bl          unk_80628b84
/* 80623E50 48000830 */ b           lbl_80624680
lbl_80623e54:
entry jump_80623e54
/* 80623E54 38600B50 */ li          r3, 0xb50
/* 80623E58 4BC05F75 */ bl          __nw__FUl
/* 80623E5C 2C030000 */ cmpwi       r3, 0
/* 80623E60 41820820 */ beq-        lbl_80624680
/* 80623E64 48004FD9 */ bl          unk_80628e3c
/* 80623E68 48000818 */ b           lbl_80624680
lbl_80623e6c:
entry jump_80623e6c
/* 80623E6C 38601B78 */ li          r3, 0x1b78
/* 80623E70 4BC05F5D */ bl          __nw__FUl
/* 80623E74 2C030000 */ cmpwi       r3, 0
/* 80623E78 41820808 */ beq-        lbl_80624680
/* 80623E7C 48005309 */ bl          unk_80629184
/* 80623E80 48000800 */ b           lbl_80624680
lbl_80623e84:
entry jump_80623e84
/* 80623E84 3860175C */ li          r3, 0x175c
/* 80623E88 4BC05F45 */ bl          __nw__FUl
/* 80623E8C 2C030000 */ cmpwi       r3, 0
/* 80623E90 418207F0 */ beq-        lbl_80624680
/* 80623E94 48005609 */ bl          unk_8062949c
/* 80623E98 480007E8 */ b           lbl_80624680
lbl_80623e9c:
entry jump_80623e9c
/* 80623E9C 38601A84 */ li          r3, 0x1a84
/* 80623EA0 4BC05F2D */ bl          __nw__FUl
/* 80623EA4 2C030000 */ cmpwi       r3, 0
/* 80623EA8 418207D8 */ beq-        lbl_80624680
/* 80623EAC 48005AA9 */ bl          unk_80629954
/* 80623EB0 480007D0 */ b           lbl_80624680
lbl_80623eb4:
entry jump_80623eb4
/* 80623EB4 386029AC */ li          r3, 0x29ac
/* 80623EB8 4BC05F15 */ bl          __nw__FUl
/* 80623EBC 2C030000 */ cmpwi       r3, 0
/* 80623EC0 418207C0 */ beq-        lbl_80624680
/* 80623EC4 4800606D */ bl          unk_80629f30
/* 80623EC8 480007B8 */ b           lbl_80624680
lbl_80623ecc:
entry jump_80623ecc
/* 80623ECC 38602B14 */ li          r3, 0x2b14
/* 80623ED0 4BC05EFD */ bl          __nw__FUl
/* 80623ED4 2C030000 */ cmpwi       r3, 0
/* 80623ED8 418207A8 */ beq-        lbl_80624680
/* 80623EDC 4800650D */ bl          unk_8062a3e8
/* 80623EE0 480007A0 */ b           lbl_80624680
lbl_80623ee4:
entry jump_80623ee4
/* 80623EE4 38600D60 */ li          r3, 0xd60
/* 80623EE8 4BC05EE5 */ bl          __nw__FUl
/* 80623EEC 2C030000 */ cmpwi       r3, 0
/* 80623EF0 41820790 */ beq-        lbl_80624680
/* 80623EF4 48006AD1 */ bl          unk_8062a9c4
/* 80623EF8 48000788 */ b           lbl_80624680
lbl_80623efc:
entry jump_80623efc
/* 80623EFC 38600AA8 */ li          r3, 0xaa8
/* 80623F00 4BC05ECD */ bl          __nw__FUl
/* 80623F04 2C030000 */ cmpwi       r3, 0
/* 80623F08 41820778 */ beq-        lbl_80624680
/* 80623F0C 48006D91 */ bl          unk_8062ac9c
/* 80623F10 48000770 */ b           lbl_80624680
lbl_80623f14:
entry jump_80623f14
/* 80623F14 3860083C */ li          r3, 0x83c
/* 80623F18 4BC05EB5 */ bl          __nw__FUl
/* 80623F1C 2C030000 */ cmpwi       r3, 0
/* 80623F20 41820760 */ beq-        lbl_80624680
/* 80623F24 48007065 */ bl          unk_8062af88
/* 80623F28 48000758 */ b           lbl_80624680
lbl_80623f2c:
entry jump_80623f2c
/* 80623F2C 38601A14 */ li          r3, 0x1a14
/* 80623F30 4BC05E9D */ bl          __nw__FUl
/* 80623F34 2C030000 */ cmpwi       r3, 0
/* 80623F38 41820748 */ beq-        lbl_80624680
/* 80623F3C 4BFD1095 */ bl          unk_805f4fd0
/* 80623F40 48000740 */ b           lbl_80624680
lbl_80623f44:
entry jump_80623f44
/* 80623F44 386006C4 */ li          r3, 0x6c4
/* 80623F48 4BC05E85 */ bl          __nw__FUl
/* 80623F4C 2C030000 */ cmpwi       r3, 0
/* 80623F50 41820730 */ beq-        lbl_80624680
/* 80623F54 480072ED */ bl          unk_8062b240
/* 80623F58 48000728 */ b           lbl_80624680
lbl_80623f5c:
entry jump_80623f5c
/* 80623F5C 38604280 */ li          r3, 0x4280
/* 80623F60 4BC05E6D */ bl          __nw__FUl
/* 80623F64 2C030000 */ cmpwi       r3, 0
/* 80623F68 41820718 */ beq-        lbl_80624680
/* 80623F6C 48007589 */ bl          unk_8062b4f4
/* 80623F70 48000710 */ b           lbl_80624680
lbl_80623f74:
entry jump_80623f74
/* 80623F74 386006D0 */ li          r3, 0x6d0
/* 80623F78 4BC05E55 */ bl          __nw__FUl
/* 80623F7C 2C030000 */ cmpwi       r3, 0
/* 80623F80 41820700 */ beq-        lbl_80624680
/* 80623F84 48007939 */ bl          unk_8062b8bc
/* 80623F88 480006F8 */ b           lbl_80624680
lbl_80623f8c:
entry jump_80623f8c
/* 80623F8C 386006CC */ li          r3, 0x6cc
/* 80623F90 4BC05E3D */ bl          __nw__FUl
/* 80623F94 2C030000 */ cmpwi       r3, 0
/* 80623F98 418206E8 */ beq-        lbl_80624680
/* 80623F9C 48007BD5 */ bl          unk_8062bb70
/* 80623FA0 480006E0 */ b           lbl_80624680
lbl_80623fa4:
entry jump_80623fa4
/* 80623FA4 38600070 */ li          r3, 0x70
/* 80623FA8 4BC05E25 */ bl          __nw__FUl
/* 80623FAC 2C030000 */ cmpwi       r3, 0
/* 80623FB0 418206D0 */ beq-        lbl_80624680
/* 80623FB4 48022821 */ bl          unk_806467d4
/* 80623FB8 480006C8 */ b           lbl_80624680
lbl_80623fbc:
entry jump_80623fbc
/* 80623FBC 38600A38 */ li          r3, 0xa38
/* 80623FC0 4BC05E0D */ bl          __nw__FUl
/* 80623FC4 2C030000 */ cmpwi       r3, 0
/* 80623FC8 418206B8 */ beq-        lbl_80624680
/* 80623FCC 48023F01 */ bl          unk_80647ecc
/* 80623FD0 480006B0 */ b           lbl_80624680
lbl_80623fd4:
entry jump_80623fd4
/* 80623FD4 38600C9C */ li          r3, 0xc9c
/* 80623FD8 4BC05DF5 */ bl          __nw__FUl
/* 80623FDC 2C030000 */ cmpwi       r3, 0
/* 80623FE0 418206A0 */ beq-        lbl_80624680
/* 80623FE4 480244C5 */ bl          unk_806484a8
/* 80623FE8 48000698 */ b           lbl_80624680
lbl_80623fec:
entry jump_80623fec
/* 80623FEC 3860006C */ li          r3, 0x6c
/* 80623FF0 4BC05DDD */ bl          __nw__FUl
/* 80623FF4 2C030000 */ cmpwi       r3, 0
/* 80623FF8 41820688 */ beq-        lbl_80624680
/* 80623FFC 48024DED */ bl          unk_80648de8
/* 80624000 48000680 */ b           lbl_80624680
lbl_80624004:
entry jump_80624004
/* 80624004 38600058 */ li          r3, 0x58
/* 80624008 4BC05DC5 */ bl          __nw__FUl
/* 8062400C 2C030000 */ cmpwi       r3, 0
/* 80624010 41820670 */ beq-        lbl_80624680
/* 80624014 4802545D */ bl          unk_80649470
/* 80624018 48000668 */ b           lbl_80624680
lbl_8062401c:
entry jump_8062401c
/* 8062401C 3860048C */ li          r3, 0x48c
/* 80624020 4BC05DAD */ bl          __nw__FUl
/* 80624024 2C030000 */ cmpwi       r3, 0
/* 80624028 41820658 */ beq-        lbl_80624680
/* 8062402C 4802595D */ bl          unk_80649988
/* 80624030 48000650 */ b           lbl_80624680
lbl_80624034:
entry jump_80624034
/* 80624034 38600068 */ li          r3, 0x68
/* 80624038 4BC05D95 */ bl          __nw__FUl
/* 8062403C 2C030000 */ cmpwi       r3, 0
/* 80624040 41820640 */ beq-        lbl_80624680
/* 80624044 48026EB5 */ bl          unk_8064aef8
/* 80624048 48000638 */ b           lbl_80624680
lbl_8062404c:
entry jump_8062404c
/* 8062404C 38600F34 */ li          r3, 0xf34
/* 80624050 4BC05D7D */ bl          __nw__FUl
/* 80624054 2C030000 */ cmpwi       r3, 0
/* 80624058 41820628 */ beq-        lbl_80624680
/* 8062405C 480275E5 */ bl          unk_8064b640
/* 80624060 48000620 */ b           lbl_80624680
lbl_80624064:
entry jump_80624064
/* 80624064 38600CB0 */ li          r3, 0xcb0
/* 80624068 4BC05D65 */ bl          __nw__FUl
/* 8062406C 2C030000 */ cmpwi       r3, 0
/* 80624070 41820610 */ beq-        lbl_80624680
/* 80624074 48027F65 */ bl          unk_8064bfd8
/* 80624078 48000608 */ b           lbl_80624680
lbl_8062407c:
entry jump_8062407c
/* 8062407C 38600F34 */ li          r3, 0xf34
/* 80624080 4BC05D4D */ bl          __nw__FUl
/* 80624084 2C030000 */ cmpwi       r3, 0
/* 80624088 418205F8 */ beq-        lbl_80624680
/* 8062408C 4802873D */ bl          unk_8064c7c8
/* 80624090 480005F0 */ b           lbl_80624680
lbl_80624094:
entry jump_80624094
/* 80624094 38600F34 */ li          r3, 0xf34
/* 80624098 4BC05D35 */ bl          __nw__FUl
/* 8062409C 2C030000 */ cmpwi       r3, 0
/* 806240A0 418205E0 */ beq-        lbl_80624680
/* 806240A4 48028725 */ bl          unk_8064c7c8
/* 806240A8 480005D8 */ b           lbl_80624680
lbl_806240ac:
entry jump_806240ac
/* 806240AC 38601D04 */ li          r3, 0x1d04
/* 806240B0 4BC05D1D */ bl          __nw__FUl
/* 806240B4 2C030000 */ cmpwi       r3, 0
/* 806240B8 418205C8 */ beq-        lbl_80624680
/* 806240BC 4BFE3FA5 */ bl          unk_80608060
/* 806240C0 480005C0 */ b           lbl_80624680
lbl_806240c4:
entry jump_806240c4
/* 806240C4 38600328 */ li          r3, 0x328
/* 806240C8 4BC05D05 */ bl          __nw__FUl
/* 806240CC 2C030000 */ cmpwi       r3, 0
/* 806240D0 418205B0 */ beq-        lbl_80624680
/* 806240D4 4802BB09 */ bl          unk_8064fbdc
/* 806240D8 480005A8 */ b           lbl_80624680
lbl_806240dc:
entry jump_806240dc
/* 806240DC 3860192C */ li          r3, 0x192c
/* 806240E0 4BC05CED */ bl          __nw__FUl
/* 806240E4 2C030000 */ cmpwi       r3, 0
/* 806240E8 41820598 */ beq-        lbl_80624680
/* 806240EC 48026309 */ bl          unk_8064a3f4
/* 806240F0 48000590 */ b           lbl_80624680
lbl_806240f4:
entry jump_806240f4
/* 806240F4 386016C0 */ li          r3, 0x16c0
/* 806240F8 4BC05CD5 */ bl          __nw__FUl
/* 806240FC 2C030000 */ cmpwi       r3, 0
/* 80624100 41820580 */ beq-        lbl_80624680
/* 80624104 4801EE8D */ bl          unk_80642f90
/* 80624108 48000578 */ b           lbl_80624680
lbl_8062410c:
entry jump_8062410c
/* 8062410C 386004B0 */ li          r3, 0x4b0
/* 80624110 4BC05CBD */ bl          __nw__FUl
/* 80624114 2C030000 */ cmpwi       r3, 0
/* 80624118 41820568 */ beq-        lbl_80624680
/* 8062411C 48025F95 */ bl          unk_8064a0b0
/* 80624120 48000560 */ b           lbl_80624680
lbl_80624124:
entry jump_80624124
/* 80624124 38600054 */ li          r3, 0x54
/* 80624128 4BC05CA5 */ bl          __nw__FUl
/* 8062412C 2C030000 */ cmpwi       r3, 0
/* 80624130 41820550 */ beq-        lbl_80624680
/* 80624134 4802B8A5 */ bl          unk_8064f9d8
/* 80624138 48000548 */ b           lbl_80624680
lbl_8062413c:
entry jump_8062413c
/* 8062413C 386004C8 */ li          r3, 0x4c8
/* 80624140 4BC05C8D */ bl          __nw__FUl
/* 80624144 2C030000 */ cmpwi       r3, 0
/* 80624148 41820538 */ beq-        lbl_80624680
/* 8062414C 4BFC00E1 */ bl          GlobePage_construct
/* 80624150 48000530 */ b           lbl_80624680
lbl_80624154:
entry jump_80624154
/* 80624154 38601A64 */ li          r3, 0x1a64
/* 80624158 4BC05C75 */ bl          __nw__FUl
/* 8062415C 2C030000 */ cmpwi       r3, 0
/* 80624160 41820520 */ beq-        lbl_80624680
/* 80624164 4BFB0065 */ bl          FriendListPage_construct
/* 80624168 48000518 */ b           lbl_80624680
lbl_8062416c:
entry jump_8062416c
/* 8062416C 386011B0 */ li          r3, 0x11b0
/* 80624170 4BC05C5D */ bl          __nw__FUl
/* 80624174 2C030000 */ cmpwi       r3, 0
/* 80624178 41820508 */ beq-        lbl_80624680
/* 8062417C 4BFB16E1 */ bl          FriendSelectPage_construct
/* 80624180 48000500 */ b           lbl_80624680
lbl_80624184:
entry jump_80624184
/* 80624184 38600B28 */ li          r3, 0xb28
/* 80624188 4BC05C45 */ bl          __nw__FUl
/* 8062418C 2C030000 */ cmpwi       r3, 0
/* 80624190 418204F0 */ beq-        lbl_80624680
/* 80624194 4BFB2819 */ bl          FriendDeletePage_construct
/* 80624198 480004E8 */ b           lbl_80624680
lbl_8062419c:
entry jump_8062419c
/* 8062419C 386004BC */ li          r3, 0x4bc
/* 806241A0 4BC05C2D */ bl          __nw__FUl
/* 806241A4 2C030000 */ cmpwi       r3, 0
/* 806241A8 418204D8 */ beq-        lbl_80624680
/* 806241AC 4BFB3059 */ bl          unk_805d7204
/* 806241B0 480004D0 */ b           lbl_80624680
lbl_806241b4:
entry jump_806241b4
/* 806241B4 38600058 */ li          r3, 0x58
/* 806241B8 4BC05C15 */ bl          __nw__FUl
/* 806241BC 2C030000 */ cmpwi       r3, 0
/* 806241C0 418204C0 */ beq-        lbl_80624680
/* 806241C4 4BFB37A9 */ bl          unk_805d796c
/* 806241C8 480004B8 */ b           lbl_80624680
lbl_806241cc:
entry jump_806241cc
/* 806241CC 38600364 */ li          r3, 0x364
/* 806241D0 4BC05BFD */ bl          __nw__FUl
/* 806241D4 2C030000 */ cmpwi       r3, 0
/* 806241D8 418204A8 */ beq-        lbl_80624680
/* 806241DC 4BFB9155 */ bl          FriendMatchingPage_construct
/* 806241E0 480004A0 */ b           lbl_80624680
lbl_806241e4:
entry jump_806241e4
/* 806241E4 38602C68 */ li          r3, 0x2c68
/* 806241E8 4BC05BE5 */ bl          __nw__FUl
/* 806241EC 2C030000 */ cmpwi       r3, 0
/* 806241F0 41820490 */ beq-        lbl_80624680
/* 806241F4 4BFB5945 */ bl          FriendRoomBusyPage_construct
/* 806241F8 48000488 */ b           lbl_80624680
lbl_806241fc:
entry jump_806241fc
/* 806241FC 38600DC4 */ li          r3, 0xdc4
/* 80624200 4BC05BCD */ bl          __nw__FUl
/* 80624204 2C030000 */ cmpwi       r3, 0
/* 80624208 41820478 */ beq-        lbl_80624680
/* 8062420C 4BFB3D6D */ bl          FriendRoomPage_construct
/* 80624210 48000470 */ b           lbl_80624680
lbl_80624214:
entry jump_80624214
/* 80624214 38602680 */ li          r3, 0x2680
/* 80624218 4BC05BB5 */ bl          __nw__FUl
/* 8062421C 2C030000 */ cmpwi       r3, 0
/* 80624220 41820460 */ beq-        lbl_80624680
/* 80624224 4BFB7B71 */ bl          FriendRoomMessageSelectPage_construct
/* 80624228 48000458 */ b           lbl_80624680
lbl_8062422c:
entry jump_8062422c
/* 8062422C 38600A30 */ li          r3, 0xa30
/* 80624230 4BC05B9D */ bl          __nw__FUl
/* 80624234 2C030000 */ cmpwi       r3, 0
/* 80624238 41820448 */ beq-        lbl_80624680
/* 8062423C 4BFBA7B5 */ bl          unk_805de9f0
/* 80624240 48000440 */ b           lbl_80624680
lbl_80624244:
entry jump_80624244
/* 80624244 38602874 */ li          r3, 0x2874
/* 80624248 4BC05B85 */ bl          __nw__FUl
/* 8062424C 2C030000 */ cmpwi       r3, 0
/* 80624250 41820430 */ beq-        lbl_80624680
/* 80624254 4BFBAD81 */ bl          unk_805defd4
/* 80624258 48000428 */ b           lbl_80624680
lbl_8062425c:
entry jump_8062425c
/* 8062425C 38600B0C */ li          r3, 0xb0c
/* 80624260 4BC05B6D */ bl          __nw__FUl
/* 80624264 2C030000 */ cmpwi       r3, 0
/* 80624268 41820418 */ beq-        lbl_80624680
/* 8062426C 4BFBC319 */ bl          unk_805e0584
/* 80624270 48000410 */ b           lbl_80624680
lbl_80624274:
entry jump_80624274
/* 80624274 38601448 */ li          r3, 0x1448
/* 80624278 4BC05B55 */ bl          __nw__FUl
/* 8062427C 2C030000 */ cmpwi       r3, 0
/* 80624280 41820400 */ beq-        lbl_80624680
/* 80624284 4BF9BC95 */ bl          ChannelPage_construct
/* 80624288 480003F8 */ b           lbl_80624680
lbl_8062428c:
entry jump_8062428c
/* 8062428C 38600C98 */ li          r3, 0xc98
/* 80624290 4BC05B3D */ bl          __nw__FUl
/* 80624294 2C030000 */ cmpwi       r3, 0
/* 80624298 418203E8 */ beq-        lbl_80624680
/* 8062429C 4BF9D111 */ bl          unk_805c13ac
/* 806242A0 480003E0 */ b           lbl_80624680
lbl_806242a4:
entry jump_806242a4
/* 806242A4 38600CA0 */ li          r3, 0xca0
/* 806242A8 4BC05B25 */ bl          __nw__FUl
/* 806242AC 2C030000 */ cmpwi       r3, 0
/* 806242B0 418203D0 */ beq-        lbl_80624680
/* 806242B4 4BF9CA15 */ bl          unk_805c0cc8
/* 806242B8 480003C8 */ b           lbl_80624680
lbl_806242bc:
entry jump_806242bc
/* 806242BC 38600368 */ li          r3, 0x368
/* 806242C0 4BC05B0D */ bl          __nw__FUl
/* 806242C4 2C030000 */ cmpwi       r3, 0
/* 806242C8 418203B8 */ beq-        lbl_80624680
/* 806242CC 4BFF8F49 */ bl          unk_8061d214
/* 806242D0 480003B0 */ b           lbl_80624680
lbl_806242d4:
entry jump_806242d4
/* 806242D4 38602534 */ li          r3, 0x2534
/* 806242D8 4BC05AF5 */ bl          __nw__FUl
/* 806242DC 2C030000 */ cmpwi       r3, 0
/* 806242E0 418203A0 */ beq-        lbl_80624680
/* 806242E4 4BFF99D5 */ bl          unk_8061dcb8
/* 806242E8 48000398 */ b           lbl_80624680
lbl_806242ec:
entry jump_806242ec
/* 806242EC 38602B0C */ li          r3, 0x2b0c
/* 806242F0 4BC05ADD */ bl          __nw__FUl
/* 806242F4 2C030000 */ cmpwi       r3, 0
/* 806242F8 41820388 */ beq-        lbl_80624680
/* 806242FC 4BFBC93D */ bl          GhostManagerPage_construct
/* 80624300 48000380 */ b           lbl_80624680
lbl_80624304:
entry jump_80624304
/* 80624304 38601C28 */ li          r3, 0x1c28
/* 80624308 4BC05AC5 */ bl          __nw__FUl
/* 8062430C 2C030000 */ cmpwi       r3, 0
/* 80624310 41820370 */ beq-        lbl_80624680
/* 80624314 4BFF10A1 */ bl          RankingPage_construct
/* 80624318 48000368 */ b           lbl_80624680
lbl_8062431c:
entry jump_8062431c
/* 8062431C 3860033C */ li          r3, 0x33c
/* 80624320 4BC05AAD */ bl          __nw__FUl
/* 80624324 2C030000 */ cmpwi       r3, 0
/* 80624328 41820358 */ beq-        lbl_80624680
/* 8062432C 4BFF0D19 */ bl          RankingBackPage_construct
/* 80624330 48000350 */ b           lbl_80624680
lbl_80624334:
entry jump_80624334
/* 80624334 3860044C */ li          r3, 0x44c
/* 80624338 4BC05A95 */ bl          __nw__FUl
/* 8062433C 2C030000 */ cmpwi       r3, 0
/* 80624340 41820340 */ beq-        lbl_80624680
/* 80624344 48001EA5 */ bl          unk_806261e8
/* 80624348 48000338 */ b           lbl_80624680
lbl_8062434c:
entry jump_8062434c
/* 8062434C 3860287C */ li          r3, 0x287c
/* 80624350 4BC05A7D */ bl          __nw__FUl
/* 80624354 2C030000 */ cmpwi       r3, 0
/* 80624358 41820328 */ beq-        lbl_80624680
/* 8062435C 4BFE98C5 */ bl          ChannelGhostPage_ct
/* 80624360 48000320 */ b           lbl_80624680
lbl_80624364:
entry jump_80624364
/* 80624364 38600D88 */ li          r3, 0xd88
/* 80624368 4BC05A65 */ bl          __nw__FUl
/* 8062436C 2C030000 */ cmpwi       r3, 0
/* 80624370 41820310 */ beq-        lbl_80624680
/* 80624374 4BFE8F21 */ bl          unk_8060d294
/* 80624378 48000308 */ b           lbl_80624680
lbl_8062437c:
entry jump_8062437c
/* 8062437C 38600478 */ li          r3, 0x478
/* 80624380 4BC05A4D */ bl          __nw__FUl
/* 80624384 2C030000 */ cmpwi       r3, 0
/* 80624388 418202F8 */ beq-        lbl_80624680
/* 8062438C 4BFE799D */ bl          RankingTopTenDownloadPage_ct
/* 80624390 480002F0 */ b           lbl_80624680
lbl_80624394:
entry jump_80624394
/* 80624394 38601754 */ li          r3, 0x1754
/* 80624398 4BC05A35 */ bl          __nw__FUl
/* 8062439C 2C030000 */ cmpwi       r3, 0
/* 806243A0 418202E0 */ beq-        lbl_80624680
/* 806243A4 4BFE6995 */ bl          RankingDetailPage_ct
/* 806243A8 480002D8 */ b           lbl_80624680
lbl_806243ac:
entry jump_806243ac
/* 806243AC 38600088 */ li          r3, 0x88
/* 806243B0 4BC05A1D */ bl          __nw__FUl
/* 806243B4 2C030000 */ cmpwi       r3, 0
/* 806243B8 418202C8 */ beq-        lbl_80624680
/* 806243BC 4BFA03AD */ bl          unk_805c4768
/* 806243C0 480002C0 */ b           lbl_80624680
lbl_806243c4:
entry jump_806243c4
/* 806243C4 38600054 */ li          r3, 0x54
/* 806243C8 4BC05A05 */ bl          __nw__FUl
/* 806243CC 2C030000 */ cmpwi       r3, 0
/* 806243D0 418202B0 */ beq-        lbl_80624680
/* 806243D4 480202E5 */ bl          unk_806446b8
/* 806243D8 480002A8 */ b           lbl_80624680
lbl_806243dc:
entry jump_806243dc
/* 806243DC 38600B1C */ li          r3, 0xb1c
/* 806243E0 4BC059ED */ bl          __nw__FUl
/* 806243E4 2C030000 */ cmpwi       r3, 0
/* 806243E8 41820298 */ beq-        lbl_80624680
/* 806243EC 4802060D */ bl          unk_806449f8
/* 806243F0 48000290 */ b           lbl_80624680
lbl_806243f4:
entry jump_806243f4
/* 806243F4 38602880 */ li          r3, 0x2880
/* 806243F8 4BC059D5 */ bl          __nw__FUl
/* 806243FC 2C030000 */ cmpwi       r3, 0
/* 80624400 41820280 */ beq-        lbl_80624680
/* 80624404 4BFA13AD */ bl          unk_805c57b0
/* 80624408 48000278 */ b           lbl_80624680
lbl_8062440c:
entry jump_8062440c
/* 8062440C 38601924 */ li          r3, 0x1924
/* 80624410 4BC059BD */ bl          __nw__FUl
/* 80624414 2C030000 */ cmpwi       r3, 0
/* 80624418 41820268 */ beq-        lbl_80624680
/* 8062441C 4BFA285D */ bl          ChannelGhostSelectPage_ct
/* 80624420 48000260 */ b           lbl_80624680
lbl_80624424:
entry jump_80624424
/* 80624424 38600C70 */ li          r3, 0xc70
/* 80624428 4BC059A5 */ bl          __nw__FUl
/* 8062442C 2C030000 */ cmpwi       r3, 0
/* 80624430 41820250 */ beq-        lbl_80624680
/* 80624434 4BFA405D */ bl          unk_805c8490
/* 80624438 48000248 */ b           lbl_80624680
lbl_8062443c:
entry jump_8062443c
/* 8062443C 38600110 */ li          r3, 0x110
/* 80624440 4BC0598D */ bl          __nw__FUl
/* 80624444 2C030000 */ cmpwi       r3, 0
/* 80624448 41820238 */ beq-        lbl_80624680
/* 8062444C 4BFFA44D */ bl          unk_8061e898
/* 80624450 48000230 */ b           lbl_80624680
lbl_80624454:
entry jump_80624454
/* 80624454 38600058 */ li          r3, 0x58
/* 80624458 4BC05975 */ bl          __nw__FUl
/* 8062445C 2C030000 */ cmpwi       r3, 0
/* 80624460 41820220 */ beq-        lbl_80624680
/* 80624464 480415E9 */ bl          unk_80665a4c
/* 80624468 48000218 */ b           lbl_80624680
lbl_8062446c:
entry jump_8062446c
/* 8062446C 38600BB8 */ li          r3, 0xbb8
/* 80624470 4BC0595D */ bl          __nw__FUl
/* 80624474 2C030000 */ cmpwi       r3, 0
/* 80624478 41820208 */ beq-        lbl_80624680
/* 8062447C 480410BD */ bl          unk_80665538
/* 80624480 48000200 */ b           lbl_80624680
lbl_80624484:
entry jump_80624484
/* 80624484 386007D8 */ li          r3, 0x7d8
/* 80624488 4BC05945 */ bl          __nw__FUl
/* 8062448C 2C030000 */ cmpwi       r3, 0
/* 80624490 418201F0 */ beq-        lbl_80624680
/* 80624494 48041B59 */ bl          unk_80665fec
/* 80624498 480001E8 */ b           lbl_80624680
lbl_8062449c:
entry jump_8062449c
/* 8062449C 3860033C */ li          r3, 0x33c
/* 806244A0 4BC0592D */ bl          __nw__FUl
/* 806244A4 2C030000 */ cmpwi       r3, 0
/* 806244A8 418201D8 */ beq-        lbl_80624680
/* 806244AC 4BFAD60D */ bl          unk_805d1ab8
/* 806244B0 480001D0 */ b           lbl_80624680
lbl_806244b4:
entry jump_806244b4
/* 806244B4 3860044C */ li          r3, 0x44c
/* 806244B8 4BC05915 */ bl          __nw__FUl
/* 806244BC 2C030000 */ cmpwi       r3, 0
/* 806244C0 418201C0 */ beq-        lbl_80624680
/* 806244C4 48001D25 */ bl          unk_806261e8
/* 806244C8 480001B8 */ b           lbl_80624680
lbl_806244cc:
entry jump_806244cc
/* 806244CC 3860005C */ li          r3, 0x5c
/* 806244D0 4BC058FD */ bl          __nw__FUl
/* 806244D4 2C030000 */ cmpwi       r3, 0
/* 806244D8 418201A8 */ beq-        lbl_80624680
/* 806244DC 48056725 */ bl          unk_8067ac00
/* 806244E0 480001A0 */ b           lbl_80624680
lbl_806244e4:
entry jump_806244e4
/* 806244E4 38600A30 */ li          r3, 0xa30
/* 806244E8 4BC058E5 */ bl          __nw__FUl
/* 806244EC 2C030000 */ cmpwi       r3, 0
/* 806244F0 41820190 */ beq-        lbl_80624680
/* 806244F4 48042275 */ bl          unk_80666768
/* 806244F8 48000188 */ b           lbl_80624680
lbl_806244fc:
entry jump_806244fc
/* 806244FC 38602A3C */ li          r3, 0x2a3c
/* 80624500 4BC058CD */ bl          __nw__FUl
/* 80624504 2C030000 */ cmpwi       r3, 0
/* 80624508 41820178 */ beq-        lbl_80624680
/* 8062450C 48042D99 */ bl          unk_806672a4
/* 80624510 48000170 */ b           lbl_80624680
lbl_80624514:
entry jump_80624514
/* 80624514 386008A0 */ li          r3, 0x8a0
/* 80624518 4BC058B5 */ bl          __nw__FUl
/* 8062451C 2C030000 */ cmpwi       r3, 0
/* 80624520 41820160 */ beq-        lbl_80624680
/* 80624524 48043A01 */ bl          unk_80667f24
/* 80624528 48000158 */ b           lbl_80624680
lbl_8062452c:
entry jump_8062452c
/* 8062452C 38600D68 */ li          r3, 0xd68
/* 80624530 4BC0589D */ bl          __nw__FUl
/* 80624534 2C030000 */ cmpwi       r3, 0
/* 80624538 41820148 */ beq-        lbl_80624680
/* 8062453C 4BFD8FDD */ bl          OptionsPage_ct
/* 80624540 48000140 */ b           lbl_80624680
lbl_80624544:
entry jump_80624544
/* 80624544 38601210 */ li          r3, 0x1210
/* 80624548 4BC05885 */ bl          __nw__FUl
/* 8062454C 2C030000 */ cmpwi       r3, 0
/* 80624550 41820130 */ beq-        lbl_80624680
/* 80624554 4BFD9555 */ bl          unk_805fdaa8
/* 80624558 48000128 */ b           lbl_80624680
lbl_8062455c:
entry jump_8062455c
/* 8062455C 38600A34 */ li          r3, 0xa34
/* 80624560 4BC0586D */ bl          __nw__FUl
/* 80624564 2C030000 */ cmpwi       r3, 0
/* 80624568 41820118 */ beq-        lbl_80624680
/* 8062456C 4BFD9BBD */ bl          unk_805fe128
/* 80624570 48000110 */ b           lbl_80624680
lbl_80624574:
entry jump_80624574
/* 80624574 38600EF0 */ li          r3, 0xef0
/* 80624578 4BC05855 */ bl          __nw__FUl
/* 8062457C 2C030000 */ cmpwi       r3, 0
/* 80624580 41820100 */ beq-        lbl_80624680
/* 80624584 4BFDA075 */ bl          OptionMessageWindowPage_ct
/* 80624588 480000F8 */ b           lbl_80624680
lbl_8062458c:
entry jump_8062458c
/* 8062458C 38600A44 */ li          r3, 0xa44
/* 80624590 4BC0583D */ bl          __nw__FUl
/* 80624594 2C030000 */ cmpwi       r3, 0
/* 80624598 418200E8 */ beq-        lbl_80624680
/* 8062459C 4BFDA809 */ bl          unk_805feda4
/* 806245A0 480000E0 */ b           lbl_80624680
lbl_806245a4:
entry jump_806245a4
/* 806245A4 38600078 */ li          r3, 0x78
/* 806245A8 4BC05825 */ bl          __nw__FUl
/* 806245AC 2C030000 */ cmpwi       r3, 0
/* 806245B0 418200D0 */ beq-        lbl_80624680
/* 806245B4 4BFDAD75 */ bl          unk_805ff328
/* 806245B8 480000C8 */ b           lbl_80624680
lbl_806245bc:
entry jump_806245bc
/* 806245BC 38600348 */ li          r3, 0x348
/* 806245C0 4BC0580D */ bl          __nw__FUl
/* 806245C4 2C030000 */ cmpwi       r3, 0
/* 806245C8 418200B8 */ beq-        lbl_80624680
/* 806245CC 4BF968CD */ bl          unk_805bae98
/* 806245D0 480000B0 */ b           lbl_80624680
lbl_806245d4:
entry jump_806245d4
/* 806245D4 38600608 */ li          r3, 0x608
/* 806245D8 4BC057F5 */ bl          __nw__FUl
/* 806245DC 2C030000 */ cmpwi       r3, 0
/* 806245E0 418200A0 */ beq-        lbl_80624680
/* 806245E4 4BFD4D39 */ bl          unk_805f931c
/* 806245E8 48000098 */ b           lbl_80624680
lbl_806245ec:
entry jump_806245ec
/* 806245EC 38600A58 */ li          r3, 0xa58
/* 806245F0 4BC057DD */ bl          __nw__FUl
/* 806245F4 2C030000 */ cmpwi       r3, 0
/* 806245F8 41820088 */ beq-        lbl_80624680
/* 806245FC 4BF9D6C5 */ bl          ConfirmPage_ct
/* 80624600 48000080 */ b           lbl_80624680
lbl_80624604:
entry jump_80624604
/* 80624604 38600A30 */ li          r3, 0xa30
/* 80624608 4BC057C5 */ bl          __nw__FUl
/* 8062460C 2C030000 */ cmpwi       r3, 0
/* 80624610 41820070 */ beq-        lbl_80624680
/* 80624614 4BF9A839 */ bl          unk_805bee4c
/* 80624618 48000068 */ b           lbl_80624680
lbl_8062461c:
entry jump_8062461c
/* 8062461C 38600CAC */ li          r3, 0xcac
/* 80624620 4BC057AD */ bl          __nw__FUl
/* 80624624 2C030000 */ cmpwi       r3, 0
/* 80624628 41820058 */ beq-        lbl_80624680
/* 8062462C 4BF9A041 */ bl          unk_805be66c
/* 80624630 48000050 */ b           lbl_80624680
lbl_80624634:
entry jump_80624634
/* 80624634 3860044C */ li          r3, 0x44c
/* 80624638 4BC05795 */ bl          __nw__FUl
/* 8062463C 2C030000 */ cmpwi       r3, 0
/* 80624640 41820040 */ beq-        lbl_80624680
/* 80624644 48001BA5 */ bl          unk_806261e8
/* 80624648 48000038 */ b           lbl_80624680
lbl_8062464c:
entry jump_8062464c
/* 8062464C 38600CC0 */ li          r3, 0xcc0
/* 80624650 4BC0577D */ bl          __nw__FUl
/* 80624654 2C030000 */ cmpwi       r3, 0
/* 80624658 41820028 */ beq-        lbl_80624680
/* 8062465C 480077C9 */ bl          unk_8062be24
/* 80624660 48000020 */ b           lbl_80624680
lbl_80624664:
entry jump_80624664
/* 80624664 386006C4 */ li          r3, 0x6c4
/* 80624668 4BC05765 */ bl          __nw__FUl
/* 8062466C 2C030000 */ cmpwi       r3, 0
/* 80624670 41820010 */ beq-        lbl_80624680
/* 80624674 48007A81 */ bl          RecordsPage_ct
/* 80624678 48000008 */ b           lbl_80624680
lbl_8062467c:
/* 8062467C 38600000 */ li          r3, 0
lbl_80624680:
/* 80624680 80010014 */ lwz         r0, 0x14(r1)
/* 80624684 7C0803A6 */ mtlr        r0
/* 80624688 38210010 */ addi        r1, r1, 0x10
/* 8062468C 4E800020 */ blr         