{-|

  Asunto: C&#243;digo fuente del Proyecto &#250;nico (Entrega 3).
  Proyecto: Analizador Lexicogr&#225;fico en Haskell
  Materia: Taller de Traductores (CI-3725)
  Trimestre: Abril-Julio 2011
  Profesor: Carlos Colmenares

  Grupo: H01

 -}

module CheckAST(
   checkAST,
   checkE,
   checkI,
   checkB
  )where

import SymTable
import AST
import Funaux

{- Check de Funciones-}
checkAST ((funTable,funList),ins) =  (and (map (\(a,b)->checkI 1 ((\(Fun a x c)-> x) ( (\(Just q)-> q) (find a funTable))) funTable b) (map (\(FunDec s i) -> (s,i)) funList))) && checkI 0 emptySymTable funTable ins

checkI nDec varTable funTable (Asign exp1 exp2)      = checkType (checkE varTable funTable exp1) (checkE varTable funTable exp2)
checkI nDec varTable funTable (Write exps)           = checkTypeList $ map (checkE varTable funTable) exps
checkI nDec varTable funTable (While boolExp ins)    = checkType1 (checkB varTable funTable boolExp) && checkI nDec varTable funTable ins
checkI nDec varTable funTable (Iter exp1 exp2 ins)   =(\(a,b) -> a && b) (checkIter exp1 ins, (checkType1 (checkE varTable funTable exp1)) && (checkType1 (checkE varTable funTable exp2))  && (checkI nDec varTable funTable ins))
checkI nDec varTable funTable (Read (Id _))          = True
checkI nDec varTable funTable (Return exp)           = if (nDec == 0)
                                                       then error "Error: Can not use return at Main"
                                                       else checkType1 (checkE varTable funTable exp)
checkI nDec varTable funTable (Cond boolExp ins Nothing)  = checkType1 (checkB varTable funTable boolExp) && checkI nDec varTable funTable ins
checkI nDec varTable funTable (Cond boolExp ins1 (Just (Else ins2)))  = checkType1 (checkB varTable funTable boolExp) && checkI nDec varTable funTable ins1 && checkI nDec varTable funTable ins2
checkI nDec varTable funTable (InsBlock symt ins)         = and $ map (checkI nDec newST funTable) ins
                                                            where newST = (setFather symt (Just varTable))

checkE :: SymTable
      -> SymTable
      -> ASTExp
      -> VarType

{- Definicion de Tipo Num -}
checkE varTable funTable (Num _)    = TNum

{- Definicion de Id -}
checkE varTable funTable (Id name)  = if elemento == Nothing
                                      then mensajeND " Variable " name
                                      else SymTable.typeSymbol $ (\(Just x) -> x) elemento
                                          where elemento = (SymTable.find name varTable)

{- Instancia del Tipo String -}
checkE varTable funTable (Chars _)  = TString

{- Definicion de Matriz/Vector -}
checkE varTable funTable (Matrix exps)     = if elemento
                                             then TMat
                                             else mensajeBM " Matrix Elements " exps
                                                 where elemento = checkTypeNum (concat (map (map (checkE varTable funTable)) exps))

{- Definicion de Funciones -}
checkE varTable funTable (Func embebed exps) | embebed == "range" = if checkTypeNum (map (checkE varTable funTable) exps) then TVec
                                                                    else mensajeBC embebed exps
                                             | embebed == "eye" = if checkTypeNum (map (checkE varTable funTable) exps) then TVec
                                                                    else mensajeBC embebed exps
                                             | embebed == "zeroes" = if checkTypeNum (map (checkE varTable funTable) exps) 
                                                                     then if (length exps== 1)
                                                                          then TVec
                                                                          else TMat
                                                                     else mensajeBC embebed exps

checkE varTable funTable (Func name exps)  = if SymTable.isMember name funTable
                                             then if (checkTypeLists (SymTable.signSymbol elemento) (map (checkE varTable funTable) exps))
                                                  then (SymTable.typeSymbol elemento)
                                                  else mensajeBC name exps
                                             else mensajeND " Function " name
                                                  where elemento = (\(Just x) -> x) (SymTable.find name funTable)

{- Parentesis -}
checkE varTable funTable (RB exp)          = if ct == Nothing
                                             then mensajeBM " \"()\" - Round Bracket " exp
                                             else (\(Just x) -> x) ct
                                                 where ct = checkType2 "RB" (checkE varTable funTable exp)
{- Operaciones de Aritmeticas -}
{- Suma -}
checkE varTable funTable (Plus exp1 exp2) = if ct == Nothing
                                            then mensajeOp2 "Plus" exp1 exp2
                                            else (\(Just x) -> x) ct
                                                where ct = checkType3 "Plus" (checkE varTable funTable exp1) (checkE varTable funTable exp2)

