{-|
   Asunto: C&#243;digo fuente del Proyecto &#250;nico (Entrega 3)
   Proyecto: Analizador Lexicogr&#225;fico en Haskell
   Materia: Taller de Traductores (CI-3725)
   Trimestre: Abril-Julio 2011
   Profesor: Carlos Colmenares

   Grupo: H01

   Funaux es una compilación de funciones check*, que funcionan como caja de
   herramientas para checkAST, y así poderle facilitar al mismo:
     * Chequeo de Tipos
     * Chequeo de Igualdad de Tipo
     * Chequeo de Tipos de Listas
     * Chequeo de Listas de TNum (para definir matrices)
     * Chequeo de correctitud de tipos en las expresiones y lo que devuelven las
     mismas
     * Chequeo de que el Iterador no edite su condicion durante su ejecución

-}

module Funaux(
  checkType,
  checkTypeNum,
  checkTypeList,
  checkTypeLists,
  checkType1,
  checkType2,
  checkType3,
  checkType4,
  checkType6,
  checkBool2,
  checkBool3,
  checkIter
  )where

import SymTable
import AST

{-|
  @checkType@ se encarga de verificar, si 2 variables son del mismo tipo
-}
checkType :: VarType    -- ^ Elemento a verificar
          -> VarType    -- ^ Elemento a verificar
          -> Bool       -- ^ Si son iguales, true, caso contrario false
checkType TNum TNum = True
checkType TMat TMat = True
checkType TVec TVec = True
checkType _ _ = False

{-|
  @checkType1@ se encarga de verificar
-}
checkType1 :: VarType    -- ^ Elemento a verificar
             -> Bool     -- ^ Si es un tipo válido, devuelve True
checkType1 TNum = True
checkType1 TMat = True
checkType1 TVec = True
checkType1 TBool = True
checkType1 TString = True

{-|
  @checkTypeList@ se encarga de verficar si los elementos de una lista son
  válidos
-}
checkTypeList :: [VarType]     -- ^ Lista de VarType a verificar si son válidos
              -> Bool          -- ^ True si es válido
checkTypeList (a:as) = checkType1 a && checkTypeList as
checkTypeList [] = True

{-|
  @checkTypeLists@ Verifica si 2 listas son del mismo tamaño, y además verifica
  si el orden de ambas listas es el mismo
-}
checkTypeLists :: [VarType]     -- ^ Lista a comparar
               -> [VarType]     -- ^ Lista a comparar
               -> Bool          -- ^ Si son del mismo tamaño/mismo orden true
checkTypeLists [] [] = True
checkTypeLists (a:as) (b:bs)  = if (a == b) then  True && checkTypeLists as bs
                               else False
checkTypeLists a [] = False
checkTypeLists [] a = False

{-|
  La función @checkTypeNum@ se encarga de verificar si la lista de elementos
  es toda del tipo TNum, para verificar la correctitud de una declaración de
  matriz/vector
-}
checkTypeNum :: [VarType]       -- ^ Lista a verificar
             -> Bool         -- ^ True si todos son números
checkTypeNum l = and $ map (==TNum) l

{-|
  @checkType2@ se encarga de verificar si las operaciones unarias de los tipos
  de Numeros, Vectores y Matrices son válidos
-}
checkType2 :: String -> VarType -> Maybe VarType
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

{-|
  @checkType3@ se encarga de verificar si las operaciones binarias de los tipos
  de Numeros, Vectores y Matrices son válidos.

  Ademas del acceso a Vector, que recibe un Vector, numero 'a' y regresa el
  elemento  en la posición 'a' del vector
-}
checkType3 :: String -> VarType -> VarType -> Maybe VarType
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

{-|
  @checkType4@ se encarga de verificar si las operaciones de Acceso a Matriz
  y acceso a parte de un vector reciben los tipos correctos, y devuelve
  el tiepo correspondiente
-}
checkType4 :: String -> VarType ->VarType ->VarType -> Maybe VarType
checkType4 "ParAccessV" TVec TNum TNum = Just TVec
checkType4 "AccessElemM" TMat TNum TNum = Just TNum
checkType4 _ _ _ _ =  Nothing

{-|
  @checkType6@ se encarga de verificar si la operaacion de acceso a parte de una
  matriz recibe los tipos correctos, y devuelve el tiepo correspondiente,
  Cualquier otra operacion sera desechada de manera automatica de 5 elementos
-}
checkType6 :: String -> VarType -> VarType -> VarType -> VarType -> VarType -> Maybe VarType
checkType6 "ParAccessM" TMat TNum TNum TNum TNum = Just TMat
checkType6 _ _ _ _ _ _=  Nothing

{-|
  @checkBool2@ se encarga de verificar si las operaciones unarias de los tipos
  Booleanos son válidos
-}
checkBool2 :: String -> VarType -> Maybe VarType
checkBool2 "BoolRB" TBool = Just TBool
checkBool2 "Not" TBool = Just TBool
checkBool2 _ _ = Nothing

{-|
  @checkBool3@ se encarga de verificar si las operaciones binarias de los tipos
  Booleanos son válidos
-}
checkBool3 :: String -> VarType -> VarType ->  Maybe VarType
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

{-|
  @checkIter@ es una funcion auxiliar de checkAST que se encarga de verificar si
  las instrucciones de un 'For Each' editan a la expresión condicional del mismo
-}
checkIter :: ASTExp -> ASTInstruc -> Bool
checkIter a (Asign b _) = if (a==b) then False else True
checkIter a (Read b) = if (a==b) then False else True
checkIter a (While _ inst) = checkIter a inst
checkIter a (Iter _ _ inst) = checkIter a inst
checkIter a (Cond _ inst0 (Just (Else inst1))) = checkIter a inst0 && checkIter a inst1
checkIter a (Cond _ inst _) = checkIter a inst
checkIter a (Return _) = True
checkIter a (Write _) = True
checkIter (Id a) (InsBlock sym ints) = if (SymTable.isMember a sym) then True else and $ map (checkIter (Id a)) ints
