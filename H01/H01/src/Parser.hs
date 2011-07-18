{-|
Asunto: C&#243;digo fuente del Proyecto &#250;nico (Entrega 2)
Proyecto: Analizador Lexicogr&#225;fico en Haskell
Materia: Taller de Traductores (CI-3725)
Trimestre: Abril-Julio 2011
Profesor: Carlos Colmenares

Grupo: H01

Parser del lenguaje de Vectorinox, define la asociatividad y precedencia de
todos los operadores presentados del lenguaje, adem&#225;s de esto, se basa
en el archivo AST y Tokens para poder trabajar con el lenguaje, ya que no
puede verificar por si solo, la correctitud gramatical del lenguaje, as&#237;
que su parametro de entrada es una lista de Tokens ya verificados
lexicogr&#225;ficamente a los cuales solo hay que verificarles la correctitud
sint&#225;ctica de los mismos. Adem&#225;s de verificar el orden de las mismas

 -}

module Parser (
       parser
) where

import SymTable
import AST
import Tokens

-- parser produced by Happy Version 1.17

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37
	= HappyTerminal Token
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

action_0 (4) = happyGoto action_3
action_0 (5) = happyGoto action_2
action_0 _ = happyReduce_2

action_1 (5) = happyGoto action_2
action_1 _ = happyFail

action_2 (44) = happyShift action_22
action_2 (62) = happyShift action_23
action_2 (75) = happyShift action_24
action_2 (76) = happyShift action_25
action_2 (77) = happyShift action_26
action_2 (78) = happyShift action_27
action_2 (79) = happyShift action_28
action_2 (80) = happyShift action_29
action_2 (84) = happyShift action_30
action_2 (87) = happyShift action_31
action_2 (90) = happyShift action_32
action_2 (92) = happyShift action_33
action_2 (94) = happyShift action_34
action_2 (7) = happyGoto action_4
action_2 (8) = happyGoto action_5
action_2 (9) = happyGoto action_6
action_2 (10) = happyGoto action_7
action_2 (11) = happyGoto action_8
action_2 (13) = happyGoto action_9
action_2 (14) = happyGoto action_10
action_2 (15) = happyGoto action_11
action_2 (16) = happyGoto action_12
action_2 (17) = happyGoto action_13
action_2 (19) = happyGoto action_14
action_2 (22) = happyGoto action_15
action_2 (28) = happyGoto action_16
action_2 (31) = happyGoto action_17
action_2 (32) = happyGoto action_18
action_2 (35) = happyGoto action_19
action_2 (36) = happyGoto action_20
action_2 (37) = happyGoto action_21
action_2 _ = happyFail

action_3 (95) = happyAccept
action_3 _ = happyFail

action_4 _ = happyReduce_1

action_5 _ = happyReduce_7

action_6 (59) = happyShift action_71
action_6 _ = happyFail

action_7 _ = happyReduce_17

action_8 (60) = happyShift action_70
action_8 _ = happyFail

action_9 _ = happyReduce_23

action_10 _ = happyReduce_24

action_11 _ = happyReduce_30

action_12 _ = happyReduce_31

action_13 _ = happyReduce_32

action_14 _ = happyReduce_22

action_15 _ = happyReduce_8

action_16 _ = happyReduce_13

action_17 _ = happyReduce_10

action_18 _ = happyReduce_9

action_19 _ = happyReduce_11

action_20 _ = happyReduce_12

action_21 _ = happyReduce_14

action_22 (60) = happyReduce_25
action_22 (64) = happyShift action_69
action_22 _ = happyReduce_16

action_23 (44) = happyShift action_40
action_23 (45) = happyShift action_41
action_23 (47) = happyShift action_42
action_23 (62) = happyShift action_23
action_23 (63) = happyShift action_68
action_23 (64) = happyShift action_43
action_23 (66) = happyShift action_44
action_23 (67) = happyShift action_45
action_23 (75) = happyShift action_24
action_23 (76) = happyShift action_25
action_23 (77) = happyShift action_26
action_23 (10) = happyGoto action_35
action_23 (11) = happyGoto action_8
action_23 (13) = happyGoto action_36
action_23 (14) = happyGoto action_37
action_23 (15) = happyGoto action_11
action_23 (16) = happyGoto action_12
action_23 (17) = happyGoto action_13
action_23 (18) = happyGoto action_65
action_23 (19) = happyGoto action_39
action_23 (20) = happyGoto action_66
action_23 (21) = happyGoto action_67
action_23 _ = happyFail

action_24 (64) = happyShift action_64
action_24 _ = happyFail

action_25 (64) = happyShift action_63
action_25 _ = happyFail

action_26 (64) = happyShift action_62
action_26 _ = happyFail

action_27 (44) = happyShift action_40
action_27 (45) = happyShift action_41
action_27 (47) = happyShift action_42
action_27 (62) = happyShift action_23
action_27 (64) = happyShift action_43
action_27 (66) = happyShift action_44
action_27 (67) = happyShift action_45
action_27 (75) = happyShift action_24
action_27 (76) = happyShift action_25
action_27 (77) = happyShift action_26
action_27 (10) = happyGoto action_35
action_27 (11) = happyGoto action_8
action_27 (13) = happyGoto action_36
action_27 (14) = happyGoto action_37
action_27 (15) = happyGoto action_11
action_27 (16) = happyGoto action_12
action_27 (17) = happyGoto action_13
action_27 (18) = happyGoto action_61
action_27 (19) = happyGoto action_39
action_27 _ = happyFail

action_28 (43) = happyShift action_60
action_28 (44) = happyShift action_40
action_28 (45) = happyShift action_41
action_28 (47) = happyShift action_42
action_28 (62) = happyShift action_23
action_28 (64) = happyShift action_43
action_28 (66) = happyShift action_44
action_28 (67) = happyShift action_45
action_28 (75) = happyShift action_24
action_28 (76) = happyShift action_25
action_28 (77) = happyShift action_26
action_28 (10) = happyGoto action_35
action_28 (11) = happyGoto action_8
action_28 (13) = happyGoto action_36
action_28 (14) = happyGoto action_37
action_28 (15) = happyGoto action_11
action_28 (16) = happyGoto action_12
action_28 (17) = happyGoto action_13
action_28 (18) = happyGoto action_57
action_28 (19) = happyGoto action_39
action_28 (29) = happyGoto action_58
action_28 (30) = happyGoto action_59
action_28 _ = happyFail

action_29 (44) = happyShift action_56
action_29 _ = happyFail

action_30 (86) = happyShift action_55
action_30 (23) = happyGoto action_54
action_30 _ = happyReduce_63

action_31 (41) = happyShift action_49
action_31 (42) = happyShift action_50
action_31 (44) = happyShift action_40
action_31 (45) = happyShift action_41
action_31 (47) = happyShift action_42
action_31 (62) = happyShift action_23
action_31 (64) = happyShift action_51
action_31 (66) = happyShift action_44
action_31 (67) = happyShift action_45
action_31 (74) = happyShift action_52
action_31 (75) = happyShift action_24
action_31 (76) = happyShift action_25
action_31 (77) = happyShift action_26
action_31 (10) = happyGoto action_35
action_31 (11) = happyGoto action_8
action_31 (13) = happyGoto action_36
action_31 (14) = happyGoto action_37
action_31 (15) = happyGoto action_11
action_31 (16) = happyGoto action_12
action_31 (17) = happyGoto action_13
action_31 (18) = happyGoto action_47
action_31 (19) = happyGoto action_39
action_31 (34) = happyGoto action_53
action_31 _ = happyFail

action_32 (41) = happyShift action_49
action_32 (42) = happyShift action_50
action_32 (44) = happyShift action_40
action_32 (45) = happyShift action_41
action_32 (47) = happyShift action_42
action_32 (62) = happyShift action_23
action_32 (64) = happyShift action_51
action_32 (66) = happyShift action_44
action_32 (67) = happyShift action_45
action_32 (74) = happyShift action_52
action_32 (75) = happyShift action_24
action_32 (76) = happyShift action_25
action_32 (77) = happyShift action_26
action_32 (10) = happyGoto action_35
action_32 (11) = happyGoto action_8
action_32 (13) = happyGoto action_36
action_32 (14) = happyGoto action_37
action_32 (15) = happyGoto action_11
action_32 (16) = happyGoto action_12
action_32 (17) = happyGoto action_13
action_32 (18) = happyGoto action_47
action_32 (19) = happyGoto action_39
action_32 (34) = happyGoto action_48
action_32 _ = happyFail

action_33 (44) = happyShift action_46
action_33 _ = happyFail

action_34 (44) = happyShift action_40
action_34 (45) = happyShift action_41
action_34 (47) = happyShift action_42
action_34 (62) = happyShift action_23
action_34 (64) = happyShift action_43
action_34 (66) = happyShift action_44
action_34 (67) = happyShift action_45
action_34 (75) = happyShift action_24
action_34 (76) = happyShift action_25
action_34 (77) = happyShift action_26
action_34 (10) = happyGoto action_35
action_34 (11) = happyGoto action_8
action_34 (13) = happyGoto action_36
action_34 (14) = happyGoto action_37
action_34 (15) = happyGoto action_11
action_34 (16) = happyGoto action_12
action_34 (17) = happyGoto action_13
action_34 (18) = happyGoto action_38
action_34 (19) = happyGoto action_39
action_34 _ = happyFail

action_35 _ = happyReduce_51

action_36 (60) = happyReduce_23
action_36 _ = happyReduce_52

action_37 (60) = happyReduce_24
action_37 _ = happyReduce_53

action_38 (46) = happyShift action_80
action_38 (47) = happyShift action_81
action_38 (48) = happyShift action_82
action_38 (49) = happyShift action_83
action_38 (50) = happyShift action_84
action_38 (51) = happyShift action_85
action_38 (52) = happyShift action_86
action_38 (68) = happyShift action_87
action_38 _ = happyReduce_97

action_39 (60) = happyReduce_22
action_39 _ = happyReduce_50

action_40 (60) = happyReduce_25
action_40 (64) = happyShift action_69
action_40 _ = happyReduce_54

action_41 _ = happyReduce_37

