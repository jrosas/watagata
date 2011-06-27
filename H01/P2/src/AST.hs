
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
  Instruc(..),
  OptElse(..),
  Exp(..),
  BoolExp(..),
  

  ) where


data AST = Raiz
data Raiz = Prog [FunDec] Instruc
          deriving (Eq, Show)

data FunDec = FuncDec Exp [(Exp,VarType)] VarType Instruc
            deriving (Eq, Show)
                     
data VarType = TNum
             | TVec
             | TMat
             deriving (Eq, Show)


data Instruc = Asign Exp Exp
             | InsBlock [([Exp],VarType)] [Instruc]
             | While BoolExp Instruc
             | Iter Exp Exp Instruc
             | Read Exp
             | Write [Exp]
             | Return Exp
             | Cond BoolExp Instruc (Maybe OptElse)
             deriving (Eq, Show)


data OptElse = Else Instruc
             deriving (Eq, Show)



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
                      
                      

