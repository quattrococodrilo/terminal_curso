#!/bin/bash
# Uso de la sentencia case. 
# Author: Fernando Cruz - Quattrococodrilo
# Email: quattrococodrilo@gmail.com

option=""

echo "Example case"

read -n1 -p "Enter option from A to Z: " option
echo -e "\n"

case $option in
    "A") echo -e "\n Save file";;
    "B") echo -e "\n Delete file";;
    [C-E]) echo -e "\n Option not implemented";;
    "*") echo -e "\n Error"
esac
