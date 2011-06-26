{
{-
Comentarios BLAH

-}

module Parser (
       parser
) where

import Tokens
import AST

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
           | FunDec             { [$1] }
           | FunDecList FunDec  { $1 ++ [$2] }
 
FunDec : FunDec define id '(' VarListFunc ')' of type VarType as Instruc {FuncDec (retVal $3) $5 $9 $11}
       | FunDec define id '(' ')' of type VarType as Instruc{$3 [] $9 $10}
           
VarListFunc : id ':' VarType { [Var (retVal $1) $3] }
            | VarListFunc ',' id ':' VarType { $1 ++ [Var (retVal $3) $5] }
                    
VarType : tnum { TNum }
        | tvec { TVec }
        | tmat { TMat }
          
Instruc :  Asig { $1 }
        | InsBlock { $1 }
        | While { $1 }
        | ForEach { $1 }
        | Read { $1 }
        | Write { $1 }
        | Return { $1 }
        | CondSelect { $1 }
	      
CondSelect : if Boolean then Instruc OptionElse { Cond $2 $4 $5}
 
OptionElse : {- empty -} %prec LOWER_ELSE { Nothing }
           | else Instruc { Just (Else $2) }      
	      
Asig : Lval ':=' Exp{ Asign $1 $3} 

Lval : Access { IdMat $1 }
     | Access '[' Exp ']'{ AccessElemV $1 $3 }
     | Access '[' Exp ',' Exp ']' { AccessElemM $1 $3 $5}
     | Access '[' Ind ':' Ind ']'{ ParAccessV $1 (Just $3) (Just $5)}
     | Access '[' Ind ':' Ind ',' Ind ':' Ind ']'{ ParAccessM  $1 (Just $3) (Just $5) (Just $7) (Just $9) }

Access : Mat { $1 }
       | id  { retVal $1 }
       | FunCall {$1}
       | FunEmb {$1}
    
Ind : {-empty-}{ Nothing }
    | Exp { $1 }

    
Exp : num  { Num (retVal $1) }
    | '(' Exp ')' {RB $2}
    | Exp '+' Exp {Plus $1 $3} 
    | Exp '-' Exp {Minus $1 $3} 
    | Exp '*' Exp {Times $1 $3} 
    | Exp '/' Exp {Div $1 $3} 
    | Exp '%' Exp {Mod $1 $3 }
    | Exp '**' Exp {Expo $1 $3} 
    | Exp '.' Exp  {Dot $1 $3} 
    | Lval  { $1 } 
    | '-' Exp %prec UN {MinusU $2}
    | Exp '^' {Caret $1}
    | '$' Exp {DS $2}
    | '@' Exp {At $2}
   
      
Mat : '{' ElemList '}' {  }
    | '{' '}' { [] }   

ElemList : ExpList { $1 }
         | ElemList ';' ExpList { $1 ++ [$3] }

ExpList : Exp { "$1" }
        | ExpList ',' Exp { $1 ++ [$3] }

FunCall : id  '(' ExpList ')'{ Func (retVal $1) $3}
        | id '(' ')'{ Func (retVal $1) []}

FunEmb : Zeroes { $1 }
       | Range { $1 }
       | Eye{ $1 }
      
                      
Zeroes : zeroes '(' Exp ',' Exp ')' {Func "zeroes" [$3,$5] }
       | zeroes '(' Exp ')'{Func "zeroes" [$3] }
         
Range : range '(' Exp ')' {Func "range" [$3] }

Eye : eye '(' Exp ')' {Func "eye" [$3] }

InsBlock : begin VarDec InsList end {InsBlock $2 $3}

VarDec : vars VarListDec{Vars $2}
       | {- empty -} {}
         
VarListDec : IdList ':' VarType{ [($1,$3)] }
| VarListDec ';' IdList ':' VarType{ $1 ++ [($3 , $5)]}

IdList : id { retVal $1 }
       | IdList ',' id{$1 ++ [retVal $3] }
       
InsList : Instruc { $1 }
         | InsList ';' Instruc{ $1 ++ [$3]}
 
While : while Boolean do Instruc{ While $2 $3}

ForEach : foreach id in Exp do Instruc{ Iter (retVal $2) $4 $6}

Read : read Exp{ Read $2}

Write : write PrintList{ Write $2}

Print : Exp { $1 }
      | string { Chars (retVal $1) }

PrintList : Print { [$1] }
          | PrintList ',' Print { $1 ++ [$3]}  

Return : return Exp { Return $2 }

Boolean : Exp '<' Exp {Less $1 $3 }
        | Exp '>' Exp {Great $1 $3}
        | Exp '<=' Exp {LET $1 $3}
        | Exp '>=' Exp {GET $1 $3}
        | Exp '=' Exp {Equal $1 $3}
        | Exp '!=' Exp {NEqual $1 $3}
        | true { True } 
        | false { False }
        | Boolean '&&' Boolean {And $1 $3}
        | Boolean '||' Boolean {Or $1 $3}
        | Boolean '=' Boolean {BoolEqual $1 $3}
        | '(' Boolean ')'{BoolRB $1}
        | '!' Boolean   {Not $1}                   
                                
{

{-
    Funcion Recibe Token y Devuelve el Valor contenido en este,

-}

retVal :: Token -> a
retVal (TkId _ s) = s
retVal (TkNum _ s) = s
retVal (TkString _ s) = s

syntaxError :: [Token] -> a
syntaxError (t:ts) = error $ 
                       "Error de sintaxis en el Token " ++ (show t) ++ "\n" ++
                       "Seguido de: " ++ (unlines $ map show $ take 3 ts)
}
