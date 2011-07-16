{

 {-|
Asunto: C&#243;digo fuente del Proyecto &#250;nico (Entrega 2) 
Proyecto: Analizador Lexicogr&#225;fico en Haskell
Materia: Taller de Traductores (CI-3725)
Trimestre: Abril-Julio 2011
Profesor: Carlos Colmenares

Grupo: H01
  
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

{-|

  Tabla de Prescedencia de los Operadores del lenguaje vectorinox Donde los 
  primeros tienen menor valor y los &#250;ltimos mayor valor, adem&#225;
  de denotar con left: Asociatividad a izquierda, right: Asociatividad a
  derecha y nonassoc: Sin asociatividad

  -}
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
{-|
  Declaraci&#243;n del programa principal, la definicion se basa en solo 2
  elementos, FunDecList e Instruc los cuales son asignados a la variable $1 
  y $2 respectivamente
  -}

Prog : FunDecList Instruc { Prog $1 $2 }

{-|
  Declaraci&#243;n de la lista de declaraciones de funciones de un programa
  principal cualquiera vectorinox, es la lista de variables globales del
  programa, podria ser una lista vacia o de uno o mas elementos
  -}
FunDecList : {- empty -}        { [] }
           | FunDec             { $1 }       
 
{-|
  La declaración de la funciones podria tener o no pasaje de parametros, el tipo
  de funcion y la instruccion (recordemos que bloque de instrucciones es una
  instruccion) , en caso de tener pasaje de parametros  son especificados a 
  traves de VarListFunc
  -}
FunDec : define id '(' VarListFunc ')' of type VarType as Instruc {[FuncDec (Id $2) $4 $8 $10]}
       | define id '(' ')' of type VarType as Instruc{[FuncDec (Id $2) [] $7 $9]}
       | FunDec define id '(' VarListFunc ')' of type VarType as Instruc {$1 ++[FuncDec (Id $3) $5 $9 $11]} 
       | FunDec define id '(' ')' of type VarType as Instruc{$1 ++ [FuncDec (Id $3) [] $8 $10]}
           
{-|
  Para algunas funciones es inprescindible el pasaje de informacion al ser 
  llamadas, y haran calculos basados en los datos suministrados, vectorinox al 
  igual que mucho otros lenguajes permite el pasaje de parametros al momento de
  llamar a la funcion, es posible gracias a estas lineas que definen la sintaxis
  a seguir
  -}
VarListFunc : id ':' VarType { [((Id $1), $3)] }
            | VarListFunc ',' id ':' VarType { $1 ++ [((Id $3), $5)] }

{-|
  La definicion de vectorinox esta basada en un programa de una unica
  instruccion, sin embargo, hay varios tipos de instrucciones para asi poder
  realizar programas interesantes, las instrucciones deben ser de la manera
  descrita @Instruc@, de no ser así no sera aceptada
  -}
Instruc : Asig { $1 }
        | InsBlock { $1 }
        | CondSelect { $1 }
        | While { $1 }
        | ForEach { $1 }
        | Read { $1 }
        | Write { $1 }       
        | Return { $1 }

{-|
  La instruccion @Asig@ se basa en asignar a un @Lvalue@ un valor que es
  representado a traves de @Exp@
  -}
       
Asig : Lvalue ':=' Exp{ Asign $1 $3} 

{-| 
  Un @Lvalue@ a su vez, se define como un @id@, que no es mas que un
  identificador de variable, o el otro valor posible es un @Lval@ que se
  describe mas adelante
  -}
Lvalue : id {Id $1}
       | Lval {$1}

{-|
  Un @Lval@ a su vez define como un elemento al que se puede acceder @Access@, y
  tiene posiciones con un maximo de 2 dimensiones , como los arreglos en otros 
  lenguajes, mas no definidos en  este lenguaje, y el acceso a las posiciones se
  hace a traves de expresiones numericas @Exp@ o @Ind@, ademas puede llevar @,@
  (separando 2 @Exp@ o @Ind@) para acceder a un elemento de un @Access@ de 2 
  dimensiones, mientras que si esta separado por @:@ hace referencia a un grupo
  de elementos
  -}
Lval : Access '[' Exp ']'{AccessElemV $1 $3 }
     | Access '[' Exp ',' Exp ']' {AccessElemM $1 $3 $5}
     | Access '[' Ind ':' Ind ']'{ParAccessV $1 $3 $5}
     | Access '[' Ind ':' Ind ',' Ind ':' Ind ']'{ParAccessM $1 $3 $5 $7 $9 }

{-|
  Un elemento @Access@ como ya dijimos son como las matrices de otro lenguaje,
  para ser mas especificos podria ser una Matriz, una llamada a funcion (sea del
  usuario o de vectorinox) que devuelva matriz, o una variable del tipo matriz
  si definimos matriz como nuestros tipos @Mat@ y @Vec@
  -}
Access : Mat  { $1 }
       | FunCall { $1 }
       | FunEmb { $1}
       | id {Id $1}
    
{-|
  El @ind@ nos permite utilizar una @Exp@ o @Nothing@, para asi indicar que 
  podemos escribir algo que represente un numero o dejar el espacio vacio
  -}
Ind : {-empty-}{ Nothing }
    | Exp { Just $1 }

{-|
  La llamada a función es verificada por @FunCall@ y se basa en el nombre de la
  la funcion, seguida de (X), donde X podria ser la palabra vacia, o una lista
  de expresiones que sirven como parametro de entrada para la llamada a la funcion
  -}
FunCall : id  '(' ExpList ')'{ Func  $1 $3}
        | id '(' ')'{ Func  $1 []}
{-| 
  Las @FunEmb@ son aquellas funciones provistas por el lenguaje vectorinox
  para facilitar el uso del mismo, al integrar las funciones mas utiles/usadas
  estas son @zeroes@, @range@ y @ege@ que se definiran a lo largo de este
  documento
-}
FunEmb : Zeroes { $1 }
       | Range { $1 }
       | Eye{ $1 }      

{-|
  Funcion provista por el lenguaje, la cual se utiliza tanto para @mat@ llamada
  con 2 @Exp@ separadas por @,@, como para @vec@ que es la llamada de la misma
  pero con una sola @exp@
  -}
Zeroes : zeroes '(' Exp ',' Exp ')' {Func "zeroes" [$3,$5] }
       | zeroes '(' Exp ')'{Func "zeroes" [$3] }
    
{-|
  Funcion provista por el lenguaje, la cual necesita de una @Exp@ para poder
  ser llamada
  -}     
Range : range '(' Exp ')' {Func "range" [$3] }

{-|
  Funcion provista por el lenguaje, la cual necesita de una @Exp@ para poder
  ser llamada
  -}     
Eye : eye '(' Exp ')' {Func "eye" [$3] }

{-|
  Cuando hablamos de @Exp@ nos solemos referir a expresiones matematicas, que no
  son mas que un @num@/ funciones que devuelvan @num@/ su negativo,  o las 
  operaciones arimeticas aplicadas sobre 2 de ellos,:  @+@/ @-@/ @*@/ @/@/ @%@/
   @**@/ @.@/
  -}     
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

{-|
  @Mat@ se encarga de validar todos los elementos del tipo @mat@, que son 
  definidos como una @ElemeList@ adentro de @{}@, si los parentesis estan vacios
  se considera como una @mat@ vacia
  -}
Mat : '{' ElemList '}' { Matrix $2  }
    | '{' '}' { Matrix [] }   

{-|
  Una @Mat@ para nosotros, podria ser una @ExpList@ o una @ElemList@ seguida de
  @;@ y una @ExpList@
  -}
ElemList : ExpList { [$1] }
         | ElemList ';' ExpList { $1 ++ [$3] }

{-| 
  Una @ExpList@ es una definicion recursiva de lista de @Exp@, Gracias a las
  ultimas 3 definiciones (@Mat@, @ElemList@ y @ExpList@) podemos aceptar @vec@ y
  @mat@ bastante genericos
  -}
ExpList : Exp { [$1] }
        | ExpList ',' Exp { $1 ++ [$3] }

{-|
  Un @InsBlock@ es una instruccion, la cual comienza por @begin@ y en la cual 
  podemos realizar definicion de variables @VarDec@ y una lista de instrucciones
  @InsList@ de al menos un  elemento y finaliza con la palabra end 
  -}
InsBlock : begin VarDec InsList end {InsBlock $2 $3}

{-
  @VarDec@ Es la lista de variables declaradas dentro de un @InsBlock@, esta 
  lista podria ser vacia, en caso de tener al menos un elemento debe comenzar
  por la palabra @vars@ seguido de un @VarListDec@
  -}
VarDec : vars VarListDec { $2}
       | {- empty -} {[]}
         

{-|
  La lista @VarListDec@  debe tener al menos un elemento, esta definida de
  manera recursiva soibre si misma, @VarType@ y @IdList@, ademas de construirse
  de derecha a izquierda
  -}
VarListDec : IdList ':' VarType { [($1,$3)] }
           | VarListDec ';' IdList ':' VarType { $1 ++ [($3 , $5)]}

{-|
  los @VarType@ hacen referencia a los tipos utilizados y definidos en el 
  lenguaje Vectorinox, debemos hacer enfasis en definidos, ya que @String@ y 
  @Bool@ son utilizados, mas en ningun momento se pueden definir, por eso no
  aparecen en esta lista
  -}
VarType : tnum { TNum }
        | tvec { TVec }
        | tmat { TMat }

{-|
  El @IdList@ es utilizado para definir una lista de @Id@s todos del mismo tipo
  y se define de manera recursiva, ademas de tener al menos un elemento, y en
  caso de tener mas elementos son separados por @,@ y se construye de derecha
  a izquierda
  -}
IdList : id {  [(Id $1)] }
       | IdList ',' id {$1 ++  [(Id $3)] }
       
{-|
  El @InsList@ es utilizado para definir una lista de @Instruc@, de manera
  recursiva de izquierda a derecha, y separados por @;@
  -}
InsList : Instruc { [$1] }
        | InsList ';' Instruc{ $1 ++ [$3]}

{-|
  En @Vectorinox@ se utiliza la funcion @write@ para mostrar por pantalla 
  @String@s y @Exp@s y con la @Instruct Write@ es que captamos la funcion
  -}
Write : write PrintList{ Write $2}

{-|
  @PrintList@ no es mas que la lista de parametros de entrada del @write@ del 
  lenguaje @Vectorinox@ y su elemento base es @Print@, siendo una lista
  recursiva de derecha a izquierda
  -}
PrintList : Print { [$1] }
          | PrintList ',' Print { $1 ++ [$3]}  

{-|
  @Print@ es un tipo interno que se utiliza como tipo basico para el @write@ 
  y es o un @String@ o una @Exp@ numerica
  -}
Print : Exp { $1 }
      | string { Chars  $1 }

{-|
  @While@ Es una instrucción básica del lenguaje @Vectorinox@, utilizada para
  hacer loops/ciclos de @Instruc@ mientras no se cumpla @Boolean@
  -}
While : while Boolean do Instruc{ While $2 $4}

{-|
  @CondSelect@ es la manera en que vectorinox reconoce los if, para los mismos
  se debe cumplir la condicion @Boolean@ y se ejecutara la @Instruc@
    -}
CondSelect : if Boolean then Instruc OptionElse { Cond $2 $4 $5}
 
{-|
  En caso de que @CondSelect@ no se cumpla hay 2 posibilidades, @Nothing@ o 
  @else@, si es un else entonces debe haber de igual manera una @Instruc@
  -}
OptionElse : {- empty -} %prec LOWER_ELSE { Nothing }
           | else Instruc { Just (Else $2) }  

{-|
  Cuando hablamos de @Boolean@ nos solemos referir a expresiones verdaderas o 
  falsas, que no son mas que un operaciones de compararacion sobre 2 de @num@,:
  @<@/ @>@/ @<=@/ @>=@/ @=@/ @!=@/ u operaciones sobre los @Boolean@ basicos,
  que son @True@ y @False@, y las operaciones son: @&&@/ @||@/ @=@/ y negación
  del @Boolean@
  -}     
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

{-|
  La @Instruc@ @ForEach@, se basa es un @foreach@ de un @Id@ en una @Exp@,
  realizar una @Instruc@
-}
ForEach : foreach id in Exp do Instruc { Iter (Id $2) $4 $6}

{-|
  La @Instruc@ @read@ es aceptada por @Read@ y solo necesita una @Exp@ para ser valida
  -}
Read : read Exp { Read $2 }     

{-|
  La @Instruc@ @return@ es utilizada al final de una funcion para devolver el
  resultado que es una @Exp@ y es aceptado por @Return@
  -}
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
