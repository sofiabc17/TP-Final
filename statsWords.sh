#!/usr/bin/env bash

[[ ! $# -eq 1 ]] && echo "Se permite un solo argumento" && exit 1
#Verifica que se haya ingresado un solo argumento

[[ ! -e $1 ]] && echo "El archivo no existe" && exit 2
#Verifica si existe el archivo

[[ ! -f $1 ]] && echo "El archivo no es un archivo regular" && exit 3
#Verifica si es un archivo regular

cant_Palabras=0
cant_Letras=0
mas_Larga=0
mas_Corta=0

for P in $(cat $1)
do
	palabra=$(echo $P | tr -d ',.;:¡!¿?()')
	mas_Corta=$palabra
	[ ${#palabra} -le ${#mas_Corta} ] && mas_Corta=$palabra
	[ ${#palabra} -ge ${#mas_Larga} ] && mas_Larga=$palabra
	cant_Letras=$(( $cant_Letras + ${#palabra} ))
	cant_Palabras=$(( $cant_Palabras + 1))
done

promedio=$(( cant_Letras / cant_Palabras ))

echo "La palabra más larga es: $mas_Larga"
echo "La palabra más corta es: $mas_Corta"
echo "El promedio de longitud es de: $promedio"

