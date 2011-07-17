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
-- | expresar la Tabla de Símbolos del proyecto, funciones y los distintos
-- | bloques del mismo, el constructor es Rama, tiene una lista de Clave y
-- | Símbolo, seguido de una (posible) Tabla de símbolos que es la Tabla padre
data SymTable = Rama (Map.Map String Symbol) (Maybe SymTable)
              deriving (Show)

-- | Definido con el constructor Sym y basado en 2 valores, el tipo y el valor
-- | de la clave que apunta a ellos a través del Data.Map por el que llegamos
-- | al mismo.
data Symbol = Var VarType Exp
            | Fun VarType SymTable Instruc
              deriving (Show)

-- | @emptySymTable@
emptySymTable :: SymTable
emptySymTable = Rama (Map.empty) Nothing

-- | @find@ es la función que se encarga de devolvernos el símbolo, asociado
-- | a la clave y tabla de símbolo del bloque al que pertenece, en algunos
-- | podría no pertenecer al bloque, sino al bloque contenedor
find :: String       -- ^ Símbolo a buscar en la Tabla de Símbolos.
     -> SymTable     -- ^ Tabla de Símbolos.
     -> Maybe Symbol -- ^ Valor asociado al Símbolo, si existe.
find key (Rama fl Nothing) = if Map.member key fl
                             then Map.lookup key fl
                             else Nothing
find key (Rama fl (Just st)) = if Map.member key fl
                               then Map.lookup key fl
                               else find key st

-- | @isMember@ Es una función que se encarga de decir si el parámetro de
-- | entrada (una  clave), se encuentra en el bloque de variables con el cual
-- | es ingresado en la función, en casi afirmativo devuelve @True@, en caso
-- | contrario devolverá de manera lógica @False@
isMember :: String       -- ^ Símbolo a buscar en la Tabla de Símbolos.
         -> SymTable  -- ^ Tabla de Símbolos.
         -> Bool      -- ^ ¿El Símbolo está en la Tabla de Símbolos?
isMember key (Rama fl Nothing) = if Map.member key fl
                                 then True
                                 else False
isMember key (Rama fl (Just st)) = if Map.member key fl
                                  then True
                                  else there
                                      where there = isMember key st

-- | @insert@ función utilizada para agregar una nueva tupla (clave, símbolo)
-- | a la tabla de símbolos del bloque que pasamos como parámetro de entrada,
-- | esta tabla de símbolos puede recibir otra como parámetro de entrada, que
-- | es la que contiene al nuevo bloque
insert :: String   -- ^ Símbolo a insertar en la Tabla de Símbolos.
       -> Symbol   -- ^ Valor a asociar.
       -> SymTable -- ^ Tabla de Símbolos donde insertar.
       -> SymTable -- ^ Nueva Tabla de Símbolos después de la inserción.
insert key symb (Rama fl st) = if Map.member key fl
                               then error $ "Ya existe una variable con nombre "++key
                               else Rama (Map.insert key symb fl) st

-- | @replace@ se encarga de sustituir el símbolo de una clave perteneciente a
-- | la tabla de símbolos que le es suministrada.
replace :: String   -- ^ Símbolo cuyo valor se quiere modificar.
        -> Symbol   -- ^ Nuevo valor asociado al símbolo.
        -> SymTable -- ^ Tabla de Símbolos a modificar.
        -> SymTable -- ^ Tabla de Símbolos después de la modificación.
replace key symb (Rama fl st) = if Map.member key fl
                               then Rama (Map.insert key symb fl) st
                               else Rama fl st