{- Resta -}
checkE varTable funTable (Minus exp1 exp2) = if ct == Nothing
                                             then mensajeOp2 "Minus" exp1 exp2
                                             else (\(Just x) -> x) ct
                                                 where ct = checkType3 "Minus" (checkE varTable funTable exp1) (checkE varTable funTable exp2)

{- Multiplicacion -}
checkE varTable funTable (Times exp1 exp2) = if ct == Nothing
                                             then mensajeOp2 "Times" exp1 exp2
                                             else (\(Just x) -> x) ct
                                                 where ct = checkType3 "Times" (checkE varTable funTable exp1) (checkE varTable funTable exp2)

{- Division -}
checkE varTable funTable (Div exp1 exp2) = if ct == Nothing
                                           then mensajeOp2 "Division" exp1 exp2
                                           else (\(Just x) -> x) ct
                                               where ct = checkType3 "Div" (checkE varTable funTable exp1) (checkE varTable funTable exp2)

{- Modulo -}
checkE varTable funTable (Mod exp1 exp2) = if ct == Nothing
                                           then mensajeOp2 "Module" exp1 exp2
                                           else (\(Just x) -> x) ct
                                               where ct = checkType3 "Mod" (checkE varTable funTable exp1) (checkE varTable funTable exp2)

{- Exponenciacion -}
checkE varTable funTable (Expo exp1 exp2) = if ct == Nothing
                                            then mensajeOp2 "Exponentiation" exp1 exp2
                                            else (\(Just x) -> x) ct
                                                where ct = checkType3 "Expo" (checkE varTable funTable exp1) (checkE varTable funTable exp2)

{- Producto Punto -}
checkE varTable funTable (Dot exp1 exp2) = if ct == Nothing
                                           then mensajeOp2 "Dot Product" exp1 exp2
                                           else (\(Just x) -> x) ct
                                               where ct = checkType3 "Dot" (checkE varTable funTable exp1) (checkE varTable funTable exp2)

{- Traspuesta -}
checkE varTable funTable (Caret exp)         = if ct == Nothing
                                               then mensajeBM " \"^\" - Caret " exp
                                               else (\(Just x) -> x) ct
                                                   where ct = checkType2 "Caret" (checkE varTable funTable exp)

{- Numero de Columnas-}
checkE varTable funTable (DS exp)         = if ct == Nothing
                                            then mensajeBM " \"$\" - Dollar Sign " exp
                                            else (\(Just x) -> x) ct
                                                where ct = checkType2 "DS" (checkE varTable funTable exp)

{- Numero de De Filas -}
checkE varTable funTable (At exp)         = if ct == Nothing
                                            then mensajeBM " \"@\" - At " exp
                                            else (\(Just x) -> x) ct
                                                where ct = checkType2 "At" (checkE varTable funTable exp)

{- Negacion, o Negativo de los Numeros -}
checkE varTable funTable (MinusU exp)     = if ct == Nothing
                                            then mensajeBM " \"-\" - Negative " exp
                                            else (\(Just x) -> x) ct
                                                where ct = checkType2 "MinusU" (checkE varTable funTable exp)

{- Acceso a un Elemento de Vector -}
checkE varTable funTable (AccessElemV exp1 exp2)  =  if ct == Nothing
                                                     then mensajeAM exp1
                                                     else (\(Just x) -> x) ct
                                                         where ct = checkType3 "AccessElemV" (checkE varTable funTable exp1) (checkE varTable funTable exp2)

{- Acceso a un Elemento de Matriz -}
checkE varTable funTable (AccessElemM exp1 exp2 exp3) =  if ct == Nothing
                                                         then mensajeAM exp1
                                                         else (\(Just x) -> x) ct
                                                             where ct = checkType4 "AccessElemV" (checkE varTable funTable exp1) (checkE varTable funTable exp2) (checkE varTable funTable exp3)

{- Acceso Parcial a un Vector -}
checkE varTable funTable (ParAccessV  exp1 exp2 exp3) =  if ct == Nothing
                                                         then mensajeAM exp1
                                                         else (\(Just x) -> x) ct
                                                             where ct = checkType4 "ParAccessElemV" (checkE varTable funTable exp1) (checkE varTable funTable pexp2) (checkE varTable funTable pexp3)
                                                                   pexp2 = numbers exp2
                                                                   pexp3 = numbers exp3

{- Acceso Parcial a una Matriz -}
checkE varTable funTable (ParAccessM  exp1 exp2 exp3 exp4 exp5) =  if ct == Nothing
                                                                   then mensajeAM exp1
                                                                   else (\(Just x) -> x) ct
                                                                       where ct = checkType6 "AccessElemM" (checkE varTable funTable exp1) (checkE varTable funTable pexp2) (checkE varTable funTable pexp3) (checkE varTable funTable pexp4) (checkE varTable funTable pexp5)
                                                                             pexp2 = numbers exp2
                                                                             pexp3 = numbers exp3
                                                                             pexp4 = numbers exp4
                                                                             pexp5 = numbers exp5

