{------------------------------------- 
  Estos son los tipos que definimos   
---------------------------------------}

data AST = Raiz
data Raiz = [FunDec] Instruc

data FunDec = Func String [VarDec] Vartype Instruc
            
data Vartype = Num
             | Vec
             | Mat

data VarDec = Var String Vartype

Instruc = Asign LeftVal Exp
        | InsBlock [VarDec] [Instruc]
        | While Condition Instruc
        | Iter String Exp Instruc
        | Read Exp
        | Write [Print]
        | Return Exp
        | Cond Condition Instruct Cond2

data Cond2 = Nothing 
           | Else Instruct
        
data Print = Exp
           | Chars String

data Exp = Num Double
         | Mat String
         | Binary String Exp Exp
         | OnceI String Exp
         | OnceD String Exp
--         | OnceA String Exp
         | Reserve 
         | Function

data Bool = Reserve
          | Binary String Bool Bool
          | OnceD String Bool
--          | OnceA String Bool
            
data Reserve = Res String

data Function = Func String [Exp]

data LeftVal = Access
             | Access Exp
             | Access Exp Exp
             | Access (Just Exp) (Just Exp)
             | Access (Just Exp) (Just Exp) (Just Exp) (Just Exp)