#!/usr/bin/env bash

[[ ! $# -eq 1 ]] && echo "Se permite un solo argumento" && exit 1
#Verifica que se haya ingresado un solo argumento

[[ ! -e $1 ]] && echo "El archivo no existe" && exit 2
#Verifica si existe el archivo

[[ ! -f $1 ]] && echo "El archivo no es un archivo regular" && exit 3
#Verifica si es un archivo regular

blankLines=$(grep -cvP '\S' $1)

#P '\S' matchea las lìneas con contenido
#-v selecciona las lìneas en blanco 
#-c imprime la cantidad de líneas matcheadas encontradas

echo "Cantidad de líneas en blanco: $blankLines"