action_42 (44) = happyShift action_40
action_42 (45) = happyShift action_41
action_42 (47) = happyShift action_42
action_42 (62) = happyShift action_23
action_42 (64) = happyShift action_43
action_42 (66) = happyShift action_44
action_42 (67) = happyShift action_45
action_42 (75) = happyShift action_24
action_42 (76) = happyShift action_25
action_42 (77) = happyShift action_26
action_42 (10) = happyGoto action_35
action_42 (11) = happyGoto action_8
action_42 (13) = happyGoto action_36
action_42 (14) = happyGoto action_37
action_42 (15) = happyGoto action_11
action_42 (16) = happyGoto action_12
action_42 (17) = happyGoto action_13
action_42 (18) = happyGoto action_116
action_42 (19) = happyGoto action_39
action_42 _ = happyFail

action_43 (44) = happyShift action_40
action_43 (45) = happyShift action_41
action_43 (47) = happyShift action_42
action_43 (62) = happyShift action_23
action_43 (64) = happyShift action_43
action_43 (66) = happyShift action_44
action_43 (67) = happyShift action_45
action_43 (75) = happyShift action_24
action_43 (76) = happyShift action_25
action_43 (77) = happyShift action_26
action_43 (10) = happyGoto action_35
action_43 (11) = happyGoto action_8
action_43 (13) = happyGoto action_36
action_43 (14) = happyGoto action_37
action_43 (15) = happyGoto action_11
action_43 (16) = happyGoto action_12
action_43 (17) = happyGoto action_13
action_43 (18) = happyGoto action_115
action_43 (19) = happyGoto action_39
action_43 _ = happyFail

action_44 (44) = happyShift action_40
action_44 (45) = happyShift action_41
action_44 (47) = happyShift action_42
action_44 (62) = happyShift action_23
action_44 (64) = happyShift action_43
action_44 (66) = happyShift action_44
action_44 (67) = happyShift action_45
action_44 (75) = happyShift action_24
action_44 (76) = happyShift action_25
action_44 (77) = happyShift action_26
action_44 (10) = happyGoto action_35
action_44 (11) = happyGoto action_8
action_44 (13) = happyGoto action_36
action_44 (14) = happyGoto action_37
action_44 (15) = happyGoto action_11
action_44 (16) = happyGoto action_12
action_44 (17) = happyGoto action_13
action_44 (18) = happyGoto action_114
action_44 (19) = happyGoto action_39
action_44 _ = happyFail

action_45 (44) = happyShift action_40
action_45 (45) = happyShift action_41
action_45 (47) = happyShift action_42
action_45 (62) = happyShift action_23
action_45 (64) = happyShift action_43
action_45 (66) = happyShift action_44
action_45 (67) = happyShift action_45
action_45 (75) = happyShift action_24
action_45 (76) = happyShift action_25
action_45 (77) = happyShift action_26
action_45 (10) = happyGoto action_35
action_45 (11) = happyGoto action_8
action_45 (13) = happyGoto action_36
action_45 (14) = happyGoto action_37
action_45 (15) = happyGoto action_11
action_45 (16) = happyGoto action_12
action_45 (17) = happyGoto action_13
action_45 (18) = happyGoto action_113
action_45 (19) = happyGoto action_39
action_45 _ = happyFail

action_46 (93) = happyShift action_112
action_46 _ = happyFail

action_47 (46) = happyShift action_80
action_47 (47) = happyShift action_81
action_47 (48) = happyShift action_82
action_47 (49) = happyShift action_83
action_47 (50) = happyShift action_84
action_47 (51) = happyShift action_85
action_47 (52) = happyShift action_86
action_47 (53) = happyShift action_106
action_47 (54) = happyShift action_107
action_47 (55) = happyShift action_108
action_47 (56) = happyShift action_109
action_47 (57) = happyShift action_110
action_47 (58) = happyShift action_111
action_47 (68) = happyShift action_87
action_47 _ = happyFail

action_48 (57) = happyShift action_98
action_48 (72) = happyShift action_99
action_48 (73) = happyShift action_100
action_48 (91) = happyShift action_105
action_48 _ = happyFail

action_49 _ = happyReduce_88

action_50 _ = happyReduce_89

action_51 (41) = happyShift action_49
action_51 (42) = happyShift action_50
action_51 (44) = happyShift action_40
action_51 (45) = happyShift action_41
action_51 (47) = happyShift action_42
action_51 (62) = happyShift action_23
action_51 (64) = happyShift action_51
action_51 (66) = happyShift action_44
action_51 (67) = happyShift action_45
action_51 (74) = happyShift action_52
action_51 (75) = happyShift action_24
action_51 (76) = happyShift action_25
action_51 (77) = happyShift action_26
action_51 (10) = happyGoto action_35
action_51 (11) = happyGoto action_8
action_51 (13) = happyGoto action_36
action_51 (14) = happyGoto action_37
action_51 (15) = happyGoto action_11
action_51 (16) = happyGoto action_12
action_51 (17) = happyGoto action_13
action_51 (18) = happyGoto action_103
action_51 (19) = happyGoto action_39
action_51 (34) = happyGoto action_104
action_51 _ = happyFail

action_52 (41) = happyShift action_49
action_52 (42) = happyShift action_50
action_52 (44) = happyShift action_40
action_52 (45) = happyShift action_41
action_52 (47) = happyShift action_42
action_52 (62) = happyShift action_23
action_52 (64) = happyShift action_51
action_52 (66) = happyShift action_44
action_52 (67) = happyShift action_45
action_52 (74) = happyShift action_52
action_52 (75) = happyShift action_24
action_52 (76) = happyShift action_25
action_52 (77) = happyShift action_26
action_52 (10) = happyGoto action_35
action_52 (11) = happyGoto action_8
action_52 (13) = happyGoto action_36
action_52 (14) = happyGoto action_37
action_52 (15) = happyGoto action_11
action_52 (16) = happyGoto action_12
action_52 (17) = happyGoto action_13
action_52 (18) = happyGoto action_47
action_52 (19) = happyGoto action_39
action_52 (34) = happyGoto action_102
action_52 _ = happyFail

action_53 (57) = happyShift action_98
action_53 (72) = happyShift action_99
action_53 (73) = happyShift action_100
action_53 (89) = happyShift action_101
action_53 _ = happyFail

action_54 (44) = happyShift action_22
action_54 (62) = happyShift action_23
action_54 (75) = happyShift action_24
action_54 (76) = happyShift action_25
action_54 (77) = happyShift action_26
action_54 (78) = happyShift action_27
action_54 (79) = happyShift action_28
action_54 (84) = happyShift action_30
action_54 (87) = happyShift action_31
action_54 (90) = happyShift action_32
action_54 (92) = happyShift action_33
action_54 (94) = happyShift action_34
action_54 (7) = happyGoto action_96
action_54 (8) = happyGoto action_5
action_54 (9) = happyGoto action_6
action_54 (10) = happyGoto action_7
action_54 (11) = happyGoto action_8
action_54 (13) = happyGoto action_9
action_54 (14) = happyGoto action_10
action_54 (15) = happyGoto action_11
action_54 (16) = happyGoto action_12
action_54 (17) = happyGoto action_13
action_54 (19) = happyGoto action_14
action_54 (22) = happyGoto action_15
action_54 (27) = happyGoto action_97
action_54 (28) = happyGoto action_16
action_54 (31) = happyGoto action_17
action_54 (32) = happyGoto action_18
action_54 (35) = happyGoto action_19
action_54 (36) = happyGoto action_20
action_54 (37) = happyGoto action_21
action_54 _ = happyFail

action_55 (44) = happyShift action_95
action_55 (24) = happyGoto action_93
action_55 (26) = happyGoto action_94
action_55 _ = happyFail

action_56 (64) = happyShift action_92
action_56 _ = happyFail

action_57 (46) = happyShift action_80
action_57 (47) = happyShift action_81
action_57 (48) = happyShift action_82
action_57 (49) = happyShift action_83
action_57 (50) = happyShift action_84
action_57 (51) = happyShift action_85
action_57 (52) = happyShift action_86
action_57 (68) = happyShift action_87
action_57 _ = happyReduce_76

action_58 (70) = happyShift action_91
action_58 _ = happyReduce_73

action_59 _ = happyReduce_74

action_60 _ = happyReduce_77

action_61 (46) = happyShift action_80
action_61 (47) = happyShift action_81
action_61 (48) = happyShift action_82
action_61 (49) = happyShift action_83
action_61 (50) = happyShift action_84
action_61 (51) = happyShift action_85
action_61 (52) = happyShift action_86
action_61 (68) = happyShift action_87
action_61 _ = happyReduce_96

action_62 (44) = happyShift action_40
action_62 (45) = happyShift action_41
action_62 (47) = happyShift action_42
action_62 (62) = happyShift action_23
action_62 (64) = happyShift action_43
action_62 (66) = happyShift action_44
action_62 (67) = happyShift action_45
action_62 (75) = happyShift action_24
action_62 (76) = happyShift action_25
action_62 (77) = happyShift action_26
action_62 (10) = happyGoto action_35
action_62 (11) = happyGoto action_8
action_62 (13) = happyGoto action_36
action_62 (14) = happyGoto action_37
action_62 (15) = happyGoto action_11
action_62 (16) = happyGoto action_12
action_62 (17) = happyGoto action_13
action_62 (18) = happyGoto action_90
action_62 (19) = happyGoto action_39
action_62 _ = happyFail

action_63 (44) = happyShift action_40
action_63 (45) = happyShift action_41
action_63 (47) = happyShift action_42
action_63 (62) = happyShift action_23
action_63 (64) = happyShift action_43
action_63 (66) = happyShift action_44
action_63 (67) = happyShift action_45
action_63 (75) = happyShift action_24
action_63 (76) = happyShift action_25
action_63 (77) = happyShift action_26
action_63 (10) = happyGoto action_35
action_63 (11) = happyGoto action_8
action_63 (13) = happyGoto action_36
action_63 (14) = happyGoto action_37
action_63 (15) = happyGoto action_11
action_63 (16) = happyGoto action_12
action_63 (17) = happyGoto action_13
action_63 (18) = happyGoto action_89
action_63 (19) = happyGoto action_39
action_63 _ = happyFail

