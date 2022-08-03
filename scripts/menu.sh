#!/bin/bash
read -p "Ingrese un Archivo: " ARCHIVO
#source funcionls.sh

if [ -e $ARCHIVO ]
then

        PS3="Elija un opcion: "
        select ARCHI in "statsWords" "statsUsageWords" "findNames" "statsSentences" "blankLinesCounter" "Salir"
        do
                case $ARCHI in
                        statsWords) bash statsWords.sh $ARCHIVO        ;;
                        statsUsageWords) bash statsUsageWords.sh $ARCHIVO   ;;
                        findNames) bash findNames.sh $ARCHIVO         ;;
                        statsSentences) bash statsSentences.sh $ARCHIVO   ;;
                        blankLinesCounter) bash blankLinesCounter.sh $ARCHIVO ;;
                        Salir) exit 0                           ;;
                        *) echo "Elije una opcion valida"       ;;
                esac






        done

fi

