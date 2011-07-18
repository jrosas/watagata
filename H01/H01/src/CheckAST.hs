{-|

  Asunto: C&#243;digo fuente del Proyecto &#250;nico (Entrega 3).
  Proyecto: Analizador Lexicogr&#225;fico en Haskell
  Materia: Taller de Traductores (CI-3725)
  Trimestre: Abril-Julio 2011
  Profesor: Carlos Colmenares

  Grupo: H01

  Se encarga de la verificaci&#243;n de la correctitud est&#225;tica de un programa
  escrito en Vectorinox, para garantizar que un programa esta bien, al menos
  de manera est&#225;tica se debe verificar:
    * No pueden haber dos funciones con el mismo nombre, sin importar el n&#250;mero
    de argumentos de &#233;stos.
    * No pueden haber dos declaraciones de variable con el mismo nombre en el
    mismo bloque.
    * No se puede hacer menci&#243;n a variables o funciones no declaradas.
    * Las llamadas a funciones corresponen a las firmas de las funciones
    declaradas
    * Las expresiones son compatibles en tipos a gran escala: que las
    expresiones cumplan con las reglas de tipoimpuestas en el enunciado del
    lenguaje.
    * No pueden haber instrucciones de retorno de valores en el programa
    principal.
    * En una instrucci&#243;n de iteraci&#243;n sobre un vector/matriz, la instrucci&#243;n
    interna no puede de ninguna forma alterar la variable indicada en la
    instrucci&#243;n.

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

{-|
  @CheckAST@ es la funci&#243;n, que se pidio para esta entrega, y el chequeo de la
  parte estatica, del programa Vectorinox,
-}
checkAST :: ((SymTable, [FunDec]), ASTInstruc) -> Bool
checkAST ((funTable,funList),ins) = (and (map (\(a,b)->checkI 1 ((\(Fun a x c)-> x) ( (\(Just q)-> q) (find a funTable))) funTable b) (map (\(FunDec s i) -> (s,i)) funList))) && checkI 0 emptySymTable funTable ins

{-|
  Check de instrucciones del programa vectorinox, se encarga de verificar si las
  instrucciones han sido bien escritas, las expresiones de las mismas son
  v&#225;lidas, si se llama a return dentro del main o no y la correctitud de los
  bloques de instrucciones del for each
-}
{- Chequeo de los ASTInstruc "Asign"/ Asignaciones -}
checkI :: (Num a) => a -> SymTable -> SymTable -> ASTInstruc -> Bool
checkI nDec varTable funTable (Asign exp1 exp2)      =
    if checkType (checkE varTable funTable exp1) (checkE varTable funTable exp2)
    then True
    else messageOp2 " Asign " exp1 exp2

{- Chequeo de los ASTInstruc "Write" / Mostrar por Pantalla-}
checkI nDec varTable funTable (Write exps)           =
    if checkTypeList $ map (checkE varTable funTable) exps
    then True
    else error $ "Error: Can not Write"++(show exps)

{- Chequeo de los ASTInstruc "While" / Ciclos-}
checkI nDec varTable funTable (While boolExp ins)    =
    if checkType1 (checkB varTable funTable boolExp) && checkI nDec varTable funTable ins
    then True
    else error $ "Error: Can not do While with the boolExp"++(show boolExp)++"and instruct"++(show ins)

{- Chequeo de los ASTInstruc "Iter" / Iteraciones -}
checkI nDec varTable funTable (Iter exp1 exp2 ins)   =
    if (\(a,b) -> a && b) (checkIter exp1 ins, (checkType1 (checkE varTable funTable exp1)) && (checkType1 (checkE varTable funTable exp2))  && (checkI nDec varTable funTable ins))
    then True
    else error $ "Error: Can not comparate "++(show exp1)++" and "++(show exp2)++" to do"++(show ins)

{- Chequeo de los ASTInstruc "Read" / Asignar por Teclado-}
checkI nDec varTable funTable (Read (Id _))          = True

{- Chequeo de los ASTInstruc "Return" - Retornar Valor-}
checkI nDec varTable funTable (Return exp)           =
    if (nDec == 0)
    then error "Error: Can not use return at Main"
    else if checkType1 (checkE varTable funTable exp)
         then True
         else error $ "Error: Can not return"++(show exp)

{- Chequeo de los ASTInstruc "Cond" / If -}
checkI nDec varTable funTable (Cond boolExp ins Nothing)  =
    if checkType1 (checkB varTable funTable boolExp) && checkI nDec varTable funTable ins
    then True
    else error $ "Error: Problem with the \"If\" of condition "++(show boolExp)++" to do "++(show ins)

{- Chequeo de los ASTInstruc "Cond" / If-Else -}
checkI nDec varTable funTable (Cond boolExp ins1 (Just (Else ins2)))  =
    if checkType1 (checkB varTable funTable boolExp) && checkI nDec varTable funTable ins1 && checkI nDec varTable funTable ins2
    then True
    else error $ "Error: Problem with the \"If-Else\" of condition "++(show boolExp)

{- Chequeo de los ASTInstruc "InsBlock" / Bloque de Instrucciones -}
checkI nDec varTable funTable (InsBlock symt ins)         =
    if and $ map (checkI nDec newST funTable) ins
    then True
    else error $ "Error: With the Instructions Blocks "++(show ins)
        where newST = (setFather symt (Just varTable))

{-|
  @checkE@ se encarga de verificar si una expresi&#243;n es v&#225;lida,
  en caso de utilizar funciones o variables, realiza las busquedas
  correspondientes en las SymTables de cada una.
-}
{- Chequeo de Definicion de ASTExp Num / Tipo Num -}
checkE :: SymTable -> SymTable -> ASTExp -> VarType
checkE varTable funTable (Num _)    = TNum

{- Chequeo de Definicion de ASTExp Id / Variable -}
checkE varTable funTable (Id name)  = if elemento == Nothing
                                      then messageND " Variable " name
                                      else SymTable.typeSymbol $ (\(Just x) -> x) elemento
                                          where elemento = (SymTable.find name varTable)

{- Chequeo de Instancia del Tipo String -}
checkE varTable funTable (Chars _)  = TString

{- Definicion de Matriz/Vector -}
checkE varTable funTable (Matrix exps)     = if elemento
                                             then TMat
                                             else messageBM " Matrix Elements " exps
                                                 where elemento = checkTypeNum (concat (map (map (checkE varTable funTable)) exps))

{- Chequeo de Definicion de Funciones -}
checkE varTable funTable (Func embebed exps) | embebed == "range" = if checkTypeNum (map (checkE varTable funTable) exps) then TVec
                                                                    else messageBC embebed exps
                                             | embebed == "eye" = if checkTypeNum (map (checkE varTable funTable) exps) then TVec
                                                                    else messageBC embebed exps
                                             | embebed == "zeroes" = if checkTypeNum (map (checkE varTable funTable) exps) 
                                                                     then if (length exps== 1)
                                                                          then TVec
                                                                          else TMat
                                                                     else messageBC embebed exps
{- Chequeo de Llamada de Funciones -}
checkE varTable funTable (Func name exps)  = if SymTable.isMember name funTable
                                             then if (checkTypeLists (SymTable.signSymbol elemento) (map (checkE varTable funTable) exps))
                                                  then (SymTable.typeSymbol elemento)
                                                  else messageBC name exps
                                             else messageND " Function " name
                                                  where elemento = (\(Just x) -> x) (SymTable.find name funTable)

{- Chequeo de Parentesis -}
checkE varTable funTable (RB exp)          = if ct == Nothing
                                             then messageBM " \"()\" - Round Bracket " exp
                                             else (\(Just x) -> x) ct
                                                 where ct = checkType2 "RB" (checkE varTable funTable exp)
{-Chequeo de Operaciones de Aritmeticas -}
{- Suma -}
checkE varTable funTable (Plus exp1 exp2) = if ct == Nothing
                                            then messageOp2 "Plus" exp1 exp2
                                            else (\(Just x) -> x) ct
                                                where ct = checkType3 "Plus" (checkE varTable funTable exp1) (checkE varTable funTable exp2)

{- Resta -}
checkE varTable funTable (Minus exp1 exp2) = if ct == Nothing
                                             then messageOp2 "Minus" exp1 exp2
                                             else (\(Just x) -> x) ct
                                                 where ct = checkType3 "Minus" (checkE varTable funTable exp1) (checkE varTable funTable exp2)

{- Multiplicacion -}
checkE varTable funTable (Times exp1 exp2) = if ct == Nothing
                                             then messageOp2 "Times" exp1 exp2
                                             else (\(Just x) -> x) ct
                                                 where ct = checkType3 "Times" (checkE varTable funTable exp1) (checkE varTable funTable exp2)

{- Division -}
checkE varTable funTable (Div exp1 exp2) = if ct == Nothing
                                           then messageOp2 "Division" exp1 exp2
                                           else (\(Just x) -> x) ct
                                               where ct = checkType3 "Div" (checkE varTable funTable exp1) (checkE varTable funTable exp2)

{- Modulo -}
checkE varTable funTable (Mod exp1 exp2) = if ct == Nothing
                                           then messageOp2 "Module" exp1 exp2
                                           else (\(Just x) -> x) ct
                                               where ct = checkType3 "Mod" (checkE varTable funTable exp1) (checkE varTable funTable exp2)

{- Exponenciacion -}
checkE varTable funTable (Expo exp1 exp2) = if ct == Nothing
                                            then messageOp2 "Exponentiation" exp1 exp2
                                            else (\(Just x) -> x) ct
                                                where ct = checkType3 "Expo" (checkE varTable funTable exp1) (checkE varTable funTable exp2)

{- Producto Punto -}
checkE varTable funTable (Dot exp1 exp2) = if ct == Nothing
                                           then messageOp2 "Dot Product" exp1 exp2
                                           else (\(Just x) -> x) ct
                                               where ct = checkType3 "Dot" (checkE varTable funTable exp1) (checkE varTable funTable exp2)

{- Traspuesta -}
checkE varTable funTable (Caret exp)         = if ct == Nothing
                                               then messageBM " \"^\" - Caret " exp
                                               else (\(Just x) -> x) ct
                                                   where ct = checkType2 "Caret" (checkE varTable funTable exp)

{- Numero de Columnas-}
checkE varTable funTable (DS exp)         = if ct == Nothing
                                            then messageBM " \"$\" - Dollar Sign " exp
                                            else (\(Just x) -> x) ct
                                                where ct = checkType2 "DS" (checkE varTable funTable exp)

{- Numero de De Filas -}
checkE varTable funTable (At exp)         = if ct == Nothing
                                            then messageBM " \"@\" - At " exp
                                            else (\(Just x) -> x) ct
                                                where ct = checkType2 "At" (checkE varTable funTable exp)

{- Negacion, o Negativo de los Numeros -}
checkE varTable funTable (MinusU exp)     = if ct == Nothing
                                            then messageBM " \"-\" - Negative " exp
                                            else (\(Just x) -> x) ct
                                                where ct = checkType2 "MinusU" (checkE varTable funTable exp)

{- Acceso a un Elemento de Vector -}
checkE varTable funTable (AccessElemV exp1 exp2)  =  if ct == Nothing
                                                     then messageAM exp1
                                                     else (\(Just x) -> x) ct
                                                         where ct = checkType3 "AccessElemV" (checkE varTable funTable exp1) (checkE varTable funTable exp2)

{- Acceso a un Elemento de Matriz -}
checkE varTable funTable (AccessElemM exp1 exp2 exp3) =  if ct == Nothing
                                                         then messageAM exp1
                                                         else (\(Just x) -> x) ct
                                                             where ct = checkType4 "AccessElemV" (checkE varTable funTable exp1) (checkE varTable funTable exp2) (checkE varTable funTable exp3)

{- Acceso Parcial a un Vector -}
checkE varTable funTable (ParAccessV  exp1 exp2 exp3) =  if ct == Nothing
                                                         then messageAM exp1
                                                         else (\(Just x) -> x) ct
                                                             where ct = checkType4 "ParAccessElemV" (checkE varTable funTable exp1) (checkE varTable funTable pexp2) (checkE varTable funTable pexp3)
                                                                   pexp2 = numbers exp2
                                                                   pexp3 = numbers exp3

{- Acceso Parcial a una Matriz -}
checkE varTable funTable (ParAccessM  exp1 exp2 exp3 exp4 exp5) =  if ct == Nothing
                                                                   then messageAM exp1
                                                                   else (\(Just x) -> x) ct
                                                                       where ct = checkType6 "AccessElemM" (checkE varTable funTable exp1) (checkE varTable funTable pexp2) (checkE varTable funTable pexp3) (checkE varTable funTable pexp4) (checkE varTable funTable pexp5)
                                                                             pexp2 = numbers exp2
                                                                             pexp3 = numbers exp3
                                                                             pexp4 = numbers exp4
                                                                             pexp5 = numbers exp5

{- Chequeo de  Booleanos -}
{- Definicion de los B&#225;sicos: True y False -}
{-|
  @checkB@ se encarga de verificar si una expresi&#243;n booleana es 
  v&#225;lida, en caso de utilizar funciones o variables, realiza las busquedas
  correspondientes en las SymTables de cada una.
-}
checkB :: SymTable -> SymTable -> ASTBoolExp -> VarType
checkB varTable funTable TRUE = TBool
checkB varTable funTable FALSE = TBool

{-  Menor que -}
checkB varTable funTable (Less exp1 exp2)  = if ct == Nothing
                                             then messageBB " \"<\"/ Less " exp1 exp2
                                             else (\(Just x) -> x) ct
                                                 where ct = checkBool3 "Less" (checkE varTable funTable exp1) (checkE varTable funTable exp2)

{- Mayor que -}
checkB varTable funTable (Great exp1 exp2)  = if ct == Nothing
                                              then messageBB " \">\"/  Great  " exp1 exp2
                                              else (\(Just x) -> x) ct
                                                  where ct = checkBool3 "" (checkE varTable funTable exp1) (checkE varTable funTable exp2)

{- Menor o Igual que -}
checkB varTable funTable (LET exp1 exp2)  = if ct == Nothing
                                            then messageBB " \"<=\" / Less Equal Than " exp1 exp2
                                            else (\(Just x) -> x) ct
                                                where ct = checkBool3 "" (checkE varTable funTable exp1) (checkE varTable funTable exp2)

{- Mayor o Igual que -}
checkB varTable funTable (GET exp1 exp2)  = if ct == Nothing
                                            then messageBB " \">=\" / Great Equal Than " exp1 exp2
                                            else (\(Just x) -> x) ct
                                                where ct = checkBool3 "GET" (checkE varTable funTable exp1) (checkE varTable funTable exp2)

{- Igualdad de Numeros reales  -}
checkB varTable funTable (Equal exp1 exp2)  = if ct == Nothing
                                              then messageBB " \"=\" / Equal  " exp1 exp2
                                              else (\(Just x) -> x) ct
                                                  where ct = checkBool3 "Equal" (checkE varTable funTable exp1) (checkE varTable funTable exp2)

{- Desigualdad de Numeros reales -}
checkB varTable funTable (NEqual exp1 exp2)  = if ct == Nothing
                                               then messageBB " \"!=\" / Not Equal  " exp1 exp2
                                               else (\(Just x) -> x) ct
                                                   where ct = checkBool3 "NEqual" (checkE varTable funTable exp1) (checkE varTable funTable exp2)
{- Operacion Booleana Y -}
checkB varTable funTable (And exp1 exp2)  = if ct == Nothing
                                            then messageBB " \"&&\" / And  " exp1 exp2
                                            else (\(Just x) -> x) ct
                                                where ct = checkBool3 "And" (checkB varTable funTable exp1) (checkB varTable funTable exp2)

{- Operacion Booleana O -}
checkB varTable funTable (Or exp1 exp2)  = if ct == Nothing
                                           then messageBB " \"||\" / Or  " exp1 exp2
                                           else (\(Just x) -> x) ct
                                               where ct = checkBool3 "Or" (checkB varTable funTable exp1) (checkB varTable funTable exp2)

{- Operacion Igualdad de Booleanos -}
checkB varTable funTable (BoolEqual exp1 exp2)  = if ct == Nothing
                                                  then messageBB " \"=\" / Equal of Booleans  " exp1 exp2
                                                  else (\(Just x) -> x) ct
                                                      where ct = checkBool3 "BoolEqual" (checkB varTable funTable exp1) (checkB varTable funTable exp2)

{- Parentesis Booleanos -}
checkB varTable funTable (BoolRB exp)         = if ct == Nothing
                                                then messageBM " \"-\" - Round Bracket  " exp
                                                else (\(Just x) -> x) ct
                                                    where ct = checkType2 "BoolRB" (checkB varTable funTable exp)

{- Negacion -}
checkB varTable funTable (Not exp)         = if ct == Nothing
                                             then messageBM " \"-\" - Negative  " exp
                                             else (\(Just x) -> x) ct
                                                 where ct = checkType2 "Not" (checkB varTable funTable exp)


{-
   Manejador de errores
   Para checkAST se creo un manejador de errores en base a varios mensaje de
   error, si los errores son de expresi&#243;n, mientras que para las instrucciones
   no se podia manejar de manera tan generica, a continuaci&#243;n los mensaje de
   error que podria manejar el programa
 -}
{-|
   @messageOp2@ se utiliza para mostrar un mensaje de error, en el uso de
   operadores y 2 expresiones
-}
messageOp2 :: String -> ASTExp -> ASTExp -> error
messageOp2 op exp1 exp2 = error $ "Error: Can not do  \""++op++"\" of "++(show exp1)++" and "++(show exp2)

{-|
  @messageND@ Se encarga de mostrar si una variable o funcion (el primer String)
  y su nombre (el segundo String) han sido o no definidos
-}
messageND :: String -> String -> error
messageND elemND id = error $ "Error: "++elemND++"\""++id++"\" Not defined."

{-|
  @messageBM@ muestra los problemas de error de tipo, en lugares que no deben
-}
messageBM problem exp = error $ "Error: Type not permited at "++(show exp)++" in "++problem

{-|
  la funci&#243;n @messageAM@  mostrara error en caso de que se hayan definido mal
  los elementos de una Matriz, o el acceso (a elemento o parcial) de la misma
-}
messageAM mat = error $ "Error: Can not access or Bad definition to "++(show mat)

{-|
  @messageBC@ se encarga de avisar cuando la llamada a una funcion no concuerda
  con la definicion de la misma
-}
messageBC name parameters = error $ "Error: Bad call of function \""++name++"\" with the next parameters:"++(show parameters)

{-|
  @messageBB@ Se muestra al producirse un error con las expresiones booleanas
-}
messageBB op exp1 exp2 = error $ "Error: Can not \"Comparate/ "++op++"\" of "++(show exp1)++" and "++(show exp2)

{-|
  @numbers@ se encarga solo de transformar los Nothing a un Num cualquiera, y
  los Just Num a Num, para as&#237;,realizar de manera mas f&#225;cil a los accesos
  parciales de matriz y vectores
-}
numbers :: Maybe ASTExp -> ASTExp
numbers Nothing = Num 1
numbers (Just a) = a
