 {-|

  Asunto: C&#243;digo fuente del Proyecto &#250;nico (Entrega 3).
  Proyecto: Analizador Lexicogr&#225;fico en Haskell
  Materia: Taller de Traductores (CI-3725)
  Trimestre: Abril-Julio 2011
  Profesor: Carlos Colmenares

  Grupo: H01

   Este programa se encarga de obtener los argumentos suministrados por el
   usuario, sea un archivo o una l&#237;nea de comandos, para encargarse luego
   procesar el programa obtenido por los disntitos componentes del Lenguaje
   /Vectorinox/, en este caso solo pasara por el /Analizador/
   /Lexicogr&#225;fico/ del mismo. Para mostrar asi al usuario los tokens del
   programa o los errores del mismo.
 -}

module Main (
  main
) where

import System
import System.IO
import Lexer
import Parser
import CheckAST

main :: IO ()
main =  do
  args <- getArgs
  if null(args) then do putStrLn "No ha introducido elementos"
                  else if head args == "-e" then do
                         print $ parser $lexer $ head $ tail args
                       else do
                         contents <- readFile $ head args
                         print $ ( show $ parser $lexer contents )  ++ (show (checkAST ( parser (lexer contents)))) 