action_64 (44) = happyShift action_40
action_64 (45) = happyShift action_41
action_64 (47) = happyShift action_42
action_64 (62) = happyShift action_23
action_64 (64) = happyShift action_43
action_64 (66) = happyShift action_44
action_64 (67) = happyShift action_45
action_64 (75) = happyShift action_24
action_64 (76) = happyShift action_25
action_64 (77) = happyShift action_26
action_64 (10) = happyGoto action_35
action_64 (11) = happyGoto action_8
action_64 (13) = happyGoto action_36
action_64 (14) = happyGoto action_37
action_64 (15) = happyGoto action_11
action_64 (16) = happyGoto action_12
action_64 (17) = happyGoto action_13
action_64 (18) = happyGoto action_88
action_64 (19) = happyGoto action_39
action_64 _ = happyFail

action_65 (46) = happyShift action_80
action_65 (47) = happyShift action_81
action_65 (48) = happyShift action_82
action_65 (49) = happyShift action_83
action_65 (50) = happyShift action_84
action_65 (51) = happyShift action_85
action_65 (52) = happyShift action_86
action_65 (68) = happyShift action_87
action_65 _ = happyReduce_59

action_66 (63) = happyShift action_78
action_66 (71) = happyShift action_79
action_66 _ = happyFail

action_67 (70) = happyShift action_77
action_67 _ = happyReduce_57

action_68 _ = happyReduce_56

action_69 (44) = happyShift action_40
action_69 (45) = happyShift action_41
action_69 (47) = happyShift action_42
action_69 (62) = happyShift action_23
action_69 (64) = happyShift action_43
action_69 (65) = happyShift action_76
action_69 (66) = happyShift action_44
action_69 (67) = happyShift action_45
action_69 (75) = happyShift action_24
action_69 (76) = happyShift action_25
action_69 (77) = happyShift action_26
action_69 (10) = happyGoto action_35
action_69 (11) = happyGoto action_8
action_69 (13) = happyGoto action_36
action_69 (14) = happyGoto action_37
action_69 (15) = happyGoto action_11
action_69 (16) = happyGoto action_12
action_69 (17) = happyGoto action_13
action_69 (18) = happyGoto action_65
action_69 (19) = happyGoto action_39
action_69 (21) = happyGoto action_75
action_69 _ = happyFail

action_70 (44) = happyShift action_40
action_70 (45) = happyShift action_41
action_70 (47) = happyShift action_42
action_70 (62) = happyShift action_23
action_70 (64) = happyShift action_43
action_70 (66) = happyShift action_44
action_70 (67) = happyShift action_45
action_70 (75) = happyShift action_24
action_70 (76) = happyShift action_25
action_70 (77) = happyShift action_26
action_70 (10) = happyGoto action_35
action_70 (11) = happyGoto action_8
action_70 (12) = happyGoto action_73
action_70 (13) = happyGoto action_36
action_70 (14) = happyGoto action_37
action_70 (15) = happyGoto action_11
action_70 (16) = happyGoto action_12
action_70 (17) = happyGoto action_13
action_70 (18) = happyGoto action_74
action_70 (19) = happyGoto action_39
action_70 _ = happyReduce_26

action_71 (44) = happyShift action_40
action_71 (45) = happyShift action_41
action_71 (47) = happyShift action_42
action_71 (62) = happyShift action_23
action_71 (64) = happyShift action_43
action_71 (66) = happyShift action_44
action_71 (67) = happyShift action_45
action_71 (75) = happyShift action_24
action_71 (76) = happyShift action_25
action_71 (77) = happyShift action_26
action_71 (10) = happyGoto action_35
action_71 (11) = happyGoto action_8
action_71 (13) = happyGoto action_36
action_71 (14) = happyGoto action_37
action_71 (15) = happyGoto action_11
action_71 (16) = happyGoto action_12
action_71 (17) = happyGoto action_13
action_71 (18) = happyGoto action_72
action_71 (19) = happyGoto action_39
action_71 _ = happyFail

action_72 (46) = happyShift action_80
action_72 (47) = happyShift action_81
action_72 (48) = happyShift action_82
action_72 (49) = happyShift action_83
action_72 (50) = happyShift action_84
action_72 (51) = happyShift action_85
action_72 (52) = happyShift action_86
action_72 (68) = happyShift action_87
action_72 _ = happyReduce_15

action_73 (69) = happyShift action_155
action_73 _ = happyFail

action_74 (46) = happyShift action_80
action_74 (47) = happyShift action_81
action_74 (48) = happyShift action_82
action_74 (49) = happyShift action_83
action_74 (50) = happyShift action_84
action_74 (51) = happyShift action_85
action_74 (52) = happyShift action_86
action_74 (61) = happyShift action_153
action_74 (68) = happyShift action_87
action_74 (70) = happyShift action_154
action_74 _ = happyReduce_27

action_75 (65) = happyShift action_152
action_75 (70) = happyShift action_77
action_75 _ = happyFail

action_76 _ = happyReduce_29

action_77 (44) = happyShift action_40
action_77 (45) = happyShift action_41
action_77 (47) = happyShift action_42
action_77 (62) = happyShift action_23
action_77 (64) = happyShift action_43
action_77 (66) = happyShift action_44
action_77 (67) = happyShift action_45
action_77 (75) = happyShift action_24
action_77 (76) = happyShift action_25
action_77 (77) = happyShift action_26
action_77 (10) = happyGoto action_35
action_77 (11) = happyGoto action_8
action_77 (13) = happyGoto action_36
action_77 (14) = happyGoto action_37
action_77 (15) = happyGoto action_11
action_77 (16) = happyGoto action_12
action_77 (17) = happyGoto action_13
action_77 (18) = happyGoto action_151
action_77 (19) = happyGoto action_39
action_77 _ = happyFail

action_78 _ = happyReduce_55

action_79 (44) = happyShift action_40
action_79 (45) = happyShift action_41
action_79 (47) = happyShift action_42
action_79 (62) = happyShift action_23
action_79 (64) = happyShift action_43
action_79 (66) = happyShift action_44
action_79 (67) = happyShift action_45
action_79 (75) = happyShift action_24
action_79 (76) = happyShift action_25
action_79 (77) = happyShift action_26
action_79 (10) = happyGoto action_35
action_79 (11) = happyGoto action_8
action_79 (13) = happyGoto action_36
action_79 (14) = happyGoto action_37
action_79 (15) = happyGoto action_11
action_79 (16) = happyGoto action_12
action_79 (17) = happyGoto action_13
action_79 (18) = happyGoto action_65
action_79 (19) = happyGoto action_39
action_79 (21) = happyGoto action_150
action_79 _ = happyFail

action_80 (44) = happyShift action_40
action_80 (45) = happyShift action_41
action_80 (47) = happyShift action_42
action_80 (62) = happyShift action_23
action_80 (64) = happyShift action_43
action_80 (66) = happyShift action_44
action_80 (67) = happyShift action_45
action_80 (75) = happyShift action_24
action_80 (76) = happyShift action_25
action_80 (77) = happyShift action_26
action_80 (10) = happyGoto action_35
action_80 (11) = happyGoto action_8
action_80 (13) = happyGoto action_36
action_80 (14) = happyGoto action_37
action_80 (15) = happyGoto action_11
action_80 (16) = happyGoto action_12
action_80 (17) = happyGoto action_13
action_80 (18) = happyGoto action_149
action_80 (19) = happyGoto action_39
action_80 _ = happyFail

action_81 (44) = happyShift action_40
action_81 (45) = happyShift action_41
action_81 (47) = happyShift action_42
action_81 (62) = happyShift action_23
action_81 (64) = happyShift action_43
action_81 (66) = happyShift action_44
action_81 (67) = happyShift action_45
action_81 (75) = happyShift action_24
action_81 (76) = happyShift action_25
action_81 (77) = happyShift action_26
action_81 (10) = happyGoto action_35
action_81 (11) = happyGoto action_8
action_81 (13) = happyGoto action_36
action_81 (14) = happyGoto action_37
action_81 (15) = happyGoto action_11
action_81 (16) = happyGoto action_12
action_81 (17) = happyGoto action_13
action_81 (18) = happyGoto action_148
action_81 (19) = happyGoto action_39
action_81 _ = happyFail

action_82 (44) = happyShift action_40
action_82 (45) = happyShift action_41
action_82 (47) = happyShift action_42
action_82 (62) = happyShift action_23
action_82 (64) = happyShift action_43
action_82 (66) = happyShift action_44
action_82 (67) = happyShift action_45
action_82 (75) = happyShift action_24
action_82 (76) = happyShift action_25
action_82 (77) = happyShift action_26
action_82 (10) = happyGoto action_35
action_82 (11) = happyGoto action_8
action_82 (13) = happyGoto action_36
action_82 (14) = happyGoto action_37
action_82 (15) = happyGoto action_11
action_82 (16) = happyGoto action_12
action_82 (17) = happyGoto action_13
action_82 (18) = happyGoto action_147
action_82 (19) = happyGoto action_39
action_82 _ = happyFail

action_83 (44) = happyShift action_40
action_83 (45) = happyShift action_41
action_83 (47) = happyShift action_42
action_83 (62) = happyShift action_23
action_83 (64) = happyShift action_43
action_83 (66) = happyShift action_44
action_83 (67) = happyShift action_45
action_83 (75) = happyShift action_24
action_83 (76) = happyShift action_25
action_83 (77) = happyShift action_26
action_83 (10) = happyGoto action_35
action_83 (11) = happyGoto action_8
action_83 (13) = happyGoto action_36
action_83 (14) = happyGoto action_37
action_83 (15) = happyGoto action_11
action_83 (16) = happyGoto action_12
action_83 (17) = happyGoto action_13
action_83 (18) = happyGoto action_146
action_83 (19) = happyGoto action_39
action_83 _ = happyFail

action_84 (44) = happyShift action_40
action_84 (45) = happyShift action_41
action_84 (47) = happyShift action_42
action_84 (62) = happyShift action_23
action_84 (64) = happyShift action_43
action_84 (66) = happyShift action_44
action_84 (67) = happyShift action_45
action_84 (75) = happyShift action_24
action_84 (76) = happyShift action_25
action_84 (77) = happyShift action_26
action_84 (10) = happyGoto action_35
action_84 (11) = happyGoto action_8
action_84 (13) = happyGoto action_36
action_84 (14) = happyGoto action_37
action_84 (15) = happyGoto action_11
action_84 (16) = happyGoto action_12
action_84 (17) = happyGoto action_13
action_84 (18) = happyGoto action_145
action_84 (19) = happyGoto action_39
action_84 _ = happyFail

