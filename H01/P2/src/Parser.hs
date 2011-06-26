{-# OPTIONS_GHC -fno-warn-overlapping-patterns #-}
{-
Comentarios BLAH

-}

module Parser (
       parser
) where

import Token.hs

-- parser produced by Happy Version 1.18.4

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33
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

action_0 (4) = happyGoto action_3
action_0 (5) = happyGoto action_2
action_0 _ = happyReduce_2

action_1 (5) = happyGoto action_2
action_1 _ = happyFail

action_2 (40) = happyShift action_14
action_2 (74) = happyShift action_15
action_2 (75) = happyShift action_16
action_2 (76) = happyShift action_17
action_2 (80) = happyShift action_18
action_2 (83) = happyShift action_19
action_2 (86) = happyShift action_20
action_2 (88) = happyShift action_21
action_2 (90) = happyShift action_22
action_2 (8) = happyGoto action_4
action_2 (9) = happyGoto action_5
action_2 (10) = happyGoto action_6
action_2 (22) = happyGoto action_7
action_2 (27) = happyGoto action_8
action_2 (28) = happyGoto action_9
action_2 (29) = happyGoto action_10
action_2 (30) = happyGoto action_11
action_2 (31) = happyGoto action_12
action_2 (32) = happyGoto action_13
action_2 _ = happyFail

action_3 (91) = happyAccept
action_3 _ = happyFail

action_4 _ = happyReduce_1

action_5 _ = happyReduce_10

action_6 (55) = happyShift action_58
action_6 _ = happyFail

action_7 _ = happyReduce_11

action_8 _ = happyReduce_12

action_9 _ = happyReduce_13

action_10 _ = happyReduce_14

action_11 _ = happyReduce_15

action_12 _ = happyReduce_16

action_13 _ = happyReduce_17

action_14 (56) = happyShift action_57
action_14 _ = happyReduce_19

action_15 (39) = happyShift action_31
action_15 (40) = happyShift action_32
action_15 (41) = happyShift action_33
action_15 (43) = happyShift action_34
action_15 (58) = happyShift action_35
action_15 (60) = happyShift action_36
action_15 (62) = happyShift action_37
action_15 (63) = happyShift action_38
action_15 (64) = happyShift action_39
action_15 (71) = happyShift action_40
action_15 (72) = happyShift action_41
action_15 (73) = happyShift action_42
action_15 (10) = happyGoto action_23
action_15 (12) = happyGoto action_56
action_15 (13) = happyGoto action_25
action_15 (17) = happyGoto action_26
action_15 (18) = happyGoto action_27
action_15 (19) = happyGoto action_28
action_15 (20) = happyGoto action_29
action_15 (21) = happyGoto action_30
action_15 _ = happyFail

action_16 (39) = happyShift action_31
action_16 (40) = happyShift action_32
action_16 (41) = happyShift action_33
action_16 (43) = happyShift action_34
action_16 (58) = happyShift action_35
action_16 (60) = happyShift action_36
action_16 (62) = happyShift action_37
action_16 (63) = happyShift action_38
action_16 (64) = happyShift action_39
action_16 (71) = happyShift action_40
action_16 (72) = happyShift action_41
action_16 (73) = happyShift action_42
action_16 (10) = happyGoto action_23
action_16 (12) = happyGoto action_54
action_16 (13) = happyGoto action_25
action_16 (15) = happyGoto action_55
action_16 (17) = happyGoto action_26
action_16 (18) = happyGoto action_27
action_16 (19) = happyGoto action_28
action_16 (20) = happyGoto action_29
action_16 (21) = happyGoto action_30
action_16 _ = happyFail

action_17 (40) = happyShift action_53
action_17 _ = happyFail

action_18 (82) = happyShift action_52
action_18 (23) = happyGoto action_51
action_18 _ = happyFail

action_19 (37) = happyShift action_46
action_19 (38) = happyShift action_47
action_19 (39) = happyShift action_31
action_19 (40) = happyShift action_32
action_19 (41) = happyShift action_33
action_19 (43) = happyShift action_34
action_19 (58) = happyShift action_35
action_19 (60) = happyShift action_48
action_19 (62) = happyShift action_37
action_19 (63) = happyShift action_38
action_19 (64) = happyShift action_39
action_19 (70) = happyShift action_49
action_19 (71) = happyShift action_40
action_19 (72) = happyShift action_41
action_19 (73) = happyShift action_42
action_19 (10) = happyGoto action_23
action_19 (12) = happyGoto action_44
action_19 (13) = happyGoto action_25
action_19 (17) = happyGoto action_26
action_19 (18) = happyGoto action_27
action_19 (19) = happyGoto action_28
action_19 (20) = happyGoto action_29
action_19 (21) = happyGoto action_30
action_19 (33) = happyGoto action_50
action_19 _ = happyFail

action_20 (37) = happyShift action_46
action_20 (38) = happyShift action_47
action_20 (39) = happyShift action_31
action_20 (40) = happyShift action_32
action_20 (41) = happyShift action_33
action_20 (43) = happyShift action_34
action_20 (58) = happyShift action_35
action_20 (60) = happyShift action_48
action_20 (62) = happyShift action_37
action_20 (63) = happyShift action_38
action_20 (64) = happyShift action_39
action_20 (70) = happyShift action_49
action_20 (71) = happyShift action_40
action_20 (72) = happyShift action_41
action_20 (73) = happyShift action_42
action_20 (10) = happyGoto action_23
action_20 (12) = happyGoto action_44
action_20 (13) = happyGoto action_25
action_20 (17) = happyGoto action_26
action_20 (18) = happyGoto action_27
action_20 (19) = happyGoto action_28
action_20 (20) = happyGoto action_29
action_20 (21) = happyGoto action_30
action_20 (33) = happyGoto action_45
action_20 _ = happyFail

action_21 (40) = happyShift action_43
action_21 _ = happyFail

action_22 (39) = happyShift action_31
action_22 (40) = happyShift action_32
action_22 (41) = happyShift action_33
action_22 (43) = happyShift action_34
action_22 (58) = happyShift action_35
action_22 (60) = happyShift action_36
action_22 (62) = happyShift action_37
action_22 (63) = happyShift action_38
action_22 (64) = happyShift action_39
action_22 (71) = happyShift action_40
action_22 (72) = happyShift action_41
action_22 (73) = happyShift action_42
action_22 (10) = happyGoto action_23
action_22 (12) = happyGoto action_24
action_22 (13) = happyGoto action_25
action_22 (17) = happyGoto action_26
action_22 (18) = happyGoto action_27
action_22 (19) = happyGoto action_28
action_22 (20) = happyGoto action_29
action_22 (21) = happyGoto action_30
action_22 _ = happyFail

action_23 _ = happyReduce_37

action_24 (42) = happyShift action_62
action_24 (43) = happyShift action_63
action_24 (44) = happyShift action_64
action_24 (45) = happyShift action_65
action_24 (46) = happyShift action_66
action_24 (47) = happyShift action_67
action_24 (48) = happyShift action_68
action_24 _ = happyReduce_76

action_25 _ = happyReduce_28

action_26 _ = happyReduce_42

action_27 _ = happyReduce_43

action_28 _ = happyReduce_55

action_29 _ = happyReduce_56

action_30 _ = happyReduce_57

action_31 _ = happyReduce_27

action_32 (56) = happyShift action_57
action_32 (60) = happyShift action_103
action_32 _ = happyReduce_19

action_33 _ = happyReduce_26

action_34 (39) = happyShift action_31
action_34 (40) = happyShift action_32
action_34 (41) = happyShift action_33
action_34 (43) = happyShift action_34
action_34 (58) = happyShift action_35
action_34 (60) = happyShift action_36
action_34 (62) = happyShift action_37
action_34 (63) = happyShift action_38
action_34 (64) = happyShift action_39
action_34 (71) = happyShift action_40
action_34 (72) = happyShift action_41
action_34 (73) = happyShift action_42
action_34 (10) = happyGoto action_23
action_34 (12) = happyGoto action_102
action_34 (13) = happyGoto action_25
action_34 (17) = happyGoto action_26
action_34 (18) = happyGoto action_27
action_34 (19) = happyGoto action_28
action_34 (20) = happyGoto action_29
action_34 (21) = happyGoto action_30
action_34 _ = happyFail

action_35 (39) = happyShift action_31
action_35 (40) = happyShift action_32
action_35 (41) = happyShift action_33
action_35 (43) = happyShift action_34
action_35 (58) = happyShift action_35
action_35 (60) = happyShift action_36
action_35 (62) = happyShift action_37
action_35 (63) = happyShift action_38
action_35 (64) = happyShift action_39
action_35 (71) = happyShift action_40
action_35 (72) = happyShift action_41
action_35 (73) = happyShift action_42
action_35 (10) = happyGoto action_23
action_35 (12) = happyGoto action_54
action_35 (13) = happyGoto action_98
action_35 (14) = happyGoto action_99
action_35 (15) = happyGoto action_100
action_35 (16) = happyGoto action_101
action_35 (17) = happyGoto action_26
action_35 (18) = happyGoto action_27
action_35 (19) = happyGoto action_28
action_35 (20) = happyGoto action_29
action_35 (21) = happyGoto action_30
action_35 _ = happyFail

action_36 (39) = happyShift action_31
action_36 (40) = happyShift action_32
action_36 (41) = happyShift action_33
action_36 (43) = happyShift action_34
action_36 (58) = happyShift action_35
action_36 (60) = happyShift action_36
action_36 (62) = happyShift action_37
action_36 (63) = happyShift action_38
action_36 (64) = happyShift action_39
action_36 (71) = happyShift action_40
action_36 (72) = happyShift action_41
action_36 (73) = happyShift action_42
action_36 (10) = happyGoto action_23
action_36 (12) = happyGoto action_97
action_36 (13) = happyGoto action_25
action_36 (17) = happyGoto action_26
action_36 (18) = happyGoto action_27
action_36 (19) = happyGoto action_28
action_36 (20) = happyGoto action_29
action_36 (21) = happyGoto action_30
action_36 _ = happyFail

action_37 (39) = happyShift action_31
action_37 (40) = happyShift action_32
action_37 (41) = happyShift action_33
action_37 (43) = happyShift action_34
action_37 (58) = happyShift action_35
action_37 (60) = happyShift action_36
action_37 (62) = happyShift action_37
action_37 (63) = happyShift action_38
action_37 (64) = happyShift action_39
action_37 (71) = happyShift action_40
action_37 (72) = happyShift action_41
action_37 (73) = happyShift action_42
action_37 (10) = happyGoto action_23
action_37 (12) = happyGoto action_96
action_37 (13) = happyGoto action_25
action_37 (17) = happyGoto action_26
action_37 (18) = happyGoto action_27
action_37 (19) = happyGoto action_28
action_37 (20) = happyGoto action_29
action_37 (21) = happyGoto action_30
action_37 _ = happyFail

action_38 (39) = happyShift action_31
action_38 (40) = happyShift action_32
action_38 (41) = happyShift action_33
action_38 (43) = happyShift action_34
action_38 (58) = happyShift action_35
action_38 (60) = happyShift action_36
action_38 (62) = happyShift action_37
action_38 (63) = happyShift action_38
action_38 (64) = happyShift action_39
action_38 (71) = happyShift action_40
action_38 (72) = happyShift action_41
action_38 (73) = happyShift action_42
action_38 (10) = happyGoto action_23
action_38 (12) = happyGoto action_95
action_38 (13) = happyGoto action_25
action_38 (17) = happyGoto action_26
action_38 (18) = happyGoto action_27
action_38 (19) = happyGoto action_28
action_38 (20) = happyGoto action_29
action_38 (21) = happyGoto action_30
action_38 _ = happyFail

action_39 (39) = happyShift action_31
action_39 (40) = happyShift action_32
action_39 (41) = happyShift action_33
action_39 (43) = happyShift action_34
action_39 (58) = happyShift action_35
action_39 (60) = happyShift action_36
action_39 (62) = happyShift action_37
action_39 (63) = happyShift action_38
action_39 (64) = happyShift action_39
action_39 (71) = happyShift action_40
action_39 (72) = happyShift action_41
action_39 (73) = happyShift action_42
action_39 (10) = happyGoto action_23
action_39 (12) = happyGoto action_94
action_39 (13) = happyGoto action_25
action_39 (17) = happyGoto action_26
action_39 (18) = happyGoto action_27
action_39 (19) = happyGoto action_28
action_39 (20) = happyGoto action_29
action_39 (21) = happyGoto action_30
action_39 _ = happyFail

action_40 (60) = happyShift action_93
action_40 _ = happyFail

action_41 (60) = happyShift action_92
action_41 _ = happyFail

action_42 (60) = happyShift action_91
action_42 _ = happyFail

action_43 (89) = happyShift action_90
action_43 _ = happyFail

action_44 (42) = happyShift action_62
action_44 (43) = happyShift action_63
action_44 (44) = happyShift action_64
action_44 (45) = happyShift action_65
action_44 (46) = happyShift action_66
action_44 (47) = happyShift action_67
action_44 (48) = happyShift action_68
action_44 (49) = happyShift action_84
action_44 (50) = happyShift action_85
action_44 (51) = happyShift action_86
action_44 (52) = happyShift action_87
action_44 (53) = happyShift action_88
action_44 (54) = happyShift action_89
action_44 _ = happyFail

action_45 (53) = happyShift action_76
action_45 (68) = happyShift action_77
action_45 (69) = happyShift action_78
action_45 (87) = happyShift action_83
action_45 _ = happyFail

action_46 _ = happyReduce_83

action_47 _ = happyReduce_84

action_48 (37) = happyShift action_46
action_48 (38) = happyShift action_47
action_48 (39) = happyShift action_31
action_48 (40) = happyShift action_32
action_48 (41) = happyShift action_33
action_48 (43) = happyShift action_34
action_48 (58) = happyShift action_35
action_48 (60) = happyShift action_48
action_48 (62) = happyShift action_37
action_48 (63) = happyShift action_38
action_48 (64) = happyShift action_39
action_48 (70) = happyShift action_49
action_48 (71) = happyShift action_40
action_48 (72) = happyShift action_41
action_48 (73) = happyShift action_42
action_48 (10) = happyGoto action_23
action_48 (12) = happyGoto action_81
action_48 (13) = happyGoto action_25
action_48 (17) = happyGoto action_26
action_48 (18) = happyGoto action_27
action_48 (19) = happyGoto action_28
action_48 (20) = happyGoto action_29
action_48 (21) = happyGoto action_30
action_48 (33) = happyGoto action_82
action_48 _ = happyFail

action_49 (37) = happyShift action_46
action_49 (38) = happyShift action_47
action_49 (39) = happyShift action_31
action_49 (40) = happyShift action_32
action_49 (41) = happyShift action_33
action_49 (43) = happyShift action_34
action_49 (58) = happyShift action_35
action_49 (60) = happyShift action_48
action_49 (62) = happyShift action_37
action_49 (63) = happyShift action_38
action_49 (64) = happyShift action_39
action_49 (70) = happyShift action_49
action_49 (71) = happyShift action_40
action_49 (72) = happyShift action_41
action_49 (73) = happyShift action_42
action_49 (10) = happyGoto action_23
action_49 (12) = happyGoto action_44
action_49 (13) = happyGoto action_25
action_49 (17) = happyGoto action_26
action_49 (18) = happyGoto action_27
action_49 (19) = happyGoto action_28
action_49 (20) = happyGoto action_29
action_49 (21) = happyGoto action_30
action_49 (33) = happyGoto action_80
action_49 _ = happyFail

action_50 (53) = happyShift action_76
action_50 (68) = happyShift action_77
action_50 (69) = happyShift action_78
action_50 (85) = happyShift action_79
action_50 _ = happyFail

action_51 (40) = happyShift action_14
action_51 (74) = happyShift action_15
action_51 (75) = happyShift action_16
action_51 (80) = happyShift action_18
action_51 (83) = happyShift action_19
action_51 (86) = happyShift action_20
action_51 (88) = happyShift action_21
action_51 (90) = happyShift action_22
action_51 (8) = happyGoto action_74
action_51 (9) = happyGoto action_5
action_51 (10) = happyGoto action_6
action_51 (22) = happyGoto action_7
action_51 (26) = happyGoto action_75
action_51 (27) = happyGoto action_8
action_51 (28) = happyGoto action_9
action_51 (29) = happyGoto action_10
action_51 (30) = happyGoto action_11
action_51 (31) = happyGoto action_12
action_51 (32) = happyGoto action_13
action_51 _ = happyFail

action_52 (40) = happyShift action_73
action_52 (24) = happyGoto action_71
action_52 (25) = happyGoto action_72
action_52 _ = happyFail

action_53 (60) = happyShift action_70
action_53 _ = happyFail

action_54 (42) = happyShift action_62
action_54 (43) = happyShift action_63
action_54 (44) = happyShift action_64
action_54 (45) = happyShift action_65
action_54 (46) = happyShift action_66
action_54 (47) = happyShift action_67
action_54 (48) = happyShift action_68
action_54 _ = happyReduce_49

action_55 (66) = happyShift action_69
action_55 _ = happyReduce_75

action_56 (42) = happyShift action_62
action_56 (43) = happyShift action_63
action_56 (44) = happyShift action_64
action_56 (45) = happyShift action_65
action_56 (46) = happyShift action_66
action_56 (47) = happyShift action_67
action_56 (48) = happyShift action_68
action_56 _ = happyReduce_74

action_57 (39) = happyShift action_31
action_57 (40) = happyShift action_32
action_57 (41) = happyShift action_33
action_57 (43) = happyShift action_34
action_57 (58) = happyShift action_35
action_57 (60) = happyShift action_36
action_57 (62) = happyShift action_37
action_57 (63) = happyShift action_38
action_57 (64) = happyShift action_39
action_57 (71) = happyShift action_40
action_57 (72) = happyShift action_41
action_57 (73) = happyShift action_42
action_57 (10) = happyGoto action_23
action_57 (11) = happyGoto action_60
action_57 (12) = happyGoto action_61
action_57 (13) = happyGoto action_25
action_57 (17) = happyGoto action_26
action_57 (18) = happyGoto action_27
action_57 (19) = happyGoto action_28
action_57 (20) = happyGoto action_29
action_57 (21) = happyGoto action_30
action_57 _ = happyReduce_24

action_58 (39) = happyShift action_31
action_58 (40) = happyShift action_32
action_58 (41) = happyShift action_33
action_58 (43) = happyShift action_34
action_58 (58) = happyShift action_35
action_58 (60) = happyShift action_36
action_58 (62) = happyShift action_37
action_58 (63) = happyShift action_38
action_58 (64) = happyShift action_39
action_58 (71) = happyShift action_40
action_58 (72) = happyShift action_41
action_58 (73) = happyShift action_42
action_58 (10) = happyGoto action_23
action_58 (12) = happyGoto action_59
action_58 (13) = happyGoto action_25
action_58 (17) = happyGoto action_26
action_58 (18) = happyGoto action_27
action_58 (19) = happyGoto action_28
action_58 (20) = happyGoto action_29
action_58 (21) = happyGoto action_30
action_58 _ = happyFail

action_59 (42) = happyShift action_62
action_59 (43) = happyShift action_63
action_59 (44) = happyShift action_64
action_59 (45) = happyShift action_65
action_59 (46) = happyShift action_66
action_59 (47) = happyShift action_67
action_59 (48) = happyShift action_68
action_59 _ = happyReduce_18

action_60 (65) = happyShift action_146
action_60 _ = happyFail

action_61 (42) = happyShift action_62
action_61 (43) = happyShift action_63
action_61 (44) = happyShift action_64
action_61 (45) = happyShift action_65
action_61 (46) = happyShift action_66
action_61 (47) = happyShift action_67
action_61 (48) = happyShift action_68
action_61 (57) = happyShift action_144
action_61 (66) = happyShift action_145
action_61 _ = happyReduce_25

action_62 (39) = happyShift action_31
action_62 (40) = happyShift action_32
action_62 (41) = happyShift action_33
action_62 (43) = happyShift action_34
action_62 (58) = happyShift action_35
action_62 (60) = happyShift action_36
action_62 (62) = happyShift action_37
action_62 (63) = happyShift action_38
action_62 (64) = happyShift action_39
action_62 (71) = happyShift action_40
action_62 (72) = happyShift action_41
action_62 (73) = happyShift action_42
action_62 (10) = happyGoto action_23
action_62 (12) = happyGoto action_143
action_62 (13) = happyGoto action_25
action_62 (17) = happyGoto action_26
action_62 (18) = happyGoto action_27
action_62 (19) = happyGoto action_28
action_62 (20) = happyGoto action_29
action_62 (21) = happyGoto action_30
action_62 _ = happyFail

action_63 (39) = happyShift action_31
action_63 (40) = happyShift action_32
action_63 (41) = happyShift action_33
action_63 (43) = happyShift action_34
action_63 (58) = happyShift action_35
action_63 (60) = happyShift action_36
action_63 (62) = happyShift action_37
action_63 (63) = happyShift action_38
action_63 (64) = happyShift action_39
action_63 (71) = happyShift action_40
action_63 (72) = happyShift action_41
action_63 (73) = happyShift action_42
action_63 (10) = happyGoto action_23
action_63 (12) = happyGoto action_142
action_63 (13) = happyGoto action_25
action_63 (17) = happyGoto action_26
action_63 (18) = happyGoto action_27
action_63 (19) = happyGoto action_28
action_63 (20) = happyGoto action_29
action_63 (21) = happyGoto action_30
action_63 _ = happyFail

action_64 (39) = happyShift action_31
action_64 (40) = happyShift action_32
action_64 (41) = happyShift action_33
action_64 (43) = happyShift action_34
action_64 (58) = happyShift action_35
action_64 (60) = happyShift action_36
action_64 (62) = happyShift action_37
action_64 (63) = happyShift action_38
action_64 (64) = happyShift action_39
action_64 (71) = happyShift action_40
action_64 (72) = happyShift action_41
action_64 (73) = happyShift action_42
action_64 (10) = happyGoto action_23
action_64 (12) = happyGoto action_141
action_64 (13) = happyGoto action_25
action_64 (17) = happyGoto action_26
action_64 (18) = happyGoto action_27
action_64 (19) = happyGoto action_28
action_64 (20) = happyGoto action_29
action_64 (21) = happyGoto action_30
action_64 _ = happyFail

action_65 (39) = happyShift action_31
action_65 (40) = happyShift action_32
action_65 (41) = happyShift action_33
action_65 (43) = happyShift action_34
action_65 (58) = happyShift action_35
action_65 (60) = happyShift action_36
action_65 (62) = happyShift action_37
action_65 (63) = happyShift action_38
action_65 (64) = happyShift action_39
action_65 (71) = happyShift action_40
action_65 (72) = happyShift action_41
action_65 (73) = happyShift action_42
action_65 (10) = happyGoto action_23
action_65 (12) = happyGoto action_140
action_65 (13) = happyGoto action_25
action_65 (17) = happyGoto action_26
action_65 (18) = happyGoto action_27
action_65 (19) = happyGoto action_28
action_65 (20) = happyGoto action_29
action_65 (21) = happyGoto action_30
action_65 _ = happyFail

action_66 (39) = happyShift action_31
action_66 (40) = happyShift action_32
action_66 (41) = happyShift action_33
action_66 (43) = happyShift action_34
action_66 (58) = happyShift action_35
action_66 (60) = happyShift action_36
action_66 (62) = happyShift action_37
action_66 (63) = happyShift action_38
action_66 (64) = happyShift action_39
action_66 (71) = happyShift action_40
action_66 (72) = happyShift action_41
action_66 (73) = happyShift action_42
action_66 (10) = happyGoto action_23
action_66 (12) = happyGoto action_139
action_66 (13) = happyGoto action_25
action_66 (17) = happyGoto action_26
action_66 (18) = happyGoto action_27
action_66 (19) = happyGoto action_28
action_66 (20) = happyGoto action_29
action_66 (21) = happyGoto action_30
action_66 _ = happyFail

action_67 (39) = happyShift action_31
action_67 (40) = happyShift action_32
action_67 (41) = happyShift action_33
action_67 (43) = happyShift action_34
action_67 (58) = happyShift action_35
action_67 (60) = happyShift action_36
action_67 (62) = happyShift action_37
action_67 (63) = happyShift action_38
action_67 (64) = happyShift action_39
action_67 (71) = happyShift action_40
action_67 (72) = happyShift action_41
action_67 (73) = happyShift action_42
action_67 (10) = happyGoto action_23
action_67 (12) = happyGoto action_138
action_67 (13) = happyGoto action_25
action_67 (17) = happyGoto action_26
action_67 (18) = happyGoto action_27
action_67 (19) = happyGoto action_28
action_67 (20) = happyGoto action_29
action_67 (21) = happyGoto action_30
action_67 _ = happyFail

action_68 (39) = happyShift action_31
action_68 (40) = happyShift action_32
action_68 (41) = happyShift action_33
action_68 (43) = happyShift action_34
action_68 (58) = happyShift action_35
action_68 (60) = happyShift action_36
action_68 (62) = happyShift action_37
action_68 (63) = happyShift action_38
action_68 (64) = happyShift action_39
action_68 (71) = happyShift action_40
action_68 (72) = happyShift action_41
action_68 (73) = happyShift action_42
action_68 (10) = happyGoto action_23
action_68 (12) = happyGoto action_137
action_68 (13) = happyGoto action_25
action_68 (17) = happyGoto action_26
action_68 (18) = happyGoto action_27
action_68 (19) = happyGoto action_28
action_68 (20) = happyGoto action_29
action_68 (21) = happyGoto action_30
action_68 _ = happyFail

action_69 (39) = happyShift action_31
action_69 (40) = happyShift action_32
action_69 (41) = happyShift action_33
action_69 (43) = happyShift action_34
action_69 (58) = happyShift action_35
action_69 (60) = happyShift action_36
action_69 (62) = happyShift action_37
action_69 (63) = happyShift action_38
action_69 (64) = happyShift action_39
action_69 (71) = happyShift action_40
action_69 (72) = happyShift action_41
action_69 (73) = happyShift action_42
action_69 (10) = happyGoto action_23
action_69 (12) = happyGoto action_136
action_69 (13) = happyGoto action_25
action_69 (17) = happyGoto action_26
action_69 (18) = happyGoto action_27
action_69 (19) = happyGoto action_28
action_69 (20) = happyGoto action_29
action_69 (21) = happyGoto action_30
action_69 _ = happyFail

action_70 (40) = happyShift action_134
action_70 (61) = happyShift action_135
action_70 (6) = happyGoto action_133
action_70 _ = happyFail

action_71 (67) = happyShift action_132
action_71 _ = happyReduce_63

action_72 (65) = happyShift action_130
action_72 (66) = happyShift action_131
action_72 _ = happyFail

action_73 _ = happyReduce_66

action_74 _ = happyReduce_68

action_75 (67) = happyShift action_128
action_75 (81) = happyShift action_129
action_75 _ = happyFail

action_76 (37) = happyShift action_46
action_76 (38) = happyShift action_47
action_76 (39) = happyShift action_31
action_76 (40) = happyShift action_32
action_76 (41) = happyShift action_33
action_76 (43) = happyShift action_34
action_76 (58) = happyShift action_35
action_76 (60) = happyShift action_48
action_76 (62) = happyShift action_37
action_76 (63) = happyShift action_38
action_76 (64) = happyShift action_39
action_76 (70) = happyShift action_49
action_76 (71) = happyShift action_40
action_76 (72) = happyShift action_41
action_76 (73) = happyShift action_42
action_76 (10) = happyGoto action_23
action_76 (12) = happyGoto action_44
action_76 (13) = happyGoto action_25
action_76 (17) = happyGoto action_26
action_76 (18) = happyGoto action_27
action_76 (19) = happyGoto action_28
action_76 (20) = happyGoto action_29
action_76 (21) = happyGoto action_30
action_76 (33) = happyGoto action_127
action_76 _ = happyFail

action_77 (37) = happyShift action_46
action_77 (38) = happyShift action_47
action_77 (39) = happyShift action_31
action_77 (40) = happyShift action_32
action_77 (41) = happyShift action_33
action_77 (43) = happyShift action_34
action_77 (58) = happyShift action_35
action_77 (60) = happyShift action_48
action_77 (62) = happyShift action_37
action_77 (63) = happyShift action_38
action_77 (64) = happyShift action_39
action_77 (70) = happyShift action_49
action_77 (71) = happyShift action_40
action_77 (72) = happyShift action_41
action_77 (73) = happyShift action_42
action_77 (10) = happyGoto action_23
action_77 (12) = happyGoto action_44
action_77 (13) = happyGoto action_25
action_77 (17) = happyGoto action_26
action_77 (18) = happyGoto action_27
action_77 (19) = happyGoto action_28
action_77 (20) = happyGoto action_29
action_77 (21) = happyGoto action_30
action_77 (33) = happyGoto action_126
action_77 _ = happyFail

action_78 (37) = happyShift action_46
action_78 (38) = happyShift action_47
action_78 (39) = happyShift action_31
action_78 (40) = happyShift action_32
action_78 (41) = happyShift action_33
action_78 (43) = happyShift action_34
action_78 (58) = happyShift action_35
action_78 (60) = happyShift action_48
action_78 (62) = happyShift action_37
action_78 (63) = happyShift action_38
action_78 (64) = happyShift action_39
action_78 (70) = happyShift action_49
action_78 (71) = happyShift action_40
action_78 (72) = happyShift action_41
action_78 (73) = happyShift action_42
action_78 (10) = happyGoto action_23
action_78 (12) = happyGoto action_44
action_78 (13) = happyGoto action_25
action_78 (17) = happyGoto action_26
action_78 (18) = happyGoto action_27
action_78 (19) = happyGoto action_28
action_78 (20) = happyGoto action_29
action_78 (21) = happyGoto action_30
action_78 (33) = happyGoto action_125
action_78 _ = happyFail

action_79 (40) = happyShift action_14
action_79 (74) = happyShift action_15
action_79 (75) = happyShift action_16
action_79 (80) = happyShift action_18
action_79 (83) = happyShift action_19
action_79 (86) = happyShift action_20
action_79 (88) = happyShift action_21
action_79 (90) = happyShift action_22
action_79 (8) = happyGoto action_124
action_79 (9) = happyGoto action_5
action_79 (10) = happyGoto action_6
action_79 (22) = happyGoto action_7
action_79 (27) = happyGoto action_8
action_79 (28) = happyGoto action_9
action_79 (29) = happyGoto action_10
action_79 (30) = happyGoto action_11
action_79 (31) = happyGoto action_12
action_79 (32) = happyGoto action_13
action_79 _ = happyFail

action_80 (53) = happyShift action_76
action_80 _ = happyReduce_89

action_81 (42) = happyShift action_62
action_81 (43) = happyShift action_63
action_81 (44) = happyShift action_64
action_81 (45) = happyShift action_65
action_81 (46) = happyShift action_66
action_81 (47) = happyShift action_67
action_81 (48) = happyShift action_68
action_81 (49) = happyShift action_84
action_81 (50) = happyShift action_85
action_81 (51) = happyShift action_86
action_81 (52) = happyShift action_87
action_81 (53) = happyShift action_88
action_81 (54) = happyShift action_89
action_81 (61) = happyShift action_111
action_81 _ = happyFail

action_82 (53) = happyShift action_76
action_82 (61) = happyShift action_123
action_82 (68) = happyShift action_77
action_82 (69) = happyShift action_78
action_82 _ = happyFail

action_83 (40) = happyShift action_14
action_83 (74) = happyShift action_15
action_83 (75) = happyShift action_16
action_83 (80) = happyShift action_18
action_83 (83) = happyShift action_19
action_83 (86) = happyShift action_20
action_83 (88) = happyShift action_21
action_83 (90) = happyShift action_22
action_83 (8) = happyGoto action_122
action_83 (9) = happyGoto action_5
action_83 (10) = happyGoto action_6
action_83 (22) = happyGoto action_7
action_83 (27) = happyGoto action_8
action_83 (28) = happyGoto action_9
action_83 (29) = happyGoto action_10
action_83 (30) = happyGoto action_11
action_83 (31) = happyGoto action_12
action_83 (32) = happyGoto action_13
action_83 _ = happyFail

action_84 (39) = happyShift action_31
action_84 (40) = happyShift action_32
action_84 (41) = happyShift action_33
action_84 (43) = happyShift action_34
action_84 (58) = happyShift action_35
action_84 (60) = happyShift action_36
action_84 (62) = happyShift action_37
action_84 (63) = happyShift action_38
action_84 (64) = happyShift action_39
action_84 (71) = happyShift action_40
action_84 (72) = happyShift action_41
action_84 (73) = happyShift action_42
action_84 (10) = happyGoto action_23
action_84 (12) = happyGoto action_121
action_84 (13) = happyGoto action_25
action_84 (17) = happyGoto action_26
action_84 (18) = happyGoto action_27
action_84 (19) = happyGoto action_28
action_84 (20) = happyGoto action_29
action_84 (21) = happyGoto action_30
action_84 _ = happyFail

action_85 (39) = happyShift action_31
action_85 (40) = happyShift action_32
action_85 (41) = happyShift action_33
action_85 (43) = happyShift action_34
action_85 (58) = happyShift action_35
action_85 (60) = happyShift action_36
action_85 (62) = happyShift action_37
action_85 (63) = happyShift action_38
action_85 (64) = happyShift action_39
action_85 (71) = happyShift action_40
action_85 (72) = happyShift action_41
action_85 (73) = happyShift action_42
action_85 (10) = happyGoto action_23
action_85 (12) = happyGoto action_120
action_85 (13) = happyGoto action_25
action_85 (17) = happyGoto action_26
action_85 (18) = happyGoto action_27
action_85 (19) = happyGoto action_28
action_85 (20) = happyGoto action_29
action_85 (21) = happyGoto action_30
action_85 _ = happyFail

action_86 (39) = happyShift action_31
action_86 (40) = happyShift action_32
action_86 (41) = happyShift action_33
action_86 (43) = happyShift action_34
action_86 (58) = happyShift action_35
action_86 (60) = happyShift action_36
action_86 (62) = happyShift action_37
action_86 (63) = happyShift action_38
action_86 (64) = happyShift action_39
action_86 (71) = happyShift action_40
action_86 (72) = happyShift action_41
action_86 (73) = happyShift action_42
action_86 (10) = happyGoto action_23
action_86 (12) = happyGoto action_119
action_86 (13) = happyGoto action_25
action_86 (17) = happyGoto action_26
action_86 (18) = happyGoto action_27
action_86 (19) = happyGoto action_28
action_86 (20) = happyGoto action_29
action_86 (21) = happyGoto action_30
action_86 _ = happyFail

action_87 (39) = happyShift action_31
action_87 (40) = happyShift action_32
action_87 (41) = happyShift action_33
action_87 (43) = happyShift action_34
action_87 (58) = happyShift action_35
action_87 (60) = happyShift action_36
action_87 (62) = happyShift action_37
action_87 (63) = happyShift action_38
action_87 (64) = happyShift action_39
action_87 (71) = happyShift action_40
action_87 (72) = happyShift action_41
action_87 (73) = happyShift action_42
action_87 (10) = happyGoto action_23
action_87 (12) = happyGoto action_118
action_87 (13) = happyGoto action_25
action_87 (17) = happyGoto action_26
action_87 (18) = happyGoto action_27
action_87 (19) = happyGoto action_28
action_87 (20) = happyGoto action_29
action_87 (21) = happyGoto action_30
action_87 _ = happyFail

action_88 (39) = happyShift action_31
action_88 (40) = happyShift action_32
action_88 (41) = happyShift action_33
action_88 (43) = happyShift action_34
action_88 (58) = happyShift action_35
action_88 (60) = happyShift action_36
action_88 (62) = happyShift action_37
action_88 (63) = happyShift action_38
action_88 (64) = happyShift action_39
action_88 (71) = happyShift action_40
action_88 (72) = happyShift action_41
action_88 (73) = happyShift action_42
action_88 (10) = happyGoto action_23
action_88 (12) = happyGoto action_117
action_88 (13) = happyGoto action_25
action_88 (17) = happyGoto action_26
action_88 (18) = happyGoto action_27
action_88 (19) = happyGoto action_28
action_88 (20) = happyGoto action_29
action_88 (21) = happyGoto action_30
action_88 _ = happyFail

action_89 (39) = happyShift action_31
action_89 (40) = happyShift action_32
action_89 (41) = happyShift action_33
action_89 (43) = happyShift action_34
action_89 (58) = happyShift action_35
action_89 (60) = happyShift action_36
action_89 (62) = happyShift action_37
action_89 (63) = happyShift action_38
action_89 (64) = happyShift action_39
action_89 (71) = happyShift action_40
action_89 (72) = happyShift action_41
action_89 (73) = happyShift action_42
action_89 (10) = happyGoto action_23
action_89 (12) = happyGoto action_116
action_89 (13) = happyGoto action_25
action_89 (17) = happyGoto action_26
action_89 (18) = happyGoto action_27
action_89 (19) = happyGoto action_28
action_89 (20) = happyGoto action_29
action_89 (21) = happyGoto action_30
action_89 _ = happyFail

action_90 (39) = happyShift action_31
action_90 (40) = happyShift action_32
action_90 (41) = happyShift action_33
action_90 (43) = happyShift action_34
action_90 (58) = happyShift action_35
action_90 (60) = happyShift action_36
action_90 (62) = happyShift action_37
action_90 (63) = happyShift action_38
action_90 (64) = happyShift action_39
action_90 (71) = happyShift action_40
action_90 (72) = happyShift action_41
action_90 (73) = happyShift action_42
action_90 (10) = happyGoto action_23
action_90 (12) = happyGoto action_115
action_90 (13) = happyGoto action_25
action_90 (17) = happyGoto action_26
action_90 (18) = happyGoto action_27
action_90 (19) = happyGoto action_28
action_90 (20) = happyGoto action_29
action_90 (21) = happyGoto action_30
action_90 _ = happyFail

action_91 (39) = happyShift action_31
action_91 (40) = happyShift action_32
action_91 (41) = happyShift action_33
action_91 (43) = happyShift action_34
action_91 (58) = happyShift action_35
action_91 (60) = happyShift action_36
action_91 (62) = happyShift action_37
action_91 (63) = happyShift action_38
action_91 (64) = happyShift action_39
action_91 (71) = happyShift action_40
action_91 (72) = happyShift action_41
action_91 (73) = happyShift action_42
action_91 (10) = happyGoto action_23
action_91 (12) = happyGoto action_114
action_91 (13) = happyGoto action_25
action_91 (17) = happyGoto action_26
action_91 (18) = happyGoto action_27
action_91 (19) = happyGoto action_28
action_91 (20) = happyGoto action_29
action_91 (21) = happyGoto action_30
action_91 _ = happyFail

action_92 (39) = happyShift action_31
action_92 (40) = happyShift action_32
action_92 (41) = happyShift action_33
action_92 (43) = happyShift action_34
action_92 (58) = happyShift action_35
action_92 (60) = happyShift action_36
action_92 (62) = happyShift action_37
action_92 (63) = happyShift action_38
action_92 (64) = happyShift action_39
action_92 (71) = happyShift action_40
action_92 (72) = happyShift action_41
action_92 (73) = happyShift action_42
action_92 (10) = happyGoto action_23
action_92 (12) = happyGoto action_113
action_92 (13) = happyGoto action_25
action_92 (17) = happyGoto action_26
action_92 (18) = happyGoto action_27
action_92 (19) = happyGoto action_28
action_92 (20) = happyGoto action_29
action_92 (21) = happyGoto action_30
action_92 _ = happyFail

action_93 (39) = happyShift action_31
action_93 (40) = happyShift action_32
action_93 (41) = happyShift action_33
action_93 (43) = happyShift action_34
action_93 (58) = happyShift action_35
action_93 (60) = happyShift action_36
action_93 (62) = happyShift action_37
action_93 (63) = happyShift action_38
action_93 (64) = happyShift action_39
action_93 (71) = happyShift action_40
action_93 (72) = happyShift action_41
action_93 (73) = happyShift action_42
action_93 (10) = happyGoto action_23
action_93 (12) = happyGoto action_112
action_93 (13) = happyGoto action_25
action_93 (17) = happyGoto action_26
action_93 (18) = happyGoto action_27
action_93 (19) = happyGoto action_28
action_93 (20) = happyGoto action_29
action_93 (21) = happyGoto action_30
action_93 _ = happyFail

action_94 (47) = happyShift action_67
action_94 _ = happyReduce_39

action_95 (47) = happyShift action_67
action_95 _ = happyReduce_41

action_96 (47) = happyShift action_67
action_96 _ = happyReduce_40

action_97 (42) = happyShift action_62
action_97 (43) = happyShift action_63
action_97 (44) = happyShift action_64
action_97 (45) = happyShift action_65
action_97 (46) = happyShift action_66
action_97 (47) = happyShift action_67
action_97 (48) = happyShift action_68
action_97 (61) = happyShift action_111
action_97 _ = happyFail

action_98 (59) = happyReduce_47
action_98 (67) = happyReduce_47
action_98 _ = happyReduce_28

action_99 (59) = happyShift action_109
action_99 (67) = happyShift action_110
action_99 _ = happyFail

action_100 (59) = happyShift action_108
action_100 (66) = happyShift action_69
action_100 _ = happyReduce_51

action_101 (59) = happyShift action_106
action_101 (67) = happyShift action_107
action_101 _ = happyFail

action_102 (47) = happyShift action_67
action_102 _ = happyReduce_38

action_103 (39) = happyShift action_31
action_103 (40) = happyShift action_32
action_103 (41) = happyShift action_33
action_103 (43) = happyShift action_34
action_103 (58) = happyShift action_35
action_103 (60) = happyShift action_36
action_103 (61) = happyShift action_105
action_103 (62) = happyShift action_37
action_103 (63) = happyShift action_38
action_103 (64) = happyShift action_39
action_103 (71) = happyShift action_40
action_103 (72) = happyShift action_41
action_103 (73) = happyShift action_42
action_103 (10) = happyGoto action_23
action_103 (12) = happyGoto action_54
action_103 (13) = happyGoto action_25
action_103 (15) = happyGoto action_104
action_103 (17) = happyGoto action_26
action_103 (18) = happyGoto action_27
action_103 (19) = happyGoto action_28
action_103 (20) = happyGoto action_29
action_103 (21) = happyGoto action_30
action_103 _ = happyFail

action_104 (61) = happyShift action_169
action_104 (66) = happyShift action_69
action_104 _ = happyFail

action_105 _ = happyReduce_54

action_106 _ = happyReduce_46

action_107 (39) = happyShift action_31
action_107 (40) = happyShift action_32
action_107 (41) = happyShift action_33
action_107 (43) = happyShift action_34
action_107 (58) = happyShift action_35
action_107 (60) = happyShift action_36
action_107 (62) = happyShift action_37
action_107 (63) = happyShift action_38
action_107 (64) = happyShift action_39
action_107 (71) = happyShift action_40
action_107 (72) = happyShift action_41
action_107 (73) = happyShift action_42
action_107 (10) = happyGoto action_23
action_107 (12) = happyGoto action_54
action_107 (13) = happyGoto action_25
action_107 (15) = happyGoto action_168
action_107 (17) = happyGoto action_26
action_107 (18) = happyGoto action_27
action_107 (19) = happyGoto action_28
action_107 (20) = happyGoto action_29
action_107 (21) = happyGoto action_30
action_107 _ = happyFail

action_108 _ = happyReduce_45

action_109 _ = happyReduce_44

action_110 (58) = happyShift action_35
action_110 (13) = happyGoto action_167
action_110 _ = happyFail

action_111 _ = happyReduce_29

action_112 (42) = happyShift action_62
action_112 (43) = happyShift action_63
action_112 (44) = happyShift action_64
action_112 (45) = happyShift action_65
action_112 (46) = happyShift action_66
action_112 (47) = happyShift action_67
action_112 (48) = happyShift action_68
action_112 (61) = happyShift action_165
action_112 (66) = happyShift action_166
action_112 _ = happyFail

action_113 (42) = happyShift action_62
action_113 (43) = happyShift action_63
action_113 (44) = happyShift action_64
action_113 (45) = happyShift action_65
action_113 (46) = happyShift action_66
action_113 (47) = happyShift action_67
action_113 (48) = happyShift action_68
action_113 (61) = happyShift action_164
action_113 _ = happyFail

action_114 (42) = happyShift action_62
action_114 (43) = happyShift action_63
action_114 (44) = happyShift action_64
action_114 (45) = happyShift action_65
action_114 (46) = happyShift action_66
action_114 (47) = happyShift action_67
action_114 (48) = happyShift action_68
action_114 (61) = happyShift action_163
action_114 _ = happyFail

action_115 (42) = happyShift action_62
action_115 (43) = happyShift action_63
action_115 (44) = happyShift action_64
action_115 (45) = happyShift action_65
action_115 (46) = happyShift action_66
action_115 (47) = happyShift action_67
action_115 (48) = happyShift action_68
action_115 (87) = happyShift action_162
action_115 _ = happyFail

action_116 (42) = happyShift action_62
action_116 (43) = happyShift action_63
action_116 (44) = happyShift action_64
action_116 (45) = happyShift action_65
action_116 (46) = happyShift action_66
action_116 (47) = happyShift action_67
action_116 (48) = happyShift action_68
action_116 _ = happyReduce_82

action_117 (42) = happyShift action_62
action_117 (43) = happyShift action_63
action_117 (44) = happyShift action_64
action_117 (45) = happyShift action_65
action_117 (46) = happyShift action_66
action_117 (47) = happyShift action_67
action_117 (48) = happyShift action_68
action_117 _ = happyReduce_81

action_118 (42) = happyShift action_62
action_118 (43) = happyShift action_63
action_118 (44) = happyShift action_64
action_118 (45) = happyShift action_65
action_118 (46) = happyShift action_66
action_118 (47) = happyShift action_67
action_118 (48) = happyShift action_68
action_118 _ = happyReduce_80

action_119 (42) = happyShift action_62
action_119 (43) = happyShift action_63
action_119 (44) = happyShift action_64
action_119 (45) = happyShift action_65
action_119 (46) = happyShift action_66
action_119 (47) = happyShift action_67
action_119 (48) = happyShift action_68
action_119 _ = happyReduce_79

action_120 (42) = happyShift action_62
action_120 (43) = happyShift action_63
action_120 (44) = happyShift action_64
action_120 (45) = happyShift action_65
action_120 (46) = happyShift action_66
action_120 (47) = happyShift action_67
action_120 (48) = happyShift action_68
action_120 _ = happyReduce_78

action_121 (42) = happyShift action_62
action_121 (43) = happyShift action_63
action_121 (44) = happyShift action_64
action_121 (45) = happyShift action_65
action_121 (46) = happyShift action_66
action_121 (47) = happyShift action_67
action_121 (48) = happyShift action_68
action_121 _ = happyReduce_77

action_122 _ = happyReduce_72

action_123 _ = happyReduce_88

action_124 (84) = happyShift action_161
action_124 _ = happyReduce_70

action_125 (53) = happyShift action_76
action_125 (68) = happyShift action_77
action_125 _ = happyReduce_86

action_126 (53) = happyShift action_76
action_126 _ = happyReduce_85

action_127 _ = happyReduce_87

action_128 (40) = happyShift action_14
action_128 (74) = happyShift action_15
action_128 (75) = happyShift action_16
action_128 (80) = happyShift action_18
action_128 (83) = happyShift action_19
action_128 (86) = happyShift action_20
action_128 (88) = happyShift action_21
action_128 (90) = happyShift action_22
action_128 (8) = happyGoto action_160
action_128 (9) = happyGoto action_5
action_128 (10) = happyGoto action_6
action_128 (22) = happyGoto action_7
action_128 (27) = happyGoto action_8
action_128 (28) = happyGoto action_9
action_128 (29) = happyGoto action_10
action_128 (30) = happyGoto action_11
action_128 (31) = happyGoto action_12
action_128 (32) = happyGoto action_13
action_128 _ = happyFail

action_129 _ = happyReduce_62

action_130 (34) = happyShift action_157
action_130 (35) = happyShift action_158
action_130 (36) = happyShift action_159
action_130 (7) = happyGoto action_156
action_130 _ = happyFail

action_131 (40) = happyShift action_155
action_131 _ = happyFail

action_132 (40) = happyShift action_73
action_132 (25) = happyGoto action_154
action_132 _ = happyFail

action_133 (61) = happyShift action_152
action_133 (66) = happyShift action_153
action_133 _ = happyFail

action_134 (65) = happyShift action_151
action_134 _ = happyFail

action_135 (77) = happyShift action_150
action_135 _ = happyFail

action_136 (42) = happyShift action_62
action_136 (43) = happyShift action_63
action_136 (44) = happyShift action_64
action_136 (45) = happyShift action_65
action_136 (46) = happyShift action_66
action_136 (47) = happyShift action_67
action_136 (48) = happyShift action_68
action_136 _ = happyReduce_50

action_137 (47) = happyShift action_67
action_137 _ = happyReduce_36

action_138 _ = happyReduce_35

action_139 (47) = happyShift action_67
action_139 _ = happyReduce_34

action_140 (47) = happyShift action_67
action_140 _ = happyReduce_33

action_141 (47) = happyShift action_67
action_141 _ = happyReduce_32

action_142 (44) = happyShift action_64
action_142 (45) = happyShift action_65
action_142 (46) = happyShift action_66
action_142 (47) = happyShift action_67
action_142 (48) = happyShift action_68
action_142 _ = happyReduce_31

action_143 (44) = happyShift action_64
action_143 (45) = happyShift action_65
action_143 (46) = happyShift action_66
action_143 (47) = happyShift action_67
action_143 (48) = happyShift action_68
action_143 _ = happyReduce_30

action_144 _ = happyReduce_20

action_145 (39) = happyShift action_31
action_145 (40) = happyShift action_32
action_145 (41) = happyShift action_33
action_145 (43) = happyShift action_34
action_145 (58) = happyShift action_35
action_145 (60) = happyShift action_36
action_145 (62) = happyShift action_37
action_145 (63) = happyShift action_38
action_145 (64) = happyShift action_39
action_145 (71) = happyShift action_40
action_145 (72) = happyShift action_41
action_145 (73) = happyShift action_42
action_145 (10) = happyGoto action_23
action_145 (12) = happyGoto action_149
action_145 (13) = happyGoto action_25
action_145 (17) = happyGoto action_26
action_145 (18) = happyGoto action_27
action_145 (19) = happyGoto action_28
action_145 (20) = happyGoto action_29
action_145 (21) = happyGoto action_30
action_145 _ = happyFail

action_146 (39) = happyShift action_31
action_146 (40) = happyShift action_32
action_146 (41) = happyShift action_33
action_146 (43) = happyShift action_34
action_146 (58) = happyShift action_35
action_146 (60) = happyShift action_36
action_146 (62) = happyShift action_37
action_146 (63) = happyShift action_38
action_146 (64) = happyShift action_39
action_146 (71) = happyShift action_40
action_146 (72) = happyShift action_41
action_146 (73) = happyShift action_42
action_146 (10) = happyGoto action_23
action_146 (11) = happyGoto action_147
action_146 (12) = happyGoto action_148
action_146 (13) = happyGoto action_25
action_146 (17) = happyGoto action_26
action_146 (18) = happyGoto action_27
action_146 (19) = happyGoto action_28
action_146 (20) = happyGoto action_29
action_146 (21) = happyGoto action_30
action_146 _ = happyReduce_24

action_147 (57) = happyShift action_179
action_147 (66) = happyShift action_180
action_147 _ = happyFail

action_148 (42) = happyShift action_62
action_148 (43) = happyShift action_63
action_148 (44) = happyShift action_64
action_148 (45) = happyShift action_65
action_148 (46) = happyShift action_66
action_148 (47) = happyShift action_67
action_148 (48) = happyShift action_68
action_148 _ = happyReduce_25

action_149 (42) = happyShift action_62
action_149 (43) = happyShift action_63
action_149 (44) = happyShift action_64
action_149 (45) = happyShift action_65
action_149 (46) = happyShift action_66
action_149 (47) = happyShift action_67
action_149 (48) = happyShift action_68
action_149 (57) = happyShift action_178
action_149 _ = happyFail

action_150 (78) = happyShift action_177
action_150 _ = happyFail

action_151 (34) = happyShift action_157
action_151 (35) = happyShift action_158
action_151 (36) = happyShift action_159
action_151 (7) = happyGoto action_176
action_151 _ = happyFail

action_152 (77) = happyShift action_175
action_152 _ = happyFail

action_153 (40) = happyShift action_134
action_153 (6) = happyGoto action_174
action_153 _ = happyFail

action_154 (65) = happyShift action_173
action_154 (66) = happyShift action_131
action_154 _ = happyFail

action_155 _ = happyReduce_67

action_156 _ = happyReduce_64

action_157 _ = happyReduce_7

action_158 _ = happyReduce_8

action_159 _ = happyReduce_9

action_160 _ = happyReduce_69

action_161 (40) = happyShift action_14
action_161 (74) = happyShift action_15
action_161 (75) = happyShift action_16
action_161 (80) = happyShift action_18
action_161 (83) = happyShift action_19
action_161 (86) = happyShift action_20
action_161 (88) = happyShift action_21
action_161 (90) = happyShift action_22
action_161 (8) = happyGoto action_172
action_161 (9) = happyGoto action_5
action_161 (10) = happyGoto action_6
action_161 (22) = happyGoto action_7
action_161 (27) = happyGoto action_8
action_161 (28) = happyGoto action_9
action_161 (29) = happyGoto action_10
action_161 (30) = happyGoto action_11
action_161 (31) = happyGoto action_12
action_161 (32) = happyGoto action_13
action_161 _ = happyFail

action_162 (40) = happyShift action_14
action_162 (74) = happyShift action_15
action_162 (75) = happyShift action_16
action_162 (80) = happyShift action_18
action_162 (83) = happyShift action_19
action_162 (86) = happyShift action_20
action_162 (88) = happyShift action_21
action_162 (90) = happyShift action_22
action_162 (8) = happyGoto action_171
action_162 (9) = happyGoto action_5
action_162 (10) = happyGoto action_6
action_162 (22) = happyGoto action_7
action_162 (27) = happyGoto action_8
action_162 (28) = happyGoto action_9
action_162 (29) = happyGoto action_10
action_162 (30) = happyGoto action_11
action_162 (31) = happyGoto action_12
action_162 (32) = happyGoto action_13
action_162 _ = happyFail

action_163 _ = happyReduce_61

action_164 _ = happyReduce_60

action_165 _ = happyReduce_59

action_166 (39) = happyShift action_31
action_166 (40) = happyShift action_32
action_166 (41) = happyShift action_33
action_166 (43) = happyShift action_34
action_166 (58) = happyShift action_35
action_166 (60) = happyShift action_36
action_166 (62) = happyShift action_37
action_166 (63) = happyShift action_38
action_166 (64) = happyShift action_39
action_166 (71) = happyShift action_40
action_166 (72) = happyShift action_41
action_166 (73) = happyShift action_42
action_166 (10) = happyGoto action_23
action_166 (12) = happyGoto action_170
action_166 (13) = happyGoto action_25
action_166 (17) = happyGoto action_26
action_166 (18) = happyGoto action_27
action_166 (19) = happyGoto action_28
action_166 (20) = happyGoto action_29
action_166 (21) = happyGoto action_30
action_166 _ = happyFail

action_167 _ = happyReduce_48

action_168 (66) = happyShift action_69
action_168 _ = happyReduce_52

action_169 _ = happyReduce_53

action_170 (42) = happyShift action_62
action_170 (43) = happyShift action_63
action_170 (44) = happyShift action_64
action_170 (45) = happyShift action_65
action_170 (46) = happyShift action_66
action_170 (47) = happyShift action_67
action_170 (48) = happyShift action_68
action_170 (61) = happyShift action_185
action_170 _ = happyFail

action_171 _ = happyReduce_73

action_172 _ = happyReduce_71

action_173 (34) = happyShift action_157
action_173 (35) = happyShift action_158
action_173 (36) = happyShift action_159
action_173 (7) = happyGoto action_184
action_173 _ = happyFail

action_174 (66) = happyShift action_153
action_174 _ = happyReduce_6

action_175 (78) = happyShift action_183
action_175 _ = happyFail

action_176 _ = happyReduce_5

action_177 (34) = happyShift action_157
action_177 (35) = happyShift action_158
action_177 (36) = happyShift action_159
action_177 (7) = happyGoto action_182
action_177 _ = happyFail

action_178 _ = happyReduce_21

action_179 _ = happyReduce_22

action_180 (39) = happyShift action_31
action_180 (40) = happyShift action_32
action_180 (41) = happyShift action_33
action_180 (43) = happyShift action_34
action_180 (58) = happyShift action_35
action_180 (60) = happyShift action_36
action_180 (62) = happyShift action_37
action_180 (63) = happyShift action_38
action_180 (64) = happyShift action_39
action_180 (71) = happyShift action_40
action_180 (72) = happyShift action_41
action_180 (73) = happyShift action_42
action_180 (10) = happyGoto action_23
action_180 (11) = happyGoto action_181
action_180 (12) = happyGoto action_148
action_180 (13) = happyGoto action_25
action_180 (17) = happyGoto action_26
action_180 (18) = happyGoto action_27
action_180 (19) = happyGoto action_28
action_180 (20) = happyGoto action_29
action_180 (21) = happyGoto action_30
action_180 _ = happyReduce_24

action_181 (65) = happyShift action_188
action_181 _ = happyFail

action_182 (79) = happyShift action_187
action_182 _ = happyFail

action_183 (34) = happyShift action_157
action_183 (35) = happyShift action_158
action_183 (36) = happyShift action_159
action_183 (7) = happyGoto action_186
action_183 _ = happyFail

action_184 _ = happyReduce_65

action_185 _ = happyReduce_58

action_186 (79) = happyShift action_191
action_186 _ = happyFail

action_187 (40) = happyShift action_14
action_187 (74) = happyShift action_15
action_187 (75) = happyShift action_16
action_187 (80) = happyShift action_18
action_187 (83) = happyShift action_19
action_187 (86) = happyShift action_20
action_187 (88) = happyShift action_21
action_187 (90) = happyShift action_22
action_187 (8) = happyGoto action_190
action_187 (9) = happyGoto action_5
action_187 (10) = happyGoto action_6
action_187 (22) = happyGoto action_7
action_187 (27) = happyGoto action_8
action_187 (28) = happyGoto action_9
action_187 (29) = happyGoto action_10
action_187 (30) = happyGoto action_11
action_187 (31) = happyGoto action_12
action_187 (32) = happyGoto action_13
action_187 _ = happyFail

action_188 (39) = happyShift action_31
action_188 (40) = happyShift action_32
action_188 (41) = happyShift action_33
action_188 (43) = happyShift action_34
action_188 (58) = happyShift action_35
action_188 (60) = happyShift action_36
action_188 (62) = happyShift action_37
action_188 (63) = happyShift action_38
action_188 (64) = happyShift action_39
action_188 (71) = happyShift action_40
action_188 (72) = happyShift action_41
action_188 (73) = happyShift action_42
action_188 (10) = happyGoto action_23
action_188 (11) = happyGoto action_189
action_188 (12) = happyGoto action_148
action_188 (13) = happyGoto action_25
action_188 (17) = happyGoto action_26
action_188 (18) = happyGoto action_27
action_188 (19) = happyGoto action_28
action_188 (20) = happyGoto action_29
action_188 (21) = happyGoto action_30
action_188 _ = happyReduce_24

action_189 (57) = happyShift action_193
action_189 _ = happyFail

action_190 _ = happyReduce_4

action_191 (40) = happyShift action_14
action_191 (74) = happyShift action_15
action_191 (75) = happyShift action_16
action_191 (80) = happyShift action_18
action_191 (83) = happyShift action_19
action_191 (86) = happyShift action_20
action_191 (88) = happyShift action_21
action_191 (90) = happyShift action_22
action_191 (8) = happyGoto action_192
action_191 (9) = happyGoto action_5
action_191 (10) = happyGoto action_6
action_191 (22) = happyGoto action_7
action_191 (27) = happyGoto action_8
action_191 (28) = happyGoto action_9
action_191 (29) = happyGoto action_10
action_191 (30) = happyGoto action_11
action_191 (31) = happyGoto action_12
action_191 (32) = happyGoto action_13
action_191 _ = happyFail

action_192 _ = happyReduce_3

action_193 _ = happyReduce_23

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

happyReduce_3 = happyReduce 11 5 happyReduction_3
happyReduction_3 (_ `HappyStk`
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
	 = HappyAbsSyn5
		 (happy_var_2
	) `HappyStk` happyRest

happyReduce_4 = happyReduce 10 5 happyReduction_4
happyReduction_4 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (happy_var_1
	) `HappyStk` happyRest

happyReduce_5 = happySpecReduce_3  6 happyReduction_5
happyReduction_5 _
	_
	(HappyTerminal (TkId _ happy_var_1))
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  6 happyReduction_6
happyReduction_6 _
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  7 happyReduction_7
happyReduction_7 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  7 happyReduction_8
happyReduction_8 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  7 happyReduction_9
happyReduction_9 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  8 happyReduction_10
happyReduction_10 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  8 happyReduction_11
happyReduction_11 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  8 happyReduction_12
happyReduction_12 (HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  8 happyReduction_13
happyReduction_13 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  8 happyReduction_14
happyReduction_14 (HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  8 happyReduction_15
happyReduction_15 (HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  8 happyReduction_16
happyReduction_16 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  8 happyReduction_17
happyReduction_17 (HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  9 happyReduction_18
happyReduction_18 _
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  10 happyReduction_19
happyReduction_19 (HappyTerminal (TkId _ happy_var_1))
	 =  HappyAbsSyn10
		 (happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happyReduce 4 10 happyReduction_20
happyReduction_20 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TkId _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (happy_var_1
	) `HappyStk` happyRest

happyReduce_21 = happyReduce 6 10 happyReduction_21
happyReduction_21 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TkId _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (happy_var_1
	) `HappyStk` happyRest

happyReduce_22 = happyReduce 6 10 happyReduction_22
happyReduction_22 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TkId _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (happy_var_1
	) `HappyStk` happyRest

happyReduce_23 = happyReduce 10 10 happyReduction_23
happyReduction_23 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TkId _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (happy_var_1
	) `HappyStk` happyRest

happyReduce_24 = happySpecReduce_0  11 happyReduction_24
happyReduction_24  =  HappyAbsSyn11
		 (
	)

happyReduce_25 = happySpecReduce_1  11 happyReduction_25
happyReduction_25 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  12 happyReduction_26
happyReduction_26 (HappyTerminal (TkNum _ happy_var_1))
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  12 happyReduction_27
happyReduction_27 (HappyTerminal (TkString _ happy_var_1))
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  12 happyReduction_28
happyReduction_28 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  12 happyReduction_29
happyReduction_29 _
	_
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  12 happyReduction_30
happyReduction_30 _
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  12 happyReduction_31
happyReduction_31 _
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  12 happyReduction_32
happyReduction_32 _
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  12 happyReduction_33
happyReduction_33 _
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  12 happyReduction_34
happyReduction_34 _
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  12 happyReduction_35
happyReduction_35 _
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  12 happyReduction_36
happyReduction_36 _
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  12 happyReduction_37
happyReduction_37 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_2  12 happyReduction_38
happyReduction_38 _
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_38 _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_2  12 happyReduction_39
happyReduction_39 _
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_39 _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_2  12 happyReduction_40
happyReduction_40 _
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_40 _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_2  12 happyReduction_41
happyReduction_41 _
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_41 _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  12 happyReduction_42
happyReduction_42 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_1  12 happyReduction_43
happyReduction_43 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  13 happyReduction_44
happyReduction_44 _
	_
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  13 happyReduction_45
happyReduction_45 _
	_
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_3  13 happyReduction_46
happyReduction_46 _
	_
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_1  14 happyReduction_47
happyReduction_47 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1
	)
happyReduction_47 _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_3  14 happyReduction_48
happyReduction_48 _
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_1  15 happyReduction_49
happyReduction_49 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_49 _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_3  15 happyReduction_50
happyReduction_50 _
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_50 _ _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_1  16 happyReduction_51
happyReduction_51 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_51 _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_3  16 happyReduction_52
happyReduction_52 _
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_52 _ _ _  = notHappyAtAll 

happyReduce_53 = happyReduce 4 17 happyReduction_53
happyReduction_53 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TkId _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (happy_var_1
	) `HappyStk` happyRest

happyReduce_54 = happySpecReduce_3  17 happyReduction_54
happyReduction_54 _
	_
	(HappyTerminal (TkId _ happy_var_1))
	 =  HappyAbsSyn17
		 (happy_var_1
	)
happyReduction_54 _ _ _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_1  18 happyReduction_55
happyReduction_55 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn18
		 (happy_var_1
	)
happyReduction_55 _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_1  18 happyReduction_56
happyReduction_56 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn18
		 (happy_var_1
	)
happyReduction_56 _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_1  18 happyReduction_57
happyReduction_57 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn18
		 (happy_var_1
	)
happyReduction_57 _  = notHappyAtAll 

happyReduce_58 = happyReduce 6 19 happyReduction_58
happyReduction_58 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 ($
	) `HappyStk` happyRest

happyReduce_59 = happyReduce 4 19 happyReduction_59
happyReduction_59 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (happy_var_1
	) `HappyStk` happyRest

happyReduce_60 = happyReduce 4 20 happyReduction_60
happyReduction_60 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn20
		 (happy_var_1
	) `HappyStk` happyRest

happyReduce_61 = happyReduce 4 21 happyReduction_61
happyReduction_61 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn21
		 (happy_var_1
	) `HappyStk` happyRest

happyReduce_62 = happyReduce 4 22 happyReduction_62
happyReduction_62 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn22
		 (happy_var_1
	) `HappyStk` happyRest

happyReduce_63 = happySpecReduce_2  23 happyReduction_63
happyReduction_63 _
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn23
		 (happy_var_1
	)
happyReduction_63 _ _  = notHappyAtAll 

happyReduce_64 = happySpecReduce_3  24 happyReduction_64
happyReduction_64 _
	_
	(HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn24
		 (happy_var_1
	)
happyReduction_64 _ _ _  = notHappyAtAll 

happyReduce_65 = happyReduce 5 24 happyReduction_65
happyReduction_65 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn24  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn24
		 (happy_var_1
	) `HappyStk` happyRest

happyReduce_66 = happySpecReduce_1  25 happyReduction_66
happyReduction_66 (HappyTerminal (TkId _ happy_var_1))
	 =  HappyAbsSyn25
		 (happy_var_1
	)
happyReduction_66 _  = notHappyAtAll 

happyReduce_67 = happySpecReduce_3  25 happyReduction_67
happyReduction_67 _
	_
	(HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn25
		 (happy_var_1
	)
happyReduction_67 _ _ _  = notHappyAtAll 

happyReduce_68 = happySpecReduce_1  26 happyReduction_68
happyReduction_68 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn26
		 (happy_var_1
	)
happyReduction_68 _  = notHappyAtAll 

happyReduce_69 = happySpecReduce_3  26 happyReduction_69
happyReduction_69 _
	_
	(HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn26
		 (happy_var_1
	)
happyReduction_69 _ _ _  = notHappyAtAll 

happyReduce_70 = happyReduce 4 27 happyReduction_70
happyReduction_70 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn27
		 (happy_var_1
	) `HappyStk` happyRest

happyReduce_71 = happyReduce 6 27 happyReduction_71
happyReduction_71 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn27
		 (happy_var_1
	) `HappyStk` happyRest

happyReduce_72 = happyReduce 4 28 happyReduction_72
happyReduction_72 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn28
		 (happy_var_1
	) `HappyStk` happyRest

happyReduce_73 = happyReduce 6 29 happyReduction_73
happyReduction_73 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn29
		 (happy_var_1
	) `HappyStk` happyRest

happyReduce_74 = happySpecReduce_2  30 happyReduction_74
happyReduction_74 _
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn30
		 (happy_var_1
	)
happyReduction_74 _ _  = notHappyAtAll 

happyReduce_75 = happySpecReduce_2  31 happyReduction_75
happyReduction_75 _
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn31
		 (happy_var_1
	)
happyReduction_75 _ _  = notHappyAtAll 

happyReduce_76 = happySpecReduce_2  32 happyReduction_76
happyReduction_76 _
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn32
		 (happy_var_1
	)
happyReduction_76 _ _  = notHappyAtAll 

happyReduce_77 = happySpecReduce_3  33 happyReduction_77
happyReduction_77 _
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1
	)
happyReduction_77 _ _ _  = notHappyAtAll 

happyReduce_78 = happySpecReduce_3  33 happyReduction_78
happyReduction_78 _
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1
	)
happyReduction_78 _ _ _  = notHappyAtAll 

happyReduce_79 = happySpecReduce_3  33 happyReduction_79
happyReduction_79 _
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1
	)
happyReduction_79 _ _ _  = notHappyAtAll 

happyReduce_80 = happySpecReduce_3  33 happyReduction_80
happyReduction_80 _
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1
	)
happyReduction_80 _ _ _  = notHappyAtAll 

happyReduce_81 = happySpecReduce_3  33 happyReduction_81
happyReduction_81 _
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1
	)
happyReduction_81 _ _ _  = notHappyAtAll 

happyReduce_82 = happySpecReduce_3  33 happyReduction_82
happyReduction_82 _
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1
	)
happyReduction_82 _ _ _  = notHappyAtAll 

happyReduce_83 = happySpecReduce_1  33 happyReduction_83
happyReduction_83 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1
	)
happyReduction_83 _  = notHappyAtAll 

happyReduce_84 = happySpecReduce_1  33 happyReduction_84
happyReduction_84 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1
	)
happyReduction_84 _  = notHappyAtAll 

happyReduce_85 = happySpecReduce_3  33 happyReduction_85
happyReduction_85 _
	_
	(HappyAbsSyn33  happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1
	)
happyReduction_85 _ _ _  = notHappyAtAll 

happyReduce_86 = happySpecReduce_3  33 happyReduction_86
happyReduction_86 _
	_
	(HappyAbsSyn33  happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1
	)
happyReduction_86 _ _ _  = notHappyAtAll 

happyReduce_87 = happySpecReduce_3  33 happyReduction_87
happyReduction_87 _
	_
	(HappyAbsSyn33  happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1
	)
happyReduction_87 _ _ _  = notHappyAtAll 

happyReduce_88 = happySpecReduce_3  33 happyReduction_88
happyReduction_88 _
	_
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1
	)
