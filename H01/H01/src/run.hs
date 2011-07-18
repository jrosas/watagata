{-|

  Asunto: C&#243;digo fuente del Proyecto &#250;nico (Entrega 3).
  Proyecto: Analizador Lexicogr&#225;fico en Haskell
  Materia: Taller de Traductores (CI-3725)
  Trimestre: Abril-Julio 2011
  Profesor: Carlos Colmenares

  Grupo: H01

  Este Modulo Corresponde al Interpretador del Lenguaje Vectorinox
  La función principal es runStatement que recibe el AST y la SymbTable
  asociada

 -}

module Run(
runStatement,
  )where


import SymTable
import AST

{-|
   La función runStatemet es el centro del Interpretador de los programas
   escritos en Vectorinox, se vale del resultado generado por el lexer y
   por el parser para generar los resultados correspondientes
-}

runStatement :: ((SymTable,[FunDec]),ASTInstruc) -> IO()
runStatement ((a,b),c) = evalInst c

{-|
   La función evalInst es un auxiliar para la función runStatement,
   tiene como objetivo evaluar las Instrucciones que conmponen el lenguaje
   Vectorinox
-}

evalInst :: ASTInstruc -> IO()
evalInst (Write [(Id str)]) = putStr str
evalInst _ = putStr "Not implemented"

{-|
   La función evalExpression es un auxiliar para la función runStatement,
   tiene como objetivo evaluar el resultado de las Expresiones que conmponen
   el lenguaje Vectorinox
   evalExpression :: ASTExp  -> IO()
-}



{-|
   La función evalBool es un auxiliar para la función runStatement,
   tiene como objetivo evaluar el resultado de las ExpresionesBooleanas
   que conmponen el lenguaje Vectorinox
   evalBool :: ASTExp -> IO()
-}