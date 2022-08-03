#!/bin/bash

> LINEAS.txt
> ORC.txt
grep -E '[A-Z].*\.+' $1 | sort -d >> ORC.txt
grep -E '\¿.*\?+' $1 >> ORC.txt
grep -E '\¡.*\!+' $1 >> ORC.txt

for linea in "$(sed "s/\. /\n/g" ORC.txt)" #sed reemplaza los puntos seguidos de un espacio por un salto de linea

#
do
        echo "$linea"  >> LINEAS.txt
done
while read linea 
do
        echo "${#linea} $linea"
done < LINEAS.txt > ORC.txt
sort -n ORC.txt | head -1 | sed -E "s/^[0-9]+ //"
sort -n ORC.txt | tail -1 | sed -E "s/^[0-9]+ //"
SUMA=$(cat ORC.txt | cut -c -2 | tr "\n" "+")
echo "scale=2;(${SUMA%?})/$(wc -l < ORC.txt)" | bc


