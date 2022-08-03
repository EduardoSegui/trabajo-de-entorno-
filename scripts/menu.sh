#!/bin/bash
read -p "Ingrese un Archivo: " ARCHIVO
#pido por pantalla que se ingrese un archivo para empezar a ejecutar la aplicacion

if [ -e $ARCHIVO ]
then
#si el archivo existe se va a desplegar un menucon 6 opciones
        PS3="Elija un opcion: "
        select ARCHI in "statsWords" "statsUsageWords" "findNames" "statsSentences" "blankLinesCounter" "Salir"
       
       	do
#adentro del select use un case para cuando se elija una opcion se ejecute el comando mas que va a llamar a los scripts       
       
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

