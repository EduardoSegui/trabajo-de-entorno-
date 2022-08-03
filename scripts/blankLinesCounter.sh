#!/bin/bash

cat $1 | grep ^$ | wc -l


#imprimo la entrada y con grep macheo la exprecion regular que imprime linea vacias

#wc -l me cuentas las lineas 
