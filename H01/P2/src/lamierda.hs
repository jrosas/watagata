{
{-

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
syntaxError (t:ts) = error $ 
                       "Error de sintaxis en el Token " ++ (show t) ++ "\n" ++
                       "Seguido de: " ++ (unlines $ map show $ take 3 ts)
}
