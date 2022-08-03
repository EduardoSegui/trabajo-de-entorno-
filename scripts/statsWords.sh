#!/bin/bash
ARCHIVO=$1
if [ -e $1 ]
then
> LONGI.txt
> PALABRAS.txt
        grep -oE "[a-zA-Z]{2,}" $ARCHIVO >> PALABRAS.txt
# con grep y exprecion regular me filta palabras que tengas al menos dos caracteres, 
#-oE (o)only agarra solamnete lo que machea, E son las expreciones regulares extendidas(es para tener mas expresiones) 

ARC=$(cat PALABRAS.txt)

        for A in $ARC
        do

                echo "${#A} $A" >> LONG I.txt   
                 #seria para tener la logitud de las palabras quue recorre el for y lo redirecciona a LONGIt.xt   
        done
#sort -n ordena numericamente # HEAD -1 head imprimer la parte de arriba y con -1 imprimer solo el primero 

#tail -1 imprimer el ultimo de la lista
sort -n LONGI.txt | head -1

sort -n LONGI.txt | tail -1
SUMA=$(cat LONGI.txt | cut -c -2 | tr "\n" "+")
echo "scale=2;(${SUMA%?})/$(wc -l < LONGI.txt)" | bc
fi

#cut -c -2 (corta y agarra los dos primeros caracteres osea me queda una columna con todos los numero)
# tr "/n" "+" cambio todo los salto de linea por un mas. osea me quedan todos los numeros unidos con por un mas
# sacale=2 es para que me el porcentaje con decimlaes 
# suma%? en la sumatoria anterior queda un ultimo mas entonces me lo queuita con %? (% quita un sufijo) (? es cualquien caracter)
# con wl -l cuanto las lineas para que se dividir y sacar el promedio
