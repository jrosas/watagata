{-|
   Asunto: C&#243;digo fuente del Proyecto &#250;nico (Entrega 3)
   Proyecto: Analizador Lexicogr&#225;fico en Haskell
   Materia: Taller de Traductores (CI-3725)
   Trimestre: Abril-Julio 2011
   Profesor: Carlos Colmenares

   Grupo: H01

 -}

module AST (
 -- Raiz(..),
  Instruc(..),
  OptElse(..),
  Exp(..),
  BoolExp(..),
--  Symbol(..),
  FunDec(..),
 -- VarType(..),
  ) where

import SymTable
{-|
   Cualquier AST esta creado es creado por una ra&#237;z universal, la  cual  se
   subdivide  en Prog [FunDec]  (el cu&#225;l  puede llegar  a ser nulo,  y hace
   referencia  a la lista de funciones  auxiliares declaradas antes de llamar al
   programa  principal) una  &#250;nica  (la cu&#225;l   puede  ser un bloque de
   instrucciones)
-}
--data AST = Raiz
--data Raiz = Instruc
  --        deriving (Eq, Show)
{-
data FunDec = FuncDec Exp [(Exp,VarType)] VarType Instruc
            deriving (Eq, Show)
-}
data FunDec = FunDec String Instruc
            deriving (Eq, Show)



{-|
   Cualquier  lenguaje  de programaci&#243;n tiene un conjunto de instrucciones
   b&#225;sicas, m&#237;nimas  suficientes para que el lenguaje sea usable o en
   el mejor de los casos &#243;ptimo. Vectorinox no es la excepci&#243;n y este
   tipo /Instruc/ hace referencia a ese conjunto.
-}
data Instruc = Asign Exp Exp
             | InsBlock SymTable [Instruc]
             | While BoolExp Instruc
             | Iter Exp Exp Instruc
             | Read Exp
             | Write [Exp]
             | Return Exp
             | Cond BoolExp Instruc (Maybe OptElse)
             deriving (Eq, Show)

{-|
  En muchos lenguajes podemos observar el if-else, en Vectorinox tambi&#233;n se
  consigue esta instrucci&#243;n, este dato se encarga de hacer posible la
  opci&#243;n else en esta implementaci&#243;n
-}
data OptElse = Else Instruc
             deriving (Eq, Show)

{-|
   En  Vectorinox  se  permite una  gran cantidad  de  instrucciones, las cuales
   a nivel de manejo son todas expresiones, pero para el usuario se presentan :
   Reales (Suma, Resta, Multiplicaci&#243;n, Divisi&#243;n, Exponenciaci&#243;n)
   Vectores (Suma, Resta, Producto cruz y punto, acceso a elemento)
   Matriz (Suma y Resta, adem&#225;s n&#250;mero de filas y columna)
   Adem&#225;s de multiplicaci&#243;n de ma&#237;trices o vectores por Reales
   y se puede asignar nombre para los Reales, Vectores y Matrices
-}
data Exp = Num Double
         | Id String
         | Chars String
         | Plus Exp Exp
         | Minus Exp Exp
         | Times Exp Exp
         | Div Exp Exp
         | Mod Exp Exp
         | Expo Exp Exp
         | Dot Exp Exp
         | MinusU Exp
         | Caret Exp
         | DS Exp
         | RB Exp
         | At Exp
         | Matrix [[Exp]]
         | AccessElemV Exp Exp
         | AccessElemM Exp Exp Exp
         | ParAccessV  Exp (Maybe Exp) (Maybe Exp)
         | ParAccessM  Exp (Maybe Exp) (Maybe Exp) (Maybe Exp) (Maybe Exp)
         | Func String [Exp]
         deriving (Eq, Show)

{-
   El if (entre otras muchas instrucciones) se basan en booleanos, y Vectorinox
   presenta una gran cantidad de estas expresiones, tales como:
   /true/ y /false/, 'Y' y 'O' l&#243;gicos, negación,
   Comparacion de numeros: menor (o igual), mayor (o igual),
   igual o desigualdad.
-}
data BoolExp = TRUE
             | FALSE
             | Less Exp Exp
             | Great Exp Exp
             | LET Exp Exp
             | GET Exp Exp
             | Equal Exp Exp
             | NEqual Exp Exp
             | And BoolExp BoolExp
             | Or BoolExp BoolExp
             | BoolEqual BoolExp BoolExp
             | BoolRB BoolExp
             | Not BoolExp
               --          | OnceA String Bool
             deriving (Eq, Show)
