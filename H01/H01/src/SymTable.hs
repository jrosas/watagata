{-|

  Asunto: C&#243;digo fuente del Proyecto &#250;nico (Entrega 3).
  Proyecto: Analizador Lexicogr&#225;fico en Haskell
  Materia: Taller de Traductores (CI-3725)
  Trimestre: Abril-Julio 2011
  Profesor: Carlos Colmenares

  Grupo: H01

  SymTable es utilizada por nuestro analizador est&#225;tico CheckAST.hs, para poder
  verificar el uso de Variables, Funciones, y Sobreescribir/heredar variables a
  trav&#233;s de los distintos bloques de instrucciones de los programas (.vec) de
  Vectorinox, para as&#237; poder concluir si el analisis de las expresiones
  relacionadas con funciones o variables son v&#225;lidas
 -}

module SymTable (
   SymTable(..),
   Symbol(..),
   VarType(..),
   Value(..),
   emptySymTable,
   find,
   insert,
   replace,
   isMember,
   isEmpty,
   typeSymbol,
   signSymbol,
   setFather
   ) where

import qualified Data.Map as Map


-- | SymTable es el tipo especificado para la entrega de este proyecto, para
-- | expresar la Tabla de S&#237;mbolos del proyecto, funciones y los distintos
-- | bloques del mismo, el constructor es Rama, tiene una lista de Clave y
-- | S&#237;mbolo, seguido de una (posible) Tabla de s&#237;mbolos que es la Tabla padre
data SymTable = Rama (Map.Map String Symbol) (Maybe SymTable)
              deriving (Eq, Show)

-- | Definido con el constructor Sym y basado en 2 valores, el tipo y el valor
-- | de la clave que apunta a ellos a trav&#233;s del Data.Map por el que llegamos
-- | al mismo.
data Symbol = Var VarType (Maybe Value)
            | Fun VarType SymTable [VarType]
              deriving (Eq, Show)

{-|
   @VarType@ hace referencia a cualquier tipo de utilizada en Vectorinox, no solo
   variable, que son Numeros, Vectores, Matrices, Booleanos y Strings 
-}
data VarType = TNum
             | TVec
             | TMat
             | TBool
             | TString
             deriving (Eq, Show)
{-|
  @Value@ Son los posibles tipos de valores que puede llegar a tener un s&#237;mbolo
  que son Numero y Matriz
-}
data Value = Numero
           | Matriz
           deriving (Eq, Show)


-- | @emptySymTable@ es una funci&#243;n que devuelve una SymTable sin elementos, y
-- | con padre vac&#237;a
emptySymTable :: SymTable    -- ^ Tabla vac&#237;a devuelta por la funci&#243;n.
emptySymTable = Rama (Map.empty) Nothing

-- | La funci&#243;n @isEmpty@  se encarga de verificar si una SymTable esta vac&#237;a o
-- | no, no se verificar el padre, para considerar esto
isEmpty :: SymTable    -- ^ Tabla a verificar si es vac&#237;a o no
        -> Bool        -- ^ Respuesta de la funci&#243;n, si o no
isEmpty (Rama fl _) = Map.null fl

-- | @setFather@ se emcarga de establecerle un nuevo padre a alg&#250;n SymTable
-- | en cualquier momento de la ejecuci&#243;n, para asi poder anidarlas en
-- | base a la necesidad
setFather :: SymTable          -- ^ Tabla a establecerle padre
          -> Maybe SymTable    -- ^ Tabla que sera padre, podr&#237;a ser vac&#237;a
          -> SymTable          -- ^ Tabla resultado
setFather (Rama x y) symTableFather = Rama x symTableFather

-- | @find@ es la funci&#243;n que se encarga de devolvernos el s&#237;mbolo, asociado
-- | a la clave y tabla de s&#237;mbolo del bloque al que pertenece, en algunos
-- | podr&#237;a no pertenecer al bloque, sino al bloque contenedor
find :: String       -- ^ S&#237;mbolo a buscar en la Tabla de S&#237;mbolos.
     -> SymTable     -- ^ Tabla de S&#237;mbolos.
     -> Maybe Symbol -- ^ Valor asociado al S&#237;mbolo, si existe.
