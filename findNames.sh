#!/usr/bin/env bash

[[ ! $# -eq 1 ]] && echo "Se permite un solo argumento" && exit 1
#Verifica que se haya ingresado un solo argumento

[[ ! -e $1 ]] && echo "El archivo no existe" && exit 2
#Verifica si existe el archivo

[[ ! -f $1 ]] && echo "El archivo no es un archivo regular" && exit 3
#Verifica si es un archivo regular

touch palabraLimpia.txt
touch nombres.txt

for P in $(cat $1)
do
	echo $P | tr -d ',.;:¡!¿?()' >> palabraLimpia.txt
done

grep '\<[A-Z][a-z]*\>' palabraLimpia.txt >> nombres.txt

echo "Los nombres propios son: "
sort --uniq nombres.txt

rm nombres.txt
rm palabraLimpia.txt
