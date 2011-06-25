{
{-
Comentarios BLAH

-}

module Parser (
       parser
) where

import Token.hs

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

%
%

%%
Prog : FunDec Instruc {$1}

FunDec : {- empty -} {}
       | FunDec define id '(' VarListFunc ')' of type VarType as Instruc {$2}
       | FunDec define id '(' ')' of type VarType as Instruc{$1}
           
VarListFunc : id ':' VarType {$1}
            | VarListFunc ',' VarListFunc{$1}
                    
VarType : tnum{$1}
        | tvec{$1}
        | tmat{$1}
          
Instruc : Asig{$1}
       | InsBlock{$1}
       | CondSelect{$1}
       | While{$1}
       | ForEach{$1}
       | Read{$1}
       | Write{$1}
       | Return{$1}


Asig : Lval ':=' Exp{$1} 

Lval : id{$1}
     | id '[' Exp ']'{$1}
     | id '[' Exp ',' Exp ']' {$1}
     | id '[' Ind ':' Ind ']'{$1}
     | id '[' Ind ':' Ind ',' Ind ':' Ind ']'{$1}
       
Ind : {-empty-}{}
    | Exp{$1}
    
Exp : num          {$1}
    | string {$1}
    | Mat{$1}
    | '(' Exp ')'{$1}
    | Exp '+' Exp{$1}
    | Exp '-' Exp{$1}
    | Exp '*' Exp{$1}
    | Exp '/' Exp{$1}
    | Exp '%' Exp{$1}
    | Exp '**' Exp{$1}
    | Exp '.' Exp{$1}
    | Lval{$1}
    | '-' Exp {$1}
    | '^' Exp{$1}
    | '$' Exp{$1}
    | '@' Exp{$1}
    | FunCall{$1}
    | FunEmb{$1}
      
Mat : '{' MatList '}'{$1}
    | '{' ExpList '}'{$1}
    | '{' ElemList '}'{$1}
      
MatList : Mat{$1}
        | MatList ';' Mat{$1}

ExpList : Exp{$1}
        | ExpList ',' Exp{$1}
                    
ElemList : ExpList {$1}
         | ElemList ';' ExpList{$1}

FunCall : id  '(' ExpList ')'{$1}
        | id '(' ')'{$1}

FunEmb : Zeroes{$1}
       | Range{$1}
       | Eye{$1}
      
                      
Zeroes : zeroes '(' Exp ',' Exp ')' {$}
       | zeroes '(' Exp ')'{$1}
         
Range : range '(' Exp ')'         {$1}

Eye : eye '(' Exp ')'{$1}

InsBlock : begin VarDec InsList end {$1}

VarDec : {-empty-} {}
       | vars VarListDec{$1}
         
VarListDec : IdList ':' VarType{$1}
        | VarListDec ';' IdList ':' VarType{$1}

IdList : id {$1}
       | IdList ',' id{$1}
       
InsList : Instruc{$1}
         | InsList ';' Instruc{$1}

CondSelect : if Boolean then Instruc{$1}
           | if Boolean then Instruc else Instruc                             {$1}
 
While : while Boolean in Exp do Instruc{$1}

ForEach : foreach id in Exp do Instruc{$1}

Read : read Exp{$1}

Write : write ExpList{$1}

Return : return Exp {$1}

Boolean : Exp '<' Exp{$1}
        | Exp '>' Exp{$1}
        | Exp '<=' Exp{$1}
        | Exp '>=' Exp{$1}
        | Exp '=' Exp{$1}
        | Exp '!=' Exp{$1}
        | true{$1}
        | false{$1}
        | Boolean '&&' Boolean {$1}
        | Boolean '||' Boolean{$1}
        | Boolean '=' Boolean{$1}
        | '(' Boolean ')'{$1}
        | '!' Boolean                      {$1}
                                
{
syntaxError :: [Token] -> a
syntaxError (t:ts) = error $ 
                       "Error de sintaxis en el Token " ++ (show t) ++ "\n" ++
                       "Seguido de: " ++ (unlines $ map show $ take 3 ts)
}
