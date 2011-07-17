module Funaux(
  checkTypeNum,
  checkTypeLists,
  checkType2,
  checkType3,
  checkType4,
  checkType6,
  checkBool2,
  checkBool3
  )where

import SymTable
import AST

checkTypeLists [] [] = True
checkTypeLists (a:as) (b:bs)  = if (a == b) then  True && checkTypeLists as bs 
                               else False  

checkTypeNum l = and $ map (==TNum) l

checkType2 "RB" TNum = Just TNum
checkType2 "RB" TVec = Just TVec
checkType2 "RB" TMat = Just TMat
checkType2 "MinusU" TNum = Just TNum
checkType2 "DS" TVec = Just TNum
checkType2 "At" TVec = Just TNum
checkType2 "Caret" TVec = Just TVec
checkType2 "DS" TMat = Just TNum
checkType2 "At" TMat = Just TNum
checkType2 "Caret" TMat = Just TMat
checkType2 _ _ = Nothing

checkType3 "Plus" TNum TNum = Just TNum
checkType3 "Minus" TNum TNum = Just TNum
checkType3 "Times" TNum TNum = Just TNum
checkType3 "Div" TNum TNum = Just TNum
checkType3 "Mod" TNum TNum = Just TNum
checkType3 "Expo" TNum TNum = Just TNum
checkType3 "Times" TNum TVec = Just TVec
checkType3 "Times" TNum TMat = Just TMat
checkType3 "Plus" TVec TVec = Just TVec
checkType3 "Minus" TVec TVec = Just TVec
checkType3 "Times" TVec TVec = Just TVec
checkType3 "DoT" TVec TVec = Just TNum
checkType3 "Times" TVec TNum = Just TVec
checkType3 "Div" TVec TNum = Just TVec
checkType3 "AccessElemV" TVec TNum = Just TNum
checkType3 "Plus" TMat TMat = Just TMat
checkType3 "Minus" TMat TMat = Just TMat
checkType3 "Times" TMat TMat = Just TMat
checkType3 "Times" TMat TNum = Just TMat
checkType3 "Div" TMat TNum = Just TMat
checkType3 _ _ _ =  Nothing

checkType4 "ParAccessV" TVec TNum TNum = Just TVec
checkType4 "AccessElemM" TMat TNum TNum = Just TNum
checkType4 _ _ _ _ =  Nothing

checkType6 "ParAccessM" TMat TNum TNum TNum TNum = Just TMat
checkType6 _ _ _ _ _ _=  Nothing

checkBool2 "BoolRB" TBool = Just TBool
checkBool2 "Not" TBool = Just TBool
checkBool2 _ _ = Nothing

checkBool3 "Less" TNum TNum = Just TBool
checkBool3 "Great" TNum TNum = Just TBool
checkBool3 "LET" TNum TNum = Just TBool
checkBool3 "GET" TNum TNum = Just TBool
checkBool3 "Equal" TNum TNum = Just TBool
checkBool3 "NEqual" TNum TNum = Just TBool
checkBool3 "And" TBool TBool = Just TBool
checkBool3 "Or" TBool TBool = Just TBool
checkBool3 "BoolEqual" TBool TBool = Just TBool
checkBool3 _ _ _ = Nothing
