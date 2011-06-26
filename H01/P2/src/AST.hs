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
  VarType(..),
  VarFun(..),
  VarBlock(..),
  Instruc(..),
  Cond2(..),
  Print(..),
  Exp(..),
  Bool(..),
  Reserve(..),
  Function(..),
  LeftVal(..),
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

data Instruc = Asign LeftVal Exp
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
                       
data Cond2 = Nothing 
           | Else Instruc
           deriving (Eq, Show)
                    
data Print = Exp
           | Chars String
           deriving (Eq, Show)

data Exp = Num Double
         | LeftVal
         | BinExp String Exp Exp
         | OnceI String Exp
         | OnceDExp String Exp
           --         | OnceA String Exp
         | Function
         deriving (Eq, Show)

data BoolExp = Reserve
             | BinBool String BoolExp BoolExp
             | BinBoolE String Exp Exp
             | OnceDBool String BoolExp
            --          | OnceA String Bool
             deriving (Eq, Show)
                   
data Reserve = Res String
             deriving (Eq, Show)

data Function = Func String [Exp]
              deriving (Eq, Show)

data LeftVal = IdMat String
             | AccessElemV String Exp
             | AccessElemM String Exp Exp
             | ParAccessV String (Maybe Exp) (Maybe Exp)
             | ParAccessM String (Maybe Exp) (Maybe Exp) (Maybe Exp) (Maybe Exp)
             deriving (Eq, Show)