action_85 (44) = happyShift action_40
action_85 (45) = happyShift action_41
action_85 (47) = happyShift action_42
action_85 (62) = happyShift action_23
action_85 (64) = happyShift action_43
action_85 (66) = happyShift action_44
action_85 (67) = happyShift action_45
action_85 (75) = happyShift action_24
action_85 (76) = happyShift action_25
action_85 (77) = happyShift action_26
action_85 (10) = happyGoto action_35
action_85 (11) = happyGoto action_8
action_85 (13) = happyGoto action_36
action_85 (14) = happyGoto action_37
action_85 (15) = happyGoto action_11
action_85 (16) = happyGoto action_12
action_85 (17) = happyGoto action_13
action_85 (18) = happyGoto action_144
action_85 (19) = happyGoto action_39
action_85 _ = happyFail

action_86 (44) = happyShift action_40
action_86 (45) = happyShift action_41
action_86 (47) = happyShift action_42
action_86 (62) = happyShift action_23
action_86 (64) = happyShift action_43
action_86 (66) = happyShift action_44
action_86 (67) = happyShift action_45
action_86 (75) = happyShift action_24
action_86 (76) = happyShift action_25
action_86 (77) = happyShift action_26
action_86 (10) = happyGoto action_35
action_86 (11) = happyGoto action_8
action_86 (13) = happyGoto action_36
action_86 (14) = happyGoto action_37
action_86 (15) = happyGoto action_11
action_86 (16) = happyGoto action_12
action_86 (17) = happyGoto action_13
action_86 (18) = happyGoto action_143
action_86 (19) = happyGoto action_39
action_86 _ = happyFail

action_87 _ = happyReduce_47

action_88 (46) = happyShift action_80
action_88 (47) = happyShift action_81
action_88 (48) = happyShift action_82
action_88 (49) = happyShift action_83
action_88 (50) = happyShift action_84
action_88 (51) = happyShift action_85
action_88 (52) = happyShift action_86
action_88 (65) = happyShift action_141
action_88 (68) = happyShift action_87
action_88 (70) = happyShift action_142
action_88 _ = happyFail

action_89 (46) = happyShift action_80
action_89 (47) = happyShift action_81
action_89 (48) = happyShift action_82
action_89 (49) = happyShift action_83
action_89 (50) = happyShift action_84
action_89 (51) = happyShift action_85
action_89 (52) = happyShift action_86
action_89 (65) = happyShift action_140
action_89 (68) = happyShift action_87
action_89 _ = happyFail

action_90 (46) = happyShift action_80
action_90 (47) = happyShift action_81
action_90 (48) = happyShift action_82
action_90 (49) = happyShift action_83
action_90 (50) = happyShift action_84
action_90 (51) = happyShift action_85
action_90 (52) = happyShift action_86
action_90 (65) = happyShift action_139
action_90 (68) = happyShift action_87
action_90 _ = happyFail

action_91 (43) = happyShift action_60
action_91 (44) = happyShift action_40
action_91 (45) = happyShift action_41
action_91 (47) = happyShift action_42
action_91 (62) = happyShift action_23
action_91 (64) = happyShift action_43
action_91 (66) = happyShift action_44
action_91 (67) = happyShift action_45
action_91 (75) = happyShift action_24
action_91 (76) = happyShift action_25
action_91 (77) = happyShift action_26
action_91 (10) = happyGoto action_35
action_91 (11) = happyGoto action_8
action_91 (13) = happyGoto action_36
action_91 (14) = happyGoto action_37
action_91 (15) = happyGoto action_11
action_91 (16) = happyGoto action_12
action_91 (17) = happyGoto action_13
action_91 (18) = happyGoto action_57
action_91 (19) = happyGoto action_39
action_91 (30) = happyGoto action_138
action_91 _ = happyFail

action_92 (44) = happyShift action_137
action_92 (6) = happyGoto action_136
action_92 _ = happyReduce_4

action_93 (71) = happyShift action_135
action_93 _ = happyReduce_62

action_94 (69) = happyShift action_133
action_94 (70) = happyShift action_134
action_94 _ = happyFail

action_95 _ = happyReduce_69

action_96 _ = happyReduce_71

action_97 (71) = happyShift action_131
action_97 (85) = happyShift action_132
action_97 _ = happyFail

action_98 (41) = happyShift action_49
action_98 (42) = happyShift action_50
action_98 (44) = happyShift action_40
action_98 (45) = happyShift action_41
action_98 (47) = happyShift action_42
action_98 (62) = happyShift action_23
action_98 (64) = happyShift action_51
action_98 (66) = happyShift action_44
action_98 (67) = happyShift action_45
action_98 (74) = happyShift action_52
action_98 (75) = happyShift action_24
action_98 (76) = happyShift action_25
action_98 (77) = happyShift action_26
action_98 (10) = happyGoto action_35
action_98 (11) = happyGoto action_8
action_98 (13) = happyGoto action_36
action_98 (14) = happyGoto action_37
action_98 (15) = happyGoto action_11
action_98 (16) = happyGoto action_12
action_98 (17) = happyGoto action_13
action_98 (18) = happyGoto action_47
action_98 (19) = happyGoto action_39
action_98 (34) = happyGoto action_130
action_98 _ = happyFail

action_99 (41) = happyShift action_49
action_99 (42) = happyShift action_50
action_99 (44) = happyShift action_40
action_99 (45) = happyShift action_41
action_99 (47) = happyShift action_42
action_99 (62) = happyShift action_23
action_99 (64) = happyShift action_51
action_99 (66) = happyShift action_44
action_99 (67) = happyShift action_45
action_99 (74) = happyShift action_52
action_99 (75) = happyShift action_24
action_99 (76) = happyShift action_25
action_99 (77) = happyShift action_26
action_99 (10) = happyGoto action_35
action_99 (11) = happyGoto action_8
action_99 (13) = happyGoto action_36
action_99 (14) = happyGoto action_37
action_99 (15) = happyGoto action_11
action_99 (16) = happyGoto action_12
action_99 (17) = happyGoto action_13
action_99 (18) = happyGoto action_47
action_99 (19) = happyGoto action_39
action_99 (34) = happyGoto action_129
action_99 _ = happyFail

action_100 (41) = happyShift action_49
action_100 (42) = happyShift action_50
action_100 (44) = happyShift action_40
action_100 (45) = happyShift action_41
action_100 (47) = happyShift action_42
action_100 (62) = happyShift action_23
action_100 (64) = happyShift action_51
action_100 (66) = happyShift action_44
action_100 (67) = happyShift action_45
action_100 (74) = happyShift action_52
action_100 (75) = happyShift action_24
action_100 (76) = happyShift action_25
action_100 (77) = happyShift action_26
action_100 (10) = happyGoto action_35
action_100 (11) = happyGoto action_8
action_100 (13) = happyGoto action_36
action_100 (14) = happyGoto action_37
action_100 (15) = happyGoto action_11
action_100 (16) = happyGoto action_12
action_100 (17) = happyGoto action_13
action_100 (18) = happyGoto action_47
action_100 (19) = happyGoto action_39
action_100 (34) = happyGoto action_128
action_100 _ = happyFail

action_101 (44) = happyShift action_22
action_101 (62) = happyShift action_23
action_101 (75) = happyShift action_24
action_101 (76) = happyShift action_25
action_101 (77) = happyShift action_26
action_101 (78) = happyShift action_27
action_101 (79) = happyShift action_28
action_101 (84) = happyShift action_30
action_101 (87) = happyShift action_31
action_101 (90) = happyShift action_32
action_101 (92) = happyShift action_33
action_101 (94) = happyShift action_34
action_101 (7) = happyGoto action_127
action_101 (8) = happyGoto action_5
action_101 (9) = happyGoto action_6
action_101 (10) = happyGoto action_7
action_101 (11) = happyGoto action_8
action_101 (13) = happyGoto action_9
action_101 (14) = happyGoto action_10
action_101 (15) = happyGoto action_11
action_101 (16) = happyGoto action_12
action_101 (17) = happyGoto action_13
action_101 (19) = happyGoto action_14
action_101 (22) = happyGoto action_15
action_101 (28) = happyGoto action_16
action_101 (31) = happyGoto action_17
action_101 (32) = happyGoto action_18
action_101 (35) = happyGoto action_19
action_101 (36) = happyGoto action_20
action_101 (37) = happyGoto action_21
action_101 _ = happyFail

action_102 (57) = happyShift action_98
action_102 _ = happyReduce_94

action_103 (46) = happyShift action_80
action_103 (47) = happyShift action_81
action_103 (48) = happyShift action_82
action_103 (49) = happyShift action_83
action_103 (50) = happyShift action_84
action_103 (51) = happyShift action_85
action_103 (52) = happyShift action_86
action_103 (53) = happyShift action_106
action_103 (54) = happyShift action_107
action_103 (55) = happyShift action_108
action_103 (56) = happyShift action_109
action_103 (57) = happyShift action_110
action_103 (58) = happyShift action_111
action_103 (65) = happyShift action_117
action_103 (68) = happyShift action_87
action_103 _ = happyFail

action_104 (57) = happyShift action_98
action_104 (65) = happyShift action_126
action_104 (72) = happyShift action_99
action_104 (73) = happyShift action_100
action_104 _ = happyFail

action_105 (44) = happyShift action_22
action_105 (62) = happyShift action_23
action_105 (75) = happyShift action_24
action_105 (76) = happyShift action_25
action_105 (77) = happyShift action_26
action_105 (78) = happyShift action_27
action_105 (79) = happyShift action_28
action_105 (84) = happyShift action_30
action_105 (87) = happyShift action_31
action_105 (90) = happyShift action_32
action_105 (92) = happyShift action_33
action_105 (94) = happyShift action_34
action_105 (7) = happyGoto action_125
action_105 (8) = happyGoto action_5
action_105 (9) = happyGoto action_6
action_105 (10) = happyGoto action_7
action_105 (11) = happyGoto action_8
action_105 (13) = happyGoto action_9
action_105 (14) = happyGoto action_10
action_105 (15) = happyGoto action_11
action_105 (16) = happyGoto action_12
action_105 (17) = happyGoto action_13
action_105 (19) = happyGoto action_14
action_105 (22) = happyGoto action_15
action_105 (28) = happyGoto action_16
action_105 (31) = happyGoto action_17
action_105 (32) = happyGoto action_18
action_105 (35) = happyGoto action_19
action_105 (36) = happyGoto action_20
action_105 (37) = happyGoto action_21
action_105 _ = happyFail

