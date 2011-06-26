{------------------------------------- 
  Estos son los tipos que definimos   
---------------------------------------}
 {-|
   Asunto: C&#243;digo fuente del proyecto 1. 
   Proyecto: Analizador Lexicogr&#225;fico en Haskell
   Materia: Taller de Traductores (CI-3725)
   Trimestre: Abril-Julio 2011
   Profesor: Carlos Colmenares
   
   Grupo: H01
   Integrantes:            Carnet:  
   * Juan Rosas           (07-41502)
   * Jos&#233; Lezama     (07-41104)
   
   Analizador Lexicogr&#225;fico desarrollado en Alex (A lexical analyser 
   generator for Haskell) para el lenguaje Vectorinox, basado en la
   especificaci&#243;n suministrada para el desarrollo del mismo
   
 -}


module AST (
            Raiz(..),
            FunDec(..),
            Vartype(..),
            VarDec(..),
            Instruc(..),
            Cond2(..),
            Print(..),
            Exp(..),
            Bool(..),
            Reserve(..),
            Function(..),
            LeftVal(..),
) where

import Lexer

data AST = Raiz
data Raiz = [FunDec] Instruc
	deriving (Eq, Show)

data FunDec = Func String [VarDec] Vartype Instruc
	deriving (Eq, Show)
            
data Vartype = Num
             | Vec
             | Mat
	deriving (Eq, Show)

data VarDec = Var String Vartyp
	deriving (Eq, Show)

Instruc = Asign LeftVal Exp
        | InsBlock [VarDec] [Instruc]
        | While Condition Instruc
        | Iter String Exp Instruc
        | Read Exp
        | Write [Print]
        | Return Exp
        | Cond Condition Instruct Cond2
	deriving (Eq, Show)

data Cond2 = Nothing 
           | Else Instruct
	deriving (Eq, Show)
        
data Print = Exp
           | Chars String
	deriving (Eq, Show)

data Exp = Num Double
         | Mat String
         | Binary String Exp Exp
         | OnceI String Exp
         | OnceD String Exp
--         | OnceA String Exp
         | Reserve 
         | Function
	deriving (Eq, Show)

data Bool = Reserve
          | Binary String Bool Bool
          | OnceD String Bool
--          | OnceA String Bool
	deriving (Eq, Show)
            
data Reserve = Res String
	deriving (Eq, Show)

data Function = Func String [Exp]
	deriving (Eq, Show)

data LeftVal = Access
             | Access Exp
             | Access Exp Exp
             | Access (Just Exp) (Just Exp)
             | Access (Just Exp) (Just Exp) (Just Exp) (Just Exp)
	deriving (Eq, Show)