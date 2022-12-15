#!/usr/bin/env bash

[[ ! $# -eq 1 ]] && echo "Se permite un solo argumento" && exit 1
#Verifica que se haya ingresado un solo argumento

[[ ! -e $1 ]] && echo "El archivo no existe" && exit 2
#Verifica si existe el archivo

[[ ! -f $1 ]] && echo "El archivo no es un archivo regular" && exit 3
#Verifica si es un archivo regular

touch palabras.txt

for P in $(cat $1)
do
	if [ ${#P} -gt 3 ]
	then
		echo $P | tr -d [",.;:¡!¿?()"] >> palabras.txt
	fi
done

echo "Top 10 de las palabras más usadas (de al menos 4 letras): "

sort palabras.txt | uniq -c | sort -nr | head -n 10

rm palabras.txt
