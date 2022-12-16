Trabajo Práctico Final - Entorno de Programación

Tecnicatura Universitaria en Inteligencia Artificial

Para clonar el repositorio, se debe utilizar el siguiente comando:

git clone https://github.com/sofiabc17/TP-Final.git

Una vez clonado el repositorio, se deben ejecutar los siguientes comandos:

1. sudo docker build -t sofiatp:1.0 .

=> En este paso se construye la imagen. 

2. sudo docker images

=> Con este comando podemos verificar que la imagen se haya construido correctamente.

3. sudo docker run -it sofiatp:1.0 ejemplo.txt

=> El comando run ejecuta el contenedor. En este caso, se utiliza el archivo "ejemplo.txt". Si desea utilizar otro, debe ejecutar el mismo comando con otro archivo que sea .txt

Opciones del menú

Este programa tiene como función analizar un archivo de texto.

1. statsWords.sh: Indicador estadístico de longitud de palabras
2. statsUsageWords.sh: Indicador estadístico de uso de palabras (de al menos 4 letras).Luego muestra un Top 10 de estas palabras, ordenadas desde la que tiene más apariciones a la que tiene menos
3. findNames.sh: Identificación de nombres propios
4. statsSentences.sh: Indicador estadístico de longitud de oraciones
5. blankLinesCounter.sh: Contador de líneas en blanco
6. Salir: Finaliza la ejecución del menú 