action_106 (44) = happyShift action_40
action_106 (45) = happyShift action_41
action_106 (47) = happyShift action_42
action_106 (62) = happyShift action_23
action_106 (64) = happyShift action_43
action_106 (66) = happyShift action_44
action_106 (67) = happyShift action_45
action_106 (75) = happyShift action_24
action_106 (76) = happyShift action_25
action_106 (77) = happyShift action_26
action_106 (10) = happyGoto action_35
action_106 (11) = happyGoto action_8
action_106 (13) = happyGoto action_36
action_106 (14) = happyGoto action_37
action_106 (15) = happyGoto action_11
action_106 (16) = happyGoto action_12
action_106 (17) = happyGoto action_13
action_106 (18) = happyGoto action_124
action_106 (19) = happyGoto action_39
action_106 _ = happyFail

action_107 (44) = happyShift action_40
action_107 (45) = happyShift action_41
action_107 (47) = happyShift action_42
action_107 (62) = happyShift action_23
action_107 (64) = happyShift action_43
action_107 (66) = happyShift action_44
action_107 (67) = happyShift action_45
action_107 (75) = happyShift action_24
action_107 (76) = happyShift action_25
action_107 (77) = happyShift action_26
action_107 (10) = happyGoto action_35
action_107 (11) = happyGoto action_8
action_107 (13) = happyGoto action_36
action_107 (14) = happyGoto action_37
action_107 (15) = happyGoto action_11
action_107 (16) = happyGoto action_12
action_107 (17) = happyGoto action_13
action_107 (18) = happyGoto action_123
action_107 (19) = happyGoto action_39
action_107 _ = happyFail

action_108 (44) = happyShift action_40
action_108 (45) = happyShift action_41
action_108 (47) = happyShift action_42
action_108 (62) = happyShift action_23
action_108 (64) = happyShift action_43
action_108 (66) = happyShift action_44
action_108 (67) = happyShift action_45
action_108 (75) = happyShift action_24
action_108 (76) = happyShift action_25
action_108 (77) = happyShift action_26
action_108 (10) = happyGoto action_35
action_108 (11) = happyGoto action_8
action_108 (13) = happyGoto action_36
action_108 (14) = happyGoto action_37
action_108 (15) = happyGoto action_11
action_108 (16) = happyGoto action_12
action_108 (17) = happyGoto action_13
action_108 (18) = happyGoto action_122
action_108 (19) = happyGoto action_39
action_108 _ = happyFail

action_109 (44) = happyShift action_40
action_109 (45) = happyShift action_41
action_109 (47) = happyShift action_42
action_109 (62) = happyShift action_23
action_109 (64) = happyShift action_43
action_109 (66) = happyShift action_44
action_109 (67) = happyShift action_45
action_109 (75) = happyShift action_24
action_109 (76) = happyShift action_25
action_109 (77) = happyShift action_26
action_109 (10) = happyGoto action_35
action_109 (11) = happyGoto action_8
action_109 (13) = happyGoto action_36
action_109 (14) = happyGoto action_37
action_109 (15) = happyGoto action_11
action_109 (16) = happyGoto action_12
action_109 (17) = happyGoto action_13
action_109 (18) = happyGoto action_121
action_109 (19) = happyGoto action_39
action_109 _ = happyFail

action_110 (44) = happyShift action_40
action_110 (45) = happyShift action_41
action_110 (47) = happyShift action_42
action_110 (62) = happyShift action_23
action_110 (64) = happyShift action_43
action_110 (66) = happyShift action_44
action_110 (67) = happyShift action_45
action_110 (75) = happyShift action_24
action_110 (76) = happyShift action_25
action_110 (77) = happyShift action_26
action_110 (10) = happyGoto action_35
action_110 (11) = happyGoto action_8
action_110 (13) = happyGoto action_36
action_110 (14) = happyGoto action_37
action_110 (15) = happyGoto action_11
action_110 (16) = happyGoto action_12
action_110 (17) = happyGoto action_13
action_110 (18) = happyGoto action_120
action_110 (19) = happyGoto action_39
action_110 _ = happyFail

action_111 (44) = happyShift action_40
action_111 (45) = happyShift action_41
action_111 (47) = happyShift action_42
action_111 (62) = happyShift action_23
action_111 (64) = happyShift action_43
action_111 (66) = happyShift action_44
action_111 (67) = happyShift action_45
action_111 (75) = happyShift action_24
action_111 (76) = happyShift action_25
action_111 (77) = happyShift action_26
action_111 (10) = happyGoto action_35
action_111 (11) = happyGoto action_8
action_111 (13) = happyGoto action_36
action_111 (14) = happyGoto action_37
action_111 (15) = happyGoto action_11
action_111 (16) = happyGoto action_12
action_111 (17) = happyGoto action_13
action_111 (18) = happyGoto action_119
action_111 (19) = happyGoto action_39
action_111 _ = happyFail

action_112 (44) = happyShift action_40
action_112 (45) = happyShift action_41
action_112 (47) = happyShift action_42
action_112 (62) = happyShift action_23
action_112 (64) = happyShift action_43
action_112 (66) = happyShift action_44
action_112 (67) = happyShift action_45
action_112 (75) = happyShift action_24
action_112 (76) = happyShift action_25
action_112 (77) = happyShift action_26
action_112 (10) = happyGoto action_35
action_112 (11) = happyGoto action_8
action_112 (13) = happyGoto action_36
action_112 (14) = happyGoto action_37
action_112 (15) = happyGoto action_11
action_112 (16) = happyGoto action_12
action_112 (17) = happyGoto action_13
action_112 (18) = happyGoto action_118
action_112 (19) = happyGoto action_39
action_112 _ = happyFail

action_113 (51) = happyShift action_85
action_113 _ = happyReduce_49

action_114 (51) = happyShift action_85
action_114 _ = happyReduce_48

action_115 (46) = happyShift action_80
action_115 (47) = happyShift action_81
action_115 (48) = happyShift action_82
action_115 (49) = happyShift action_83
action_115 (50) = happyShift action_84
action_115 (51) = happyShift action_85
action_115 (52) = happyShift action_86
action_115 (65) = happyShift action_117
action_115 (68) = happyShift action_87
action_115 _ = happyFail

action_116 (51) = happyShift action_85
action_116 _ = happyReduce_46

action_117 _ = happyReduce_38

action_118 (46) = happyShift action_80
action_118 (47) = happyShift action_81
action_118 (48) = happyShift action_82
action_118 (49) = happyShift action_83
action_118 (50) = happyShift action_84
action_118 (51) = happyShift action_85
action_118 (52) = happyShift action_86
action_118 (68) = happyShift action_87
action_118 (91) = happyShift action_172
action_118 _ = happyFail

action_119 (46) = happyShift action_80
action_119 (47) = happyShift action_81
action_119 (48) = happyShift action_82
action_119 (49) = happyShift action_83
action_119 (50) = happyShift action_84
action_119 (51) = happyShift action_85
action_119 (52) = happyShift action_86
action_119 (68) = happyShift action_87
action_119 _ = happyReduce_87

action_120 (46) = happyShift action_80
action_120 (47) = happyShift action_81
action_120 (48) = happyShift action_82
action_120 (49) = happyShift action_83
action_120 (50) = happyShift action_84
action_120 (51) = happyShift action_85
action_120 (52) = happyShift action_86
action_120 (68) = happyShift action_87
action_120 _ = happyReduce_86

action_121 (46) = happyShift action_80
action_121 (47) = happyShift action_81
action_121 (48) = happyShift action_82
action_121 (49) = happyShift action_83
action_121 (50) = happyShift action_84
action_121 (51) = happyShift action_85
action_121 (52) = happyShift action_86
action_121 (68) = happyShift action_87
action_121 _ = happyReduce_85

action_122 (46) = happyShift action_80
action_122 (47) = happyShift action_81
action_122 (48) = happyShift action_82
action_122 (49) = happyShift action_83
action_122 (50) = happyShift action_84
action_122 (51) = happyShift action_85
action_122 (52) = happyShift action_86
action_122 (68) = happyShift action_87
action_122 _ = happyReduce_84

action_123 (46) = happyShift action_80
action_123 (47) = happyShift action_81
action_123 (48) = happyShift action_82
action_123 (49) = happyShift action_83
action_123 (50) = happyShift action_84
action_123 (51) = happyShift action_85
action_123 (52) = happyShift action_86
action_123 (68) = happyShift action_87
action_123 _ = happyReduce_83

action_124 (46) = happyShift action_80
action_124 (47) = happyShift action_81
action_124 (48) = happyShift action_82
action_124 (49) = happyShift action_83
action_124 (50) = happyShift action_84
action_124 (51) = happyShift action_85
action_124 (52) = happyShift action_86
action_124 (68) = happyShift action_87
action_124 _ = happyReduce_82

action_125 _ = happyReduce_78

action_126 _ = happyReduce_93

action_127 (88) = happyShift action_171
action_127 (33) = happyGoto action_170
action_127 _ = happyReduce_80

action_128 (57) = happyShift action_98
action_128 (72) = happyShift action_99
action_128 _ = happyReduce_91

action_129 (57) = happyShift action_98
action_129 _ = happyReduce_90

action_130 (57) = happyFail
action_130 _ = happyReduce_92

action_131 (44) = happyShift action_22
action_131 (62) = happyShift action_23
action_131 (75) = happyShift action_24
action_131 (76) = happyShift action_25
action_131 (77) = happyShift action_26
action_131 (78) = happyShift action_27
action_131 (79) = happyShift action_28
action_131 (84) = happyShift action_30
action_131 (87) = happyShift action_31
action_131 (90) = happyShift action_32
action_131 (92) = happyShift action_33
action_131 (94) = happyShift action_34
action_131 (7) = happyGoto action_169
action_131 (8) = happyGoto action_5
action_131 (9) = happyGoto action_6
action_131 (10) = happyGoto action_7
action_131 (11) = happyGoto action_8
action_131 (13) = happyGoto action_9
action_131 (14) = happyGoto action_10
action_131 (15) = happyGoto action_11
action_131 (16) = happyGoto action_12
action_131 (17) = happyGoto action_13
action_131 (19) = happyGoto action_14
action_131 (22) = happyGoto action_15
action_131 (28) = happyGoto action_16
action_131 (31) = happyGoto action_17
action_131 (32) = happyGoto action_18
action_131 (35) = happyGoto action_19
action_131 (36) = happyGoto action_20
action_131 (37) = happyGoto action_21
action_131 _ = happyFail

