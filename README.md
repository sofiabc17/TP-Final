# Trabajo Práctico Final - Entorno de Programación

## Tecnicatura Universitaria en Inteligencia Artificial

### Trabajo realizado por Sofía Brizuela Cipolletti, Legajo B-6419/1

_*_Para clonar el repositorio, se debe utilizar el siguiente comando:_*_

- git clone https://github.com/sofiabc17/TP-Final.git

_*_Una vez clonado el repositorio, se deben ejecutar los siguientes comandos: _*_

- `cd ./TP-Final` 

Dirigirse al directorio de trabajo donde se encuentran los scripts

- `sudo docker build -t sofiatp:1.0 . `

En este paso se construye la imagen. 

-`sudo docker images`

Con este comando podemos verificar que la imagen se haya construido correctamente.

- `sudo docker run -it sofiatp:1.0 ejemplo.txt `

El comando run ejecuta el contenedor. En este caso, se utiliza el archivo "ejemplo.txt". Si desea utilizar otro, debe ejecutar el mismo comando con otro archivo que sea .txt

## Opciones del menú

Este programa tiene como función analizar un archivo de texto.

1. statsWords.sh: Indicador estadístico de longitud de palabras
2. statsUsageWords.sh: Indicador estadístico de uso de palabras (de al menos 4 letras).Luego muestra un Top 10 de estas palabras, ordenadas desde la que tiene más apariciones a la que tiene menos
3. findNames.sh: Identificación de nombres propios
4. statsSentences.sh: Indicador estadístico de longitud de oraciones
5. blankLinesCounter.sh: Contador de líneas en blanco
6. Salir: Finaliza la ejecución del menú 
