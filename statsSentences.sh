#!/usr/bin/env bash

[[ ! $# -eq 1 ]] && echo "Se permite un solo argumento" && exit 1
#Verifica que se haya ingresado un solo argumento

[[ ! -e $1 ]] && echo "El archivo no existe" && exit 2
#Verifica si existe el archivo

[[ ! -f $1 ]] && echo "El archivo no es un archivo regular" && exit 3
#Verifica si es un archivo regular

cant_letras=0
cant_oraciones=0
longitud_minima=1000
longitud_maxima=0
suma_longitud=0

for P in $(cat $1)
do
	[[ $P =~ ['.?!'] ]] && cant_letras=$(($(echo $P | wc -m) - 1 + cant_letras))
	if [[ $P =~ ['.?!']$ ]]
	then
		cant_letras=$(($(echo $P | wc -m) - 2 + cant_letras))
		[[ $cant_letras -lt $longitud_minima ]] && longitud_minima=$cant_letras
		[[ $cant_letras -gt $longitud_maxima ]] && longitud_maxima=$cant_letras
		cant_oraciones=$((cant_oraciones+1))
		suma_longitud=$((cant_letras + suma_longitud))
		cant_letras=0
	fi
done

promedio=$((suma_longitud/cant_oraciones))

echo "La cantidad de oraciones es $cant_oraciones"
echo "La oración más corta tiene $longitud_minima letras"
echo "La oración más larga tiene $longitud_maxima letras"
echo "El promedio de palabras en oraciones es $promedio"

