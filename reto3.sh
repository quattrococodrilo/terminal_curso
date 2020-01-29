#!/bin/bash
# Uso de la sentencia case. 
# Author: Fernando Cruz - Quattrococodrilo
# Email: quattrococodrilo@gmail.com

opcion=""

echo"Reto 3"
read -n1 -p "Ingrese una opción del 1-5:" opcion
echo -e "\n"

case $opcion in
    [1-5])
        if (($opcion == 1)); then
            echo "Elegiste la opción número uno"
        elif (($opcion == 2)); then
            echo "Elegiste la opción número dos"
        elif (($opcion == 3)); then
            echo "Elegiste la opción número tres"
        elif (($opcion == 4)); then
            echo "Elegiste la opción número cuatro"
        elif (($opcion == 5)); then
            echo "Elegiste la opción número cinco"
    fi;;
esac
