
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
   
 -}

module AST (
  Raiz(..),
  FunDec(..),
  VarType(..),
  VarFun(..),
  Instruc(..),
  VarBlock(..), 
  Cond2(..),
  OptElse(..),
  Print(..),
  Exp(..),
  BoolExp(..),
  Access(..),
  Function(..),
  Matrix(..),
  MatList(..),
  LeftVal(..)
  ) where


data AST = Raiz
data Raiz = Prog [FunDec] Instruc
          deriving (Eq, Show)

data FunDec = FuncDec String [VarFun] VarType Instruc
            deriving (Eq, Show)
                     
data VarType = TNum
             | TVec
             | TMat
             deriving (Eq, Show)

data VarFun = Var String VarType
            deriving (Eq, Show)

data Instruc = Asign Exp Exp
             | InsBlock [VarBlock] [Instruc]
             | While BoolExp Instruc
             | Iter String Exp Instruc
             | Read Exp
             | Write [Print]
             | Return Exp
             | Cond BoolExp Instruc Cond2
             deriving (Eq, Show)

data VarBlock = Vars [String] VarType
                deriving (Eq, Show)

data Cond2 = Maybe OptElse
           deriving (Eq, Show)

data OptElse = Else Instruc
               deriving (Eq, Show)

data Print = Exp
           | Chars String
           deriving (Eq, Show)

data Exp = Num Double
         | Lef LeftVal
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
           deriving (Eq, Show)

data LeftVal =  Only Access
         | AccessElemV Access Exp
         | AccessElemM Access Exp Exp
         | ParAccessV Access (Maybe Exp) (Maybe Exp)
         | ParAccessM Access (Maybe Exp) (Maybe Exp) (Maybe Exp) (Maybe Exp)
           deriving (Eq, Show)

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
                   

data Access = Id String
            | Funct Function
            | MatC Matrix
             deriving (Eq, Show)
                
data Function = Func String [Exp]
                deriving (Eq, Show)
                       
data Matrix = Matr [[Exp]]
              deriving (Eq, Show)

data MatList = Elems String [Exp]
               deriving (Eq, Show)
