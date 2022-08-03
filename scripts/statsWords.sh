#!/bin/bash
ARCHIVO=$1
if [ -e $1 ]
then
> LONGI.txt
> PALABRAS.txt
        grep -oE "[a-zA-Z]{2,}" $ARCHIVO >> PALABRAS.txt

ARC=$(cat PALABRAS.txt)

        for A in $ARC
        do

                echo "${#A} $A" >> LONGI.txt

        done

sort -n LONGI.txt | head -1
sort -n LONGI.txt | tail -1
SUMA=$(cat LONGI.txt | cut -c -2 | tr "\n" "+")
echo "scale=2;(${SUMA%?})/$(wc -l < LONGI.txt)" | bc
fi