action_132 _ = happyReduce_61

action_133 (38) = happyShift action_166
action_133 (39) = happyShift action_167
action_133 (40) = happyShift action_168
action_133 (25) = happyGoto action_165
action_133 _ = happyFail

action_134 (44) = happyShift action_164
action_134 _ = happyFail

action_135 (44) = happyShift action_95
action_135 (26) = happyGoto action_163
action_135 _ = happyFail

action_136 (65) = happyShift action_161
action_136 (70) = happyShift action_162
action_136 _ = happyFail

action_137 (69) = happyShift action_160
action_137 _ = happyFail

action_138 _ = happyReduce_75

action_139 _ = happyReduce_36

action_140 _ = happyReduce_35

action_141 _ = happyReduce_34

action_142 (44) = happyShift action_40
action_142 (45) = happyShift action_41
action_142 (47) = happyShift action_42
action_142 (62) = happyShift action_23
action_142 (64) = happyShift action_43
action_142 (66) = happyShift action_44
action_142 (67) = happyShift action_45
action_142 (75) = happyShift action_24
action_142 (76) = happyShift action_25
action_142 (77) = happyShift action_26
action_142 (10) = happyGoto action_35
action_142 (11) = happyGoto action_8
action_142 (13) = happyGoto action_36
action_142 (14) = happyGoto action_37
action_142 (15) = happyGoto action_11
action_142 (16) = happyGoto action_12
action_142 (17) = happyGoto action_13
action_142 (18) = happyGoto action_159
action_142 (19) = happyGoto action_39
action_142 _ = happyFail

action_143 (51) = happyShift action_85
action_143 (68) = happyShift action_87
action_143 _ = happyReduce_45

action_144 _ = happyReduce_44

action_145 (51) = happyShift action_85
action_145 (68) = happyShift action_87
action_145 _ = happyReduce_43

action_146 (51) = happyShift action_85
action_146 (68) = happyShift action_87
action_146 _ = happyReduce_42

action_147 (51) = happyShift action_85
action_147 (68) = happyShift action_87
action_147 _ = happyReduce_41

action_148 (48) = happyShift action_82
action_148 (49) = happyShift action_83
action_148 (50) = happyShift action_84
action_148 (51) = happyShift action_85
action_148 (52) = happyShift action_86
action_148 (68) = happyShift action_87
action_148 _ = happyReduce_40

action_149 (48) = happyShift action_82
action_149 (49) = happyShift action_83
action_149 (50) = happyShift action_84
action_149 (51) = happyShift action_85
action_149 (52) = happyShift action_86
action_149 (68) = happyShift action_87
action_149 _ = happyReduce_39

action_150 (70) = happyShift action_77
action_150 _ = happyReduce_58

action_151 (46) = happyShift action_80
action_151 (47) = happyShift action_81
action_151 (48) = happyShift action_82
action_151 (49) = happyShift action_83
action_151 (50) = happyShift action_84
action_151 (51) = happyShift action_85
action_151 (52) = happyShift action_86
action_151 (68) = happyShift action_87
action_151 _ = happyReduce_60

action_152 _ = happyReduce_28

action_153 _ = happyReduce_18

action_154 (44) = happyShift action_40
action_154 (45) = happyShift action_41
action_154 (47) = happyShift action_42
action_154 (62) = happyShift action_23
action_154 (64) = happyShift action_43
action_154 (66) = happyShift action_44
action_154 (67) = happyShift action_45
action_154 (75) = happyShift action_24
action_154 (76) = happyShift action_25
action_154 (77) = happyShift action_26
action_154 (10) = happyGoto action_35
action_154 (11) = happyGoto action_8
action_154 (13) = happyGoto action_36
action_154 (14) = happyGoto action_37
action_154 (15) = happyGoto action_11
action_154 (16) = happyGoto action_12
action_154 (17) = happyGoto action_13
action_154 (18) = happyGoto action_158
action_154 (19) = happyGoto action_39
action_154 _ = happyFail

action_155 (44) = happyShift action_40
action_155 (45) = happyShift action_41
action_155 (47) = happyShift action_42
action_155 (62) = happyShift action_23
action_155 (64) = happyShift action_43
action_155 (66) = happyShift action_44
action_155 (67) = happyShift action_45
action_155 (75) = happyShift action_24
action_155 (76) = happyShift action_25
action_155 (77) = happyShift action_26
action_155 (10) = happyGoto action_35
action_155 (11) = happyGoto action_8
action_155 (12) = happyGoto action_156
action_155 (13) = happyGoto action_36
action_155 (14) = happyGoto action_37
action_155 (15) = happyGoto action_11
action_155 (16) = happyGoto action_12
action_155 (17) = happyGoto action_13
action_155 (18) = happyGoto action_157
action_155 (19) = happyGoto action_39
action_155 _ = happyReduce_26

action_156 (61) = happyShift action_181
action_156 (70) = happyShift action_182
action_156 _ = happyFail

action_157 (46) = happyShift action_80
action_157 (47) = happyShift action_81
action_157 (48) = happyShift action_82
action_157 (49) = happyShift action_83
action_157 (50) = happyShift action_84
action_157 (51) = happyShift action_85
action_157 (52) = happyShift action_86
action_157 (68) = happyShift action_87
action_157 _ = happyReduce_27

action_158 (46) = happyShift action_80
action_158 (47) = happyShift action_81
action_158 (48) = happyShift action_82
action_158 (49) = happyShift action_83
action_158 (50) = happyShift action_84
action_158 (51) = happyShift action_85
action_158 (52) = happyShift action_86
action_158 (61) = happyShift action_180
action_158 (68) = happyShift action_87
action_158 _ = happyFail

action_159 (46) = happyShift action_80
action_159 (47) = happyShift action_81
action_159 (48) = happyShift action_82
action_159 (49) = happyShift action_83
action_159 (50) = happyShift action_84
action_159 (51) = happyShift action_85
action_159 (52) = happyShift action_86
action_159 (65) = happyShift action_179
action_159 (68) = happyShift action_87
action_159 _ = happyFail

action_160 (38) = happyShift action_166
action_160 (39) = happyShift action_167
action_160 (40) = happyShift action_168
action_160 (25) = happyGoto action_178
action_160 _ = happyFail

action_161 (81) = happyShift action_177
action_161 _ = happyFail

action_162 (44) = happyShift action_176
action_162 _ = happyFail

action_163 (69) = happyShift action_175
action_163 (70) = happyShift action_134
action_163 _ = happyFail

action_164 _ = happyReduce_70

action_165 _ = happyReduce_64

action_166 _ = happyReduce_66

action_167 _ = happyReduce_67

action_168 _ = happyReduce_68

action_169 _ = happyReduce_72

action_170 _ = happyReduce_79

action_171 (44) = happyShift action_22
action_171 (62) = happyShift action_23
action_171 (75) = happyShift action_24
action_171 (76) = happyShift action_25
action_171 (77) = happyShift action_26
action_171 (78) = happyShift action_27
action_171 (79) = happyShift action_28
action_171 (84) = happyShift action_30
action_171 (87) = happyShift action_31
action_171 (90) = happyShift action_32
action_171 (92) = happyShift action_33
action_171 (94) = happyShift action_34
action_171 (7) = happyGoto action_174
action_171 (8) = happyGoto action_5
action_171 (9) = happyGoto action_6
action_171 (10) = happyGoto action_7
action_171 (11) = happyGoto action_8
action_171 (13) = happyGoto action_9
action_171 (14) = happyGoto action_10
action_171 (15) = happyGoto action_11
action_171 (16) = happyGoto action_12
action_171 (17) = happyGoto action_13
action_171 (19) = happyGoto action_14
action_171 (22) = happyGoto action_15
action_171 (28) = happyGoto action_16
action_171 (31) = happyGoto action_17
action_171 (32) = happyGoto action_18
action_171 (35) = happyGoto action_19
action_171 (36) = happyGoto action_20
action_171 (37) = happyGoto action_21
action_171 _ = happyFail

action_172 (44) = happyShift action_22
action_172 (62) = happyShift action_23
action_172 (75) = happyShift action_24
action_172 (76) = happyShift action_25
action_172 (77) = happyShift action_26
action_172 (78) = happyShift action_27
action_172 (79) = happyShift action_28
action_172 (84) = happyShift action_30
action_172 (87) = happyShift action_31
action_172 (90) = happyShift action_32
action_172 (92) = happyShift action_33
action_172 (94) = happyShift action_34
action_172 (7) = happyGoto action_173
action_172 (8) = happyGoto action_5
action_172 (9) = happyGoto action_6
action_172 (10) = happyGoto action_7
action_172 (11) = happyGoto action_8
action_172 (13) = happyGoto action_9
action_172 (14) = happyGoto action_10
action_172 (15) = happyGoto action_11
action_172 (16) = happyGoto action_12
action_172 (17) = happyGoto action_13
action_172 (19) = happyGoto action_14
action_172 (22) = happyGoto action_15
action_172 (28) = happyGoto action_16
action_172 (31) = happyGoto action_17
action_172 (32) = happyGoto action_18
action_172 (35) = happyGoto action_19
action_172 (36) = happyGoto action_20
action_172 (37) = happyGoto action_21
action_172 _ = happyFail

action_173 _ = happyReduce_95

action_174 _ = happyReduce_81

action_175 (38) = happyShift action_166
action_175 (39) = happyShift action_167
action_175 (40) = happyShift action_168
action_175 (25) = happyGoto action_186
action_175 _ = happyFail

action_176 (69) = happyShift action_185
action_176 _ = happyFail

action_177 (82) = happyShift action_184
action_177 _ = happyFail

action_178 _ = happyReduce_5

action_179 _ = happyReduce_33

action_180 _ = happyReduce_19

action_181 _ = happyReduce_20

action_182 (44) = happyShift action_40
action_182 (45) = happyShift action_41
action_182 (47) = happyShift action_42
action_182 (62) = happyShift action_23
action_182 (64) = happyShift action_43
action_182 (66) = happyShift action_44
action_182 (67) = happyShift action_45
action_182 (75) = happyShift action_24
action_182 (76) = happyShift action_25
action_182 (77) = happyShift action_26
action_182 (10) = happyGoto action_35
action_182 (11) = happyGoto action_8
action_182 (12) = happyGoto action_183
action_182 (13) = happyGoto action_36
action_182 (14) = happyGoto action_37
action_182 (15) = happyGoto action_11
action_182 (16) = happyGoto action_12
action_182 (17) = happyGoto action_13
action_182 (18) = happyGoto action_157
action_182 (19) = happyGoto action_39
action_182 _ = happyReduce_26