happyReduction_88 _ _ _  = notHappyAtAll 

happyReduce_89 = happySpecReduce_2  33 happyReduction_89
happyReduction_89 _
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1
	)
happyReduction_89 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 91 91 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TkTNum _ -> cont 34;
	TkTVec _ -> cont 35;
	TkTMat _ -> cont 36;
	TkTrue _ -> cont 37;
	TkFalse _ -> cont 38;
	TkString _ happy_dollar_dollar -> cont 39;
	TkId _ happy_dollar_dollar -> cont 40;
	TkNum _ happy_dollar_dollar -> cont 41;
	TkPlus _ -> cont 42;
	TkMinus _ -> cont 43;
	TkTimes _ -> cont 44;
	TkDiv _ -> cont 45;
	TkMod _ -> cont 46;
	TkExp _ -> cont 47;
	TkDot _ -> cont 48;
	TkLess _ -> cont 49;
	TkGreat _ -> cont 50;
	TkLET _ -> cont 51;
	TkGET _ -> cont 52;
	TkEqual _ -> cont 53;
	TkNEqual _ -> cont 54;
	TkAssign _ -> cont 55;
	TkLSB _ -> cont 56;
	TkRSB _ -> cont 57;
	TkLCB _ -> cont 58;
	TkRCB _ -> cont 59;
	TkLP  _ -> cont 60;
	TkRP  _ -> cont 61;
	TkDS _ -> cont 62;
	TkAt _ -> cont 63;
	TkCircum _ -> cont 64;
	TkColon _ -> cont 65;
	TkComma _ -> cont 66;
	TkSC _ -> cont 67;
	TkAnd _ -> cont 68;
	TkOr _ -> cont 69;
	TkNot _ -> cont 70;
	TkFZeroes _ -> cont 71;
	TkFRange _ -> cont 72;
	TkFEye _ -> cont 73;
	TkRead _ -> cont 74;
	TkWrite _ -> cont 75;
	TkDef _ -> cont 76;
	TkOf _ -> cont 77;
	TkType _ -> cont 78;
	TkAs _ -> cont 79;
	TkBegin _ -> cont 80;
	TkEnd _ -> cont 81;
	TkVar _ -> cont 82;
	TkIf _ -> cont 83;
	TkElse _ -> cont 84;
	TkThen _ -> cont 85;
	TkWhile _ -> cont 86;
	TkDo _ -> cont 87;
	TkFore _ -> cont 88;
	TkIn _ -> cont 89;
	TkReturn _ -> cont 90;
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
