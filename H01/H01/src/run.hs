{-|

  Asunto: C&#243;digo fuente del Proyecto &#250;nico (Entrega 3).
  Proyecto: Analizador Lexicogr&#225;fico en Haskell
  Materia: Taller de Traductores (CI-3725)
  Trimestre: Abril-Julio 2011
  Profesor: Carlos Colmenares

  Grupo: H01

  Se encarga de la verificación de la correctitud estática de un programa
  escrito en Vectorinox, para garantizar que un programa esta bien, al menos
  de manera estática se debe verificar:
    * No pueden haber dos funciones con el mismo nombre, sin importar el número
    de argumentos de éstos.
    * No pueden haber dos declaraciones de variable con el mismo nombre en el
    mismo bloque.
    * No se puede hacer mención a variables o funciones no declaradas.
    * Las llamadas a funciones corresponen a las firmas de las funciones
    declaradas
    * Las expresiones son compatibles en tipos a gran escala: que las
    expresiones cumplan con las reglas de tipoimpuestas en el enunciado del
    lenguaje.
    * No pueden haber instrucciones de retorno de valores en el programa
    principal.
    * En una instrucción de iteración sobre un vector/matriz, la instrucción
    interna no puede de ninguna forma alterar la variable indicada en la
    instrucción.

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
