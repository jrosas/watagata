{-|

  Asunto: C&#243;digo fuente del Proyecto &#250;nico (Entrega 3). 
  Proyecto: Analizador Lexicogr&#225;fico en Haskell
  Materia: Taller de Traductores (CI-3725)
  Trimestre: Abril-Julio 2011
  Profesor: Carlos Colmenares
  
  Grupo: H01

-}

module Tokens (
  -- ** Tipo exportable
  Token(..),
  ) where  

-- | Token es
data Token = 
    TkTNum      (Int,Int) -- ^ Palabra reservada para tipo @num@.
  | TkTVec    (Int,Int) -- ^ Palabra reservada para tipo @vec@.
  | TkTMat    (Int,Int) -- ^ Palabra reservada para tipo @mat@.
  | TkTrue    (Int,Int) -- ^ Palabra reservada para tipo boolean def @true@.
  | TkFalse   (Int,Int) -- ^ Palabra reservada para tipo boolean def @false@.
    
  | TkString  (Int,Int) String -- ^ Cadena de cracteres literales.
  | TkId      (Int,Int) String -- ^ Identificador alfan&#250;merico.
  | TkNum     (Int,Int) Double -- ^ N&#250;mero real litelra.
    
  | TkPlus    (Int,Int) -- ^ Operaci&#243;n de suma @+@ 
  | TkMinus   (Int,Int) -- ^ Operaci&#243;n de resta @-@
  | TkTimes   (Int,Int) -- ^ Operaci&#243;n de multiplicaci&#243;n #*#
  | TkDiv     (Int,Int) -- ^ Operaci&#243;n de divisi&#243;n #/#
  | TkMod     (Int,Int) -- ^ Operaci&#243;n de m&#243;dulo #%#
  | TkExp     (Int,Int) -- ^ Operaci&#243;n de exponenciaci&#243;n #**#
  | TkDot     (Int,Int) -- ^ Operaci&#243;n producto punto #.#
     
  | TkLess    (Int,Int) -- ^ Operador de comparaci&#243; @<@
  | TkGreat   (Int,Int) -- ^ Operador de comparaci&#243; @>@
  | TkLET     (Int,Int) -- ^ Operador de comparaci&#243; @<=@
  | TkGET     (Int,Int) -- ^ Operador de comparaci&#243; @>=@
  | TkEqual   (Int,Int) -- ^ Operador de comparaci&#243; @=@
  | TkNEqual  (Int,Int) -- ^ Operador de comparaci&#243; @!=@
  | TkAssign  (Int,Int) -- ^ Operador de asignaci&#243; @:=@
    
  | TkLSB     (Int,Int) -- ^ Apertura de par&#233;ntesis cuadrados @[@
  | TkRSB     (Int,Int) -- ^ Cierre de par&#233;ntesis cuadrados @]@
  | TkLCB     (Int,Int) -- ^ Apertura de par&#233;ntesis curvo @{@
  | TkRCB     (Int,Int) -- ^ Cierre de par&#233;ntesis curvo @}@
  | TkLP      (Int,Int) -- ^ Apertura de par&#233;ntesis @(@
  | TkRP      (Int,Int) -- ^ Cierre de par&#233;ntesis @)@
    
  | TkDS      (Int,Int) -- ^ Operador de medida de filas @$@
  | TkAt      (Int,Int) -- ^ Operador de medida de columnas @\@@
  | TkCircum  (Int,Int) -- ^ Operador de trasposici&#243;n de @vec/mat@ @'@
  | TkColon   (Int,Int) -- ^ Indicador de rango de @vec/mat@ @:@
  | TkComma   (Int,Int) -- ^ Indicador de rango de @vec/mat@ @,@
  | TkSC      (Int,Int) -- ^ Indicador de posici&#243;n de @vec/mat@ @:@
    
  | TkAnd     (Int,Int) -- ^ Operador 'Y' con cortocircuito @&&@ 
  | TkOr      (Int,Int) -- ^ Operador 'O' con cortocircuito @||@
  | TkNot     (Int,Int) -- ^ Operado de negaci&#n @!@
        
  | TkFZeroes (Int,Int) -- ^ Funci&#243; de @vec/mat@ @zeroes(x) o zeroes(x,y)@
  | TkFRange  (Int,Int) -- ^ Funci&#243; de @vec@ @range x@ 
  | TkFEye    (Int,Int) -- ^ Funci&#243; de @mat@ @eye@
  | TkRead    (Int,Int) -- ^ Funci&#243; @read@ lee de consola
  | TkWrite   (Int,Int) -- ^ Funci&#243; @write@ muestra por consola
  | TkComment (Int,Int) -- ^ Caracter indicador del comienzo de comentario @#@
    
  | TkDef     (Int,Int) -- ^ Palabra reservada @define@
  | TkOf      (Int,Int) -- ^ Palabra reservada @of@
  | TkType    (Int,Int) -- ^ Palabra reservada @type@
  | TkAs      (Int,Int) -- ^ Palabra reservada @as@
  | TkBegin   (Int,Int) -- ^ Palabra reservada @begin@
  | TkEnd     (Int,Int) -- ^ Palabra reservada @end@
  | TkVar     (Int,Int) -- ^ Palabra reservada @var@
  | TkIf      (Int,Int) -- ^ Palabra reservada @if@
  | TkElse    (Int,Int) -- ^ Palabra reservada @else@
  | TkThen    (Int,Int) -- ^ Palabra reservada @then@
  | TkWhile   (Int,Int) -- ^ Palabra reservada @while@
  | TkDo      (Int,Int) -- ^ Palabra reservada @do@
  | TkFore    (Int,Int) -- ^ Palabra reservada @foreach@
  | TkIn      (Int,Int) -- ^ Palabra reservada @in@
  | TkReturn  (Int,Int) -- ^ Palabra reservada @return@
  deriving (Show, Eq) 