action_183 (69) = happyShift action_189
action_183 _ = happyFail

action_184 (38) = happyShift action_166
action_184 (39) = happyShift action_167
action_184 (40) = happyShift action_168
action_184 (25) = happyGoto action_188
action_184 _ = happyFail

action_185 (38) = happyShift action_166
action_185 (39) = happyShift action_167
action_185 (40) = happyShift action_168
action_185 (25) = happyGoto action_187
action_185 _ = happyFail

action_186 _ = happyReduce_65

action_187 _ = happyReduce_6

action_188 (83) = happyShift action_191
action_188 _ = happyFail

action_189 (44) = happyShift action_40
action_189 (45) = happyShift action_41
action_189 (47) = happyShift action_42
action_189 (62) = happyShift action_23
action_189 (64) = happyShift action_43
action_189 (66) = happyShift action_44
action_189 (67) = happyShift action_45
action_189 (75) = happyShift action_24
action_189 (76) = happyShift action_25
action_189 (77) = happyShift action_26
action_189 (10) = happyGoto action_35
action_189 (11) = happyGoto action_8
action_189 (12) = happyGoto action_190
action_189 (13) = happyGoto action_36
action_189 (14) = happyGoto action_37
action_189 (15) = happyGoto action_11
action_189 (16) = happyGoto action_12
action_189 (17) = happyGoto action_13
action_189 (18) = happyGoto action_157
action_189 (19) = happyGoto action_39
action_189 _ = happyReduce_26

action_190 (61) = happyShift action_193
action_190 _ = happyFail

action_191 (44) = happyShift action_22
action_191 (62) = happyShift action_23
action_191 (75) = happyShift action_24
action_191 (76) = happyShift action_25
action_191 (77) = happyShift action_26
action_191 (78) = happyShift action_27
action_191 (79) = happyShift action_28
action_191 (84) = happyShift action_30
action_191 (87) = happyShift action_31
action_191 (90) = happyShift action_32
action_191 (92) = happyShift action_33
action_191 (94) = happyShift action_34
action_191 (7) = happyGoto action_192
action_191 (8) = happyGoto action_5
action_191 (9) = happyGoto action_6
action_191 (10) = happyGoto action_7
action_191 (11) = happyGoto action_8
action_191 (13) = happyGoto action_9
action_191 (14) = happyGoto action_10
action_191 (15) = happyGoto action_11
action_191 (16) = happyGoto action_12
action_191 (17) = happyGoto action_13
action_191 (19) = happyGoto action_14
action_191 (22) = happyGoto action_15
action_191 (28) = happyGoto action_16
action_191 (31) = happyGoto action_17
action_191 (32) = happyGoto action_18
action_191 (35) = happyGoto action_19
action_191 (36) = happyGoto action_20
action_191 (37) = happyGoto action_21
action_191 _ = happyFail

action_192 _ = happyReduce_3

action_193 _ = happyReduce_21

