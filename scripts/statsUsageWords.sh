#!/bin/bash
grep -oE "[a-zA-Z]{4,}" $1 | sort | uniq -c | sort -nr | head -10


#con grep y la exprcion regular filtro que la plabras que tengan 2 o mas caracteres
#-oE (o)only agarra solamente lo que machea, E son las expresiones regulares extendidas
#sort me lo ordena 
#uniq -c quita los repito de una lista y los cuenta. necsita del sort pq la lista tiene que estar ordenada
#sort -nr primero ordena numericamente y con la r invierto la lista
#head -10 imprimo los primero diez


#Use el libro de COMANDO DE LINUX de SOLANGE MIKELIUNAS de agosto del 2010 que me lo imprimi
#el libro me fue de mucha ayuda para entender los comandos y como convinarlos

