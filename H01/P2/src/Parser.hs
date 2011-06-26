{-# OPTIONS_GHC -fno-warn-overlapping-patterns #-}
{-
Comentarios BLAH

-}

module Parser (
       parser
) where

import Tokens
import AST

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

action_2 (44) = happyShift action_24
action_2 (62) = happyShift action_25
action_2 (75) = happyShift action_26
action_2 (76) = happyShift action_27
action_2 (77) = happyShift action_28
action_2 (78) = happyShift action_29
action_2 (79) = happyShift action_30
action_2 (84) = happyShift action_31
action_2 (87) = happyShift action_32
action_2 (90) = happyShift action_33
action_2 (92) = happyShift action_34
action_2 (94) = happyShift action_35
action_2 (6) = happyGoto action_6
action_2 (9) = happyGoto action_7
action_2 (10) = happyGoto action_8
action_2 (12) = happyGoto action_9
action_2 (13) = happyGoto action_10
action_2 (14) = happyGoto action_11
action_2 (17) = happyGoto action_12
action_2 (20) = happyGoto action_13
action_2 (21) = happyGoto action_14
action_2 (22) = happyGoto action_15
action_2 (23) = happyGoto action_16
action_2 (24) = happyGoto action_17
action_2 (25) = happyGoto action_18
action_2 (30) = happyGoto action_19
action_2 (31) = happyGoto action_20
action_2 (32) = happyGoto action_21
action_2 (33) = happyGoto action_22
action_2 (36) = happyGoto action_23
action_2 _ = happyFail

action_3 (80) = happyShift action_5
action_3 _ = happyReduce_3

action_4 (95) = happyAccept
action_4 _ = happyFail

action_5 (44) = happyShift action_68
action_5 _ = happyFail

action_6 (80) = happyShift action_5
action_6 _ = happyReduce_4

action_7 _ = happyReduce_1

action_8 _ = happyReduce_19

action_9 _ = happyReduce_12

action_10 (59) = happyShift action_67
action_10 _ = happyFail

action_11 (60) = happyShift action_66
action_11 _ = happyReduce_24

action_12 _ = happyReduce_29

action_13 _ = happyReduce_31

action_14 _ = happyReduce_32

action_15 _ = happyReduce_57

action_16 _ = happyReduce_58

action_17 _ = happyReduce_59

action_18 _ = happyReduce_13

action_19 _ = happyReduce_14

action_20 _ = happyReduce_15

action_21 _ = happyReduce_16

action_22 _ = happyReduce_17

action_23 _ = happyReduce_18

action_24 (64) = happyShift action_65
action_24 _ = happyReduce_30

action_25 (44) = happyShift action_24
action_25 (45) = happyShift action_38
action_25 (47) = happyShift action_39
action_25 (62) = happyShift action_25
action_25 (63) = happyShift action_64
action_25 (64) = happyShift action_40
action_25 (66) = happyShift action_41
action_25 (67) = happyShift action_42
action_25 (75) = happyShift action_26
action_25 (76) = happyShift action_27
action_25 (77) = happyShift action_28
action_25 (13) = happyGoto action_36
action_25 (14) = happyGoto action_11
action_25 (16) = happyGoto action_61
action_25 (17) = happyGoto action_12
action_25 (18) = happyGoto action_62
action_25 (19) = happyGoto action_63
action_25 (20) = happyGoto action_13
action_25 (21) = happyGoto action_14
action_25 (22) = happyGoto action_15
action_25 (23) = happyGoto action_16
action_25 (24) = happyGoto action_17
action_25 _ = happyFail

action_26 (64) = happyShift action_60
action_26 _ = happyFail

action_27 (64) = happyShift action_59
action_27 _ = happyFail

action_28 (64) = happyShift action_58
action_28 _ = happyFail

action_29 (44) = happyShift action_24
action_29 (45) = happyShift action_38
action_29 (47) = happyShift action_39
action_29 (62) = happyShift action_25
action_29 (64) = happyShift action_40
action_29 (66) = happyShift action_41
action_29 (67) = happyShift action_42
action_29 (75) = happyShift action_26
action_29 (76) = happyShift action_27
action_29 (77) = happyShift action_28
action_29 (13) = happyGoto action_36
action_29 (14) = happyGoto action_11
action_29 (16) = happyGoto action_57
action_29 (17) = happyGoto action_12
action_29 (20) = happyGoto action_13
action_29 (21) = happyGoto action_14
action_29 (22) = happyGoto action_15
action_29 (23) = happyGoto action_16
action_29 (24) = happyGoto action_17
action_29 _ = happyFail

action_30 (43) = happyShift action_56
action_30 (44) = happyShift action_24
action_30 (45) = happyShift action_38
action_30 (47) = happyShift action_39
action_30 (62) = happyShift action_25
action_30 (64) = happyShift action_40
action_30 (66) = happyShift action_41
action_30 (67) = happyShift action_42
action_30 (75) = happyShift action_26
action_30 (76) = happyShift action_27
action_30 (77) = happyShift action_28
action_30 (13) = happyGoto action_36
action_30 (14) = happyGoto action_11
action_30 (16) = happyGoto action_53
action_30 (17) = happyGoto action_12
action_30 (20) = happyGoto action_13
action_30 (21) = happyGoto action_14
action_30 (22) = happyGoto action_15
action_30 (23) = happyGoto action_16
action_30 (24) = happyGoto action_17
action_30 (34) = happyGoto action_54
action_30 (35) = happyGoto action_55
action_30 _ = happyFail

action_31 (86) = happyShift action_52
action_31 (26) = happyGoto action_51
action_31 _ = happyReduce_66

action_32 (41) = happyShift action_46
action_32 (42) = happyShift action_47
action_32 (44) = happyShift action_24
action_32 (45) = happyShift action_38
action_32 (47) = happyShift action_39
action_32 (62) = happyShift action_25
action_32 (64) = happyShift action_48
action_32 (66) = happyShift action_41
action_32 (67) = happyShift action_42
action_32 (74) = happyShift action_49
action_32 (75) = happyShift action_26
action_32 (76) = happyShift action_27
action_32 (77) = happyShift action_28
action_32 (13) = happyGoto action_36
action_32 (14) = happyGoto action_11
action_32 (16) = happyGoto action_44
action_32 (17) = happyGoto action_12
action_32 (20) = happyGoto action_13
action_32 (21) = happyGoto action_14
action_32 (22) = happyGoto action_15
action_32 (23) = happyGoto action_16
action_32 (24) = happyGoto action_17
action_32 (37) = happyGoto action_50
action_32 _ = happyFail

action_33 (41) = happyShift action_46
action_33 (42) = happyShift action_47
action_33 (44) = happyShift action_24
action_33 (45) = happyShift action_38
action_33 (47) = happyShift action_39
action_33 (62) = happyShift action_25
action_33 (64) = happyShift action_48
action_33 (66) = happyShift action_41
action_33 (67) = happyShift action_42
action_33 (74) = happyShift action_49
action_33 (75) = happyShift action_26
action_33 (76) = happyShift action_27
action_33 (77) = happyShift action_28
action_33 (13) = happyGoto action_36
action_33 (14) = happyGoto action_11
action_33 (16) = happyGoto action_44
action_33 (17) = happyGoto action_12
action_33 (20) = happyGoto action_13
action_33 (21) = happyGoto action_14
action_33 (22) = happyGoto action_15
action_33 (23) = happyGoto action_16
action_33 (24) = happyGoto action_17
action_33 (37) = happyGoto action_45
action_33 _ = happyFail

action_34 (44) = happyShift action_43
action_34 _ = happyFail

action_35 (44) = happyShift action_24
action_35 (45) = happyShift action_38
action_35 (47) = happyShift action_39
action_35 (62) = happyShift action_25
action_35 (64) = happyShift action_40
action_35 (66) = happyShift action_41
action_35 (67) = happyShift action_42
action_35 (75) = happyShift action_26
action_35 (76) = happyShift action_27
action_35 (77) = happyShift action_28
action_35 (13) = happyGoto action_36
action_35 (14) = happyGoto action_11
action_35 (16) = happyGoto action_37
action_35 (17) = happyGoto action_12
action_35 (20) = happyGoto action_13
action_35 (21) = happyGoto action_14
action_35 (22) = happyGoto action_15
action_35 (23) = happyGoto action_16
action_35 (24) = happyGoto action_17
action_35 _ = happyFail

action_36 _ = happyReduce_44

action_37 (46) = happyShift action_78
action_37 (47) = happyShift action_79
action_37 (48) = happyShift action_80
action_37 (49) = happyShift action_81
action_37 (50) = happyShift action_82
action_37 (51) = happyShift action_83
action_37 (52) = happyShift action_84
action_37 (68) = happyShift action_85
action_37 _ = happyReduce_81

action_38 _ = happyReduce_35

action_39 (44) = happyShift action_24
action_39 (45) = happyShift action_38
action_39 (47) = happyShift action_39
action_39 (62) = happyShift action_25
action_39 (64) = happyShift action_40
action_39 (66) = happyShift action_41
action_39 (67) = happyShift action_42
action_39 (75) = happyShift action_26
action_39 (76) = happyShift action_27
action_39 (77) = happyShift action_28
action_39 (13) = happyGoto action_36
action_39 (14) = happyGoto action_11
action_39 (16) = happyGoto action_113
action_39 (17) = happyGoto action_12
action_39 (20) = happyGoto action_13
action_39 (21) = happyGoto action_14
action_39 (22) = happyGoto action_15
action_39 (23) = happyGoto action_16
action_39 (24) = happyGoto action_17
action_39 _ = happyFail

action_40 (44) = happyShift action_24
action_40 (45) = happyShift action_38
action_40 (47) = happyShift action_39
action_40 (62) = happyShift action_25
action_40 (64) = happyShift action_40
action_40 (66) = happyShift action_41
action_40 (67) = happyShift action_42
action_40 (75) = happyShift action_26
action_40 (76) = happyShift action_27
action_40 (77) = happyShift action_28
action_40 (13) = happyGoto action_36
action_40 (14) = happyGoto action_11
action_40 (16) = happyGoto action_112
action_40 (17) = happyGoto action_12
action_40 (20) = happyGoto action_13
action_40 (21) = happyGoto action_14
action_40 (22) = happyGoto action_15
action_40 (23) = happyGoto action_16
action_40 (24) = happyGoto action_17
action_40 _ = happyFail

action_41 (44) = happyShift action_24
action_41 (45) = happyShift action_38
action_41 (47) = happyShift action_39
action_41 (62) = happyShift action_25
action_41 (64) = happyShift action_40
action_41 (66) = happyShift action_41
action_41 (67) = happyShift action_42
action_41 (75) = happyShift action_26
action_41 (76) = happyShift action_27
action_41 (77) = happyShift action_28
action_41 (13) = happyGoto action_36
action_41 (14) = happyGoto action_11
action_41 (16) = happyGoto action_111
action_41 (17) = happyGoto action_12
action_41 (20) = happyGoto action_13
action_41 (21) = happyGoto action_14
action_41 (22) = happyGoto action_15
action_41 (23) = happyGoto action_16
action_41 (24) = happyGoto action_17
action_41 _ = happyFail

action_42 (44) = happyShift action_24
action_42 (45) = happyShift action_38
action_42 (47) = happyShift action_39
action_42 (62) = happyShift action_25
action_42 (64) = happyShift action_40
action_42 (66) = happyShift action_41
action_42 (67) = happyShift action_42
action_42 (75) = happyShift action_26
action_42 (76) = happyShift action_27
action_42 (77) = happyShift action_28
action_42 (13) = happyGoto action_36
action_42 (14) = happyGoto action_11
action_42 (16) = happyGoto action_110
action_42 (17) = happyGoto action_12
action_42 (20) = happyGoto action_13
action_42 (21) = happyGoto action_14
action_42 (22) = happyGoto action_15
action_42 (23) = happyGoto action_16
action_42 (24) = happyGoto action_17
action_42 _ = happyFail

action_43 (93) = happyShift action_109
action_43 _ = happyFail

action_44 (46) = happyShift action_78
action_44 (47) = happyShift action_79
action_44 (48) = happyShift action_80
action_44 (49) = happyShift action_81
action_44 (50) = happyShift action_82
action_44 (51) = happyShift action_83
action_44 (52) = happyShift action_84
action_44 (53) = happyShift action_103
action_44 (54) = happyShift action_104
action_44 (55) = happyShift action_105
action_44 (56) = happyShift action_106
action_44 (57) = happyShift action_107
action_44 (58) = happyShift action_108
action_44 (68) = happyShift action_85
action_44 _ = happyFail

action_45 (57) = happyShift action_95
action_45 (72) = happyShift action_96
action_45 (73) = happyShift action_97
action_45 (91) = happyShift action_102
action_45 _ = happyFail

action_46 _ = happyReduce_88

action_47 _ = happyReduce_89

action_48 (41) = happyShift action_46
action_48 (42) = happyShift action_47
action_48 (44) = happyShift action_24
action_48 (45) = happyShift action_38
action_48 (47) = happyShift action_39
action_48 (62) = happyShift action_25
action_48 (64) = happyShift action_48
action_48 (66) = happyShift action_41
action_48 (67) = happyShift action_42
action_48 (74) = happyShift action_49
action_48 (75) = happyShift action_26
action_48 (76) = happyShift action_27
action_48 (77) = happyShift action_28
action_48 (13) = happyGoto action_36
action_48 (14) = happyGoto action_11
action_48 (16) = happyGoto action_100
action_48 (17) = happyGoto action_12
action_48 (20) = happyGoto action_13
action_48 (21) = happyGoto action_14
action_48 (22) = happyGoto action_15
action_48 (23) = happyGoto action_16
action_48 (24) = happyGoto action_17
action_48 (37) = happyGoto action_101
action_48 _ = happyFail

action_49 (41) = happyShift action_46
action_49 (42) = happyShift action_47
action_49 (44) = happyShift action_24
action_49 (45) = happyShift action_38
action_49 (47) = happyShift action_39
action_49 (62) = happyShift action_25
action_49 (64) = happyShift action_48
action_49 (66) = happyShift action_41
action_49 (67) = happyShift action_42
action_49 (74) = happyShift action_49
action_49 (75) = happyShift action_26
action_49 (76) = happyShift action_27
action_49 (77) = happyShift action_28
action_49 (13) = happyGoto action_36
action_49 (14) = happyGoto action_11
action_49 (16) = happyGoto action_44
action_49 (17) = happyGoto action_12
action_49 (20) = happyGoto action_13
action_49 (21) = happyGoto action_14
action_49 (22) = happyGoto action_15
action_49 (23) = happyGoto action_16
action_49 (24) = happyGoto action_17
action_49 (37) = happyGoto action_99
action_49 _ = happyFail

action_50 (57) = happyShift action_95
action_50 (72) = happyShift action_96
action_50 (73) = happyShift action_97
action_50 (89) = happyShift action_98
action_50 _ = happyFail

action_51 (44) = happyShift action_24
action_51 (62) = happyShift action_25
action_51 (75) = happyShift action_26
action_51 (76) = happyShift action_27
action_51 (77) = happyShift action_28
action_51 (78) = happyShift action_29
action_51 (79) = happyShift action_30
action_51 (84) = happyShift action_31
action_51 (87) = happyShift action_32
action_51 (90) = happyShift action_33
action_51 (92) = happyShift action_34
action_51 (94) = happyShift action_35
action_51 (9) = happyGoto action_93
action_51 (10) = happyGoto action_8
action_51 (12) = happyGoto action_9
action_51 (13) = happyGoto action_10
action_51 (14) = happyGoto action_11
action_51 (17) = happyGoto action_12
action_51 (20) = happyGoto action_13
action_51 (21) = happyGoto action_14
action_51 (22) = happyGoto action_15
action_51 (23) = happyGoto action_16
action_51 (24) = happyGoto action_17
action_51 (25) = happyGoto action_18
action_51 (29) = happyGoto action_94
action_51 (30) = happyGoto action_19
action_51 (31) = happyGoto action_20
action_51 (32) = happyGoto action_21
action_51 (33) = happyGoto action_22
action_51 (36) = happyGoto action_23
action_51 _ = happyFail

action_52 (44) = happyShift action_92
action_52 (27) = happyGoto action_90
action_52 (28) = happyGoto action_91
action_52 _ = happyFail

action_53 (46) = happyShift action_78
action_53 (47) = happyShift action_79
action_53 (48) = happyShift action_80
action_53 (49) = happyShift action_81
action_53 (50) = happyShift action_82
action_53 (51) = happyShift action_83
action_53 (52) = happyShift action_84
action_53 (68) = happyShift action_85
action_53 _ = happyReduce_77

action_54 _ = happyReduce_79

action_55 (70) = happyShift action_89
action_55 _ = happyReduce_76

action_56 _ = happyReduce_78

action_57 (46) = happyShift action_78
action_57 (47) = happyShift action_79
action_57 (48) = happyShift action_80
action_57 (49) = happyShift action_81
action_57 (50) = happyShift action_82
action_57 (51) = happyShift action_83
action_57 (52) = happyShift action_84
action_57 (68) = happyShift action_85
action_57 _ = happyReduce_75

action_58 (44) = happyShift action_24
action_58 (45) = happyShift action_38
action_58 (47) = happyShift action_39
action_58 (62) = happyShift action_25
action_58 (64) = happyShift action_40
action_58 (66) = happyShift action_41
action_58 (67) = happyShift action_42
action_58 (75) = happyShift action_26
action_58 (76) = happyShift action_27
action_58 (77) = happyShift action_28
action_58 (13) = happyGoto action_36
action_58 (14) = happyGoto action_11
action_58 (16) = happyGoto action_88
action_58 (17) = happyGoto action_12
action_58 (20) = happyGoto action_13
action_58 (21) = happyGoto action_14
action_58 (22) = happyGoto action_15
action_58 (23) = happyGoto action_16
action_58 (24) = happyGoto action_17
action_58 _ = happyFail

action_59 (44) = happyShift action_24
action_59 (45) = happyShift action_38
action_59 (47) = happyShift action_39
action_59 (62) = happyShift action_25
action_59 (64) = happyShift action_40
action_59 (66) = happyShift action_41
action_59 (67) = happyShift action_42
action_59 (75) = happyShift action_26
action_59 (76) = happyShift action_27
action_59 (77) = happyShift action_28
action_59 (13) = happyGoto action_36
action_59 (14) = happyGoto action_11
action_59 (16) = happyGoto action_87
action_59 (17) = happyGoto action_12
action_59 (20) = happyGoto action_13
action_59 (21) = happyGoto action_14
action_59 (22) = happyGoto action_15
action_59 (23) = happyGoto action_16
action_59 (24) = happyGoto action_17
action_59 _ = happyFail

action_60 (44) = happyShift action_24
action_60 (45) = happyShift action_38
action_60 (47) = happyShift action_39
action_60 (62) = happyShift action_25
action_60 (64) = happyShift action_40
action_60 (66) = happyShift action_41
action_60 (67) = happyShift action_42
action_60 (75) = happyShift action_26
action_60 (76) = happyShift action_27
action_60 (77) = happyShift action_28
action_60 (13) = happyGoto action_36
action_60 (14) = happyGoto action_11
action_60 (16) = happyGoto action_86
action_60 (17) = happyGoto action_12
action_60 (20) = happyGoto action_13
action_60 (21) = happyGoto action_14
action_60 (22) = happyGoto action_15
action_60 (23) = happyGoto action_16
action_60 (24) = happyGoto action_17
action_60 _ = happyFail

action_61 (46) = happyShift action_78
action_61 (47) = happyShift action_79
action_61 (48) = happyShift action_80
action_61 (49) = happyShift action_81
action_61 (50) = happyShift action_82
action_61 (51) = happyShift action_83
action_61 (52) = happyShift action_84
action_61 (68) = happyShift action_85
action_61 _ = happyReduce_53

action_62 (63) = happyShift action_76
action_62 (71) = happyShift action_77
action_62 _ = happyFail

action_63 (70) = happyShift action_75
action_63 _ = happyReduce_51

action_64 _ = happyReduce_50

action_65 (44) = happyShift action_24
action_65 (45) = happyShift action_38
action_65 (47) = happyShift action_39
action_65 (62) = happyShift action_25
action_65 (64) = happyShift action_40
action_65 (65) = happyShift action_74
action_65 (66) = happyShift action_41
action_65 (67) = happyShift action_42
action_65 (75) = happyShift action_26
action_65 (76) = happyShift action_27
action_65 (77) = happyShift action_28
action_65 (13) = happyGoto action_36
action_65 (14) = happyGoto action_11
action_65 (16) = happyGoto action_61
action_65 (17) = happyGoto action_12
action_65 (19) = happyGoto action_73
action_65 (20) = happyGoto action_13
action_65 (21) = happyGoto action_14
action_65 (22) = happyGoto action_15
action_65 (23) = happyGoto action_16
action_65 (24) = happyGoto action_17
action_65 _ = happyFail

action_66 (44) = happyShift action_24
action_66 (45) = happyShift action_38
action_66 (47) = happyShift action_39
action_66 (62) = happyShift action_25
action_66 (64) = happyShift action_40
action_66 (66) = happyShift action_41
action_66 (67) = happyShift action_42
action_66 (75) = happyShift action_26
action_66 (76) = happyShift action_27
action_66 (77) = happyShift action_28
action_66 (13) = happyGoto action_36
action_66 (14) = happyGoto action_11
action_66 (15) = happyGoto action_71
action_66 (16) = happyGoto action_72
action_66 (17) = happyGoto action_12
action_66 (20) = happyGoto action_13
action_66 (21) = happyGoto action_14
action_66 (22) = happyGoto action_15
action_66 (23) = happyGoto action_16
action_66 (24) = happyGoto action_17
action_66 _ = happyReduce_33

action_67 (44) = happyShift action_24
action_67 (45) = happyShift action_38
action_67 (47) = happyShift action_39
action_67 (62) = happyShift action_25
action_67 (64) = happyShift action_40
action_67 (66) = happyShift action_41
action_67 (67) = happyShift action_42
action_67 (75) = happyShift action_26
action_67 (76) = happyShift action_27
action_67 (77) = happyShift action_28
action_67 (13) = happyGoto action_36
action_67 (14) = happyGoto action_11
action_67 (16) = happyGoto action_70
action_67 (17) = happyGoto action_12
action_67 (20) = happyGoto action_13
action_67 (21) = happyGoto action_14
action_67 (22) = happyGoto action_15
action_67 (23) = happyGoto action_16
action_67 (24) = happyGoto action_17
action_67 _ = happyFail

action_68 (64) = happyShift action_69
action_68 _ = happyFail

action_69 (44) = happyShift action_152
action_69 (65) = happyShift action_153
action_69 (7) = happyGoto action_151
action_69 _ = happyFail

action_70 (46) = happyShift action_78
action_70 (47) = happyShift action_79
action_70 (48) = happyShift action_80
action_70 (49) = happyShift action_81
action_70 (50) = happyShift action_82
action_70 (51) = happyShift action_83
action_70 (52) = happyShift action_84
action_70 (68) = happyShift action_85
action_70 _ = happyReduce_23

action_71 (69) = happyShift action_150
action_71 _ = happyFail

action_72 (46) = happyShift action_78
action_72 (47) = happyShift action_79
action_72 (48) = happyShift action_80
action_72 (49) = happyShift action_81
action_72 (50) = happyShift action_82
action_72 (51) = happyShift action_83
action_72 (52) = happyShift action_84
action_72 (61) = happyShift action_148
action_72 (68) = happyShift action_85
action_72 (70) = happyShift action_149
action_72 _ = happyReduce_34

action_73 (65) = happyShift action_147
action_73 (70) = happyShift action_75
action_73 _ = happyFail

action_74 _ = happyReduce_56

action_75 (44) = happyShift action_24
action_75 (45) = happyShift action_38
action_75 (47) = happyShift action_39
action_75 (62) = happyShift action_25
action_75 (64) = happyShift action_40
action_75 (66) = happyShift action_41
action_75 (67) = happyShift action_42
action_75 (75) = happyShift action_26
action_75 (76) = happyShift action_27
action_75 (77) = happyShift action_28
action_75 (13) = happyGoto action_36
action_75 (14) = happyGoto action_11
action_75 (16) = happyGoto action_146
action_75 (17) = happyGoto action_12
action_75 (20) = happyGoto action_13
action_75 (21) = happyGoto action_14
action_75 (22) = happyGoto action_15
action_75 (23) = happyGoto action_16
action_75 (24) = happyGoto action_17
action_75 _ = happyFail

action_76 _ = happyReduce_49

action_77 (44) = happyShift action_24
action_77 (45) = happyShift action_38
action_77 (47) = happyShift action_39
action_77 (62) = happyShift action_25
action_77 (64) = happyShift action_40
action_77 (66) = happyShift action_41
action_77 (67) = happyShift action_42
action_77 (75) = happyShift action_26
action_77 (76) = happyShift action_27
action_77 (77) = happyShift action_28
action_77 (13) = happyGoto action_36
action_77 (14) = happyGoto action_11
action_77 (16) = happyGoto action_61
action_77 (17) = happyGoto action_12
action_77 (19) = happyGoto action_145
action_77 (20) = happyGoto action_13
action_77 (21) = happyGoto action_14
action_77 (22) = happyGoto action_15
action_77 (23) = happyGoto action_16
action_77 (24) = happyGoto action_17
action_77 _ = happyFail

action_78 (44) = happyShift action_24
action_78 (45) = happyShift action_38
action_78 (47) = happyShift action_39
action_78 (62) = happyShift action_25
action_78 (64) = happyShift action_40
action_78 (66) = happyShift action_41
action_78 (67) = happyShift action_42
action_78 (75) = happyShift action_26
action_78 (76) = happyShift action_27
action_78 (77) = happyShift action_28
action_78 (13) = happyGoto action_36
action_78 (14) = happyGoto action_11
action_78 (16) = happyGoto action_144
action_78 (17) = happyGoto action_12
action_78 (20) = happyGoto action_13
action_78 (21) = happyGoto action_14
action_78 (22) = happyGoto action_15
action_78 (23) = happyGoto action_16
action_78 (24) = happyGoto action_17
action_78 _ = happyFail

action_79 (44) = happyShift action_24
action_79 (45) = happyShift action_38
action_79 (47) = happyShift action_39
action_79 (62) = happyShift action_25
action_79 (64) = happyShift action_40
action_79 (66) = happyShift action_41
action_79 (67) = happyShift action_42
action_79 (75) = happyShift action_26
action_79 (76) = happyShift action_27
action_79 (77) = happyShift action_28
action_79 (13) = happyGoto action_36
action_79 (14) = happyGoto action_11
action_79 (16) = happyGoto action_143
action_79 (17) = happyGoto action_12
action_79 (20) = happyGoto action_13
action_79 (21) = happyGoto action_14
action_79 (22) = happyGoto action_15
action_79 (23) = happyGoto action_16
action_79 (24) = happyGoto action_17
action_79 _ = happyFail

action_80 (44) = happyShift action_24
action_80 (45) = happyShift action_38
action_80 (47) = happyShift action_39
action_80 (62) = happyShift action_25
action_80 (64) = happyShift action_40
action_80 (66) = happyShift action_41
action_80 (67) = happyShift action_42
action_80 (75) = happyShift action_26
action_80 (76) = happyShift action_27
action_80 (77) = happyShift action_28
action_80 (13) = happyGoto action_36
action_80 (14) = happyGoto action_11
action_80 (16) = happyGoto action_142
action_80 (17) = happyGoto action_12
action_80 (20) = happyGoto action_13
action_80 (21) = happyGoto action_14
action_80 (22) = happyGoto action_15
action_80 (23) = happyGoto action_16
action_80 (24) = happyGoto action_17
action_80 _ = happyFail

action_81 (44) = happyShift action_24
action_81 (45) = happyShift action_38
action_81 (47) = happyShift action_39
action_81 (62) = happyShift action_25
action_81 (64) = happyShift action_40
action_81 (66) = happyShift action_41
action_81 (67) = happyShift action_42
action_81 (75) = happyShift action_26
action_81 (76) = happyShift action_27
action_81 (77) = happyShift action_28
action_81 (13) = happyGoto action_36
action_81 (14) = happyGoto action_11
action_81 (16) = happyGoto action_141
action_81 (17) = happyGoto action_12
action_81 (20) = happyGoto action_13
action_81 (21) = happyGoto action_14
action_81 (22) = happyGoto action_15
action_81 (23) = happyGoto action_16
action_81 (24) = happyGoto action_17
action_81 _ = happyFail

action_82 (44) = happyShift action_24
action_82 (45) = happyShift action_38
action_82 (47) = happyShift action_39
action_82 (62) = happyShift action_25
action_82 (64) = happyShift action_40
action_82 (66) = happyShift action_41
action_82 (67) = happyShift action_42
action_82 (75) = happyShift action_26
action_82 (76) = happyShift action_27
action_82 (77) = happyShift action_28
action_82 (13) = happyGoto action_36
action_82 (14) = happyGoto action_11
action_82 (16) = happyGoto action_140
action_82 (17) = happyGoto action_12
action_82 (20) = happyGoto action_13
action_82 (21) = happyGoto action_14
action_82 (22) = happyGoto action_15
action_82 (23) = happyGoto action_16
action_82 (24) = happyGoto action_17
action_82 _ = happyFail

action_83 (44) = happyShift action_24
action_83 (45) = happyShift action_38
action_83 (47) = happyShift action_39
action_83 (62) = happyShift action_25
action_83 (64) = happyShift action_40
action_83 (66) = happyShift action_41
action_83 (67) = happyShift action_42
action_83 (75) = happyShift action_26
action_83 (76) = happyShift action_27
action_83 (77) = happyShift action_28
action_83 (13) = happyGoto action_36
action_83 (14) = happyGoto action_11
action_83 (16) = happyGoto action_139
action_83 (17) = happyGoto action_12
action_83 (20) = happyGoto action_13
action_83 (21) = happyGoto action_14
action_83 (22) = happyGoto action_15
action_83 (23) = happyGoto action_16
action_83 (24) = happyGoto action_17
action_83 _ = happyFail

action_84 (44) = happyShift action_24
action_84 (45) = happyShift action_38
action_84 (47) = happyShift action_39
action_84 (62) = happyShift action_25
action_84 (64) = happyShift action_40
action_84 (66) = happyShift action_41
action_84 (67) = happyShift action_42
action_84 (75) = happyShift action_26
action_84 (76) = happyShift action_27
action_84 (77) = happyShift action_28
action_84 (13) = happyGoto action_36
action_84 (14) = happyGoto action_11
action_84 (16) = happyGoto action_138
action_84 (17) = happyGoto action_12
action_84 (20) = happyGoto action_13
action_84 (21) = happyGoto action_14
action_84 (22) = happyGoto action_15
action_84 (23) = happyGoto action_16
action_84 (24) = happyGoto action_17
action_84 _ = happyFail

action_85 _ = happyReduce_46

action_86 (46) = happyShift action_78
action_86 (47) = happyShift action_79
action_86 (48) = happyShift action_80
action_86 (49) = happyShift action_81
action_86 (50) = happyShift action_82
action_86 (51) = happyShift action_83
action_86 (52) = happyShift action_84
action_86 (65) = happyShift action_136
action_86 (68) = happyShift action_85
action_86 (70) = happyShift action_137
action_86 _ = happyFail

action_87 (46) = happyShift action_78
action_87 (47) = happyShift action_79
action_87 (48) = happyShift action_80
action_87 (49) = happyShift action_81
action_87 (50) = happyShift action_82
action_87 (51) = happyShift action_83
action_87 (52) = happyShift action_84
action_87 (65) = happyShift action_135
action_87 (68) = happyShift action_85
action_87 _ = happyFail

action_88 (46) = happyShift action_78
action_88 (47) = happyShift action_79
action_88 (48) = happyShift action_80
action_88 (49) = happyShift action_81
action_88 (50) = happyShift action_82
action_88 (51) = happyShift action_83
action_88 (52) = happyShift action_84
action_88 (65) = happyShift action_134
action_88 (68) = happyShift action_85
action_88 _ = happyFail

action_89 (43) = happyShift action_56
action_89 (44) = happyShift action_24
action_89 (45) = happyShift action_38
action_89 (47) = happyShift action_39
action_89 (62) = happyShift action_25
action_89 (64) = happyShift action_40
action_89 (66) = happyShift action_41
action_89 (67) = happyShift action_42
action_89 (75) = happyShift action_26
action_89 (76) = happyShift action_27
action_89 (77) = happyShift action_28
action_89 (13) = happyGoto action_36
action_89 (14) = happyGoto action_11
action_89 (16) = happyGoto action_53
action_89 (17) = happyGoto action_12
action_89 (20) = happyGoto action_13
action_89 (21) = happyGoto action_14
action_89 (22) = happyGoto action_15
action_89 (23) = happyGoto action_16
action_89 (24) = happyGoto action_17
action_89 (34) = happyGoto action_133
action_89 _ = happyFail

action_90 (71) = happyShift action_132
action_90 _ = happyReduce_65

action_91 (69) = happyShift action_130
action_91 (70) = happyShift action_131
action_91 _ = happyFail

action_92 _ = happyReduce_69

action_93 _ = happyReduce_71

action_94 (71) = happyShift action_128
action_94 (85) = happyShift action_129
action_94 _ = happyFail

action_95 (41) = happyShift action_46
action_95 (42) = happyShift action_47
action_95 (44) = happyShift action_24
action_95 (45) = happyShift action_38
action_95 (47) = happyShift action_39
action_95 (62) = happyShift action_25
action_95 (64) = happyShift action_48
action_95 (66) = happyShift action_41
action_95 (67) = happyShift action_42
action_95 (74) = happyShift action_49
action_95 (75) = happyShift action_26
action_95 (76) = happyShift action_27
action_95 (77) = happyShift action_28
action_95 (13) = happyGoto action_36
action_95 (14) = happyGoto action_11
action_95 (16) = happyGoto action_44
action_95 (17) = happyGoto action_12
action_95 (20) = happyGoto action_13
action_95 (21) = happyGoto action_14
action_95 (22) = happyGoto action_15
action_95 (23) = happyGoto action_16
action_95 (24) = happyGoto action_17
action_95 (37) = happyGoto action_127
action_95 _ = happyFail

action_96 (41) = happyShift action_46
action_96 (42) = happyShift action_47
action_96 (44) = happyShift action_24
action_96 (45) = happyShift action_38
action_96 (47) = happyShift action_39
action_96 (62) = happyShift action_25
action_96 (64) = happyShift action_48
action_96 (66) = happyShift action_41
action_96 (67) = happyShift action_42
action_96 (74) = happyShift action_49
action_96 (75) = happyShift action_26
action_96 (76) = happyShift action_27
action_96 (77) = happyShift action_28
action_96 (13) = happyGoto action_36
action_96 (14) = happyGoto action_11
action_96 (16) = happyGoto action_44
action_96 (17) = happyGoto action_12
action_96 (20) = happyGoto action_13
action_96 (21) = happyGoto action_14
action_96 (22) = happyGoto action_15
action_96 (23) = happyGoto action_16
action_96 (24) = happyGoto action_17
action_96 (37) = happyGoto action_126
action_96 _ = happyFail

action_97 (41) = happyShift action_46
action_97 (42) = happyShift action_47
action_97 (44) = happyShift action_24
action_97 (45) = happyShift action_38
action_97 (47) = happyShift action_39
action_97 (62) = happyShift action_25
action_97 (64) = happyShift action_48
action_97 (66) = happyShift action_41
action_97 (67) = happyShift action_42
action_97 (74) = happyShift action_49
action_97 (75) = happyShift action_26
action_97 (76) = happyShift action_27
action_97 (77) = happyShift action_28
action_97 (13) = happyGoto action_36
action_97 (14) = happyGoto action_11
action_97 (16) = happyGoto action_44
action_97 (17) = happyGoto action_12
action_97 (20) = happyGoto action_13
action_97 (21) = happyGoto action_14
action_97 (22) = happyGoto action_15
action_97 (23) = happyGoto action_16
action_97 (24) = happyGoto action_17
action_97 (37) = happyGoto action_125
action_97 _ = happyFail

action_98 (44) = happyShift action_24
action_98 (62) = happyShift action_25
action_98 (75) = happyShift action_26
action_98 (76) = happyShift action_27
action_98 (77) = happyShift action_28
action_98 (78) = happyShift action_29
action_98 (79) = happyShift action_30
action_98 (84) = happyShift action_31
action_98 (87) = happyShift action_32
action_98 (90) = happyShift action_33
action_98 (92) = happyShift action_34
action_98 (94) = happyShift action_35
action_98 (9) = happyGoto action_124
action_98 (10) = happyGoto action_8
action_98 (12) = happyGoto action_9
action_98 (13) = happyGoto action_10
action_98 (14) = happyGoto action_11
action_98 (17) = happyGoto action_12
action_98 (20) = happyGoto action_13
action_98 (21) = happyGoto action_14
action_98 (22) = happyGoto action_15
action_98 (23) = happyGoto action_16
action_98 (24) = happyGoto action_17
action_98 (25) = happyGoto action_18
action_98 (30) = happyGoto action_19
action_98 (31) = happyGoto action_20
action_98 (32) = happyGoto action_21
action_98 (33) = happyGoto action_22
action_98 (36) = happyGoto action_23
action_98 _ = happyFail

action_99 (57) = happyShift action_95
action_99 _ = happyReduce_94

action_100 (46) = happyShift action_78
action_100 (47) = happyShift action_79
action_100 (48) = happyShift action_80
action_100 (49) = happyShift action_81
action_100 (50) = happyShift action_82
action_100 (51) = happyShift action_83
action_100 (52) = happyShift action_84
action_100 (53) = happyShift action_103
action_100 (54) = happyShift action_104
action_100 (55) = happyShift action_105
action_100 (56) = happyShift action_106
action_100 (57) = happyShift action_107
action_100 (58) = happyShift action_108
action_100 (65) = happyShift action_114
action_100 (68) = happyShift action_85
action_100 _ = happyFail

action_101 (57) = happyShift action_95
action_101 (65) = happyShift action_123
action_101 (72) = happyShift action_96
action_101 (73) = happyShift action_97
action_101 _ = happyFail

action_102 (44) = happyShift action_24
action_102 (62) = happyShift action_25
action_102 (75) = happyShift action_26
action_102 (76) = happyShift action_27
action_102 (77) = happyShift action_28
action_102 (78) = happyShift action_29
action_102 (79) = happyShift action_30
action_102 (84) = happyShift action_31
action_102 (87) = happyShift action_32
action_102 (90) = happyShift action_33
action_102 (92) = happyShift action_34
action_102 (94) = happyShift action_35
action_102 (9) = happyGoto action_122
action_102 (10) = happyGoto action_8
action_102 (12) = happyGoto action_9
action_102 (13) = happyGoto action_10
action_102 (14) = happyGoto action_11
action_102 (17) = happyGoto action_12
action_102 (20) = happyGoto action_13
action_102 (21) = happyGoto action_14
action_102 (22) = happyGoto action_15
action_102 (23) = happyGoto action_16
action_102 (24) = happyGoto action_17
action_102 (25) = happyGoto action_18
action_102 (30) = happyGoto action_19
action_102 (31) = happyGoto action_20
action_102 (32) = happyGoto action_21
action_102 (33) = happyGoto action_22
action_102 (36) = happyGoto action_23
action_102 _ = happyFail

action_103 (44) = happyShift action_24
action_103 (45) = happyShift action_38
action_103 (47) = happyShift action_39
action_103 (62) = happyShift action_25
action_103 (64) = happyShift action_40
action_103 (66) = happyShift action_41
action_103 (67) = happyShift action_42
action_103 (75) = happyShift action_26
action_103 (76) = happyShift action_27
action_103 (77) = happyShift action_28
action_103 (13) = happyGoto action_36
action_103 (14) = happyGoto action_11
action_103 (16) = happyGoto action_121
action_103 (17) = happyGoto action_12
action_103 (20) = happyGoto action_13
action_103 (21) = happyGoto action_14
action_103 (22) = happyGoto action_15
action_103 (23) = happyGoto action_16
action_103 (24) = happyGoto action_17
action_103 _ = happyFail

action_104 (44) = happyShift action_24
action_104 (45) = happyShift action_38
action_104 (47) = happyShift action_39
action_104 (62) = happyShift action_25
action_104 (64) = happyShift action_40
action_104 (66) = happyShift action_41
action_104 (67) = happyShift action_42
action_104 (75) = happyShift action_26
action_104 (76) = happyShift action_27
action_104 (77) = happyShift action_28
action_104 (13) = happyGoto action_36
action_104 (14) = happyGoto action_11
action_104 (16) = happyGoto action_120
action_104 (17) = happyGoto action_12
action_104 (20) = happyGoto action_13
action_104 (21) = happyGoto action_14
action_104 (22) = happyGoto action_15
action_104 (23) = happyGoto action_16
action_104 (24) = happyGoto action_17
action_104 _ = happyFail

action_105 (44) = happyShift action_24
action_105 (45) = happyShift action_38
action_105 (47) = happyShift action_39
action_105 (62) = happyShift action_25
action_105 (64) = happyShift action_40
action_105 (66) = happyShift action_41
action_105 (67) = happyShift action_42
action_105 (75) = happyShift action_26
action_105 (76) = happyShift action_27
action_105 (77) = happyShift action_28
action_105 (13) = happyGoto action_36
action_105 (14) = happyGoto action_11
action_105 (16) = happyGoto action_119
action_105 (17) = happyGoto action_12
action_105 (20) = happyGoto action_13
action_105 (21) = happyGoto action_14
action_105 (22) = happyGoto action_15
action_105 (23) = happyGoto action_16
action_105 (24) = happyGoto action_17
action_105 _ = happyFail

action_106 (44) = happyShift action_24
action_106 (45) = happyShift action_38
action_106 (47) = happyShift action_39
action_106 (62) = happyShift action_25
action_106 (64) = happyShift action_40
action_106 (66) = happyShift action_41
action_106 (67) = happyShift action_42
action_106 (75) = happyShift action_26
action_106 (76) = happyShift action_27
action_106 (77) = happyShift action_28
action_106 (13) = happyGoto action_36
action_106 (14) = happyGoto action_11
action_106 (16) = happyGoto action_118
action_106 (17) = happyGoto action_12
action_106 (20) = happyGoto action_13
action_106 (21) = happyGoto action_14
action_106 (22) = happyGoto action_15
action_106 (23) = happyGoto action_16
action_106 (24) = happyGoto action_17
action_106 _ = happyFail

action_107 (44) = happyShift action_24
action_107 (45) = happyShift action_38
action_107 (47) = happyShift action_39
action_107 (62) = happyShift action_25
action_107 (64) = happyShift action_40
action_107 (66) = happyShift action_41
action_107 (67) = happyShift action_42
action_107 (75) = happyShift action_26
action_107 (76) = happyShift action_27
action_107 (77) = happyShift action_28
action_107 (13) = happyGoto action_36
action_107 (14) = happyGoto action_11
action_107 (16) = happyGoto action_117
action_107 (17) = happyGoto action_12
action_107 (20) = happyGoto action_13
action_107 (21) = happyGoto action_14
action_107 (22) = happyGoto action_15
action_107 (23) = happyGoto action_16
action_107 (24) = happyGoto action_17
action_107 _ = happyFail

action_108 (44) = happyShift action_24
action_108 (45) = happyShift action_38
action_108 (47) = happyShift action_39
action_108 (62) = happyShift action_25
action_108 (64) = happyShift action_40
action_108 (66) = happyShift action_41
action_108 (67) = happyShift action_42
action_108 (75) = happyShift action_26
action_108 (76) = happyShift action_27
action_108 (77) = happyShift action_28
action_108 (13) = happyGoto action_36
action_108 (14) = happyGoto action_11
action_108 (16) = happyGoto action_116
action_108 (17) = happyGoto action_12
action_108 (20) = happyGoto action_13
action_108 (21) = happyGoto action_14
action_108 (22) = happyGoto action_15
action_108 (23) = happyGoto action_16
action_108 (24) = happyGoto action_17
action_108 _ = happyFail

action_109 (44) = happyShift action_24
action_109 (45) = happyShift action_38
action_109 (47) = happyShift action_39
action_109 (62) = happyShift action_25
action_109 (64) = happyShift action_40
action_109 (66) = happyShift action_41
action_109 (67) = happyShift action_42
action_109 (75) = happyShift action_26
action_109 (76) = happyShift action_27
action_109 (77) = happyShift action_28
action_109 (13) = happyGoto action_36
action_109 (14) = happyGoto action_11
action_109 (16) = happyGoto action_115
action_109 (17) = happyGoto action_12
action_109 (20) = happyGoto action_13
action_109 (21) = happyGoto action_14
action_109 (22) = happyGoto action_15
action_109 (23) = happyGoto action_16
action_109 (24) = happyGoto action_17
action_109 _ = happyFail

action_110 (51) = happyShift action_83
action_110 _ = happyReduce_48

action_111 (51) = happyShift action_83
action_111 _ = happyReduce_47

action_112 (46) = happyShift action_78
action_112 (47) = happyShift action_79
action_112 (48) = happyShift action_80
action_112 (49) = happyShift action_81
action_112 (50) = happyShift action_82
action_112 (51) = happyShift action_83
action_112 (52) = happyShift action_84
action_112 (65) = happyShift action_114
action_112 (68) = happyShift action_85
action_112 _ = happyFail

action_113 (51) = happyShift action_83
action_113 _ = happyReduce_45

action_114 _ = happyReduce_36

action_115 (46) = happyShift action_78
action_115 (47) = happyShift action_79
action_115 (48) = happyShift action_80
action_115 (49) = happyShift action_81
action_115 (50) = happyShift action_82
action_115 (51) = happyShift action_83
action_115 (52) = happyShift action_84
action_115 (68) = happyShift action_85
action_115 (91) = happyShift action_171
action_115 _ = happyFail

action_116 (46) = happyShift action_78
action_116 (47) = happyShift action_79
action_116 (48) = happyShift action_80
action_116 (49) = happyShift action_81
action_116 (50) = happyShift action_82
action_116 (51) = happyShift action_83
action_116 (52) = happyShift action_84
action_116 (68) = happyShift action_85
action_116 _ = happyReduce_87

action_117 (46) = happyShift action_78
action_117 (47) = happyShift action_79
action_117 (48) = happyShift action_80
action_117 (49) = happyShift action_81
action_117 (50) = happyShift action_82
action_117 (51) = happyShift action_83
action_117 (52) = happyShift action_84
action_117 (68) = happyShift action_85
action_117 _ = happyReduce_86

action_118 (46) = happyShift action_78
action_118 (47) = happyShift action_79
action_118 (48) = happyShift action_80
action_118 (49) = happyShift action_81
action_118 (50) = happyShift action_82
action_118 (51) = happyShift action_83
action_118 (52) = happyShift action_84
action_118 (68) = happyShift action_85
action_118 _ = happyReduce_85

action_119 (46) = happyShift action_78
action_119 (47) = happyShift action_79
action_119 (48) = happyShift action_80
action_119 (49) = happyShift action_81
action_119 (50) = happyShift action_82
action_119 (51) = happyShift action_83
action_119 (52) = happyShift action_84
action_119 (68) = happyShift action_85
action_119 _ = happyReduce_84

action_120 (46) = happyShift action_78
action_120 (47) = happyShift action_79
action_120 (48) = happyShift action_80
action_120 (49) = happyShift action_81
action_120 (50) = happyShift action_82
action_120 (51) = happyShift action_83
action_120 (52) = happyShift action_84
action_120 (68) = happyShift action_85
action_120 _ = happyReduce_83

action_121 (46) = happyShift action_78
action_121 (47) = happyShift action_79
action_121 (48) = happyShift action_80
action_121 (49) = happyShift action_81
action_121 (50) = happyShift action_82
action_121 (51) = happyShift action_83
action_121 (52) = happyShift action_84
action_121 (68) = happyShift action_85
action_121 _ = happyReduce_82

action_122 _ = happyReduce_73

action_123 _ = happyReduce_93

action_124 (88) = happyShift action_170
action_124 (11) = happyGoto action_169
action_124 _ = happyReduce_21

action_125 (57) = happyShift action_95
action_125 (72) = happyShift action_96
action_125 _ = happyReduce_91

action_126 (57) = happyShift action_95
action_126 _ = happyReduce_90

action_127 (57) = happyFail
action_127 _ = happyReduce_92

action_128 (44) = happyShift action_24
action_128 (62) = happyShift action_25
action_128 (75) = happyShift action_26
action_128 (76) = happyShift action_27
action_128 (77) = happyShift action_28
action_128 (78) = happyShift action_29
action_128 (79) = happyShift action_30
action_128 (84) = happyShift action_31
action_128 (87) = happyShift action_32
action_128 (90) = happyShift action_33
action_128 (92) = happyShift action_34
action_128 (94) = happyShift action_35
action_128 (9) = happyGoto action_168
action_128 (10) = happyGoto action_8
action_128 (12) = happyGoto action_9
action_128 (13) = happyGoto action_10
action_128 (14) = happyGoto action_11
action_128 (17) = happyGoto action_12
action_128 (20) = happyGoto action_13
action_128 (21) = happyGoto action_14
action_128 (22) = happyGoto action_15
action_128 (23) = happyGoto action_16
action_128 (24) = happyGoto action_17
action_128 (25) = happyGoto action_18
action_128 (30) = happyGoto action_19
action_128 (31) = happyGoto action_20
action_128 (32) = happyGoto action_21
action_128 (33) = happyGoto action_22
action_128 (36) = happyGoto action_23
action_128 _ = happyFail

action_129 _ = happyReduce_64

action_130 (38) = happyShift action_165
action_130 (39) = happyShift action_166
action_130 (40) = happyShift action_167
action_130 (8) = happyGoto action_164
action_130 _ = happyFail

action_131 (44) = happyShift action_163
action_131 _ = happyFail

action_132 (44) = happyShift action_92
action_132 (28) = happyGoto action_162
action_132 _ = happyFail

action_133 _ = happyReduce_80

action_134 _ = happyReduce_63

action_135 _ = happyReduce_62

action_136 _ = happyReduce_61

action_137 (44) = happyShift action_24
action_137 (45) = happyShift action_38
action_137 (47) = happyShift action_39
action_137 (62) = happyShift action_25
action_137 (64) = happyShift action_40
action_137 (66) = happyShift action_41
action_137 (67) = happyShift action_42
action_137 (75) = happyShift action_26
action_137 (76) = happyShift action_27
action_137 (77) = happyShift action_28
action_137 (13) = happyGoto action_36
action_137 (14) = happyGoto action_11
action_137 (16) = happyGoto action_161
action_137 (17) = happyGoto action_12
action_137 (20) = happyGoto action_13
action_137 (21) = happyGoto action_14
action_137 (22) = happyGoto action_15
action_137 (23) = happyGoto action_16
action_137 (24) = happyGoto action_17
action_137 _ = happyFail

action_138 (51) = happyShift action_83
action_138 (68) = happyShift action_85
action_138 _ = happyReduce_43

action_139 _ = happyReduce_42

action_140 (51) = happyShift action_83
action_140 (68) = happyShift action_85
action_140 _ = happyReduce_41

action_141 (51) = happyShift action_83
action_141 (68) = happyShift action_85
action_141 _ = happyReduce_40

action_142 (51) = happyShift action_83
action_142 (68) = happyShift action_85
action_142 _ = happyReduce_39

action_143 (48) = happyShift action_80
action_143 (49) = happyShift action_81
action_143 (50) = happyShift action_82
action_143 (51) = happyShift action_83
action_143 (52) = happyShift action_84
action_143 (68) = happyShift action_85
action_143 _ = happyReduce_38

action_144 (48) = happyShift action_80
action_144 (49) = happyShift action_81
action_144 (50) = happyShift action_82
action_144 (51) = happyShift action_83
action_144 (52) = happyShift action_84
action_144 (68) = happyShift action_85
action_144 _ = happyReduce_37

action_145 (70) = happyShift action_75
action_145 _ = happyReduce_52

action_146 (46) = happyShift action_78
action_146 (47) = happyShift action_79
action_146 (48) = happyShift action_80
action_146 (49) = happyShift action_81
action_146 (50) = happyShift action_82
action_146 (51) = happyShift action_83
action_146 (52) = happyShift action_84
action_146 (68) = happyShift action_85
action_146 _ = happyReduce_54

action_147 _ = happyReduce_55

action_148 _ = happyReduce_25

action_149 (44) = happyShift action_24
action_149 (45) = happyShift action_38
action_149 (47) = happyShift action_39
action_149 (62) = happyShift action_25
action_149 (64) = happyShift action_40
action_149 (66) = happyShift action_41
action_149 (67) = happyShift action_42
action_149 (75) = happyShift action_26
action_149 (76) = happyShift action_27
action_149 (77) = happyShift action_28
action_149 (13) = happyGoto action_36
action_149 (14) = happyGoto action_11
action_149 (16) = happyGoto action_160
action_149 (17) = happyGoto action_12
action_149 (20) = happyGoto action_13
action_149 (21) = happyGoto action_14
action_149 (22) = happyGoto action_15
action_149 (23) = happyGoto action_16
action_149 (24) = happyGoto action_17
action_149 _ = happyFail

action_150 (44) = happyShift action_24
action_150 (45) = happyShift action_38
action_150 (47) = happyShift action_39
action_150 (62) = happyShift action_25
action_150 (64) = happyShift action_40
action_150 (66) = happyShift action_41
action_150 (67) = happyShift action_42
action_150 (75) = happyShift action_26
action_150 (76) = happyShift action_27
action_150 (77) = happyShift action_28
action_150 (13) = happyGoto action_36
action_150 (14) = happyGoto action_11
action_150 (15) = happyGoto action_158
action_150 (16) = happyGoto action_159
action_150 (17) = happyGoto action_12
action_150 (20) = happyGoto action_13
action_150 (21) = happyGoto action_14
action_150 (22) = happyGoto action_15
action_150 (23) = happyGoto action_16
action_150 (24) = happyGoto action_17
action_150 _ = happyReduce_33

action_151 (65) = happyShift action_156
action_151 (70) = happyShift action_157
action_151 _ = happyFail

action_152 (69) = happyShift action_155
action_152 _ = happyFail

action_153 (81) = happyShift action_154
action_153 _ = happyFail

action_154 (82) = happyShift action_182
action_154 _ = happyFail

action_155 (38) = happyShift action_165
action_155 (39) = happyShift action_166
action_155 (40) = happyShift action_167
action_155 (8) = happyGoto action_181
action_155 _ = happyFail

action_156 (81) = happyShift action_180
action_156 _ = happyFail

action_157 (44) = happyShift action_179
action_157 _ = happyFail

action_158 (61) = happyShift action_177
action_158 (70) = happyShift action_178
action_158 _ = happyFail

action_159 (46) = happyShift action_78
action_159 (47) = happyShift action_79
action_159 (48) = happyShift action_80
action_159 (49) = happyShift action_81
action_159 (50) = happyShift action_82
action_159 (51) = happyShift action_83
action_159 (52) = happyShift action_84
action_159 (68) = happyShift action_85
action_159 _ = happyReduce_34

action_160 (46) = happyShift action_78
action_160 (47) = happyShift action_79
action_160 (48) = happyShift action_80
action_160 (49) = happyShift action_81
action_160 (50) = happyShift action_82
action_160 (51) = happyShift action_83
action_160 (52) = happyShift action_84
action_160 (61) = happyShift action_176
action_160 (68) = happyShift action_85
action_160 _ = happyFail

action_161 (46) = happyShift action_78
action_161 (47) = happyShift action_79
action_161 (48) = happyShift action_80
action_161 (49) = happyShift action_81
action_161 (50) = happyShift action_82
action_161 (51) = happyShift action_83
action_161 (52) = happyShift action_84
action_161 (65) = happyShift action_175
action_161 (68) = happyShift action_85
action_161 _ = happyFail

action_162 (69) = happyShift action_174
action_162 (70) = happyShift action_131
action_162 _ = happyFail

action_163 _ = happyReduce_70

action_164 _ = happyReduce_67

action_165 _ = happyReduce_9

action_166 _ = happyReduce_10

action_167 _ = happyReduce_11

action_168 _ = happyReduce_72

action_169 _ = happyReduce_20

action_170 (44) = happyShift action_24
action_170 (62) = happyShift action_25
action_170 (75) = happyShift action_26
action_170 (76) = happyShift action_27
action_170 (77) = happyShift action_28
action_170 (78) = happyShift action_29
action_170 (79) = happyShift action_30
action_170 (84) = happyShift action_31
action_170 (87) = happyShift action_32
action_170 (90) = happyShift action_33
action_170 (92) = happyShift action_34
action_170 (94) = happyShift action_35
action_170 (9) = happyGoto action_173
action_170 (10) = happyGoto action_8
action_170 (12) = happyGoto action_9
action_170 (13) = happyGoto action_10
action_170 (14) = happyGoto action_11
action_170 (17) = happyGoto action_12
action_170 (20) = happyGoto action_13
action_170 (21) = happyGoto action_14
action_170 (22) = happyGoto action_15
action_170 (23) = happyGoto action_16
action_170 (24) = happyGoto action_17
action_170 (25) = happyGoto action_18
action_170 (30) = happyGoto action_19
action_170 (31) = happyGoto action_20
action_170 (32) = happyGoto action_21
action_170 (33) = happyGoto action_22
action_170 (36) = happyGoto action_23
action_170 _ = happyFail

action_171 (44) = happyShift action_24
action_171 (62) = happyShift action_25
action_171 (75) = happyShift action_26
action_171 (76) = happyShift action_27
action_171 (77) = happyShift action_28
action_171 (78) = happyShift action_29
action_171 (79) = happyShift action_30
action_171 (84) = happyShift action_31
action_171 (87) = happyShift action_32
action_171 (90) = happyShift action_33
action_171 (92) = happyShift action_34
action_171 (94) = happyShift action_35
action_171 (9) = happyGoto action_172
action_171 (10) = happyGoto action_8
action_171 (12) = happyGoto action_9
action_171 (13) = happyGoto action_10
action_171 (14) = happyGoto action_11
action_171 (17) = happyGoto action_12
action_171 (20) = happyGoto action_13
action_171 (21) = happyGoto action_14
action_171 (22) = happyGoto action_15
action_171 (23) = happyGoto action_16
action_171 (24) = happyGoto action_17
action_171 (25) = happyGoto action_18
action_171 (30) = happyGoto action_19
action_171 (31) = happyGoto action_20
action_171 (32) = happyGoto action_21
action_171 (33) = happyGoto action_22
action_171 (36) = happyGoto action_23
action_171 _ = happyFail

action_172 _ = happyReduce_74

action_173 _ = happyReduce_22

action_174 (38) = happyShift action_165
action_174 (39) = happyShift action_166
action_174 (40) = happyShift action_167
action_174 (8) = happyGoto action_187
action_174 _ = happyFail

action_175 _ = happyReduce_60

action_176 _ = happyReduce_26

action_177 _ = happyReduce_27

action_178 (44) = happyShift action_24
action_178 (45) = happyShift action_38
action_178 (47) = happyShift action_39
action_178 (62) = happyShift action_25
action_178 (64) = happyShift action_40
action_178 (66) = happyShift action_41
action_178 (67) = happyShift action_42
action_178 (75) = happyShift action_26
action_178 (76) = happyShift action_27
action_178 (77) = happyShift action_28
action_178 (13) = happyGoto action_36
action_178 (14) = happyGoto action_11
action_178 (15) = happyGoto action_186
action_178 (16) = happyGoto action_159
action_178 (17) = happyGoto action_12
action_178 (20) = happyGoto action_13
action_178 (21) = happyGoto action_14
action_178 (22) = happyGoto action_15
action_178 (23) = happyGoto action_16
action_178 (24) = happyGoto action_17
action_178 _ = happyReduce_33

action_179 (69) = happyShift action_185
action_179 _ = happyFail

action_180 (82) = happyShift action_184
action_180 _ = happyFail

action_181 _ = happyReduce_7

action_182 (38) = happyShift action_165
action_182 (39) = happyShift action_166
action_182 (40) = happyShift action_167
action_182 (8) = happyGoto action_183
action_182 _ = happyFail

action_183 (83) = happyShift action_191
action_183 _ = happyFail

action_184 (38) = happyShift action_165
action_184 (39) = happyShift action_166
action_184 (40) = happyShift action_167
action_184 (8) = happyGoto action_190
action_184 _ = happyFail

action_185 (38) = happyShift action_165
action_185 (39) = happyShift action_166
action_185 (40) = happyShift action_167
action_185 (8) = happyGoto action_189
action_185 _ = happyFail

action_186 (69) = happyShift action_188
action_186 _ = happyFail

action_187 _ = happyReduce_68

action_188 (44) = happyShift action_24
action_188 (45) = happyShift action_38
action_188 (47) = happyShift action_39
action_188 (62) = happyShift action_25
action_188 (64) = happyShift action_40
action_188 (66) = happyShift action_41
action_188 (67) = happyShift action_42
action_188 (75) = happyShift action_26
action_188 (76) = happyShift action_27
action_188 (77) = happyShift action_28
action_188 (13) = happyGoto action_36
action_188 (14) = happyGoto action_11
action_188 (15) = happyGoto action_194
action_188 (16) = happyGoto action_159
action_188 (17) = happyGoto action_12
action_188 (20) = happyGoto action_13
action_188 (21) = happyGoto action_14
action_188 (22) = happyGoto action_15
action_188 (23) = happyGoto action_16
action_188 (24) = happyGoto action_17
action_188 _ = happyReduce_33

action_189 _ = happyReduce_8

action_190 (83) = happyShift action_193
action_190 _ = happyFail

action_191 (44) = happyShift action_24
action_191 (62) = happyShift action_25
action_191 (75) = happyShift action_26
action_191 (76) = happyShift action_27
action_191 (77) = happyShift action_28
action_191 (78) = happyShift action_29
action_191 (79) = happyShift action_30
action_191 (84) = happyShift action_31
action_191 (87) = happyShift action_32
action_191 (90) = happyShift action_33
action_191 (92) = happyShift action_34
action_191 (94) = happyShift action_35
action_191 (9) = happyGoto action_192
action_191 (10) = happyGoto action_8
action_191 (12) = happyGoto action_9
action_191 (13) = happyGoto action_10
action_191 (14) = happyGoto action_11
action_191 (17) = happyGoto action_12
action_191 (20) = happyGoto action_13
action_191 (21) = happyGoto action_14
action_191 (22) = happyGoto action_15
action_191 (23) = happyGoto action_16
action_191 (24) = happyGoto action_17
action_191 (25) = happyGoto action_18
action_191 (30) = happyGoto action_19
action_191 (31) = happyGoto action_20
action_191 (32) = happyGoto action_21
action_191 (33) = happyGoto action_22
action_191 (36) = happyGoto action_23
action_191 _ = happyFail

action_192 _ = happyReduce_6

action_193 (44) = happyShift action_24
action_193 (62) = happyShift action_25
action_193 (75) = happyShift action_26
action_193 (76) = happyShift action_27
action_193 (77) = happyShift action_28
action_193 (78) = happyShift action_29
action_193 (79) = happyShift action_30
action_193 (84) = happyShift action_31
action_193 (87) = happyShift action_32
action_193 (90) = happyShift action_33
action_193 (92) = happyShift action_34
action_193 (94) = happyShift action_35
action_193 (9) = happyGoto action_196
action_193 (10) = happyGoto action_8
action_193 (12) = happyGoto action_9
action_193 (13) = happyGoto action_10
action_193 (14) = happyGoto action_11
action_193 (17) = happyGoto action_12
action_193 (20) = happyGoto action_13
action_193 (21) = happyGoto action_14
action_193 (22) = happyGoto action_15
action_193 (23) = happyGoto action_16
action_193 (24) = happyGoto action_17
action_193 (25) = happyGoto action_18
action_193 (30) = happyGoto action_19
action_193 (31) = happyGoto action_20
action_193 (32) = happyGoto action_21
action_193 (33) = happyGoto action_22
action_193 (36) = happyGoto action_23
action_193 _ = happyFail

action_194 (61) = happyShift action_195
action_194 _ = happyFail

action_195 _ = happyReduce_28

action_196 _ = happyReduce_5

happyReduce_1 = happySpecReduce_2  4 happyReduction_1
happyReduction_1 (HappyAbsSyn9  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (Prog happy_var_1 happy_var_2
	)
happyReduction_1 _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_0  5 happyReduction_2
happyReduction_2  =  HappyAbsSyn5
		 ([]
	)

happyReduce_3 = happySpecReduce_1  5 happyReduction_3
happyReduction_3 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 ([happy_var_1]
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_2  5 happyReduction_4
happyReduction_4 (HappyAbsSyn6  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1 ++ [happy_var_2]
	)
happyReduction_4 _ _  = notHappyAtAll 

happyReduce_5 = happyReduce 11 6 happyReduction_5
happyReduction_5 ((HappyAbsSyn9  happy_var_11) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_9) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TkId _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (FuncDec (retVal happy_var_3) happy_var_5 happy_var_9 happy_var_11
	) `HappyStk` happyRest

happyReduce_6 = happyReduce 10 6 happyReduction_6
happyReduction_6 ((HappyAbsSyn9  happy_var_10) `HappyStk`
	(HappyTerminal happy_var_9) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TkId _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (happy_var_3 [] happy_var_9 happy_var_10
	) `HappyStk` happyRest

happyReduce_7 = happySpecReduce_3  7 happyReduction_7
happyReduction_7 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TkId _ happy_var_1))
	 =  HappyAbsSyn7
		 ([Var (retVal happy_var_1) happy_var_3]
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happyReduce 5 7 happyReduction_8
happyReduction_8 ((HappyAbsSyn8  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TkId _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (happy_var_1 ++ [Var (retVal happy_var_3) happy_var_5]
	) `HappyStk` happyRest

happyReduce_9 = happySpecReduce_1  8 happyReduction_9
happyReduction_9 _
	 =  HappyAbsSyn8
		 (TNum
	)

happyReduce_10 = happySpecReduce_1  8 happyReduction_10
happyReduction_10 _
	 =  HappyAbsSyn8
		 (TVec
	)

happyReduce_11 = happySpecReduce_1  8 happyReduction_11
happyReduction_11 _
	 =  HappyAbsSyn8
		 (TMat
	)

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
happyReduction_20 ((HappyAbsSyn11  happy_var_5) `HappyStk`
	(HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn37  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (Cond happy_var_2 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_21 = happySpecReduce_0  11 happyReduction_21
happyReduction_21  =  HappyAbsSyn11
		 (Nothing
	)

happyReduce_22 = happySpecReduce_2  11 happyReduction_22
happyReduction_22 (HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (Just (Else happy_var_2)
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  12 happyReduction_23
happyReduction_23 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (Asign happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  13 happyReduction_24
happyReduction_24 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 (IdMat happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happyReduce 4 13 happyReduction_25
happyReduction_25 (_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (AccessElemV happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_26 = happyReduce 6 13 happyReduction_26
happyReduction_26 (_ `HappyStk`
	(HappyAbsSyn16  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (AccessElemM happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_27 = happyReduce 6 13 happyReduction_27
happyReduction_27 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (ParAccessV happy_var_1 (Just happy_var_3) (Just happy_var_5)
	) `HappyStk` happyRest

happyReduce_28 = happyReduce 10 13 happyReduction_28
happyReduction_28 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_9) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (ParAccessM  happy_var_1 (Just happy_var_3) (Just happy_var_5) (Just happy_var_7) (Just happy_var_9)
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
		 (retVal happy_var_1
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_1  14 happyReduction_31
happyReduction_31 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1
	)
happyReduction_31 _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  14 happyReduction_32
happyReduction_32 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_0  15 happyReduction_33
happyReduction_33  =  HappyAbsSyn15
		 (Nothing
	)

happyReduce_34 = happySpecReduce_1  15 happyReduction_34
happyReduction_34 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  16 happyReduction_35
happyReduction_35 (HappyTerminal (TkNum _ happy_var_1))
	 =  HappyAbsSyn16
		 (Num (retVal happy_var_1)
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  16 happyReduction_36
happyReduction_36 _
	(HappyAbsSyn16  happy_var_2)
	_
	 =  HappyAbsSyn16
		 (RB happy_var_2
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  16 happyReduction_37
happyReduction_37 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  16 happyReduction_38
happyReduction_38 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  16 happyReduction_39
happyReduction_39 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Times happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  16 happyReduction_40
happyReduction_40 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Div happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  16 happyReduction_41
happyReduction_41 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Mod happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  16 happyReduction_42
happyReduction_42 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Expo happy_var_1 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  16 happyReduction_43
happyReduction_43 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Dot happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  16 happyReduction_44
happyReduction_44 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_2  16 happyReduction_45
happyReduction_45 (HappyAbsSyn16  happy_var_2)
	_
	 =  HappyAbsSyn16
		 (MinusU happy_var_2
	)
happyReduction_45 _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_2  16 happyReduction_46
happyReduction_46 _
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Caret happy_var_1
	)
happyReduction_46 _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_2  16 happyReduction_47
happyReduction_47 (HappyAbsSyn16  happy_var_2)
	_
	 =  HappyAbsSyn16
		 (DS happy_var_2
	)
happyReduction_47 _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_2  16 happyReduction_48
happyReduction_48 (HappyAbsSyn16  happy_var_2)
	_
	 =  HappyAbsSyn16
		 (At happy_var_2
	)
happyReduction_48 _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  17 happyReduction_49
happyReduction_49 _
	_
	_
	 =  HappyAbsSyn17
		 (
	)

happyReduce_50 = happySpecReduce_2  17 happyReduction_50
happyReduction_50 _
	_
	 =  HappyAbsSyn17
		 ([]
	)

happyReduce_51 = happySpecReduce_1  18 happyReduction_51
happyReduction_51 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn18
		 (happy_var_1
	)
happyReduction_51 _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_3  18 happyReduction_52
happyReduction_52 (HappyAbsSyn19  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_52 _ _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_1  19 happyReduction_53
happyReduction_53 _
	 =  HappyAbsSyn19
		 ("$1"
	)

happyReduce_54 = happySpecReduce_3  19 happyReduction_54
happyReduction_54 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_54 _ _ _  = notHappyAtAll 

happyReduce_55 = happyReduce 4 20 happyReduction_55
happyReduction_55 (_ `HappyStk`
	(HappyAbsSyn19  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TkId _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn20
		 (Func (retVal happy_var_1) happy_var_3
	) `HappyStk` happyRest

happyReduce_56 = happySpecReduce_3  20 happyReduction_56
happyReduction_56 _
	_
	(HappyTerminal (TkId _ happy_var_1))
	 =  HappyAbsSyn20
		 (Func (retVal happy_var_1) []
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
	(HappyAbsSyn16  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn22
		 (Func "zeroes" [happy_var_3,happy_var_5]
	) `HappyStk` happyRest

happyReduce_61 = happyReduce 4 22 happyReduction_61
happyReduction_61 (_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn22
		 (Func "zeroes" [happy_var_3]
	) `HappyStk` happyRest

happyReduce_62 = happyReduce 4 23 happyReduction_62
happyReduction_62 (_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn23
		 (Func "range" [happy_var_3]
	) `HappyStk` happyRest

happyReduce_63 = happyReduce 4 24 happyReduction_63
happyReduction_63 (_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn24
		 (Func "eye" [happy_var_3]
	) `HappyStk` happyRest

happyReduce_64 = happyReduce 4 25 happyReduction_64
happyReduction_64 (_ `HappyStk`
	(HappyAbsSyn29  happy_var_3) `HappyStk`
	(HappyAbsSyn26  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn25
		 (InsBlock happy_var_2 happy_var_3
	) `HappyStk` happyRest

happyReduce_65 = happySpecReduce_2  26 happyReduction_65
happyReduction_65 (HappyAbsSyn27  happy_var_2)
	_
	 =  HappyAbsSyn26
		 (Vars happy_var_2
	)
happyReduction_65 _ _  = notHappyAtAll 

happyReduce_66 = happySpecReduce_0  26 happyReduction_66
happyReduction_66  =  HappyAbsSyn26
		 (
	)

happyReduce_67 = happySpecReduce_3  27 happyReduction_67
happyReduction_67 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn27
		 ([(happy_var_1,happy_var_3)]
	)
happyReduction_67 _ _ _  = notHappyAtAll 

happyReduce_68 = happyReduce 5 27 happyReduction_68
happyReduction_68 ((HappyAbsSyn8  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn28  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn27  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn27
		 (happy_var_1 ++ [(happy_var_3 , happy_var_5)]
	) `HappyStk` happyRest

happyReduce_69 = happySpecReduce_1  28 happyReduction_69
happyReduction_69 (HappyTerminal (TkId _ happy_var_1))
	 =  HappyAbsSyn28
		 (retVal happy_var_1
	)
happyReduction_69 _  = notHappyAtAll 

happyReduce_70 = happySpecReduce_3  28 happyReduction_70
happyReduction_70 (HappyTerminal (TkId _ happy_var_3))
	_
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (happy_var_1 ++ [retVal happy_var_3]
	)
happyReduction_70 _ _ _  = notHappyAtAll 

happyReduce_71 = happySpecReduce_1  29 happyReduction_71
happyReduction_71 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn29
		 (happy_var_1
	)
happyReduction_71 _  = notHappyAtAll 

happyReduce_72 = happySpecReduce_3  29 happyReduction_72
happyReduction_72 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn29
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_72 _ _ _  = notHappyAtAll 

happyReduce_73 = happyReduce 4 30 happyReduction_73
happyReduction_73 (_ `HappyStk`
	(HappyTerminal happy_var_3) `HappyStk`
	(HappyAbsSyn37  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn30
		 (While happy_var_2 happy_var_3
	) `HappyStk` happyRest

happyReduce_74 = happyReduce 6 31 happyReduction_74
happyReduction_74 ((HappyAbsSyn9  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TkId _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn31
		 (Iter (retVal happy_var_2) happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_75 = happySpecReduce_2  32 happyReduction_75
happyReduction_75 (HappyAbsSyn16  happy_var_2)
	_
	 =  HappyAbsSyn32
		 (Read happy_var_2
	)
happyReduction_75 _ _  = notHappyAtAll 

happyReduce_76 = happySpecReduce_2  33 happyReduction_76
happyReduction_76 (HappyAbsSyn35  happy_var_2)
	_
	 =  HappyAbsSyn33
		 (Write happy_var_2
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
		 (Chars (retVal happy_var_1)
	)
happyReduction_78 _  = notHappyAtAll 

happyReduce_79 = happySpecReduce_1  35 happyReduction_79
happyReduction_79 (HappyAbsSyn34  happy_var_1)
	 =  HappyAbsSyn35
		 ([happy_var_1]
	)
happyReduction_79 _  = notHappyAtAll 

happyReduce_80 = happySpecReduce_3  35 happyReduction_80
happyReduction_80 (HappyAbsSyn34  happy_var_3)
	_
	(HappyAbsSyn35  happy_var_1)
	 =  HappyAbsSyn35
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_80 _ _ _  = notHappyAtAll 

happyReduce_81 = happySpecReduce_2  36 happyReduction_81
happyReduction_81 (HappyAbsSyn16  happy_var_2)
	_
	 =  HappyAbsSyn36
		 (Return happy_var_2
	)
happyReduction_81 _ _  = notHappyAtAll 

happyReduce_82 = happySpecReduce_3  37 happyReduction_82
happyReduction_82 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn37
		 (Less happy_var_1 happy_var_3
	)
happyReduction_82 _ _ _  = notHappyAtAll 

happyReduce_83 = happySpecReduce_3  37 happyReduction_83
happyReduction_83 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn37
		 (Great happy_var_1 happy_var_3
	)
happyReduction_83 _ _ _  = notHappyAtAll 

happyReduce_84 = happySpecReduce_3  37 happyReduction_84
happyReduction_84 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn37
		 (LET happy_var_1 happy_var_3
	)
happyReduction_84 _ _ _  = notHappyAtAll 

happyReduce_85 = happySpecReduce_3  37 happyReduction_85
happyReduction_85 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn37
		 (GET happy_var_1 happy_var_3
	)
happyReduction_85 _ _ _  = notHappyAtAll 

happyReduce_86 = happySpecReduce_3  37 happyReduction_86
happyReduction_86 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn37
		 (Equal happy_var_1 happy_var_3
	)
happyReduction_86 _ _ _  = notHappyAtAll 

happyReduce_87 = happySpecReduce_3  37 happyReduction_87
happyReduction_87 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn37
		 (NEqual happy_var_1 happy_var_3
	)
happyReduction_87 _ _ _  = notHappyAtAll 

happyReduce_88 = happySpecReduce_1  37 happyReduction_88
happyReduction_88 _
	 =  HappyAbsSyn37
		 (True
	)

happyReduce_89 = happySpecReduce_1  37 happyReduction_89
happyReduction_89 _
	 =  HappyAbsSyn37
		 (False
	)

happyReduce_90 = happySpecReduce_3  37 happyReduction_90
happyReduction_90 (HappyAbsSyn37  happy_var_3)
	_
	(HappyAbsSyn37  happy_var_1)
	 =  HappyAbsSyn37
		 (And happy_var_1 happy_var_3
	)
happyReduction_90 _ _ _  = notHappyAtAll 

happyReduce_91 = happySpecReduce_3  37 happyReduction_91
happyReduction_91 (HappyAbsSyn37  happy_var_3)
	_
	(HappyAbsSyn37  happy_var_1)
	 =  HappyAbsSyn37
		 (Or happy_var_1 happy_var_3
	)
happyReduction_91 _ _ _  = notHappyAtAll 

happyReduce_92 = happySpecReduce_3  37 happyReduction_92
happyReduction_92 (HappyAbsSyn37  happy_var_3)
	_
	(HappyAbsSyn37  happy_var_1)
	 =  HappyAbsSyn37
		 (BoolEqual happy_var_1 happy_var_3
	)
happyReduction_92 _ _ _  = notHappyAtAll 

happyReduce_93 = happySpecReduce_3  37 happyReduction_93
happyReduction_93 _
	_
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn37
		 (BoolRB happy_var_1
	)
happyReduction_93 _ _ _  = notHappyAtAll 

happyReduce_94 = happySpecReduce_2  37 happyReduction_94
happyReduction_94 _
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn37
		 (Not happy_var_1
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


{-
    Funcion Recibe Token y Devuelve el Valor contenido en este,

-}

retVal :: Token -> a
retVal (TkId _ s) = s
retVal (TkNum _ s) = s
retVal (TkString _ s) = s

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