{- Booleanos -}
{- Definicion de los Basicos: True y False -}
checkB varTable funTable TRUE = TBool
checkB varTable funTable FALSE = TBool

{-  Menor que -}
checkB varTable funTable (Less exp1 exp2)  = if ct == Nothing
                                             then mensajeBB " \"<\"/ Less " exp1 exp2
                                             else (\(Just x) -> x) ct
                                                 where ct = checkBool3 "Less" (checkE varTable funTable exp1) (checkE varTable funTable exp2)

{- Mayor que -}
checkB varTable funTable (Great exp1 exp2)  = if ct == Nothing
                                              then mensajeBB " \">\"/  Great  " exp1 exp2
                                              else (\(Just x) -> x) ct
                                                  where ct = checkBool3 "" (checkE varTable funTable exp1) (checkE varTable funTable exp2)

{- Menor o Igual que -}
checkB varTable funTable (LET exp1 exp2)  = if ct == Nothing
                                            then mensajeBB " \"<=\" / Less Equal Than " exp1 exp2
                                            else (\(Just x) -> x) ct
                                                where ct = checkBool3 "" (checkE varTable funTable exp1) (checkE varTable funTable exp2)

{- Mayor o Igual que -}
checkB varTable funTable (GET exp1 exp2)  = if ct == Nothing
                                            then mensajeBB " \">=\" / Great Equal Than " exp1 exp2
                                            else (\(Just x) -> x) ct
                                                where ct = checkBool3 "GET" (checkE varTable funTable exp1) (checkE varTable funTable exp2)

{- Igualdad de Numeros reales  -}
checkB varTable funTable (Equal exp1 exp2)  = if ct == Nothing
                                              then mensajeBB " \"=\" / Equal  " exp1 exp2
                                              else (\(Just x) -> x) ct
                                                  where ct = checkBool3 "Equal" (checkE varTable funTable exp1) (checkE varTable funTable exp2)

{- Desigualdad de Numeros reales -}
checkB varTable funTable (NEqual exp1 exp2)  = if ct == Nothing
                                               then mensajeBB " \"!=\" / Not Equal  " exp1 exp2
                                               else (\(Just x) -> x) ct
                                                   where ct = checkBool3 "NEqual" (checkE varTable funTable exp1) (checkE varTable funTable exp2)
{- Operacion Booleana Y -}
checkB varTable funTable (And exp1 exp2)  = if ct == Nothing
                                            then mensajeBB " \"&&\" / And  " exp1 exp2
                                            else (\(Just x) -> x) ct
                                                where ct = checkBool3 "And" (checkB varTable funTable exp1) (checkB varTable funTable exp2)

{- Operacion Booleana O -}
checkB varTable funTable (Or exp1 exp2)  = if ct == Nothing
                                           then mensajeBB " \"||\" / Or  " exp1 exp2
                                           else (\(Just x) -> x) ct
                                               where ct = checkBool3 "Or" (checkB varTable funTable exp1) (checkB varTable funTable exp2)

{- Operacion Igualdad de Booleanos -}
checkB varTable funTable (BoolEqual exp1 exp2)  = if ct == Nothing
                                                  then mensajeBB " \"=\" / Equal of Booleans  " exp1 exp2
                                                  else (\(Just x) -> x) ct
                                                      where ct = checkBool3 "BoolEqual" (checkB varTable funTable exp1) (checkB varTable funTable exp2)

{- Parentesis Booleanos -}
checkB varTable funTable (BoolRB exp)         = if ct == Nothing
                                                then mensajeBM " \"-\" - Round Bracket  " exp
                                                else (\(Just x) -> x) ct
                                                    where ct = checkType2 "BoolRB" (checkB varTable funTable exp)

{- Negacion -}
checkB varTable funTable (Not exp)         = if ct == Nothing
                                             then mensajeBM " \"-\" - Negative  " exp
                                             else (\(Just x) -> x) ct
                                                 where ct = checkType2 "Not" (checkB varTable funTable exp)

mensajeOp2 :: String
           -> ASTExp
           -> ASTExp
           -> error
mensajeOp2 op exp1 exp2 = error $ "Error: Can not do  \""++op++"\" of "++(show exp1)++" and "++(show exp2)

mensajeND :: String
          -> String
          -> error
mensajeND elemND id = error $ "Error: "++elemND++"\""++id++"\" Not defined."

mensajeBM problem exp = error $ "Error: Type not permited at "++(show exp)++" in "++problem

mensajeAM mat = error $ "Error: Can not access or Bad definition to "++(show mat)

mensajeBC name parameters = error $ "Error: Bad call of function \""++name++"\" with the next parameters:"++(show parameters)

mensajeBB op exp1 exp2 = error $ "Error: Can not \"Comparate/ "++op++"\" of "++(show exp1)++" and "++(show exp2)

numbers :: Maybe ASTExp
        -> ASTExp
numbers Nothing = Num 1
numbers (Just a) = a
