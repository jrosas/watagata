{
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

module Lexer (
-- ** Funciones exportables
        lexer
) where  
import Tokens
}
         
         
%wrapper "posn"

$digit = [0-9]
$char = [a-zA-Z]
@id = $char [ $char $digit _ ]*
@num = $digit+\.?$digit* | \.$digit+
$prtdq = [\32-\126] # [ \" \\ ]
$prtsq = [\32-\126] # [ \' \\ ]
@string = \" ( $prtdq | \\$prtdq | \\\" | \\\\  )* \" | \'( $prtsq | \\$prtsq | \\\' | \\\\  )*\' 

tokens :-
  \# .*[\n]?                   ;  
  $white+                      ;
  @string                      { \p s -> TkString (getPos p) s}
  "num"                        { \p s -> TkTNum (getPos p) } 
  "vec"                        { \p s -> TkTVec (getPos p) }  
  "mat"                        { \p s -> TkTMat (getPos p) }
  "true"                       { \p s -> TkTrue (getPos p) }
  "false"                      { \p s -> TkFalse (getPos p)}
  @num                         { \p s -> TkNum (getPos p) (toDouble s) }
  \+                           { \p s -> TkPlus (getPos p) }
  \-                           { \p s -> TkMinus (getPos p) }
  \*                           { \p s -> TkTimes (getPos p) }
  \/                           { \p s -> TkDiv (getPos p) }
  \%                           { \p s -> TkMod (getPos p) }
  \*\*                         { \p s -> TkExp (getPos p) }
  \.                           { \p s -> TkDot (getPos p) }
  \<                           { \p s -> TkLess (getPos p) }
  \>                           { \p s -> TkGreat (getPos p) }
  \<\=                         { \p s -> TkLET (getPos p) }
  \>\=                         { \p s -> TkGET (getPos p) }
  \=                           { \p s -> TkEqual (getPos p) }
  \!\=                         { \p s -> TkNEqual (getPos p) }
  \:\=                         { \p s -> TkAssign (getPos p) }
  
  \[                           { \p s -> TkLSB (getPos p) }
  \]                           { \p s -> TkRSB (getPos p) }
  \{                           { \p s -> TkLCB (getPos p) }
  \}                           { \p s -> TkRCB (getPos p) }
  \(                           { \p s -> TkLP (getPos p) }
  \)                           { \p s -> TkRP (getPos p) }
    
  \$                           { \p s -> TkDS (getPos p) }
  \@                           { \p s -> TkAt (getPos p) }
  \^                           { \p s -> TkCircum (getPos p) }
  \:                           { \p s -> TkColon (getPos p) }
  \,                           { \p s -> TkComma (getPos p) }
  \;                           { \p s -> TkSC (getPos p) }
    
  \&\&                         { \p s -> TkAnd (getPos p) }
  \|\|                         { \p s -> TkOr (getPos p) }
  \!                           { \p s -> TkNot (getPos p) }

  "zeroes"                     { \p s -> TkFZeroes (getPos p) }
  "range"                      { \p s -> TkFRange (getPos p) }
  "eye"                        { \p s -> TkFEye (getPos p) }
  "read"                       { \p s -> TkRead (getPos p) }
  "write"                      { \p s -> TkWrite (getPos p) }
    
  "define"                     { \p s -> TkDef (getPos p) }
  "of"                         { \p s -> TkOf (getPos p) }
  "type"                       { \p s -> TkType (getPos p) }
  "as"                         { \p s -> TkAs (getPos p) }
  "begin"                      { \p s -> TkBegin (getPos p) }
  "end"                        { \p s -> TkEnd (getPos p) }
  "vars"                       { \p s -> TkVar (getPos p)} 
  "if"                         { \p s -> TkIf (getPos p) }
  "else"                       { \p s -> TkElse (getPos p) }
  "then"                       { \p s -> TkThen (getPos p) }
  "while"                      { \p s -> TkWhile (getPos p) }
  "do"                         { \p s -> TkDo (getPos p) }
  "foreach"                    { \p s -> TkFore (getPos p) }
  "in"                         { \p s -> TkIn (getPos p) }
  "return"                     { \p s -> TkReturn (getPos p) }
  
  @id                          { \p s -> TkId (getPos p) s}

