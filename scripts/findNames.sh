#!/bin/bash


cat $1 | grep -oE "[[:upper:]]{1}[[:lower:]]+" | sort -d


#uso cat imprima el archivo
#con la expresion regular hago que me imprima una palbra mayucula y depues minucalas todas las que sigan 
#con sort -d ordeno alfabeticamenete

#-oE (o)para que me imprima sola la expresion regular en una lista y E para que cache todas las veces la expresion regular 



