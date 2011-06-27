{
{-
Comentarios BLAH

-}

module Parser (
       parser
) where

import AST
import Tokens


}

%name parser
%error { syntaxError }
%tokentype { Token }
%token
 tnum        { TkTNum _ } 
 tvec        { TkTVec _ }
 tmat        { TkTMat _ }
 true        { TkTrue _ }
 false       { TkFalse _ }
 string      { TkString _ $$ }
 id          { TkId _ $$ }
 num         { TkNum _ $$ }
 '+'         { TkPlus _ }
 '-'         { TkMinus _ }
 '*'         { TkTimes _ }
 '/'         { TkDiv _ }
 '%'         { TkMod _ }
 '**'        { TkExp _ }
 '.'         { TkDot _ }
 '<'         { TkLess _ }
 '>'         { TkGreat _ }
 '<='        { TkLET _ }
 '>='        { TkGET _ }
 '='         { TkEqual _ }
 '!='        { TkNEqual _ }
 ':='        { TkAssign _ }
 '['         { TkLSB _ }
 ']'         { TkRSB _ }
 '{'         { TkLCB _ }
 '}'         { TkRCB _ }
 '('         { TkLP  _ }
 ')'         { TkRP  _ }
 '$'         { TkDS _  }
 '@'         { TkAt _  }
 '^'         { TkCircum _ }
 ':'         { TkColon _ }
 ','         { TkComma _ }
 ';'         { TkSC _  }
 '&&'        { TkAnd _ }
 '||'        { TkOr _  }
 '!'         { TkNot _ }
 zeroes      { TkFZeroes _ }
 range       { TkFRange _ }
 eye         { TkFEye _ }
 read        { TkRead _ }
 write       { TkWrite _ }
 define      { TkDef _ }
 of          { TkOf _ }
 type        { TkType _ }
 as          { TkAs _ }
 begin       { TkBegin _ }
 end         { TkEnd _ }
 vars        { TkVar _ }
 if          { TkIf _ }
 else        { TkElse _ }
 then        { TkThen _ }
 while       { TkWhile _ }
 do          { TkDo _ }
 foreach     { TkFore _ }
 in          { TkIn _ }
 return      { TkReturn _ }

%right ',' 
%right ':='
%nonassoc LOWER_ELSE
%right if else
%left '||'
%left '&&'
%right '!'
%nonassoc '=' '!='
%nonassoc '<' '>' '<=' '>='
%left '+' '-'
%left '*' '/' '.' '%'
%left '^'
%right UN  '$' '@'
%left '**'
%nonassoc '{' '}'
%nonassoc '[' ']'
%nonassoc '(' ')'

%%
Prog : FunDecList Instruc { Prog $1 $2 }

FunDecList : {- empty -}        { [] }
           | FunDec             { $1 }       
 
FunDec : define id '(' VarListFunc ')' of type VarType as Instruc {[FuncDec (Id $2) $4 $8 $10]}
       | define id '(' ')' of type VarType as Instruc{[FuncDec (Id $2) [] $7 $9]}
       | FunDec define id '(' VarListFunc ')' of type VarType as Instruc {$1 ++[FuncDec (Id $3) $5 $9 $11]} 
       | FunDec define id '(' ')' of type VarType as Instruc{$1 ++ [FuncDec (Id $3) [] $8 $10]}
           
VarListFunc : id ':' VarType { [((Id $1), $3)] }
            | VarListFunc ',' id ':' VarType { $1 ++ [((Id $3), $5)] }

Instruc : Asig { $1 }
        | InsBlock { $1 }
        | CondSelect { $1 }
        | While { $1 }
        | ForEach { $1 }
        | Read { $1 }
        | Write { $1 }       
        | Return { $1 }
       

Asig : Lvalue ':=' Exp{ Asign $1 $3} 

Lvalue : id {Id $1}
       | Lval {$1}

Lval : Access '[' Exp ']'{AccessElemV $1 $3 }
     | Access '[' Exp ',' Exp ']' {AccessElemM $1 $3 $5}
     | Access '[' Ind ':' Ind ']'{ParAccessV $1 $3 $5}
     | Access '[' Ind ':' Ind ',' Ind ':' Ind ']'{ParAccessM $1 $3 $5 $7 $9 }

