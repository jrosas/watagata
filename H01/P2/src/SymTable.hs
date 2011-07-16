
{-|
  
  Asunto: C&#243;digo fuente del Proyecto &#250;nico (Entrega 2). 
  Proyecto: Analizador Lexicogr&#225;fico en Haskell
  Materia: Taller de Traductores (CI-3725)
  Trimestre: Abril-Julio 2011
  Profesor: Carlos Colmenares
  
  Grupo: H01
  Integrantes:            Carnet:  
  * Juan Rosas           (07-41502)
  * Jos&#233; Lezama     (07-41104)
    
 -}

module SymTable (
   SymTable(..),
   Symbol(..),
   ) where

import qualified Data.Map as Map
 
data SymTable = SymTable (Map.Map String Symbol)
              deriving (Eq,Show)

data Symbol = Var Type
            | Fun Type
              deriving (Eq,Show)

data Type = Num 
          | Vec
          | Mat
            deriving (Eq,Show)