##################################################################################
# 										 #
# Asunto: C&#243;digo fuente del proyecto 1                                      #   
# Proyecto: Analizador Lexicogr#225fico en Haskell                               #   
# Materia: Taller de Traductores (CI-3725)					 #
# Trimestre: Abril-Julio 2011							 #
# Profesor: Carlos Colmenares							 #
# 										 #
# Grupo: H01									 #
# Integrantes:            Carnet:  						 #
# * Juan Rosas           (07-41502)						 #
# * Jos&#233; Lezama     (07-41104)						 #
# 										 #
##################################################################################
.PHONY: doc
all:	
	cd src/; alex -o Lexer.hs Lexer.x
	cd src/; ghc -c -o Tokens.o Tokens.hs
	cd src/; ghc -c -o Lexer.o Lexer.hs 
	cd src/; ghc -o vecti --make vecti.hs
	mv src/vecti bin/.

clean:
	mv src/Lexer.x bin/.
	mv src/Tokens.hs bin/.
	mv src/vecti.hs bin/.
	rm -rf src/*
	mv bin/Lexer.x src/.
	mv bin/Tokens.hs src/.
	mv bin/vecti.hs src/.
	rm -rf bin/*

cleanall:
	rm -rf doc/* bin/*
	mv src/Lexer.x bin/.
	mv src/Tokens.hs bin/.
	mv src/vecti.hs bin/.
	rm -rf src/*
	mv bin/Lexer.x src/.
	mv bin/Tokens.hs src/.
	mv bin/vecti.hs src/.

doc:	src/Lexer.x
	cd src/; alex -o Lexer.hs Lexer.x
	cd src/; haddock --html --odir=../doc/ vecti.hs
	cd src/; rm -f Lexer.hs