happyReduce_1 = happySpecReduce_2  4 happyReduction_1
happyReduction_1 (HappyAbsSyn7  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 ((happy_var_1 ,happy_var_2)
	)
happyReduction_1 _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_0  5 happyReduction_2
happyReduction_2  =  HappyAbsSyn5
		 (( emptySymTable , [] )
	)

happyReduce_3 = happyReduce 11 5 happyReduction_3
happyReduction_3 ((HappyAbsSyn7  happy_var_11) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn25  happy_var_9) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TkId _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 ((insert happy_var_3 (Fun happy_var_9 (fst happy_var_5)(snd happy_var_5) ) (fst happy_var_1) , (FunDec happy_var_3 happy_var_11):snd happy_var_1)
	) `HappyStk` happyRest

happyReduce_4 = happySpecReduce_0  6 happyReduction_4
happyReduction_4  =  HappyAbsSyn6
		 (( emptySymTable , [])
	)

happyReduce_5 = happySpecReduce_3  6 happyReduction_5
happyReduction_5 (HappyAbsSyn25  happy_var_3)
	_
	(HappyTerminal (TkId _ happy_var_1))
	 =  HappyAbsSyn6
		 (( insert happy_var_1 (Var happy_var_3 Nothing) emptySymTable , [happy_var_3] )
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happyReduce 5 6 happyReduction_6
happyReduction_6 ((HappyAbsSyn25  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TkId _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 ((insert  happy_var_3 (Var happy_var_5 Nothing) (fst happy_var_1) , happy_var_5:(snd happy_var_1) )
	) `HappyStk` happyRest

happyReduce_7 = happySpecReduce_1  7 happyReduction_7
happyReduction_7 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  7 happyReduction_8
happyReduction_8 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  7 happyReduction_9
happyReduction_9 (HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  7 happyReduction_10
happyReduction_10 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  7 happyReduction_11
happyReduction_11 (HappyAbsSyn35  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  7 happyReduction_12
happyReduction_12 (HappyAbsSyn36  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  7 happyReduction_13
happyReduction_13 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  7 happyReduction_14
happyReduction_14 (HappyAbsSyn37  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  8 happyReduction_15
happyReduction_15 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (Asign happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  9 happyReduction_16
happyReduction_16 (HappyTerminal (TkId _ happy_var_1))
	 =  HappyAbsSyn9
		 (Id happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  9 happyReduction_17
happyReduction_17 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happyReduce 4 10 happyReduction_18
happyReduction_18 (_ `HappyStk`
	(HappyAbsSyn18  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (AccessElemV happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_19 = happyReduce 6 10 happyReduction_19
happyReduction_19 (_ `HappyStk`
	(HappyAbsSyn18  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn18  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (AccessElemM happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_20 = happyReduce 6 10 happyReduction_20
happyReduction_20 (_ `HappyStk`
	(HappyAbsSyn12  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (ParAccessV happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_21 = happyReduce 10 10 happyReduction_21
happyReduction_21 (_ `HappyStk`
	(HappyAbsSyn12  happy_var_9) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (ParAccessM happy_var_1 happy_var_3 happy_var_5 happy_var_7 happy_var_9
	) `HappyStk` happyRest

happyReduce_22 = happySpecReduce_1  11 happyReduction_22
happyReduction_22 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  11 happyReduction_23
happyReduction_23 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  11 happyReduction_24
happyReduction_24 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  11 happyReduction_25
happyReduction_25 (HappyTerminal (TkId _ happy_var_1))
	 =  HappyAbsSyn11
		 (Id happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_0  12 happyReduction_26
happyReduction_26  =  HappyAbsSyn12
		 (Nothing
	)

happyReduce_27 = happySpecReduce_1  12 happyReduction_27
happyReduction_27 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn12
		 (Just happy_var_1
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happyReduce 4 13 happyReduction_28
happyReduction_28 (_ `HappyStk`
	(HappyAbsSyn21  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TkId _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (Func  happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_29 = happySpecReduce_3  13 happyReduction_29
happyReduction_29 _
	_
	(HappyTerminal (TkId _ happy_var_1))
	 =  HappyAbsSyn13
		 (Func  happy_var_1 []
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  14 happyReduction_30
happyReduction_30 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_1  14 happyReduction_31
happyReduction_31 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1
	)
happyReduction_31 _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  14 happyReduction_32
happyReduction_32 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happyReduce 6 15 happyReduction_33
happyReduction_33 (_ `HappyStk`
	(HappyAbsSyn18  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn18  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (Func "zeroes" [happy_var_3,happy_var_5]
	) `HappyStk` happyRest

happyReduce_34 = happyReduce 4 15 happyReduction_34
happyReduction_34 (_ `HappyStk`
	(HappyAbsSyn18  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (Func "zeroes" [happy_var_3]
	) `HappyStk` happyRest

happyReduce_35 = happyReduce 4 16 happyReduction_35
happyReduction_35 (_ `HappyStk`
	(HappyAbsSyn18  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (Func "range" [happy_var_3]
	) `HappyStk` happyRest

happyReduce_36 = happyReduce 4 17 happyReduction_36
happyReduction_36 (_ `HappyStk`
	(HappyAbsSyn18  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (Func "eye" [happy_var_3]
	) `HappyStk` happyRest

happyReduce_37 = happySpecReduce_1  18 happyReduction_37
happyReduction_37 (HappyTerminal (TkNum _ happy_var_1))
	 =  HappyAbsSyn18
		 (Num  happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  18 happyReduction_38
happyReduction_38 _
	(HappyAbsSyn18  happy_var_2)
	_
	 =  HappyAbsSyn18
		 (RB happy_var_2
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  18 happyReduction_39
happyReduction_39 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  18 happyReduction_40
happyReduction_40 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  18 happyReduction_41
happyReduction_41 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (Times happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  18 happyReduction_42
happyReduction_42 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (Div happy_var_1 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  18 happyReduction_43
happyReduction_43 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (Mod happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  18 happyReduction_44
happyReduction_44 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (Expo happy_var_1 happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  18 happyReduction_45
happyReduction_45 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (Dot happy_var_1 happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_2  18 happyReduction_46
happyReduction_46 (HappyAbsSyn18  happy_var_2)
	_
	 =  HappyAbsSyn18
		 (MinusU happy_var_2
	)
happyReduction_46 _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_2  18 happyReduction_47
happyReduction_47 _
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (Caret happy_var_1
	)
happyReduction_47 _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_2  18 happyReduction_48
happyReduction_48 (HappyAbsSyn18  happy_var_2)
	_
	 =  HappyAbsSyn18
		 (DS happy_var_2
	)
happyReduction_48 _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_2  18 happyReduction_49
happyReduction_49 (HappyAbsSyn18  happy_var_2)
	_
	 =  HappyAbsSyn18
		 (At happy_var_2
	)
happyReduction_49 _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_1  18 happyReduction_50
happyReduction_50 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn18
		 (happy_var_1
	)
happyReduction_50 _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_1  18 happyReduction_51
happyReduction_51 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn18
		 (happy_var_1
	)
happyReduction_51 _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_1  18 happyReduction_52
happyReduction_52 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn18
		 (happy_var_1
	)
happyReduction_52 _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_1  18 happyReduction_53
happyReduction_53 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn18
		 (happy_var_1
	)
happyReduction_53 _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_1  18 happyReduction_54
happyReduction_54 (HappyTerminal (TkId _ happy_var_1))
	 =  HappyAbsSyn18
		 (Id happy_var_1
	)
happyReduction_54 _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_3  19 happyReduction_55
happyReduction_55 _
	(HappyAbsSyn20  happy_var_2)
	_
	 =  HappyAbsSyn19
		 (Matrix happy_var_2
	)
happyReduction_55 _ _ _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_2  19 happyReduction_56
happyReduction_56 _
	_
	 =  HappyAbsSyn19
		 (Matrix []
	)

happyReduce_57 = happySpecReduce_1  20 happyReduction_57
happyReduction_57 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn20
		 ([happy_var_1]
	)
happyReduction_57 _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_3  20 happyReduction_58
happyReduction_58 (HappyAbsSyn21  happy_var_3)
	_
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_58 _ _ _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_1  21 happyReduction_59
happyReduction_59 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn21
		 ([happy_var_1]
	)
happyReduction_59 _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_3  21 happyReduction_60
happyReduction_60 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn21
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_60 _ _ _  = notHappyAtAll 

happyReduce_61 = happyReduce 4 22 happyReduction_61
happyReduction_61 (_ `HappyStk`
	(HappyAbsSyn27  happy_var_3) `HappyStk`
	(HappyAbsSyn23  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn22
		 (InsBlock happy_var_2 happy_var_3
	) `HappyStk` happyRest

happyReduce_62 = happySpecReduce_2  23 happyReduction_62
happyReduction_62 (HappyAbsSyn24  happy_var_2)
	_
	 =  HappyAbsSyn23
		 (happy_var_2
	)
happyReduction_62 _ _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_0  23 happyReduction_63
happyReduction_63  =  HappyAbsSyn23
		 (emptySymTable
	)

happyReduce_64 = happySpecReduce_3  24 happyReduction_64
happyReduction_64 (HappyAbsSyn25  happy_var_3)
	_
	(HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn24
		 (insertListId happy_var_1 (Var happy_var_3 Nothing) emptySymTable
	)
happyReduction_64 _ _ _  = notHappyAtAll 

happyReduce_65 = happyReduce 5 24 happyReduction_65
happyReduction_65 ((HappyAbsSyn25  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn26  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn24  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn24
		 (insertListId happy_var_3 (Var happy_var_5 Nothing) happy_var_1
	) `HappyStk` happyRest

happyReduce_66 = happySpecReduce_1  25 happyReduction_66
happyReduction_66 _
	 =  HappyAbsSyn25
		 (TNum
	)

happyReduce_67 = happySpecReduce_1  25 happyReduction_67
happyReduction_67 _
	 =  HappyAbsSyn25
		 (TVec
	)

happyReduce_68 = happySpecReduce_1  25 happyReduction_68
happyReduction_68 _
	 =  HappyAbsSyn25
		 (TMat
	)

happyReduce_69 = happySpecReduce_1  26 happyReduction_69
happyReduction_69 (HappyTerminal (TkId _ happy_var_1))
	 =  HappyAbsSyn26
		 ([happy_var_1]
	)
happyReduction_69 _  = notHappyAtAll 

happyReduce_70 = happySpecReduce_3  26 happyReduction_70
happyReduction_70 (HappyTerminal (TkId _ happy_var_3))
	_
	(HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn26
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_70 _ _ _  = notHappyAtAll 

happyReduce_71 = happySpecReduce_1  27 happyReduction_71
happyReduction_71 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn27
		 ([happy_var_1]
	)
happyReduction_71 _  = notHappyAtAll 

happyReduce_72 = happySpecReduce_3  27 happyReduction_72
happyReduction_72 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn27
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_72 _ _ _  = notHappyAtAll 

happyReduce_73 = happySpecReduce_2  28 happyReduction_73
happyReduction_73 (HappyAbsSyn29  happy_var_2)
	_
	 =  HappyAbsSyn28
		 (Write happy_var_2
	)
happyReduction_73 _ _  = notHappyAtAll 

happyReduce_74 = happySpecReduce_1  29 happyReduction_74
happyReduction_74 (HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn29
		 ([happy_var_1]
	)
happyReduction_74 _  = notHappyAtAll 

happyReduce_75 = happySpecReduce_3  29 happyReduction_75
happyReduction_75 (HappyAbsSyn30  happy_var_3)
	_
	(HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn29
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_75 _ _ _  = notHappyAtAll 

happyReduce_76 = happySpecReduce_1  30 happyReduction_76
happyReduction_76 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn30
		 (happy_var_1
	)
happyReduction_76 _  = notHappyAtAll 

happyReduce_77 = happySpecReduce_1  30 happyReduction_77
happyReduction_77 (HappyTerminal (TkString _ happy_var_1))
	 =  HappyAbsSyn30
		 (Chars  happy_var_1
	)
happyReduction_77 _  = notHappyAtAll 

happyReduce_78 = happyReduce 4 31 happyReduction_78
happyReduction_78 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn34  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn31
		 (While happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_79 = happyReduce 5 32 happyReduction_79
happyReduction_79 ((HappyAbsSyn33  happy_var_5) `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn34  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn32
		 (Cond happy_var_2 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_80 = happySpecReduce_0  33 happyReduction_80
happyReduction_80  =  HappyAbsSyn33
		 (Nothing
	)

happyReduce_81 = happySpecReduce_2  33 happyReduction_81
happyReduction_81 (HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn33
		 (Just (Else happy_var_2)
	)
happyReduction_81 _ _  = notHappyAtAll 

happyReduce_82 = happySpecReduce_3  34 happyReduction_82
happyReduction_82 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn34
		 (Less happy_var_1 happy_var_3
	)
happyReduction_82 _ _ _  = notHappyAtAll 

happyReduce_83 = happySpecReduce_3  34 happyReduction_83
happyReduction_83 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn34
		 (Great happy_var_1 happy_var_3
	)
happyReduction_83 _ _ _  = notHappyAtAll 

happyReduce_84 = happySpecReduce_3  34 happyReduction_84
happyReduction_84 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn34
		 (LET happy_var_1 happy_var_3
	)
happyReduction_84 _ _ _  = notHappyAtAll 

happyReduce_85 = happySpecReduce_3  34 happyReduction_85
happyReduction_85 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn34
		 (GET happy_var_1 happy_var_3
	)
happyReduction_85 _ _ _  = notHappyAtAll 

happyReduce_86 = happySpecReduce_3  34 happyReduction_86
happyReduction_86 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn34
		 (Equal happy_var_1 happy_var_3
	)
happyReduction_86 _ _ _  = notHappyAtAll 

happyReduce_87 = happySpecReduce_3  34 happyReduction_87
happyReduction_87 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn34
		 (NEqual happy_var_1 happy_var_3
	)
happyReduction_87 _ _ _  = notHappyAtAll 

happyReduce_88 = happySpecReduce_1  34 happyReduction_88
happyReduction_88 _
	 =  HappyAbsSyn34
		 (TRUE
	)

happyReduce_89 = happySpecReduce_1  34 happyReduction_89
happyReduction_89 _
	 =  HappyAbsSyn34
		 (FALSE
	)

happyReduce_90 = happySpecReduce_3  34 happyReduction_90
happyReduction_90 (HappyAbsSyn34  happy_var_3)
	_
	(HappyAbsSyn34  happy_var_1)
	 =  HappyAbsSyn34
		 (And happy_var_1 happy_var_3
	)
happyReduction_90 _ _ _  = notHappyAtAll 

happyReduce_91 = happySpecReduce_3  34 happyReduction_91
happyReduction_91 (HappyAbsSyn34  happy_var_3)
	_
	(HappyAbsSyn34  happy_var_1)
	 =  HappyAbsSyn34
		 (Or happy_var_1 happy_var_3
	)
happyReduction_91 _ _ _  = notHappyAtAll 

happyReduce_92 = happySpecReduce_3  34 happyReduction_92
happyReduction_92 (HappyAbsSyn34  happy_var_3)
	_
	(HappyAbsSyn34  happy_var_1)
	 =  HappyAbsSyn34
		 (BoolEqual happy_var_1 happy_var_3
	)
happyReduction_92 _ _ _  = notHappyAtAll 

happyReduce_93 = happySpecReduce_3  34 happyReduction_93
happyReduction_93 _
	(HappyAbsSyn34  happy_var_2)
	_
	 =  HappyAbsSyn34
		 (BoolRB happy_var_2
	)
happyReduction_93 _ _ _  = notHappyAtAll 

happyReduce_94 = happySpecReduce_2  34 happyReduction_94
happyReduction_94 (HappyAbsSyn34  happy_var_2)
	_
	 =  HappyAbsSyn34
		 (Not happy_var_2
	)
happyReduction_94 _ _  = notHappyAtAll 

happyReduce_95 = happyReduce 6 35 happyReduction_95
happyReduction_95 ((HappyAbsSyn7  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn18  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TkId _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn35
		 (Iter (Id happy_var_2) happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_96 = happySpecReduce_2  36 happyReduction_96
happyReduction_96 (HappyAbsSyn18  happy_var_2)
	_
	 =  HappyAbsSyn36
		 (Read happy_var_2
	)
happyReduction_96 _ _  = notHappyAtAll 

happyReduce_97 = happySpecReduce_2  37 happyReduction_97
happyReduction_97 (HappyAbsSyn18  happy_var_2)
	_
	 =  HappyAbsSyn37
		 (Return happy_var_2
	)
happyReduction_97 _ _  = notHappyAtAll 

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
happyError' :: () => [Token] -> HappyIdentity a
happyError' = HappyIdentity . syntaxError

parser tks = happyRunIdentity happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


{-
    Funcion Recibe Token y Devuelve el Valor contenido en este,

-}

retValS :: Token -> String
retValS (TkId _ s) = s
retValS (TkString _ s) = s

retValD :: Token -> Double
retValD (TkNum _ s) = s

insertListId (id:ids) symb symt = insertListId ids symb (insert id symb symt)
insertListId [] _ symt = symt


syntaxError :: [Token] -> a
syntaxError (t:ts) = error $ "Error de sintaxis en el Token " ++ (show t) ++ "\n" ++ "Seguido de: " ++ (unlines $ map show $ take 3 ts)
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
