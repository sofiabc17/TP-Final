#!/usr/bin/env bash

[[ ! $# -eq 1 ]] && echo "Se permite un solo argumento" && exit 1
#Verifica que se haya ingresado un solo argumento

[[ ! -e $1 ]] && echo "El archivo no existe" && exit 2
#Verifica si existe el archivo

[[ ! -f $1 ]] && echo "El archivo no es un archivo regular" && exit 3
#Verifica si es un archivo regular

TXT=$(readlink -e $1) #Se almacena la ruta del archivo

PS3='=> Elija una opción: '
select option in "statsWords" "statsUsageWords" "findNames" "statsSentences" "blankLinesCounter" "Salir"
do
	case $option in
		"statsWords")
			./statsWords.sh $TXT
			break;;
		"statsUsageWords")
			./statsUsageWords.sh $TXT
			break;;
		"findNames")
			./findNames.sh $TXT
			break;;
		"statsSentences")
			./statsSentences.sh $TXT
			break;;
		"blankLinesCounter")
			./blankLinesCounter.sh $TXT
			break;;
		"Salir")
			echo "Hasta la próxima!"
			break;;
		*)
			echo "Opción no válida"
			break;;
	esac
done
