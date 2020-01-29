#!/bin/bash
# Programa para ejemplificar cómo se lee un archivo.
# Author: Fernando Cruz - quattrococodrilo

echo "------------------"
echo "Leer en un archivo"
echo "------------------"


echo "Leer un archivo"
cat $1

echo -e "\nAlmacenar valores en una varable"
catValue=`cat $1`
echo "$catValue"

# IFS (Internal file separator): variable especial para evitar que los espacios en blanco se recorten al inicio o al final.

echo -e "\nLeer archivos línea por líneai utilizando while"

counter=1
while IFS= read line
do
    echo "$counter. $line"
    counter=$(( counter + 1  ))
done < $1