find key (Rama fl Nothing) = if Map.member key fl
                             then Map.lookup key fl
                             else Nothing
find key (Rama fl (Just st)) = if Map.member key fl
                               then Map.lookup key fl
                               else find key st

-- | @isMember@ Es una funci&#243;n que se encarga de decir si el par&#225;metro de
-- | entrada (una  clave), se encuentra en el bloque de variables con el cual
-- | es ingresado en la funci&#243;n, en casi afirmativo devuelve @True@, en caso
-- | contrario devolver&#225; de manera l&#243;gica @False@
isMember :: String       -- ^ S&#237;mbolo a buscar en la Tabla de S&#237;mbolos.
         -> SymTable  -- ^ Tabla de S&#237;mbolos.
         -> Bool      -- ^ ¿El S&#237;mbolo est&#225; en la Tabla de S&#237;mbolos?
isMember key (Rama fl Nothing) = if Map.member key fl
                                 then True
                                 else False
isMember key (Rama fl (Just st)) = if Map.member key fl
                                  then True
                                  else there
                                      where there = isMember key st

-- | @insert@ funci&#243;n utilizada para agregar una nueva tupla (clave, s&#237;mbolo)
-- | a la tabla de s&#237;mbolos del bloque que pasamos como par&#225;metro de entrada,
-- | esta tabla de s&#237;mbolos puede recibir otra como par&#225;metro de entrada, que
-- | es la que contiene al nuevo bloque
insert :: String   -- ^ S&#237;mbolo a insertar en la Tabla de S&#237;mbolos.
       -> Symbol   -- ^ Valor a asociar.
       -> SymTable -- ^ Tabla de S&#237;mbolos donde insertar.
       -> SymTable -- ^ Nueva Tabla de S&#237;mbolos despu&#233;s de la inserci&#243;n.
insert key symb (Rama fl st) = if Map.member key fl
                               then message key symb
                               else Rama (Map.insert key symb fl) st

-- | @typeSymbol@ devuelvo el tipo del s&#237;mbolo, se considera tipo de la funci&#243;n
-- | el tipo del valor devuelto por la misma
typeSymbol :: Symbol     -- ^ Simbolo (Var o Fun) del que queremos saber el tipo
         -> VarType      -- ^ Tipo del s&#237;mnolo
typeSymbol (Var typeVar _) = typeVar
typeSymbol (Fun typeFun _ _) = typeFun

-- | La funci&#243;n @signSymbol@ se encarga de devolver la lista de firmas
-- | necesarias por una llamada a funci&#243;n,se
signSymbol :: Symbol     -- ^ S&#237;mbolo del que queremos saber la firma de llamada
         -> [VarType]    -- ^ Lista para verificar la correctitud de la llamada
signSymbol (Var _ _) = []
signSymbol (Fun _ _ elemCall) = elemCall

-- | @replace@ se encarga de sustituir el s&#237;mbolo de una clave perteneciente a
-- | la tabla de s&#237;mbolos que le es suministrada.
replace :: String   -- ^ S&#237;mbolo cuyo valor se quiere modificar.
        -> Symbol   -- ^ Nuevo valor asociado al s&#237;mbolo.
        -> SymTable -- ^ Tabla de S&#237;mbolos a modificar.
        -> SymTable -- ^ Tabla de S&#237;mbolos despu&#233;s de la modificaci&#243;n.
replace key symb (Rama fl st) = if Map.member key fl
                               then Rama (Map.insert key symb fl) st
                               else Rama fl st

message :: String       -- ^ Nombre de la funci&#243;n o variable con problema
        -> Symbol       -- ^ S&#237;mbolo para poder decir si es funci&#243;n o variable
        -> error        -- ^ Esto significa que el programa esta mal, error
message key (Var _ _) = error $ "Error: La variable \""++key++"\" ya fue declarada"
message key (Fun _ _ _) = error $ "Error: La funcion \""++key++"\" ya fue declarada"
