{-|

  Asunto: C&#243;digo fuente del Proyecto &#250;nico (Entrega 3).
  Proyecto: Analizador Lexicogr&#225;fico en Haskell
  Materia: Taller de Traductores (CI-3725)
  Trimestre: Abril-Julio 2011
  Profesor: Carlos Colmenares

  Grupo: H01

  SymTable es utilizada por nuestro analizador est�tico CheckAST.hs, para poder
  verificar el uso de Variables, Funciones, y Sobreescribir/heredar variables a
  trav�s de los distintos bloques de instrucciones de los programas (.vec) de
  Vectorinox, para as� poder concluir si el analisis de las expresiones
  relacionadas con funciones o variables son v�lidas
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
-- | expresar la Tabla de S�mbolos del proyecto, funciones y los distintos
-- | bloques del mismo, el constructor es Rama, tiene una lista de Clave y
-- | S�mbolo, seguido de una (posible) Tabla de s�mbolos que es la Tabla padre
data SymTable = Rama (Map.Map String Symbol) (Maybe SymTable)
              deriving (Eq, Show)

-- | Definido con el constructor Sym y basado en 2 valores, el tipo y el valor
-- | de la clave que apunta a ellos a trav�s del Data.Map por el que llegamos
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
  @Value@ Son los posibles tipos de valores que puede llegar a tener un s�mbolo
  que son Numero y Matriz
-}
data Value = Numero
           | Matriz
           deriving (Eq, Show)


-- | @emptySymTable@ es una funci�n que devuelve una SymTable sin elementos, y
-- | con padre vac�a
emptySymTable :: SymTable    -- ^ Tabla vac�a devuelta por la funci�n.
emptySymTable = Rama (Map.empty) Nothing

-- | La funci�n @isEmpty@  se encarga de verificar si una SymTable esta vac�a o
-- | no, no se verificar el padre, para considerar esto
isEmpty :: SymTable    -- ^ Tabla a verificar si es vac�a o no
        -> Bool        -- ^ Respuesta de la funci�n, si o no
isEmpty (Rama fl _) = Map.null fl

-- | @setFather@ se emcarga de establecerle un nuevo padre a alg�n SymTable
-- | en cualquier momento de la ejecuci�n, para asi poder anidarlas en
-- | base a la necesidad
setFather :: SymTable          -- ^ Tabla a establecerle padre
          -> Maybe SymTable    -- ^ Tabla que sera padre, podr�a ser vac�a
          -> SymTable          -- ^ Tabla resultado
setFather (Rama x y) symTableFather = Rama x symTableFather

-- | @find@ es la funci�n que se encarga de devolvernos el s�mbolo, asociado
-- | a la clave y tabla de s�mbolo del bloque al que pertenece, en algunos
-- | podr�a no pertenecer al bloque, sino al bloque contenedor
find :: String       -- ^ S�mbolo a buscar en la Tabla de S�mbolos.
     -> SymTable     -- ^ Tabla de S�mbolos.
     -> Maybe Symbol -- ^ Valor asociado al S�mbolo, si existe.
find key (Rama fl Nothing) = if Map.member key fl
                             then Map.lookup key fl
                             else Nothing
find key (Rama fl (Just st)) = if Map.member key fl
                               then Map.lookup key fl
                               else find key st

-- | @isMember@ Es una funci�n que se encarga de decir si el par�metro de
-- | entrada (una  clave), se encuentra en el bloque de variables con el cual
-- | es ingresado en la funci�n, en casi afirmativo devuelve @True@, en caso
-- | contrario devolver� de manera l�gica @False@
isMember :: String       -- ^ S�mbolo a buscar en la Tabla de S�mbolos.
         -> SymTable  -- ^ Tabla de S�mbolos.
         -> Bool      -- ^ �El S�mbolo est� en la Tabla de S�mbolos?
isMember key (Rama fl Nothing) = if Map.member key fl
                                 then True
                                 else False
isMember key (Rama fl (Just st)) = if Map.member key fl
                                  then True
                                  else there
                                      where there = isMember key st

-- | @insert@ funci�n utilizada para agregar una nueva tupla (clave, s�mbolo)
-- | a la tabla de s�mbolos del bloque que pasamos como par�metro de entrada,
-- | esta tabla de s�mbolos puede recibir otra como par�metro de entrada, que
-- | es la que contiene al nuevo bloque
insert :: String   -- ^ S�mbolo a insertar en la Tabla de S�mbolos.
       -> Symbol   -- ^ Valor a asociar.
       -> SymTable -- ^ Tabla de S�mbolos donde insertar.
       -> SymTable -- ^ Nueva Tabla de S�mbolos despu�s de la inserci�n.
insert key symb (Rama fl st) = if Map.member key fl
                               then mensaje key symb
                               else Rama (Map.insert key symb fl) st

-- | @typeSymbol@ devuelvo el tipo del s�mbolo, se considera tipo de la funci�n
-- | el tipo del valor devuelto por la misma
typeSymbol :: Symbol     -- ^ Simbolo (Var o Fun) del que queremos saber el tipo
         -> VarType      -- ^ Tipo del s�mnolo
typeSymbol (Var typeVar _) = typeVar
typeSymbol (Fun typeFun _ _) = typeFun

-- | La funci�n @signSymbol@ se encarga de devolver la lista de firmas
-- | necesarias por una llamada a funci�n,se
signSymbol :: Symbol     -- ^ S�mbolo del que queremos saber la firma de llamada
         -> [VarType]    -- ^ Lista para verificar la correctitud de la llamada
signSymbol (Var _ _) = []
signSymbol (Fun _ _ elemCall) = elemCall

-- | @replace@ se encarga de sustituir el s�mbolo de una clave perteneciente a
-- | la tabla de s�mbolos que le es suministrada.
replace :: String   -- ^ S�mbolo cuyo valor se quiere modificar.
        -> Symbol   -- ^ Nuevo valor asociado al s�mbolo.
        -> SymTable -- ^ Tabla de S�mbolos a modificar.
        -> SymTable -- ^ Tabla de S�mbolos despu�s de la modificaci�n.
replace key symb (Rama fl st) = if Map.member key fl
                               then Rama (Map.insert key symb fl) st
                               else Rama fl st

mensaje :: String       -- ^ Nombre de la funci�n o variable con problema
        -> Symbol       -- ^ S�mbolo para poder decir si es funci�n o variable
        -> error        -- ^ Esto significa que el programa esta mal, error
mensaje key (Var _ _) = error $ "Error: La variable \""++key++"\" ya fue declarada"
mensaje key (Fun _ _ _) = error $ "Error: La funcion \""++key++"\" ya fue declarada"