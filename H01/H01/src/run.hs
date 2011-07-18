{-|

  Asunto: C&#243;digo fuente del Proyecto &#250;nico (Entrega 3).
  Proyecto: Analizador Lexicogr&#225;fico en Haskell
  Materia: Taller de Traductores (CI-3725)
  Trimestre: Abril-Julio 2011
  Profesor: Carlos Colmenares

  Grupo: H01

  Se encarga de la verificaci�n de la correctitud est�tica de un programa
  escrito en Vectorinox, para garantizar que un programa esta bien, al menos
  de manera est�tica se debe verificar:
    * No pueden haber dos funciones con el mismo nombre, sin importar el n�mero
    de argumentos de �stos.
    * No pueden haber dos declaraciones de variable con el mismo nombre en el
    mismo bloque.
    * No se puede hacer menci�n a variables o funciones no declaradas.
    * Las llamadas a funciones corresponen a las firmas de las funciones
    declaradas
    * Las expresiones son compatibles en tipos a gran escala: que las
    expresiones cumplan con las reglas de tipoimpuestas en el enunciado del
    lenguaje.
    * No pueden haber instrucciones de retorno de valores en el programa
    principal.
    * En una instrucci�n de iteraci�n sobre un vector/matriz, la instrucci�n
    interna no puede de ninguna forma alterar la variable indicada en la
    instrucci�n.

 -}

module Run(
runStatement,
  )where


import SymTable
import AST

runStatement :: ((SymTable,[FunDec]),Instruc) -> IO()
runStatement ((a,b),c) = evalInst c

evalInst ()


evalExpression
evalBool
