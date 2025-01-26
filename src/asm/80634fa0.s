nofralloc
/* 80634FA0 80030008 */ lwz         r0, 8(r3)
/* 80634FA4 2C00FFFF */ cmpwi       r0, -1
/* 80634FA8 4182000C */ beq-        lbl_80634fb4
/* 80634FAC 7C030378 */ mr          r3, r0
/* 80634FB0 4BFFC5D8 */ b           Section_getSceneId
lbl_80634fb4:
/* 80634FB4 80630004 */ lwz         r3, 4(r3)
/* 80634FB8 4BFFC5D0 */ b           Section_getSceneId