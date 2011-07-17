{-|

  Asunto: C&#243;digo fuente del Proyecto &#250;nico (Entrega 3).
  Proyecto: Analizador Lexicogr&#225;fico en Haskell
  Materia: Taller de Traductores (CI-3725)
  Trimestre: Abril-Julio 2011
  Profesor: Carlos Colmenares

  Grupo: H01

 -}

module SymTable (
   SymTable(..),
   Symbol(..),
   emptySymTable,
   find,
   insert,
   replace,
   isMember
   ) where

import qualified Data.Map as Map
import AST

-- | SymTable es el tipo especificado para la entrega de este proyecto, para
-- | expresar la Tabla de S�mbolos del proyecto, funciones y los distintos
-- | bloques del mismo, el constructor es Rama, tiene una lista de Clave y
-- | S�mbolo, seguido de una (posible) Tabla de s�mbolos que es la Tabla padre
data SymTable = Rama (Map.Map String Symbol) (Maybe SymTable)
              deriving (Show)

-- | Definido con el constructor Sym y basado en 2 valores, el tipo y el valor
-- | de la clave que apunta a ellos a trav�s del Data.Map por el que llegamos
-- | al mismo.
data Symbol = Var VarType Exp
            | Fun VarType SymTable Instruc
              deriving (Show)

-- | @emptySymTable@
emptySymTable :: SymTable
emptySymTable = Rama (Map.empty) Nothing

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
                               then error $ "Ya existe una variable con nombre "++key
                               else Rama (Map.insert key symb fl) st

-- | @replace@ se encarga de sustituir el s�mbolo de una clave perteneciente a
-- | la tabla de s�mbolos que le es suministrada.
replace :: String   -- ^ S�mbolo cuyo valor se quiere modificar.
        -> Symbol   -- ^ Nuevo valor asociado al s�mbolo.
        -> SymTable -- ^ Tabla de S�mbolos a modificar.
        -> SymTable -- ^ Tabla de S�mbolos despu�s de la modificaci�n.
replace key symb (Rama fl st) = if Map.member key fl
                               then Rama (Map.insert key symb fl) st
                               else Rama fl st