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


main :: IO ()
main =  do
  args <- getArgs
  if null(args) then do putStrLn "Jodete"
                  else if head args == "-e" then do
                         print $ lexer $ head $ tail args
                       else do
                         contents <- readFile $ head args
                         print $ lexer contents