Access : Mat  { $1 }
       | FunCall { $1 }
       | FunEmb { $1}
       | id {Id $1}
    
Ind : {-empty-}{ Nothing }
    | Exp { Just $1 }

FunCall : id  '(' ExpList ')'{ Func  $1 $3}
        | id '(' ')'{ Func  $1 []}

FunEmb : Zeroes { $1 }
       | Range { $1 }
       | Eye{ $1 }      
                      
Zeroes : zeroes '(' Exp ',' Exp ')' {Func "zeroes" [$3,$5] }
       | zeroes '(' Exp ')'{Func "zeroes" [$3] }
         
Range : range '(' Exp ')' {Func "range" [$3] }

Eye : eye '(' Exp ')' {Func "eye" [$3] }

Exp : num  { Num  $1 }
    | '(' Exp ')' {RB $2}
    | Exp '+' Exp {Plus $1 $3} 
    | Exp '-' Exp {Minus $1 $3} 
    | Exp '*' Exp {Times $1 $3} 
    | Exp '/' Exp {Div $1 $3} 
    | Exp '%' Exp {Mod $1 $3 }
    | Exp '**' Exp {Expo $1 $3} 
    | Exp '.' Exp  {Dot $1 $3} 
    | '-' Exp %prec UN {MinusU $2}
    | Exp '^' {Caret $1}
    | '$' Exp {DS $2}
    | '@' Exp {At $2}
    | Mat {$1}
    | Lval {$1}
    | FunCall {$1}
    | FunEmb {$1}
    | id {Id $1}

Mat : '{' ElemList '}' { Matrix $2  }
    | '{' '}' { Matrix [] }   

ElemList : ExpList { [$1] }
         | ElemList ';' ExpList { $1 ++ [$3] }

ExpList : Exp { [$1] }
        | ExpList ',' Exp { $1 ++ [$3] }

InsBlock : begin VarDec InsList end {InsBlock $2 $3}

VarDec : vars VarListDec { $2}
       | {- empty -} {[]}
         
VarListDec : IdList ':' VarType { [($1,$3)] }
           | VarListDec ';' IdList ':' VarType { $1 ++ [($3 , $5)]}

VarType : tnum { TNum }
        | tvec { TVec }
        | tmat { TMat }

IdList : id {  [(Id $1)] }
| IdList ',' id {$1 ++  [(Id $3)] }
       
InsList : Instruc { [$1] }
         | InsList ';' Instruc{ $1 ++ [$3]}

Write : write PrintList{ Write $2}

PrintList : Print { [$1] }
          | PrintList ',' Print { $1 ++ [$3]}  

Print : Exp { $1 }
      | string { Chars  $1 }

While : while Boolean do Instruc{ While $2 $4}

CondSelect : if Boolean then Instruc OptionElse { Cond $2 $4 $5}
 
OptionElse : {- empty -} %prec LOWER_ELSE { Nothing }
           | else Instruc { Just (Else $2) }  
    
Boolean : Exp '<' Exp {Less $1 $3 }
        | Exp '>' Exp {Great $1 $3}
        | Exp '<=' Exp {LET $1 $3}
        | Exp '>=' Exp {GET $1 $3}
        | Exp '=' Exp {Equal $1 $3}
        | Exp '!=' Exp {NEqual $1 $3}
        | true { TRUE } 
        | false { FALSE }
        | Boolean '&&' Boolean {And $1 $3}
        | Boolean '||' Boolean {Or $1 $3}
        | Boolean '=' Boolean {BoolEqual $1 $3}
        | '(' Boolean ')'{BoolRB $2}
        | '!' Boolean   {Not $2}   

ForEach : foreach id in Exp do Instruc { Iter (Id $2) $4 $6}

Read : read Exp { Read $2 }     

Return : return Exp { Return $2 }             
{

{-
    Funcion Recibe Token y Devuelve el Valor contenido en este,

-}

retValS :: Token -> String
retValS (TkId _ s) = s
retValS (TkString _ s) = s

retValD :: Token -> Double
retValD (TkNum _ s) = s



syntaxError :: [Token] -> a
syntaxError (t:ts) = error $ "Error de sintaxis en el Token " ++ (show t) ++ "\n" ++ "Seguido de: " ++ (unlines $ map show $ take 3 ts)
}
