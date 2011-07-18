################################################################################
#                                                                              #
# Asunto: C&#243;digo fuente del Proyecto &#250;nico (Entrega 3)               #
# Proyecto: Analizador Lexicogr#225fico en Haskell                             #
# Materia: Taller de Traductores (CI-3725)                                     #
# Trimestre: Abril-Julio 2011                                                  #
# Profesor: Carlos Colmenares                                                  #
#                                                                              #
# Grupo: H01                                                                   #
#                                                                              #
################################################################################

.PHONY: doc
all:
	cd src/; alex -o Lexer.hs Lexer.x
	cd src/; happy -o Parser.hs Parser.y
	cd src/; ghc -c -o Tokens.o Tokens.hs
	cd src/; ghc -c -o SymTable.o SymTable.hs
	cd src/; ghc -c -o AST.o AST.hs
	cd src/; ghc -c -o Funaux.o Funaux.hs
	cd src/; ghc -c -o CheckAST.o CheckAST.hs
	cd src/; ghc -c -o Lexer.o Lexer.hs
	cd src/; ghc -c -o Parser.o Parser.hs
	cd src/; ghc -o vecti --make vecti.hs
	cd src/; rm *.hi *.o Lexer.hs Parser.hs
	mv src/vecti bin/.

clean:
	mv src/Lexer.x bin/.
	mv src/Tokens.hs bin/.
	mv src/vecti.hs bin/.
	mv src/Parser.y bin/.
	mv src/AST.hs bin/.
	mv src/SymTable.hs bin/.
	mv src/CheckAST.hs bin/.
	mv src/Funaux.hs bin/.
	rm -rf src/*
	mv bin/Lexer.x src/.
	mv bin/Tokens.hs src/.
	mv bin/vecti.hs src/.
	mv bin/Parser.y src/.
	mv bin/AST.hs src/.
	mv bin/SymTable.hs src/.
	mv bin/CheckAST.hs src/.
	mv bin/Funaux.hs src/.
	rm -rf bin/*

cleanall:
	rm -rf doc/* bin/*
	mv src/Lexer.x bin/.
	mv src/Tokens.hs bin/.
	mv src/vecti.hs bin/.
	mv src/Parser.y bin/.
	mv src/AST.hs bin/.
	mv src/SymTable.hs bin/.
	mv src/CheckAST.hs bin/.
	mv src/Funaux.hs bin/.
	rm -rf src/*
	mv bin/Lexer.x src/.
	mv bin/Tokens.hs src/.
	mv bin/vecti.hs src/.
	mv bin/Parser.y src/.
	mv bin/AST.hs src/.
	mv bin/SymTable.hs src/.
	mv bin/CheckAST.hs src/.
	mv bin/Funaux.hs src/.

docs:	src/Lexer.x
	cd src/; alex -o Lexer.hs Lexer.x
	cd src/; happy -o Parser.hs Parser.y
	cd src/; haddock --html --odir=../doc/ vecti.hs > ../src/tmp
	cd src/; rm -f Lexer.hs Parser.hs tmp
