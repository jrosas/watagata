{-# OPTIONS_GHC -fno-warn-overlapping-patterns #-}
{-
Comentarios BLAH

-}

module Parser (
       parser
) where

import Token.hs

-- parser produced by Happy Version 1.18.4

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14
	| HappyAbsSyn15 t15
	| HappyAbsSyn16 t16
	| HappyAbsSyn17 t17
	| HappyAbsSyn18 t18
	| HappyAbsSyn19 t19
	| HappyAbsSyn20 t20
	| HappyAbsSyn21 t21
	| HappyAbsSyn22 t22
	| HappyAbsSyn23 t23
	| HappyAbsSyn24 t24
	| HappyAbsSyn25 t25
	| HappyAbsSyn26 t26
	| HappyAbsSyn27 t27
	| HappyAbsSyn28 t28
	| HappyAbsSyn29 t29
	| HappyAbsSyn30 t30
	| HappyAbsSyn31 t31
	| HappyAbsSyn32 t32
	| HappyAbsSyn33 t33
	| HappyAbsSyn34 t34
	| HappyAbsSyn35 t35
	| HappyAbsSyn36 t36
	| HappyAbsSyn37 t37

action_0 (4) = happyGoto action_4
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_3
action_0 _ = happyReduce_2

action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 _ = happyFail

action_2 (44) = happyShift action_19
action_2 (62) = happyShift action_20
action_2 (78) = happyShift action_21
action_2 (79) = happyShift action_22
action_2 (84) = happyShift action_23
action_2 (87) = happyShift action_24
action_2 (90) = happyShift action_25
action_2 (92) = happyShift action_26
action_2 (94) = happyShift action_27
action_2 (6) = happyGoto action_6
action_2 (9) = happyGoto action_7
action_2 (10) = happyGoto action_8
action_2 (12) = happyGoto action_9
action_2 (13) = happyGoto action_10
action_2 (14) = happyGoto action_11
action_2 (17) = happyGoto action_12
action_2 (25) = happyGoto action_13
action_2 (30) = happyGoto action_14
action_2 (31) = happyGoto action_15
action_2 (32) = happyGoto action_16
action_2 (33) = happyGoto action_17
action_2 (36) = happyGoto action_18
action_2 _ = happyFail

action_3 (80) = happyShift action_5
action_3 _ = happyReduce_3

action_4 (95) = happyAccept
action_4 _ = happyFail

action_5 (44) = happyShift action_65
action_5 _ = happyFail

action_6 (80) = happyShift action_5
action_6 _ = happyReduce_4

action_7 _ = happyReduce_1

action_8 _ = happyReduce_19

action_9 _ = happyReduce_12

action_10 (59) = happyShift action_64
action_10 _ = happyFail

action_11 (60) = happyShift action_63
action_11 _ = happyReduce_24

action_12 _ = happyReduce_29

action_13 _ = happyReduce_13

action_14 _ = happyReduce_14

action_15 _ = happyReduce_15

action_16 _ = happyReduce_16

action_17 _ = happyReduce_17

action_18 _ = happyReduce_18

action_19 _ = happyReduce_30

action_20 (44) = happyShift action_35
action_20 (45) = happyShift action_36
action_20 (47) = happyShift action_37
action_20 (62) = happyShift action_20
action_20 (63) = happyShift action_62
action_20 (64) = happyShift action_38
action_20 (66) = happyShift action_39
action_20 (67) = happyShift action_40
action_20 (75) = happyShift action_41
action_20 (76) = happyShift action_42
action_20 (77) = happyShift action_43
action_20 (13) = happyGoto action_28
action_20 (14) = happyGoto action_11
action_20 (16) = happyGoto action_59
action_20 (17) = happyGoto action_12
action_20 (18) = happyGoto action_60
action_20 (19) = happyGoto action_61
action_20 (20) = happyGoto action_30
action_20 (21) = happyGoto action_31
action_20 (22) = happyGoto action_32
action_20 (23) = happyGoto action_33
action_20 (24) = happyGoto action_34
action_20 _ = happyFail

action_21 (44) = happyShift action_35
action_21 (45) = happyShift action_36
action_21 (47) = happyShift action_37
action_21 (62) = happyShift action_20
action_21 (64) = happyShift action_38
action_21 (66) = happyShift action_39
action_21 (67) = happyShift action_40
action_21 (75) = happyShift action_41
action_21 (76) = happyShift action_42
action_21 (77) = happyShift action_43
action_21 (13) = happyGoto action_28
action_21 (14) = happyGoto action_11
action_21 (16) = happyGoto action_58
action_21 (17) = happyGoto action_12
action_21 (20) = happyGoto action_30
action_21 (21) = happyGoto action_31
action_21 (22) = happyGoto action_32
action_21 (23) = happyGoto action_33
action_21 (24) = happyGoto action_34
action_21 _ = happyFail

action_22 (43) = happyShift action_57
action_22 (44) = happyShift action_35
action_22 (45) = happyShift action_36
action_22 (47) = happyShift action_37
action_22 (62) = happyShift action_20
action_22 (64) = happyShift action_38
action_22 (66) = happyShift action_39
action_22 (67) = happyShift action_40
action_22 (75) = happyShift action_41
action_22 (76) = happyShift action_42
action_22 (77) = happyShift action_43
action_22 (13) = happyGoto action_28
action_22 (14) = happyGoto action_11
action_22 (16) = happyGoto action_54
action_22 (17) = happyGoto action_12
action_22 (20) = happyGoto action_30
action_22 (21) = happyGoto action_31
action_22 (22) = happyGoto action_32
action_22 (23) = happyGoto action_33
action_22 (24) = happyGoto action_34
action_22 (34) = happyGoto action_55
action_22 (35) = happyGoto action_56
action_22 _ = happyFail

action_23 (86) = happyShift action_53
action_23 (26) = happyGoto action_52
action_23 _ = happyReduce_66

action_24 (41) = happyShift action_47
action_24 (42) = happyShift action_48
action_24 (44) = happyShift action_35
action_24 (45) = happyShift action_36
action_24 (47) = happyShift action_37
action_24 (62) = happyShift action_20
action_24 (64) = happyShift action_49
action_24 (66) = happyShift action_39
action_24 (67) = happyShift action_40
action_24 (74) = happyShift action_50
action_24 (75) = happyShift action_41
action_24 (76) = happyShift action_42
action_24 (77) = happyShift action_43
action_24 (13) = happyGoto action_28
action_24 (14) = happyGoto action_11
action_24 (16) = happyGoto action_45
action_24 (17) = happyGoto action_12
action_24 (20) = happyGoto action_30
action_24 (21) = happyGoto action_31
action_24 (22) = happyGoto action_32
action_24 (23) = happyGoto action_33
action_24 (24) = happyGoto action_34
action_24 (37) = happyGoto action_51
action_24 _ = happyFail

action_25 (41) = happyShift action_47
action_25 (42) = happyShift action_48
action_25 (44) = happyShift action_35
action_25 (45) = happyShift action_36
action_25 (47) = happyShift action_37
action_25 (62) = happyShift action_20
action_25 (64) = happyShift action_49
action_25 (66) = happyShift action_39
action_25 (67) = happyShift action_40
action_25 (74) = happyShift action_50
action_25 (75) = happyShift action_41
action_25 (76) = happyShift action_42
action_25 (77) = happyShift action_43
action_25 (13) = happyGoto action_28
action_25 (14) = happyGoto action_11
action_25 (16) = happyGoto action_45
action_25 (17) = happyGoto action_12
action_25 (20) = happyGoto action_30
action_25 (21) = happyGoto action_31
action_25 (22) = happyGoto action_32
action_25 (23) = happyGoto action_33
action_25 (24) = happyGoto action_34
action_25 (37) = happyGoto action_46
action_25 _ = happyFail

action_26 (44) = happyShift action_44
action_26 _ = happyFail

action_27 (44) = happyShift action_35
action_27 (45) = happyShift action_36
action_27 (47) = happyShift action_37
action_27 (62) = happyShift action_20
action_27 (64) = happyShift action_38
action_27 (66) = happyShift action_39
action_27 (67) = happyShift action_40
action_27 (75) = happyShift action_41
action_27 (76) = happyShift action_42
action_27 (77) = happyShift action_43
action_27 (13) = happyGoto action_28
action_27 (14) = happyGoto action_11
action_27 (16) = happyGoto action_29
action_27 (17) = happyGoto action_12
action_27 (20) = happyGoto action_30
action_27 (21) = happyGoto action_31
action_27 (22) = happyGoto action_32
action_27 (23) = happyGoto action_33
action_27 (24) = happyGoto action_34
action_27 _ = happyFail

action_28 _ = happyReduce_42

action_29 (46) = happyShift action_73
action_29 (47) = happyShift action_74
action_29 (48) = happyShift action_75
action_29 (49) = happyShift action_76
action_29 (50) = happyShift action_77
action_29 (51) = happyShift action_78
action_29 (52) = happyShift action_79
action_29 (68) = happyShift action_80
action_29 _ = happyReduce_81

action_30 _ = happyReduce_47

action_31 _ = happyReduce_48

action_32 _ = happyReduce_57

action_33 _ = happyReduce_58

action_34 _ = happyReduce_59

action_35 (64) = happyShift action_109
action_35 _ = happyReduce_30

action_36 _ = happyReduce_33

action_37 (44) = happyShift action_35
action_37 (45) = happyShift action_36
action_37 (47) = happyShift action_37
action_37 (62) = happyShift action_20
action_37 (64) = happyShift action_38
action_37 (66) = happyShift action_39
action_37 (67) = happyShift action_40
action_37 (75) = happyShift action_41
action_37 (76) = happyShift action_42
action_37 (77) = happyShift action_43
action_37 (13) = happyGoto action_28
action_37 (14) = happyGoto action_11
action_37 (16) = happyGoto action_108
action_37 (17) = happyGoto action_12
action_37 (20) = happyGoto action_30
action_37 (21) = happyGoto action_31
action_37 (22) = happyGoto action_32
action_37 (23) = happyGoto action_33
action_37 (24) = happyGoto action_34
action_37 _ = happyFail

action_38 (44) = happyShift action_35
action_38 (45) = happyShift action_36
action_38 (47) = happyShift action_37
action_38 (62) = happyShift action_20
action_38 (64) = happyShift action_38
action_38 (66) = happyShift action_39
action_38 (67) = happyShift action_40
action_38 (75) = happyShift action_41
action_38 (76) = happyShift action_42
action_38 (77) = happyShift action_43
action_38 (13) = happyGoto action_28
action_38 (14) = happyGoto action_11
action_38 (16) = happyGoto action_107
action_38 (17) = happyGoto action_12
action_38 (20) = happyGoto action_30
action_38 (21) = happyGoto action_31
action_38 (22) = happyGoto action_32
action_38 (23) = happyGoto action_33
action_38 (24) = happyGoto action_34
action_38 _ = happyFail

action_39 (44) = happyShift action_35
action_39 (45) = happyShift action_36
action_39 (47) = happyShift action_37
action_39 (62) = happyShift action_20
action_39 (64) = happyShift action_38
action_39 (66) = happyShift action_39
action_39 (67) = happyShift action_40
action_39 (75) = happyShift action_41
action_39 (76) = happyShift action_42
action_39 (77) = happyShift action_43
action_39 (13) = happyGoto action_28
action_39 (14) = happyGoto action_11
action_39 (16) = happyGoto action_106
action_39 (17) = happyGoto action_12
action_39 (20) = happyGoto action_30
action_39 (21) = happyGoto action_31
action_39 (22) = happyGoto action_32
action_39 (23) = happyGoto action_33
action_39 (24) = happyGoto action_34
action_39 _ = happyFail

action_40 (44) = happyShift action_35
action_40 (45) = happyShift action_36
action_40 (47) = happyShift action_37
action_40 (62) = happyShift action_20
action_40 (64) = happyShift action_38
action_40 (66) = happyShift action_39
action_40 (67) = happyShift action_40
action_40 (75) = happyShift action_41
action_40 (76) = happyShift action_42
action_40 (77) = happyShift action_43
action_40 (13) = happyGoto action_28
action_40 (14) = happyGoto action_11
action_40 (16) = happyGoto action_105
action_40 (17) = happyGoto action_12
action_40 (20) = happyGoto action_30
action_40 (21) = happyGoto action_31
action_40 (22) = happyGoto action_32
action_40 (23) = happyGoto action_33
action_40 (24) = happyGoto action_34
action_40 _ = happyFail

action_41 (64) = happyShift action_104
action_41 _ = happyFail

action_42 (64) = happyShift action_103
action_42 _ = happyFail

action_43 (64) = happyShift action_102
action_43 _ = happyFail

action_44 (93) = happyShift action_101
action_44 _ = happyFail

action_45 (46) = happyShift action_73
action_45 (47) = happyShift action_74
action_45 (48) = happyShift action_75
action_45 (49) = happyShift action_76
action_45 (50) = happyShift action_77
action_45 (51) = happyShift action_78
action_45 (52) = happyShift action_79
action_45 (53) = happyShift action_95
action_45 (54) = happyShift action_96
action_45 (55) = happyShift action_97
action_45 (56) = happyShift action_98
action_45 (57) = happyShift action_99
action_45 (58) = happyShift action_100
action_45 (68) = happyShift action_80
action_45 _ = happyFail

action_46 (57) = happyShift action_87
action_46 (72) = happyShift action_88
action_46 (73) = happyShift action_89
action_46 (91) = happyShift action_94
action_46 _ = happyFail

action_47 _ = happyReduce_88

action_48 _ = happyReduce_89

action_49 (41) = happyShift action_47
action_49 (42) = happyShift action_48
action_49 (44) = happyShift action_35
action_49 (45) = happyShift action_36
action_49 (47) = happyShift action_37
action_49 (62) = happyShift action_20
action_49 (64) = happyShift action_49
action_49 (66) = happyShift action_39
action_49 (67) = happyShift action_40
action_49 (74) = happyShift action_50
action_49 (75) = happyShift action_41
action_49 (76) = happyShift action_42
action_49 (77) = happyShift action_43
action_49 (13) = happyGoto action_28
action_49 (14) = happyGoto action_11
action_49 (16) = happyGoto action_92
action_49 (17) = happyGoto action_12
action_49 (20) = happyGoto action_30
action_49 (21) = happyGoto action_31
action_49 (22) = happyGoto action_32
action_49 (23) = happyGoto action_33
action_49 (24) = happyGoto action_34
action_49 (37) = happyGoto action_93
action_49 _ = happyFail

action_50 (41) = happyShift action_47
action_50 (42) = happyShift action_48
action_50 (44) = happyShift action_35
action_50 (45) = happyShift action_36
action_50 (47) = happyShift action_37
action_50 (62) = happyShift action_20
action_50 (64) = happyShift action_49
action_50 (66) = happyShift action_39
action_50 (67) = happyShift action_40
action_50 (74) = happyShift action_50
action_50 (75) = happyShift action_41
action_50 (76) = happyShift action_42
action_50 (77) = happyShift action_43
action_50 (13) = happyGoto action_28
action_50 (14) = happyGoto action_11
action_50 (16) = happyGoto action_45
action_50 (17) = happyGoto action_12
action_50 (20) = happyGoto action_30
action_50 (21) = happyGoto action_31
action_50 (22) = happyGoto action_32
action_50 (23) = happyGoto action_33
action_50 (24) = happyGoto action_34
action_50 (37) = happyGoto action_91
action_50 _ = happyFail

action_51 (57) = happyShift action_87
action_51 (72) = happyShift action_88
action_51 (73) = happyShift action_89
action_51 (89) = happyShift action_90
action_51 _ = happyFail

action_52 (44) = happyShift action_19
action_52 (62) = happyShift action_20
action_52 (78) = happyShift action_21
action_52 (79) = happyShift action_22
action_52 (84) = happyShift action_23
action_52 (87) = happyShift action_24
action_52 (90) = happyShift action_25
action_52 (92) = happyShift action_26
action_52 (94) = happyShift action_27
action_52 (9) = happyGoto action_85
action_52 (10) = happyGoto action_8
action_52 (12) = happyGoto action_9
action_52 (13) = happyGoto action_10
action_52 (14) = happyGoto action_11
action_52 (17) = happyGoto action_12
action_52 (25) = happyGoto action_13
action_52 (29) = happyGoto action_86
action_52 (30) = happyGoto action_14
action_52 (31) = happyGoto action_15
action_52 (32) = happyGoto action_16
action_52 (33) = happyGoto action_17
action_52 (36) = happyGoto action_18
action_52 _ = happyFail

action_53 (44) = happyShift action_84
action_53 (27) = happyGoto action_82
action_53 (28) = happyGoto action_83
action_53 _ = happyFail

action_54 (46) = happyShift action_73
action_54 (47) = happyShift action_74
action_54 (48) = happyShift action_75
action_54 (49) = happyShift action_76
action_54 (50) = happyShift action_77
action_54 (51) = happyShift action_78
action_54 (52) = happyShift action_79
action_54 (68) = happyShift action_80
action_54 _ = happyReduce_77

action_55 _ = happyReduce_79

action_56 (70) = happyShift action_81
action_56 _ = happyReduce_76

action_57 _ = happyReduce_78

action_58 (46) = happyShift action_73
action_58 (47) = happyShift action_74
action_58 (48) = happyShift action_75
action_58 (49) = happyShift action_76
action_58 (50) = happyShift action_77
action_58 (51) = happyShift action_78
action_58 (52) = happyShift action_79
action_58 (68) = happyShift action_80
action_58 _ = happyReduce_75

action_59 (46) = happyShift action_73
action_59 (47) = happyShift action_74
action_59 (48) = happyShift action_75
action_59 (49) = happyShift action_76
action_59 (50) = happyShift action_77
action_59 (51) = happyShift action_78
action_59 (52) = happyShift action_79
action_59 (68) = happyShift action_80
action_59 _ = happyReduce_53

action_60 (63) = happyShift action_71
action_60 (71) = happyShift action_72
action_60 _ = happyFail

action_61 (70) = happyShift action_70
action_61 _ = happyReduce_51

action_62 _ = happyReduce_50

action_63 (44) = happyShift action_35
action_63 (45) = happyShift action_36
action_63 (47) = happyShift action_37
action_63 (62) = happyShift action_20
action_63 (64) = happyShift action_38
action_63 (66) = happyShift action_39
action_63 (67) = happyShift action_40
action_63 (75) = happyShift action_41
action_63 (76) = happyShift action_42
action_63 (77) = happyShift action_43
action_63 (13) = happyGoto action_28
action_63 (14) = happyGoto action_11
action_63 (15) = happyGoto action_68
action_63 (16) = happyGoto action_69
action_63 (17) = happyGoto action_12
action_63 (20) = happyGoto action_30
action_63 (21) = happyGoto action_31
action_63 (22) = happyGoto action_32
action_63 (23) = happyGoto action_33
action_63 (24) = happyGoto action_34
action_63 _ = happyReduce_31

action_64 (44) = happyShift action_35
action_64 (45) = happyShift action_36
action_64 (47) = happyShift action_37
action_64 (62) = happyShift action_20
action_64 (64) = happyShift action_38
action_64 (66) = happyShift action_39
action_64 (67) = happyShift action_40
action_64 (75) = happyShift action_41
action_64 (76) = happyShift action_42
action_64 (77) = happyShift action_43
action_64 (13) = happyGoto action_28
action_64 (14) = happyGoto action_11
action_64 (16) = happyGoto action_67
action_64 (17) = happyGoto action_12
action_64 (20) = happyGoto action_30
action_64 (21) = happyGoto action_31
action_64 (22) = happyGoto action_32
action_64 (23) = happyGoto action_33
action_64 (24) = happyGoto action_34
action_64 _ = happyFail

action_65 (64) = happyShift action_66
action_65 _ = happyFail

action_66 (44) = happyShift action_148
action_66 (65) = happyShift action_149
action_66 (7) = happyGoto action_147
action_66 _ = happyFail

action_67 (46) = happyShift action_73
action_67 (47) = happyShift action_74
action_67 (48) = happyShift action_75
action_67 (49) = happyShift action_76
action_67 (50) = happyShift action_77
action_67 (51) = happyShift action_78
action_67 (52) = happyShift action_79
action_67 (68) = happyShift action_80
action_67 _ = happyReduce_23

action_68 (69) = happyShift action_146
action_68 _ = happyFail

action_69 (46) = happyShift action_73
action_69 (47) = happyShift action_74
action_69 (48) = happyShift action_75
action_69 (49) = happyShift action_76
action_69 (50) = happyShift action_77
action_69 (51) = happyShift action_78
action_69 (52) = happyShift action_79
action_69 (61) = happyShift action_144
action_69 (68) = happyShift action_80
action_69 (70) = happyShift action_145
action_69 _ = happyReduce_32

action_70 (44) = happyShift action_35
action_70 (45) = happyShift action_36
action_70 (47) = happyShift action_37
action_70 (62) = happyShift action_20
action_70 (64) = happyShift action_38
action_70 (66) = happyShift action_39
action_70 (67) = happyShift action_40
action_70 (75) = happyShift action_41
action_70 (76) = happyShift action_42
action_70 (77) = happyShift action_43
action_70 (13) = happyGoto action_28
action_70 (14) = happyGoto action_11
action_70 (16) = happyGoto action_143
action_70 (17) = happyGoto action_12
action_70 (20) = happyGoto action_30
action_70 (21) = happyGoto action_31
action_70 (22) = happyGoto action_32
action_70 (23) = happyGoto action_33
action_70 (24) = happyGoto action_34
action_70 _ = happyFail

action_71 _ = happyReduce_49

action_72 (44) = happyShift action_35
action_72 (45) = happyShift action_36
action_72 (47) = happyShift action_37
action_72 (62) = happyShift action_20
action_72 (64) = happyShift action_38
action_72 (66) = happyShift action_39
action_72 (67) = happyShift action_40
action_72 (75) = happyShift action_41
action_72 (76) = happyShift action_42
action_72 (77) = happyShift action_43
action_72 (13) = happyGoto action_28
action_72 (14) = happyGoto action_11
action_72 (16) = happyGoto action_59
action_72 (17) = happyGoto action_12
action_72 (19) = happyGoto action_142
action_72 (20) = happyGoto action_30
action_72 (21) = happyGoto action_31
action_72 (22) = happyGoto action_32
action_72 (23) = happyGoto action_33
action_72 (24) = happyGoto action_34
action_72 _ = happyFail

action_73 (44) = happyShift action_35
action_73 (45) = happyShift action_36
action_73 (47) = happyShift action_37
action_73 (62) = happyShift action_20
action_73 (64) = happyShift action_38
action_73 (66) = happyShift action_39
action_73 (67) = happyShift action_40
action_73 (75) = happyShift action_41
action_73 (76) = happyShift action_42
action_73 (77) = happyShift action_43
action_73 (13) = happyGoto action_28
action_73 (14) = happyGoto action_11
action_73 (16) = happyGoto action_141
action_73 (17) = happyGoto action_12
action_73 (20) = happyGoto action_30
action_73 (21) = happyGoto action_31
action_73 (22) = happyGoto action_32
action_73 (23) = happyGoto action_33
action_73 (24) = happyGoto action_34
action_73 _ = happyFail

action_74 (44) = happyShift action_35
action_74 (45) = happyShift action_36
action_74 (47) = happyShift action_37
action_74 (62) = happyShift action_20
action_74 (64) = happyShift action_38
action_74 (66) = happyShift action_39
action_74 (67) = happyShift action_40
action_74 (75) = happyShift action_41
action_74 (76) = happyShift action_42
action_74 (77) = happyShift action_43
action_74 (13) = happyGoto action_28
action_74 (14) = happyGoto action_11
action_74 (16) = happyGoto action_140
action_74 (17) = happyGoto action_12
action_74 (20) = happyGoto action_30
action_74 (21) = happyGoto action_31
action_74 (22) = happyGoto action_32
action_74 (23) = happyGoto action_33
action_74 (24) = happyGoto action_34
action_74 _ = happyFail

action_75 (44) = happyShift action_35
action_75 (45) = happyShift action_36
action_75 (47) = happyShift action_37
action_75 (62) = happyShift action_20
action_75 (64) = happyShift action_38
action_75 (66) = happyShift action_39
action_75 (67) = happyShift action_40
action_75 (75) = happyShift action_41
action_75 (76) = happyShift action_42
action_75 (77) = happyShift action_43
action_75 (13) = happyGoto action_28
action_75 (14) = happyGoto action_11
action_75 (16) = happyGoto action_139
action_75 (17) = happyGoto action_12
action_75 (20) = happyGoto action_30
action_75 (21) = happyGoto action_31
action_75 (22) = happyGoto action_32
action_75 (23) = happyGoto action_33
action_75 (24) = happyGoto action_34
action_75 _ = happyFail

action_76 (44) = happyShift action_35
action_76 (45) = happyShift action_36
action_76 (47) = happyShift action_37
action_76 (62) = happyShift action_20
action_76 (64) = happyShift action_38
action_76 (66) = happyShift action_39
action_76 (67) = happyShift action_40
action_76 (75) = happyShift action_41
action_76 (76) = happyShift action_42
action_76 (77) = happyShift action_43
action_76 (13) = happyGoto action_28
action_76 (14) = happyGoto action_11
action_76 (16) = happyGoto action_138
action_76 (17) = happyGoto action_12
action_76 (20) = happyGoto action_30
action_76 (21) = happyGoto action_31
action_76 (22) = happyGoto action_32
action_76 (23) = happyGoto action_33
action_76 (24) = happyGoto action_34
action_76 _ = happyFail

action_77 (44) = happyShift action_35
action_77 (45) = happyShift action_36
action_77 (47) = happyShift action_37
action_77 (62) = happyShift action_20
action_77 (64) = happyShift action_38
action_77 (66) = happyShift action_39
action_77 (67) = happyShift action_40
action_77 (75) = happyShift action_41
action_77 (76) = happyShift action_42
action_77 (77) = happyShift action_43
action_77 (13) = happyGoto action_28
action_77 (14) = happyGoto action_11
action_77 (16) = happyGoto action_137
action_77 (17) = happyGoto action_12
action_77 (20) = happyGoto action_30
action_77 (21) = happyGoto action_31
action_77 (22) = happyGoto action_32
action_77 (23) = happyGoto action_33
action_77 (24) = happyGoto action_34
action_77 _ = happyFail

action_78 (44) = happyShift action_35
action_78 (45) = happyShift action_36
action_78 (47) = happyShift action_37
action_78 (62) = happyShift action_20
action_78 (64) = happyShift action_38
action_78 (66) = happyShift action_39
action_78 (67) = happyShift action_40
action_78 (75) = happyShift action_41
action_78 (76) = happyShift action_42
action_78 (77) = happyShift action_43
action_78 (13) = happyGoto action_28
action_78 (14) = happyGoto action_11
action_78 (16) = happyGoto action_136
action_78 (17) = happyGoto action_12
action_78 (20) = happyGoto action_30
action_78 (21) = happyGoto action_31
action_78 (22) = happyGoto action_32
action_78 (23) = happyGoto action_33
action_78 (24) = happyGoto action_34
action_78 _ = happyFail

action_79 (44) = happyShift action_35
action_79 (45) = happyShift action_36
action_79 (47) = happyShift action_37
action_79 (62) = happyShift action_20
action_79 (64) = happyShift action_38
action_79 (66) = happyShift action_39
action_79 (67) = happyShift action_40
action_79 (75) = happyShift action_41
action_79 (76) = happyShift action_42
action_79 (77) = happyShift action_43
action_79 (13) = happyGoto action_28
action_79 (14) = happyGoto action_11
action_79 (16) = happyGoto action_135
action_79 (17) = happyGoto action_12
action_79 (20) = happyGoto action_30
action_79 (21) = happyGoto action_31
action_79 (22) = happyGoto action_32
action_79 (23) = happyGoto action_33
action_79 (24) = happyGoto action_34
action_79 _ = happyFail

action_80 _ = happyReduce_44

action_81 (43) = happyShift action_57
action_81 (44) = happyShift action_35
action_81 (45) = happyShift action_36
action_81 (47) = happyShift action_37
action_81 (62) = happyShift action_20
action_81 (64) = happyShift action_38
action_81 (66) = happyShift action_39
action_81 (67) = happyShift action_40
action_81 (75) = happyShift action_41
action_81 (76) = happyShift action_42
action_81 (77) = happyShift action_43
action_81 (13) = happyGoto action_28
action_81 (14) = happyGoto action_11
action_81 (16) = happyGoto action_54
action_81 (17) = happyGoto action_12
action_81 (20) = happyGoto action_30
action_81 (21) = happyGoto action_31
action_81 (22) = happyGoto action_32
action_81 (23) = happyGoto action_33
action_81 (24) = happyGoto action_34
action_81 (34) = happyGoto action_134
action_81 _ = happyFail

action_82 (71) = happyShift action_133
action_82 _ = happyReduce_65

action_83 (69) = happyShift action_131
action_83 (70) = happyShift action_132
action_83 _ = happyFail

action_84 _ = happyReduce_69

action_85 _ = happyReduce_71

action_86 (71) = happyShift action_129
action_86 (85) = happyShift action_130
action_86 _ = happyFail

action_87 (41) = happyShift action_47
action_87 (42) = happyShift action_48
action_87 (44) = happyShift action_35
action_87 (45) = happyShift action_36
action_87 (47) = happyShift action_37
action_87 (62) = happyShift action_20
action_87 (64) = happyShift action_49
action_87 (66) = happyShift action_39
action_87 (67) = happyShift action_40
action_87 (74) = happyShift action_50
action_87 (75) = happyShift action_41
action_87 (76) = happyShift action_42
action_87 (77) = happyShift action_43
action_87 (13) = happyGoto action_28
action_87 (14) = happyGoto action_11
action_87 (16) = happyGoto action_45
action_87 (17) = happyGoto action_12
action_87 (20) = happyGoto action_30
action_87 (21) = happyGoto action_31
action_87 (22) = happyGoto action_32
action_87 (23) = happyGoto action_33
action_87 (24) = happyGoto action_34
action_87 (37) = happyGoto action_128
action_87 _ = happyFail

action_88 (41) = happyShift action_47
action_88 (42) = happyShift action_48
action_88 (44) = happyShift action_35
action_88 (45) = happyShift action_36
action_88 (47) = happyShift action_37
action_88 (62) = happyShift action_20
action_88 (64) = happyShift action_49
action_88 (66) = happyShift action_39
action_88 (67) = happyShift action_40
action_88 (74) = happyShift action_50
action_88 (75) = happyShift action_41
action_88 (76) = happyShift action_42
action_88 (77) = happyShift action_43
action_88 (13) = happyGoto action_28
action_88 (14) = happyGoto action_11
action_88 (16) = happyGoto action_45
action_88 (17) = happyGoto action_12
action_88 (20) = happyGoto action_30
action_88 (21) = happyGoto action_31
action_88 (22) = happyGoto action_32
action_88 (23) = happyGoto action_33
action_88 (24) = happyGoto action_34
action_88 (37) = happyGoto action_127
action_88 _ = happyFail

action_89 (41) = happyShift action_47
action_89 (42) = happyShift action_48
action_89 (44) = happyShift action_35
action_89 (45) = happyShift action_36
action_89 (47) = happyShift action_37
action_89 (62) = happyShift action_20
action_89 (64) = happyShift action_49
action_89 (66) = happyShift action_39
action_89 (67) = happyShift action_40
action_89 (74) = happyShift action_50
action_89 (75) = happyShift action_41
action_89 (76) = happyShift action_42
action_89 (77) = happyShift action_43
action_89 (13) = happyGoto action_28
action_89 (14) = happyGoto action_11
action_89 (16) = happyGoto action_45
action_89 (17) = happyGoto action_12
action_89 (20) = happyGoto action_30
action_89 (21) = happyGoto action_31
action_89 (22) = happyGoto action_32
action_89 (23) = happyGoto action_33
action_89 (24) = happyGoto action_34
action_89 (37) = happyGoto action_126
action_89 _ = happyFail

action_90 (44) = happyShift action_19
action_90 (62) = happyShift action_20
action_90 (78) = happyShift action_21
action_90 (79) = happyShift action_22
action_90 (84) = happyShift action_23
action_90 (87) = happyShift action_24
action_90 (90) = happyShift action_25
action_90 (92) = happyShift action_26
action_90 (94) = happyShift action_27
action_90 (9) = happyGoto action_125
action_90 (10) = happyGoto action_8
action_90 (12) = happyGoto action_9
action_90 (13) = happyGoto action_10
action_90 (14) = happyGoto action_11
action_90 (17) = happyGoto action_12
action_90 (25) = happyGoto action_13
action_90 (30) = happyGoto action_14
action_90 (31) = happyGoto action_15
action_90 (32) = happyGoto action_16
action_90 (33) = happyGoto action_17
action_90 (36) = happyGoto action_18
action_90 _ = happyFail

action_91 (57) = happyShift action_87
action_91 _ = happyReduce_94

action_92 (46) = happyShift action_73
action_92 (47) = happyShift action_74
action_92 (48) = happyShift action_75
action_92 (49) = happyShift action_76
action_92 (50) = happyShift action_77
action_92 (51) = happyShift action_78
action_92 (52) = happyShift action_79
action_92 (53) = happyShift action_95
action_92 (54) = happyShift action_96
action_92 (55) = happyShift action_97
action_92 (56) = happyShift action_98
action_92 (57) = happyShift action_99
action_92 (58) = happyShift action_100
action_92 (65) = happyShift action_112
action_92 (68) = happyShift action_80
action_92 _ = happyFail

action_93 (57) = happyShift action_87
action_93 (65) = happyShift action_124
action_93 (72) = happyShift action_88
action_93 (73) = happyShift action_89
action_93 _ = happyFail

action_94 (44) = happyShift action_19
action_94 (62) = happyShift action_20
action_94 (78) = happyShift action_21
action_94 (79) = happyShift action_22
action_94 (84) = happyShift action_23
action_94 (87) = happyShift action_24
action_94 (90) = happyShift action_25
action_94 (92) = happyShift action_26
action_94 (94) = happyShift action_27
action_94 (9) = happyGoto action_123
action_94 (10) = happyGoto action_8
action_94 (12) = happyGoto action_9
action_94 (13) = happyGoto action_10
action_94 (14) = happyGoto action_11
action_94 (17) = happyGoto action_12
action_94 (25) = happyGoto action_13
action_94 (30) = happyGoto action_14
action_94 (31) = happyGoto action_15
action_94 (32) = happyGoto action_16
action_94 (33) = happyGoto action_17
action_94 (36) = happyGoto action_18
action_94 _ = happyFail

action_95 (44) = happyShift action_35
action_95 (45) = happyShift action_36
action_95 (47) = happyShift action_37
action_95 (62) = happyShift action_20
action_95 (64) = happyShift action_38
action_95 (66) = happyShift action_39
action_95 (67) = happyShift action_40
action_95 (75) = happyShift action_41
action_95 (76) = happyShift action_42
action_95 (77) = happyShift action_43
action_95 (13) = happyGoto action_28
action_95 (14) = happyGoto action_11
action_95 (16) = happyGoto action_122
action_95 (17) = happyGoto action_12
action_95 (20) = happyGoto action_30
action_95 (21) = happyGoto action_31
action_95 (22) = happyGoto action_32
action_95 (23) = happyGoto action_33
action_95 (24) = happyGoto action_34
action_95 _ = happyFail

action_96 (44) = happyShift action_35
action_96 (45) = happyShift action_36
action_96 (47) = happyShift action_37
action_96 (62) = happyShift action_20
action_96 (64) = happyShift action_38
action_96 (66) = happyShift action_39
action_96 (67) = happyShift action_40
action_96 (75) = happyShift action_41
action_96 (76) = happyShift action_42
action_96 (77) = happyShift action_43
action_96 (13) = happyGoto action_28
action_96 (14) = happyGoto action_11
action_96 (16) = happyGoto action_121
action_96 (17) = happyGoto action_12
action_96 (20) = happyGoto action_30
action_96 (21) = happyGoto action_31
action_96 (22) = happyGoto action_32
action_96 (23) = happyGoto action_33
action_96 (24) = happyGoto action_34
action_96 _ = happyFail

action_97 (44) = happyShift action_35
action_97 (45) = happyShift action_36
action_97 (47) = happyShift action_37
action_97 (62) = happyShift action_20
action_97 (64) = happyShift action_38
action_97 (66) = happyShift action_39
action_97 (67) = happyShift action_40
action_97 (75) = happyShift action_41
action_97 (76) = happyShift action_42
action_97 (77) = happyShift action_43
action_97 (13) = happyGoto action_28
action_97 (14) = happyGoto action_11
action_97 (16) = happyGoto action_120
action_97 (17) = happyGoto action_12
action_97 (20) = happyGoto action_30
action_97 (21) = happyGoto action_31
action_97 (22) = happyGoto action_32
action_97 (23) = happyGoto action_33
action_97 (24) = happyGoto action_34
action_97 _ = happyFail

action_98 (44) = happyShift action_35
action_98 (45) = happyShift action_36
action_98 (47) = happyShift action_37
action_98 (62) = happyShift action_20
action_98 (64) = happyShift action_38
action_98 (66) = happyShift action_39
action_98 (67) = happyShift action_40
action_98 (75) = happyShift action_41
action_98 (76) = happyShift action_42
action_98 (77) = happyShift action_43
action_98 (13) = happyGoto action_28
action_98 (14) = happyGoto action_11
action_98 (16) = happyGoto action_119
action_98 (17) = happyGoto action_12
action_98 (20) = happyGoto action_30
action_98 (21) = happyGoto action_31
action_98 (22) = happyGoto action_32
action_98 (23) = happyGoto action_33
action_98 (24) = happyGoto action_34
action_98 _ = happyFail

action_99 (44) = happyShift action_35
action_99 (45) = happyShift action_36
action_99 (47) = happyShift action_37
action_99 (62) = happyShift action_20
action_99 (64) = happyShift action_38
action_99 (66) = happyShift action_39
action_99 (67) = happyShift action_40
action_99 (75) = happyShift action_41
action_99 (76) = happyShift action_42
action_99 (77) = happyShift action_43
action_99 (13) = happyGoto action_28
action_99 (14) = happyGoto action_11
action_99 (16) = happyGoto action_118
action_99 (17) = happyGoto action_12
action_99 (20) = happyGoto action_30
action_99 (21) = happyGoto action_31
action_99 (22) = happyGoto action_32
action_99 (23) = happyGoto action_33
action_99 (24) = happyGoto action_34
action_99 _ = happyFail

action_100 (44) = happyShift action_35
action_100 (45) = happyShift action_36
action_100 (47) = happyShift action_37
action_100 (62) = happyShift action_20
action_100 (64) = happyShift action_38
action_100 (66) = happyShift action_39
action_100 (67) = happyShift action_40
action_100 (75) = happyShift action_41
action_100 (76) = happyShift action_42
action_100 (77) = happyShift action_43
action_100 (13) = happyGoto action_28
action_100 (14) = happyGoto action_11
action_100 (16) = happyGoto action_117
action_100 (17) = happyGoto action_12
action_100 (20) = happyGoto action_30
action_100 (21) = happyGoto action_31
action_100 (22) = happyGoto action_32
action_100 (23) = happyGoto action_33
action_100 (24) = happyGoto action_34
action_100 _ = happyFail

action_101 (44) = happyShift action_35
action_101 (45) = happyShift action_36
action_101 (47) = happyShift action_37
action_101 (62) = happyShift action_20
action_101 (64) = happyShift action_38
action_101 (66) = happyShift action_39
action_101 (67) = happyShift action_40
action_101 (75) = happyShift action_41
action_101 (76) = happyShift action_42
action_101 (77) = happyShift action_43
action_101 (13) = happyGoto action_28
action_101 (14) = happyGoto action_11
action_101 (16) = happyGoto action_116
action_101 (17) = happyGoto action_12
action_101 (20) = happyGoto action_30
action_101 (21) = happyGoto action_31
action_101 (22) = happyGoto action_32
action_101 (23) = happyGoto action_33
action_101 (24) = happyGoto action_34
action_101 _ = happyFail

action_102 (44) = happyShift action_35
action_102 (45) = happyShift action_36
action_102 (47) = happyShift action_37
action_102 (62) = happyShift action_20
action_102 (64) = happyShift action_38
action_102 (66) = happyShift action_39
action_102 (67) = happyShift action_40
action_102 (75) = happyShift action_41
action_102 (76) = happyShift action_42
action_102 (77) = happyShift action_43
action_102 (13) = happyGoto action_28
action_102 (14) = happyGoto action_11
action_102 (16) = happyGoto action_115
action_102 (17) = happyGoto action_12
action_102 (20) = happyGoto action_30
action_102 (21) = happyGoto action_31
action_102 (22) = happyGoto action_32
action_102 (23) = happyGoto action_33
action_102 (24) = happyGoto action_34
action_102 _ = happyFail

action_103 (44) = happyShift action_35
action_103 (45) = happyShift action_36
action_103 (47) = happyShift action_37
action_103 (62) = happyShift action_20
action_103 (64) = happyShift action_38
action_103 (66) = happyShift action_39
action_103 (67) = happyShift action_40
action_103 (75) = happyShift action_41
action_103 (76) = happyShift action_42
action_103 (77) = happyShift action_43
action_103 (13) = happyGoto action_28
action_103 (14) = happyGoto action_11
action_103 (16) = happyGoto action_114
action_103 (17) = happyGoto action_12
action_103 (20) = happyGoto action_30
action_103 (21) = happyGoto action_31
action_103 (22) = happyGoto action_32
action_103 (23) = happyGoto action_33
action_103 (24) = happyGoto action_34
action_103 _ = happyFail

action_104 (44) = happyShift action_35
action_104 (45) = happyShift action_36
action_104 (47) = happyShift action_37
action_104 (62) = happyShift action_20
action_104 (64) = happyShift action_38
action_104 (66) = happyShift action_39
action_104 (67) = happyShift action_40
action_104 (75) = happyShift action_41
action_104 (76) = happyShift action_42
action_104 (77) = happyShift action_43
action_104 (13) = happyGoto action_28
action_104 (14) = happyGoto action_11
action_104 (16) = happyGoto action_113
action_104 (17) = happyGoto action_12
action_104 (20) = happyGoto action_30
action_104 (21) = happyGoto action_31
action_104 (22) = happyGoto action_32
action_104 (23) = happyGoto action_33
action_104 (24) = happyGoto action_34
action_104 _ = happyFail

action_105 (51) = happyShift action_78
action_105 _ = happyReduce_46

action_106 (51) = happyShift action_78
action_106 _ = happyReduce_45

action_107 (46) = happyShift action_73
action_107 (47) = happyShift action_74
action_107 (48) = happyShift action_75
action_107 (49) = happyShift action_76
action_107 (50) = happyShift action_77
action_107 (51) = happyShift action_78
action_107 (52) = happyShift action_79
action_107 (65) = happyShift action_112
action_107 (68) = happyShift action_80
action_107 _ = happyFail

action_108 (51) = happyShift action_78
action_108 _ = happyReduce_43

action_109 (44) = happyShift action_35
action_109 (45) = happyShift action_36
action_109 (47) = happyShift action_37
action_109 (62) = happyShift action_20
action_109 (64) = happyShift action_38
action_109 (65) = happyShift action_111
action_109 (66) = happyShift action_39
action_109 (67) = happyShift action_40
action_109 (75) = happyShift action_41
action_109 (76) = happyShift action_42
action_109 (77) = happyShift action_43
action_109 (13) = happyGoto action_28
action_109 (14) = happyGoto action_11
action_109 (16) = happyGoto action_59
action_109 (17) = happyGoto action_12
action_109 (19) = happyGoto action_110
action_109 (20) = happyGoto action_30
action_109 (21) = happyGoto action_31
action_109 (22) = happyGoto action_32
action_109 (23) = happyGoto action_33
action_109 (24) = happyGoto action_34
action_109 _ = happyFail

action_110 (65) = happyShift action_171
action_110 (70) = happyShift action_70
action_110 _ = happyFail

action_111 _ = happyReduce_56

action_112 _ = happyReduce_34

action_113 (46) = happyShift action_73
action_113 (47) = happyShift action_74
action_113 (48) = happyShift action_75
action_113 (49) = happyShift action_76
action_113 (50) = happyShift action_77
action_113 (51) = happyShift action_78
action_113 (52) = happyShift action_79
action_113 (65) = happyShift action_169
action_113 (68) = happyShift action_80
action_113 (70) = happyShift action_170
action_113 _ = happyFail

action_114 (46) = happyShift action_73
action_114 (47) = happyShift action_74
action_114 (48) = happyShift action_75
action_114 (49) = happyShift action_76
action_114 (50) = happyShift action_77
action_114 (51) = happyShift action_78
action_114 (52) = happyShift action_79
action_114 (65) = happyShift action_168
action_114 (68) = happyShift action_80
action_114 _ = happyFail

action_115 (46) = happyShift action_73
action_115 (47) = happyShift action_74
action_115 (48) = happyShift action_75
action_115 (49) = happyShift action_76
action_115 (50) = happyShift action_77
action_115 (51) = happyShift action_78
action_115 (52) = happyShift action_79
action_115 (65) = happyShift action_167
action_115 (68) = happyShift action_80
action_115 _ = happyFail

action_116 (46) = happyShift action_73
action_116 (47) = happyShift action_74
action_116 (48) = happyShift action_75
action_116 (49) = happyShift action_76
action_116 (50) = happyShift action_77
action_116 (51) = happyShift action_78
action_116 (52) = happyShift action_79
action_116 (68) = happyShift action_80
action_116 (91) = happyShift action_166
action_116 _ = happyFail

action_117 (46) = happyShift action_73
action_117 (47) = happyShift action_74
action_117 (48) = happyShift action_75
action_117 (49) = happyShift action_76
action_117 (50) = happyShift action_77
action_117 (51) = happyShift action_78
action_117 (52) = happyShift action_79
action_117 (68) = happyShift action_80
action_117 _ = happyReduce_87

action_118 (46) = happyShift action_73
action_118 (47) = happyShift action_74
action_118 (48) = happyShift action_75
action_118 (49) = happyShift action_76
action_118 (50) = happyShift action_77
action_118 (51) = happyShift action_78
action_118 (52) = happyShift action_79
action_118 (68) = happyShift action_80
action_118 _ = happyReduce_86

action_119 (46) = happyShift action_73
action_119 (47) = happyShift action_74
action_119 (48) = happyShift action_75
action_119 (49) = happyShift action_76
action_119 (50) = happyShift action_77
action_119 (51) = happyShift action_78
action_119 (52) = happyShift action_79
action_119 (68) = happyShift action_80
action_119 _ = happyReduce_85

action_120 (46) = happyShift action_73
action_120 (47) = happyShift action_74
action_120 (48) = happyShift action_75
action_120 (49) = happyShift action_76
action_120 (50) = happyShift action_77
action_120 (51) = happyShift action_78
action_120 (52) = happyShift action_79
action_120 (68) = happyShift action_80
action_120 _ = happyReduce_84

action_121 (46) = happyShift action_73
action_121 (47) = happyShift action_74
action_121 (48) = happyShift action_75
action_121 (49) = happyShift action_76
action_121 (50) = happyShift action_77
action_121 (51) = happyShift action_78
action_121 (52) = happyShift action_79
action_121 (68) = happyShift action_80
action_121 _ = happyReduce_83

action_122 (46) = happyShift action_73
action_122 (47) = happyShift action_74
action_122 (48) = happyShift action_75
action_122 (49) = happyShift action_76
action_122 (50) = happyShift action_77
action_122 (51) = happyShift action_78
action_122 (52) = happyShift action_79
action_122 (68) = happyShift action_80
action_122 _ = happyReduce_82

action_123 _ = happyReduce_73

action_124 _ = happyReduce_93

action_125 (88) = happyShift action_165
action_125 (11) = happyGoto action_164
action_125 _ = happyReduce_21

action_126 (57) = happyShift action_87
action_126 (72) = happyShift action_88
action_126 _ = happyReduce_91

action_127 (57) = happyShift action_87
action_127 _ = happyReduce_90

action_128 (57) = happyFail
action_128 _ = happyReduce_92

action_129 (44) = happyShift action_19
action_129 (62) = happyShift action_20
action_129 (78) = happyShift action_21
action_129 (79) = happyShift action_22
action_129 (84) = happyShift action_23
action_129 (87) = happyShift action_24
action_129 (90) = happyShift action_25
action_129 (92) = happyShift action_26
action_129 (94) = happyShift action_27
action_129 (9) = happyGoto action_163
action_129 (10) = happyGoto action_8
action_129 (12) = happyGoto action_9
action_129 (13) = happyGoto action_10
action_129 (14) = happyGoto action_11
action_129 (17) = happyGoto action_12
action_129 (25) = happyGoto action_13
action_129 (30) = happyGoto action_14
action_129 (31) = happyGoto action_15
action_129 (32) = happyGoto action_16
action_129 (33) = happyGoto action_17
action_129 (36) = happyGoto action_18
action_129 _ = happyFail

action_130 _ = happyReduce_64

action_131 (38) = happyShift action_160
action_131 (39) = happyShift action_161
action_131 (40) = happyShift action_162
action_131 (8) = happyGoto action_159
action_131 _ = happyFail

action_132 (44) = happyShift action_158
action_132 _ = happyFail

action_133 (44) = happyShift action_84
action_133 (28) = happyGoto action_157
action_133 _ = happyFail

action_134 _ = happyReduce_80

action_135 (51) = happyShift action_78
action_135 (68) = happyShift action_80
action_135 _ = happyReduce_41

action_136 _ = happyReduce_40

action_137 (51) = happyShift action_78
action_137 (68) = happyShift action_80
action_137 _ = happyReduce_39

action_138 (51) = happyShift action_78
action_138 (68) = happyShift action_80
action_138 _ = happyReduce_38

action_139 (51) = happyShift action_78
action_139 (68) = happyShift action_80
action_139 _ = happyReduce_37

action_140 (48) = happyShift action_75
action_140 (49) = happyShift action_76
action_140 (50) = happyShift action_77
action_140 (51) = happyShift action_78
action_140 (52) = happyShift action_79
action_140 (68) = happyShift action_80
action_140 _ = happyReduce_36

action_141 (48) = happyShift action_75
action_141 (49) = happyShift action_76
action_141 (50) = happyShift action_77
action_141 (51) = happyShift action_78
action_141 (52) = happyShift action_79
action_141 (68) = happyShift action_80
action_141 _ = happyReduce_35

action_142 (70) = happyShift action_70
action_142 _ = happyReduce_52

action_143 (46) = happyShift action_73
action_143 (47) = happyShift action_74
action_143 (48) = happyShift action_75
action_143 (49) = happyShift action_76
action_143 (50) = happyShift action_77
action_143 (51) = happyShift action_78
action_143 (52) = happyShift action_79
action_143 (68) = happyShift action_80
action_143 _ = happyReduce_54

action_144 _ = happyReduce_25

action_145 (44) = happyShift action_35
action_145 (45) = happyShift action_36
action_145 (47) = happyShift action_37
action_145 (62) = happyShift action_20
action_145 (64) = happyShift action_38
action_145 (66) = happyShift action_39
action_145 (67) = happyShift action_40
action_145 (75) = happyShift action_41
action_145 (76) = happyShift action_42
action_145 (77) = happyShift action_43
action_145 (13) = happyGoto action_28
action_145 (14) = happyGoto action_11
action_145 (16) = happyGoto action_156
action_145 (17) = happyGoto action_12
action_145 (20) = happyGoto action_30
action_145 (21) = happyGoto action_31
action_145 (22) = happyGoto action_32
action_145 (23) = happyGoto action_33
action_145 (24) = happyGoto action_34
action_145 _ = happyFail

action_146 (44) = happyShift action_35
action_146 (45) = happyShift action_36
action_146 (47) = happyShift action_37
action_146 (62) = happyShift action_20
action_146 (64) = happyShift action_38
action_146 (66) = happyShift action_39
action_146 (67) = happyShift action_40
action_146 (75) = happyShift action_41
action_146 (76) = happyShift action_42
action_146 (77) = happyShift action_43
action_146 (13) = happyGoto action_28
action_146 (14) = happyGoto action_11
action_146 (15) = happyGoto action_154
action_146 (16) = happyGoto action_155
action_146 (17) = happyGoto action_12
action_146 (20) = happyGoto action_30
action_146 (21) = happyGoto action_31
action_146 (22) = happyGoto action_32
action_146 (23) = happyGoto action_33
action_146 (24) = happyGoto action_34
action_146 _ = happyReduce_31

action_147 (65) = happyShift action_152
action_147 (70) = happyShift action_153
action_147 _ = happyFail

action_148 (69) = happyShift action_151
action_148 _ = happyFail

action_149 (81) = happyShift action_150
action_149 _ = happyFail

action_150 (82) = happyShift action_182
action_150 _ = happyFail

action_151 (38) = happyShift action_160
action_151 (39) = happyShift action_161
action_151 (40) = happyShift action_162
action_151 (8) = happyGoto action_181
action_151 _ = happyFail

action_152 (81) = happyShift action_180
action_152 _ = happyFail

action_153 (44) = happyShift action_179
action_153 _ = happyFail

action_154 (61) = happyShift action_177
action_154 (70) = happyShift action_178
action_154 _ = happyFail

action_155 (46) = happyShift action_73
action_155 (47) = happyShift action_74
action_155 (48) = happyShift action_75
action_155 (49) = happyShift action_76
action_155 (50) = happyShift action_77
action_155 (51) = happyShift action_78
action_155 (52) = happyShift action_79
action_155 (68) = happyShift action_80
action_155 _ = happyReduce_32

action_156 (46) = happyShift action_73
action_156 (47) = happyShift action_74
action_156 (48) = happyShift action_75
action_156 (49) = happyShift action_76
action_156 (50) = happyShift action_77
action_156 (51) = happyShift action_78
action_156 (52) = happyShift action_79
action_156 (61) = happyShift action_176
action_156 (68) = happyShift action_80
action_156 _ = happyFail

action_157 (69) = happyShift action_175
action_157 (70) = happyShift action_132
action_157 _ = happyFail

action_158 _ = happyReduce_70

action_159 _ = happyReduce_67

action_160 _ = happyReduce_9

action_161 _ = happyReduce_10

action_162 _ = happyReduce_11

action_163 _ = happyReduce_72

action_164 _ = happyReduce_20

action_165 (44) = happyShift action_19
action_165 (62) = happyShift action_20
action_165 (78) = happyShift action_21
action_165 (79) = happyShift action_22
action_165 (84) = happyShift action_23
action_165 (87) = happyShift action_24
action_165 (90) = happyShift action_25
action_165 (92) = happyShift action_26
action_165 (94) = happyShift action_27
action_165 (9) = happyGoto action_174
action_165 (10) = happyGoto action_8
action_165 (12) = happyGoto action_9
action_165 (13) = happyGoto action_10
action_165 (14) = happyGoto action_11
action_165 (17) = happyGoto action_12
action_165 (25) = happyGoto action_13
action_165 (30) = happyGoto action_14
action_165 (31) = happyGoto action_15
action_165 (32) = happyGoto action_16
action_165 (33) = happyGoto action_17
action_165 (36) = happyGoto action_18
action_165 _ = happyFail

action_166 (44) = happyShift action_19
action_166 (62) = happyShift action_20
action_166 (78) = happyShift action_21
action_166 (79) = happyShift action_22
action_166 (84) = happyShift action_23
action_166 (87) = happyShift action_24
action_166 (90) = happyShift action_25
action_166 (92) = happyShift action_26
action_166 (94) = happyShift action_27
action_166 (9) = happyGoto action_173
action_166 (10) = happyGoto action_8
action_166 (12) = happyGoto action_9
action_166 (13) = happyGoto action_10
action_166 (14) = happyGoto action_11
action_166 (17) = happyGoto action_12
action_166 (25) = happyGoto action_13
action_166 (30) = happyGoto action_14
action_166 (31) = happyGoto action_15
action_166 (32) = happyGoto action_16
action_166 (33) = happyGoto action_17
action_166 (36) = happyGoto action_18
action_166 _ = happyFail

action_167 _ = happyReduce_63

action_168 _ = happyReduce_62

action_169 _ = happyReduce_61

action_170 (44) = happyShift action_35
action_170 (45) = happyShift action_36
action_170 (47) = happyShift action_37
action_170 (62) = happyShift action_20
action_170 (64) = happyShift action_38
action_170 (66) = happyShift action_39
action_170 (67) = happyShift action_40
action_170 (75) = happyShift action_41
action_170 (76) = happyShift action_42
action_170 (77) = happyShift action_43
action_170 (13) = happyGoto action_28
action_170 (14) = happyGoto action_11
action_170 (16) = happyGoto action_172
action_170 (17) = happyGoto action_12
action_170 (20) = happyGoto action_30
action_170 (21) = happyGoto action_31
action_170 (22) = happyGoto action_32
action_170 (23) = happyGoto action_33
action_170 (24) = happyGoto action_34
action_170 _ = happyFail

action_171 _ = happyReduce_55

action_172 (46) = happyShift action_73
action_172 (47) = happyShift action_74
action_172 (48) = happyShift action_75
action_172 (49) = happyShift action_76
action_172 (50) = happyShift action_77
action_172 (51) = happyShift action_78
action_172 (52) = happyShift action_79
action_172 (65) = happyShift action_188
action_172 (68) = happyShift action_80
action_172 _ = happyFail

action_173 _ = happyReduce_74

action_174 _ = happyReduce_22

action_175 (38) = happyShift action_160
action_175 (39) = happyShift action_161
action_175 (40) = happyShift action_162
action_175 (8) = happyGoto action_187
action_175 _ = happyFail

action_176 _ = happyReduce_26

action_177 _ = happyReduce_27

action_178 (44) = happyShift action_35
action_178 (45) = happyShift action_36
action_178 (47) = happyShift action_37
action_178 (62) = happyShift action_20
action_178 (64) = happyShift action_38
action_178 (66) = happyShift action_39
action_178 (67) = happyShift action_40
action_178 (75) = happyShift action_41
action_178 (76) = happyShift action_42
action_178 (77) = happyShift action_43
action_178 (13) = happyGoto action_28
action_178 (14) = happyGoto action_11
action_178 (15) = happyGoto action_186
action_178 (16) = happyGoto action_155
action_178 (17) = happyGoto action_12
action_178 (20) = happyGoto action_30
action_178 (21) = happyGoto action_31
action_178 (22) = happyGoto action_32
action_178 (23) = happyGoto action_33
action_178 (24) = happyGoto action_34
action_178 _ = happyReduce_31

action_179 (69) = happyShift action_185
action_179 _ = happyFail

action_180 (82) = happyShift action_184
action_180 _ = happyFail

action_181 _ = happyReduce_7

action_182 (38) = happyShift action_160
action_182 (39) = happyShift action_161
action_182 (40) = happyShift action_162
action_182 (8) = happyGoto action_183
action_182 _ = happyFail

action_183 (83) = happyShift action_192
action_183 _ = happyFail

action_184 (38) = happyShift action_160
action_184 (39) = happyShift action_161
action_184 (40) = happyShift action_162
action_184 (8) = happyGoto action_191
action_184 _ = happyFail

action_185 (38) = happyShift action_160
action_185 (39) = happyShift action_161
action_185 (40) = happyShift action_162
action_185 (8) = happyGoto action_190
action_185 _ = happyFail

action_186 (69) = happyShift action_189
action_186 _ = happyFail

action_187 _ = happyReduce_68

action_188 _ = happyReduce_60

action_189 (44) = happyShift action_35
action_189 (45) = happyShift action_36
action_189 (47) = happyShift action_37
action_189 (62) = happyShift action_20
action_189 (64) = happyShift action_38
action_189 (66) = happyShift action_39
action_189 (67) = happyShift action_40
action_189 (75) = happyShift action_41
action_189 (76) = happyShift action_42
action_189 (77) = happyShift action_43
action_189 (13) = happyGoto action_28
action_189 (14) = happyGoto action_11
action_189 (15) = happyGoto action_195
action_189 (16) = happyGoto action_155
action_189 (17) = happyGoto action_12
action_189 (20) = happyGoto action_30
action_189 (21) = happyGoto action_31
action_189 (22) = happyGoto action_32
action_189 (23) = happyGoto action_33
action_189 (24) = happyGoto action_34
action_189 _ = happyReduce_31

action_190 _ = happyReduce_8

action_191 (83) = happyShift action_194
action_191 _ = happyFail

action_192 (44) = happyShift action_19
action_192 (62) = happyShift action_20
action_192 (78) = happyShift action_21
action_192 (79) = happyShift action_22
action_192 (84) = happyShift action_23
action_192 (87) = happyShift action_24
action_192 (90) = happyShift action_25
action_192 (92) = happyShift action_26
action_192 (94) = happyShift action_27
action_192 (9) = happyGoto action_193
action_192 (10) = happyGoto action_8
action_192 (12) = happyGoto action_9
action_192 (13) = happyGoto action_10
action_192 (14) = happyGoto action_11
action_192 (17) = happyGoto action_12
action_192 (25) = happyGoto action_13
action_192 (30) = happyGoto action_14
action_192 (31) = happyGoto action_15
action_192 (32) = happyGoto action_16
action_192 (33) = happyGoto action_17
action_192 (36) = happyGoto action_18
action_192 _ = happyFail

action_193 _ = happyReduce_6

action_194 (44) = happyShift action_19
action_194 (62) = happyShift action_20
action_194 (78) = happyShift action_21
action_194 (79) = happyShift action_22
action_194 (84) = happyShift action_23
action_194 (87) = happyShift action_24
action_194 (90) = happyShift action_25
action_194 (92) = happyShift action_26
action_194 (94) = happyShift action_27
action_194 (9) = happyGoto action_197
action_194 (10) = happyGoto action_8
action_194 (12) = happyGoto action_9
action_194 (13) = happyGoto action_10
action_194 (14) = happyGoto action_11
action_194 (17) = happyGoto action_12
action_194 (25) = happyGoto action_13
action_194 (30) = happyGoto action_14
action_194 (31) = happyGoto action_15
action_194 (32) = happyGoto action_16
action_194 (33) = happyGoto action_17
action_194 (36) = happyGoto action_18
action_194 _ = happyFail

action_195 (61) = happyShift action_196
action_195 _ = happyFail

action_196 _ = happyReduce_28

action_197 _ = happyReduce_5

happyReduce_1 = happySpecReduce_2  4 happyReduction_1
happyReduction_1 _
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_1 _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_0  5 happyReduction_2
happyReduction_2  =  HappyAbsSyn5
		 (
	)

happyReduce_3 = happySpecReduce_1  5 happyReduction_3
happyReduction_3 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_2  5 happyReduction_4
happyReduction_4 _
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_4 _ _  = notHappyAtAll 

happyReduce_5 = happyReduce 11 6 happyReduction_5
happyReduction_5 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (happy_var_2
	) `HappyStk` happyRest

happyReduce_6 = happyReduce 10 6 happyReduction_6
happyReduction_6 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (happy_var_1
	) `HappyStk` happyRest

happyReduce_7 = happySpecReduce_3  7 happyReduction_7
happyReduction_7 _
	_
	(HappyTerminal (TkId _ happy_var_1))
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happyReduce 5 7 happyReduction_8
happyReduction_8 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (happy_var_1
	) `HappyStk` happyRest

happyReduce_9 = happySpecReduce_1  8 happyReduction_9
happyReduction_9 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  8 happyReduction_10
happyReduction_10 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  8 happyReduction_11
happyReduction_11 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  9 happyReduction_12
happyReduction_12 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  9 happyReduction_13
happyReduction_13 (HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  9 happyReduction_14
happyReduction_14 (HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  9 happyReduction_15
happyReduction_15 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  9 happyReduction_16
happyReduction_16 (HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  9 happyReduction_17
happyReduction_17 (HappyAbsSyn33  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  9 happyReduction_18
happyReduction_18 (HappyAbsSyn36  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  9 happyReduction_19
happyReduction_19 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happyReduce 5 10 happyReduction_20
happyReduction_20 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn37  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (happy_var_2
	) `HappyStk` happyRest

happyReduce_21 = happySpecReduce_0  11 happyReduction_21
happyReduction_21  =  HappyAbsSyn11
		 (
	)

happyReduce_22 = happySpecReduce_2  11 happyReduction_22
happyReduction_22 _
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  12 happyReduction_23
happyReduction_23 _
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  13 happyReduction_24
happyReduction_24 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happyReduce 4 13 happyReduction_25
happyReduction_25 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (happy_var_1
	) `HappyStk` happyRest

happyReduce_26 = happyReduce 6 13 happyReduction_26
happyReduction_26 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (happy_var_1
	) `HappyStk` happyRest

happyReduce_27 = happyReduce 6 13 happyReduction_27
happyReduction_27 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (happy_var_1
	) `HappyStk` happyRest

happyReduce_28 = happyReduce 10 13 happyReduction_28
happyReduction_28 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (happy_var_1
	) `HappyStk` happyRest

happyReduce_29 = happySpecReduce_1  14 happyReduction_29
happyReduction_29 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  14 happyReduction_30
happyReduction_30 (HappyTerminal (TkId _ happy_var_1))
	 =  HappyAbsSyn14
		 (happy_var_1
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_0  15 happyReduction_31
happyReduction_31  =  HappyAbsSyn15
		 (
	)

happyReduce_32 = happySpecReduce_1  15 happyReduction_32
happyReduction_32 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  16 happyReduction_33
happyReduction_33 (HappyTerminal (TkNum _ happy_var_1))
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  16 happyReduction_34
happyReduction_34 _
	_
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  16 happyReduction_35
happyReduction_35 _
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  16 happyReduction_36
happyReduction_36 _
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  16 happyReduction_37
happyReduction_37 _
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  16 happyReduction_38
happyReduction_38 _
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  16 happyReduction_39
happyReduction_39 _
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  16 happyReduction_40
happyReduction_40 _
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  16 happyReduction_41
happyReduction_41 _
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  16 happyReduction_42
happyReduction_42 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_2  16 happyReduction_43
happyReduction_43 _
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_43 _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_2  16 happyReduction_44
happyReduction_44 _
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_44 _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_2  16 happyReduction_45
happyReduction_45 _
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_45 _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_2  16 happyReduction_46
happyReduction_46 _
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_46 _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_1  16 happyReduction_47
happyReduction_47 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_47 _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_1  16 happyReduction_48
happyReduction_48 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_48 _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  17 happyReduction_49
happyReduction_49 _
	_
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn17
		 (happy_var_1
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_2  17 happyReduction_50
happyReduction_50 _
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn17
		 (happy_var_1
	)
happyReduction_50 _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_1  18 happyReduction_51
happyReduction_51 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn18
		 (happy_var_1
	)
happyReduction_51 _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_3  18 happyReduction_52
happyReduction_52 _
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (happy_var_1
	)
happyReduction_52 _ _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_1  19 happyReduction_53
happyReduction_53 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn19
		 (happy_var_1
	)
happyReduction_53 _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_3  19 happyReduction_54
happyReduction_54 _
	_
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (happy_var_1
	)
happyReduction_54 _ _ _  = notHappyAtAll 

happyReduce_55 = happyReduce 4 20 happyReduction_55
happyReduction_55 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TkId _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn20
		 (happy_var_1
	) `HappyStk` happyRest

happyReduce_56 = happySpecReduce_3  20 happyReduction_56
happyReduction_56 _
	_
	(HappyTerminal (TkId _ happy_var_1))
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_56 _ _ _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_1  21 happyReduction_57
happyReduction_57 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn21
		 (happy_var_1
	)
happyReduction_57 _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_1  21 happyReduction_58
happyReduction_58 (HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn21
		 (happy_var_1
	)
happyReduction_58 _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_1  21 happyReduction_59
happyReduction_59 (HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn21
		 (happy_var_1
	)
happyReduction_59 _  = notHappyAtAll 

happyReduce_60 = happyReduce 6 22 happyReduction_60
happyReduction_60 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn22
		 ($
	) `HappyStk` happyRest

happyReduce_61 = happyReduce 4 22 happyReduction_61
happyReduction_61 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn22
		 (happy_var_1
	) `HappyStk` happyRest

happyReduce_62 = happyReduce 4 23 happyReduction_62
happyReduction_62 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn23
		 (happy_var_1
	) `HappyStk` happyRest

happyReduce_63 = happyReduce 4 24 happyReduction_63
happyReduction_63 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn24
		 (happy_var_1
	) `HappyStk` happyRest

happyReduce_64 = happyReduce 4 25 happyReduction_64
happyReduction_64 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn25
		 (happy_var_1
	) `HappyStk` happyRest

happyReduce_65 = happySpecReduce_2  26 happyReduction_65
happyReduction_65 _
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn26
		 (happy_var_1
	)
happyReduction_65 _ _  = notHappyAtAll 

happyReduce_66 = happySpecReduce_0  26 happyReduction_66
happyReduction_66  =  HappyAbsSyn26
		 (
	)

happyReduce_67 = happySpecReduce_3  27 happyReduction_67
happyReduction_67 _
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn27
		 (happy_var_1
	)
happyReduction_67 _ _ _  = notHappyAtAll 

happyReduce_68 = happyReduce 5 27 happyReduction_68
happyReduction_68 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn27  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn27
		 (happy_var_1
	) `HappyStk` happyRest

happyReduce_69 = happySpecReduce_1  28 happyReduction_69
happyReduction_69 (HappyTerminal (TkId _ happy_var_1))
	 =  HappyAbsSyn28
		 (happy_var_1
	)
happyReduction_69 _  = notHappyAtAll 

happyReduce_70 = happySpecReduce_3  28 happyReduction_70
happyReduction_70 _
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (happy_var_1
	)
happyReduction_70 _ _ _  = notHappyAtAll 

happyReduce_71 = happySpecReduce_1  29 happyReduction_71
happyReduction_71 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn29
		 (happy_var_1
	)
happyReduction_71 _  = notHappyAtAll 

happyReduce_72 = happySpecReduce_3  29 happyReduction_72
happyReduction_72 _
	_
	(HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn29
		 (happy_var_1
	)
happyReduction_72 _ _ _  = notHappyAtAll 

happyReduce_73 = happyReduce 4 30 happyReduction_73
happyReduction_73 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn30
		 (happy_var_1
	) `HappyStk` happyRest

happyReduce_74 = happyReduce 6 31 happyReduction_74
happyReduction_74 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn31
		 (happy_var_1
	) `HappyStk` happyRest

happyReduce_75 = happySpecReduce_2  32 happyReduction_75
happyReduction_75 _
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn32
		 (happy_var_1
	)
happyReduction_75 _ _  = notHappyAtAll 

happyReduce_76 = happySpecReduce_2  33 happyReduction_76
happyReduction_76 _
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1
	)
happyReduction_76 _ _  = notHappyAtAll 

happyReduce_77 = happySpecReduce_1  34 happyReduction_77
happyReduction_77 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn34
		 (happy_var_1
	)
happyReduction_77 _  = notHappyAtAll 

happyReduce_78 = happySpecReduce_1  34 happyReduction_78
happyReduction_78 (HappyTerminal (TkString _ happy_var_1))
	 =  HappyAbsSyn34
		 (happy_var_1
	)
happyReduction_78 _  = notHappyAtAll 

happyReduce_79 = happySpecReduce_1  35 happyReduction_79
happyReduction_79 (HappyAbsSyn34  happy_var_1)
	 =  HappyAbsSyn35
		 (happy_var_1
	)
happyReduction_79 _  = notHappyAtAll 

happyReduce_80 = happySpecReduce_3  35 happyReduction_80
happyReduction_80 _
	_
	(HappyAbsSyn35  happy_var_1)
	 =  HappyAbsSyn35
		 (happy_var_1
	)
happyReduction_80 _ _ _  = notHappyAtAll 

happyReduce_81 = happySpecReduce_2  36 happyReduction_81
happyReduction_81 _
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn36
		 (happy_var_1
	)
happyReduction_81 _ _  = notHappyAtAll 

happyReduce_82 = happySpecReduce_3  37 happyReduction_82
happyReduction_82 _
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn37
		 (happy_var_1
	)
happyReduction_82 _ _ _  = notHappyAtAll 

happyReduce_83 = happySpecReduce_3  37 happyReduction_83
happyReduction_83 _
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn37
		 (happy_var_1
	)
happyReduction_83 _ _ _  = notHappyAtAll 

happyReduce_84 = happySpecReduce_3  37 happyReduction_84
happyReduction_84 _
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn37
		 (happy_var_1
	)
happyReduction_84 _ _ _  = notHappyAtAll 

happyReduce_85 = happySpecReduce_3  37 happyReduction_85
happyReduction_85 _
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn37
		 (happy_var_1
	)
happyReduction_85 _ _ _  = notHappyAtAll 

happyReduce_86 = happySpecReduce_3  37 happyReduction_86
happyReduction_86 _
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn37
		 (happy_var_1
	)
happyReduction_86 _ _ _  = notHappyAtAll 

happyReduce_87 = happySpecReduce_3  37 happyReduction_87
happyReduction_87 _
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn37
		 (happy_var_1
	)
happyReduction_87 _ _ _  = notHappyAtAll 

happyReduce_88 = happySpecReduce_1  37 happyReduction_88
happyReduction_88 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn37
		 (happy_var_1
	)
happyReduction_88 _  = notHappyAtAll 

happyReduce_89 = happySpecReduce_1  37 happyReduction_89
happyReduction_89 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn37
		 (happy_var_1
	)
happyReduction_89 _  = notHappyAtAll 

happyReduce_90 = happySpecReduce_3  37 happyReduction_90
happyReduction_90 _
	_
	(HappyAbsSyn37  happy_var_1)
	 =  HappyAbsSyn37
		 (happy_var_1
	)
happyReduction_90 _ _ _  = notHappyAtAll 

happyReduce_91 = happySpecReduce_3  37 happyReduction_91
happyReduction_91 _
	_
	(HappyAbsSyn37  happy_var_1)
	 =  HappyAbsSyn37
		 (happy_var_1
	)
happyReduction_91 _ _ _  = notHappyAtAll 

happyReduce_92 = happySpecReduce_3  37 happyReduction_92
happyReduction_92 _
	_
	(HappyAbsSyn37  happy_var_1)
	 =  HappyAbsSyn37
		 (happy_var_1
	)
happyReduction_92 _ _ _  = notHappyAtAll 

happyReduce_93 = happySpecReduce_3  37 happyReduction_93
happyReduction_93 _
	_
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn37
		 (happy_var_1
	)
happyReduction_93 _ _ _  = notHappyAtAll 

happyReduce_94 = happySpecReduce_2  37 happyReduction_94
happyReduction_94 _
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn37
		 (happy_var_1
	)
happyReduction_94 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 95 95 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TkTNum _ -> cont 38;
	TkTVec _ -> cont 39;
	TkTMat _ -> cont 40;
	TkTrue _ -> cont 41;
	TkFalse _ -> cont 42;
	TkString _ happy_dollar_dollar -> cont 43;
	TkId _ happy_dollar_dollar -> cont 44;
	TkNum _ happy_dollar_dollar -> cont 45;
	TkPlus _ -> cont 46;
	TkMinus _ -> cont 47;
	TkTimes _ -> cont 48;
	TkDiv _ -> cont 49;
	TkMod _ -> cont 50;
	TkExp _ -> cont 51;
	TkDot _ -> cont 52;
	TkLess _ -> cont 53;
	TkGreat _ -> cont 54;
	TkLET _ -> cont 55;
	TkGET _ -> cont 56;
	TkEqual _ -> cont 57;
	TkNEqual _ -> cont 58;
	TkAssign _ -> cont 59;
	TkLSB _ -> cont 60;
	TkRSB _ -> cont 61;
	TkLCB _ -> cont 62;
	TkRCB _ -> cont 63;
	TkLP  _ -> cont 64;
	TkRP  _ -> cont 65;
	TkDS _ -> cont 66;
	TkAt _ -> cont 67;
	TkCircum _ -> cont 68;
	TkColon _ -> cont 69;
	TkComma _ -> cont 70;
	TkSC _ -> cont 71;
	TkAnd _ -> cont 72;
	TkOr _ -> cont 73;
	TkNot _ -> cont 74;
	TkFZeroes _ -> cont 75;
	TkFRange _ -> cont 76;
	TkFEye _ -> cont 77;
	TkRead _ -> cont 78;
	TkWrite _ -> cont 79;
	TkDef _ -> cont 80;
	TkOf _ -> cont 81;
	TkType _ -> cont 82;
	TkAs _ -> cont 83;
	TkBegin _ -> cont 84;
	TkEnd _ -> cont 85;
	TkVar _ -> cont 86;
	TkIf _ -> cont 87;
	TkElse _ -> cont 88;
	TkThen _ -> cont 89;
	TkWhile _ -> cont 90;
	TkDo _ -> cont 91;
	TkFore _ -> cont 92;
	TkIn _ -> cont 93;
	TkReturn _ -> cont 94;
	_ -> happyError' (tk:tks)
	}

happyError_ tk tks = happyError' (tk:tks)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Monad HappyIdentity where
    return = HappyIdentity
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => [(Token)] -> HappyIdentity a
happyError' = HappyIdentity . syntaxError

parser tks = happyRunIdentity happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


syntaxError :: [Token] -> a
syntaxError (t:ts) = error $ 
                       "Error de sintaxis en el Token " ++ (show t) ++ "\n" ++
                       "Seguido de: " ++ (unlines $ map show $ take 3 ts)
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 28 "templates/GenericTemplate.hs" #-}








{-# LINE 49 "templates/GenericTemplate.hs" #-}

{-# LINE 59 "templates/GenericTemplate.hs" #-}

{-# LINE 68 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
	happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
	 (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 155 "templates/GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
	 sts1@(((st1@(HappyState (action))):(_))) ->
        	let r = fn stk in  -- it doesn't hurt to always seq here...
       		happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
        happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))
       where sts1@(((st1@(HappyState (action))):(_))) = happyDrop k ((st):(sts))
             drop_stk = happyDropStk k stk

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
       happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))
       where sts1@(((st1@(HappyState (action))):(_))) = happyDrop k ((st):(sts))
             drop_stk = happyDropStk k stk





             new_state = action


happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 253 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail  (1) tk old_st _ stk =
--	trace "failing" $ 
    	happyError_ tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
						(saved_tok `HappyStk` _ `HappyStk` stk) =
--	trace ("discarding state, depth " ++ show (length stk))  $
	action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
	action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--	happySeq = happyDoSeq
-- otherwise it emits
-- 	happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 317 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
