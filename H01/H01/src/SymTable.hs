{-|

  Asunto: C&#243;digo fuente del Proyecto &#250;nico (Entrega 3).
  Proyecto: Analizador Lexicogr&#225;fico en Haskell
  Materia: Taller de Traductores (CI-3725)
  Trimestre: Abril-Julio 2011
  Profesor: Carlos Colmenares

  Grupo: H01

  SymTable es utilizada por nuestro analizador estático CheckAST.hs, para poder
  verificar el uso de Variables, Funciones, y Sobreescribir/heredar variables a
  través de los distintos bloques de instrucciones de los programas (.vec) de
  Vectorinox, para así poder concluir si el analisis de las expresiones
  relacionadas con funciones o variables son válidas
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
-- | expresar la Tabla de Símbolos del proyecto, funciones y los distintos
-- | bloques del mismo, el constructor es Rama, tiene una lista de Clave y
-- | Símbolo, seguido de una (posible) Tabla de símbolos que es la Tabla padre
data SymTable = Rama (Map.Map String Symbol) (Maybe SymTable)
              deriving (Eq, Show)

-- | Definido con el constructor Sym y basado en 2 valores, el tipo y el valor
-- | de la clave que apunta a ellos a través del Data.Map por el que llegamos
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
  @Value@ Son los posibles tipos de valores que puede llegar a tener un símbolo
  que son Numero y Matriz
-}
data Value = Numero
           | Matriz
           deriving (Eq, Show)


-- | @emptySymTable@ es una función que devuelve una SymTable sin elementos, y
-- | con padre vacía
emptySymTable :: SymTable    -- ^ Tabla vacía devuelta por la función.
emptySymTable = Rama (Map.empty) Nothing

-- | La función @isEmpty@  se encarga de verificar si una SymTable esta vacía o
-- | no, no se verificar el padre, para considerar esto
isEmpty :: SymTable    -- ^ Tabla a verificar si es vacía o no
        -> Bool        -- ^ Respuesta de la función, si o no
isEmpty (Rama fl _) = Map.null fl

-- | @setFather@ se emcarga de establecerle un nuevo padre a algún SymTable
-- | en cualquier momento de la ejecución, para asi poder anidarlas en
-- | base a la necesidad
setFather :: SymTable          -- ^ Tabla a establecerle padre
          -> Maybe SymTable    -- ^ Tabla que sera padre, podría ser vacía
          -> SymTable          -- ^ Tabla resultado
setFather (Rama x y) symTableFather = Rama x symTableFather

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
                               then mensaje key symb
                               else Rama (Map.insert key symb fl) st

-- | @typeSymbol@ devuelvo el tipo del símbolo, se considera tipo de la función
-- | el tipo del valor devuelto por la misma
typeSymbol :: Symbol     -- ^ Simbolo (Var o Fun) del que queremos saber el tipo
         -> VarType      -- ^ Tipo del símnolo
typeSymbol (Var typeVar _) = typeVar
typeSymbol (Fun typeFun _ _) = typeFun

-- | La función @signSymbol@ se encarga de devolver la lista de firmas
-- | necesarias por una llamada a función,se
signSymbol :: Symbol     -- ^ Símbolo del que queremos saber la firma de llamada
         -> [VarType]    -- ^ Lista para verificar la correctitud de la llamada
signSymbol (Var _ _) = []
signSymbol (Fun _ _ elemCall) = elemCall

-- | @replace@ se encarga de sustituir el símbolo de una clave perteneciente a
-- | la tabla de símbolos que le es suministrada.
replace :: String   -- ^ Símbolo cuyo valor se quiere modificar.
        -> Symbol   -- ^ Nuevo valor asociado al símbolo.
        -> SymTable -- ^ Tabla de Símbolos a modificar.
        -> SymTable -- ^ Tabla de Símbolos después de la modificación.
replace key symb (Rama fl st) = if Map.member key fl
                               then Rama (Map.insert key symb fl) st
                               else Rama fl st

mensaje :: String       -- ^ Nombre de la función o variable con problema
        -> Symbol       -- ^ Símbolo para poder decir si es función o variable
        -> error        -- ^ Esto significa que el programa esta mal, error
mensaje key (Var _ _) = error $ "Error: La variable \""++key++"\" ya fue declarada"
mensaje key (Fun _ _ _) = error $ "Error: La funcion \""++key++"\" ya fue declarada"