{
{-
   El wrapper /posn/ nos indica la posici&#243n; exacta del token obtenido
   por desplazamiento absoluto desde el inicio del archivo o desplazamiento
   basado en l&#237;neas y columnas.

   Con /getpos/ obtendremos la posicio&#243;n por l&#237;nea (x) y columna (y) 
   para as&#237; indicar al usuario en donde se consiguio el token o error
-}

getPos :: AlexPosn -> (Int,Int)
getPos (AlexPn _ x y) = (x,y)
{-
  Funcion que transforma los reales de vectorinox a Doubles 
-}
toDouble :: String -> Double
toDouble s 
	 | last s == '.' = read (s++"0")
	 | head s == '.' = read ("0"++s)
	 | otherwise = read s

{- 
   Esta funci&#243;n recibe una cadena de caracteres (String) la cual es
   el programa, sin importar si es de manera interactiva o por archivo,
   

   En caso de que el programa respete el alfabeto/lenguaje /Vectorinox/ se
   generara una lista de tokens validos, en caso de que haya (al menos) un
   caracter/palabra que no concuerde con el lenguaje /Vectorinox/ se mostrara
   al usuario una lista con todos los errores lexicogr&#225;ficos del programa
-}
lexer :: String -> [Token]
lexer s = if null(errors)
          then
            tokens
          else
            error (concat errors)
              where
                (tokens,errors) = yylex s

{-
   yylex es la funci&#243;n que se encarga de verificar si cada palabra
   conseguida es una palabra del lenguaje, esta verificacion tiene 4 posibles
   resultados:

   1- /EOF/ (Fin de /String/: en ese caso simplemente no hacemos nada, ha 
   terminado la ejecuci&#243;n del programa, as&#237; que se devuelve las
   listas recibidas sin cambiar nada

   2- /Skip/: Aquellas palabras que acepta el lenguaje pero no requieren aplicar
   acci&#243;n al ser encontradas, en este caso al igual que en el anterior no 
   se alteran las listas recibidas, pero se sigue revisando la cadena de 
   caracteres en busca de otras palabras o fin de archivo.

   3- /Token/: Aquellas palabras que acepta el lenguaje y ademas requieren
   una acci&#243;n determinada, en este caso, creamos un token de dicha palabra
   junto con su posici&#243;n, lo agregamos a la lista de tokens y seguimos revisando
   la cadena de caracteres en busca de otras palabras o fin de archivo.

   4- /Caracter invalido/: En caso de recibir un caracter que no sea aceptado 
   por el lenguaje lo que se debe hacer agregar la posici&#243;n del mismo a la
   lista de errores (junto con el caracter), para indicar al usuario que ha
   utilizado un caracter inv&#225;lido, y se sigue buscando en la cadena de 
   caracteres por errores, hasta el fin del archivo.

-}
yylex :: String -> ([Token],[String])
yylex str = go (alexStartPos,'\n',str) ([],[])
  where go inp@(pos,_,str) (tklist,erlist) =
          case alexScan inp 0 of
            AlexEOF                -> (tklist,erlist)
            AlexSkip  ninp len     -> go ninp (tklist,erlist)
            AlexToken ninp len act -> (ntklist,nerlist)
              where
                  (ntoken,nerlist) = go ninp (tklist,erlist)
                  ntklist         = act pos (take len str) : ntoken
            AlexError ninp         -> (ntklist,nerlist)
              where
                (ntklist,nerrors)           = go (skip ninp) (tklist,erlist)
                nerlist                 = addError ninp nerrors
                skip (p,c,s)       = (alexMove p (head s),c,(tail s))
                addError (p,_,s) erlist    = m : erlist
                  where
                    (line,column) = getPos p
                    m = "\nError (Lexer): Caracter inesperado '" ++ 
                        [ head s ] ++
                        "' en la linea " ++ (show line) ++
                        " y columna " ++ (show column) ++ "."

}