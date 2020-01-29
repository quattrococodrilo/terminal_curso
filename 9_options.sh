#!/bin/bash
# Programa para ejemplificar cómo se realiza el
# paso de opciones con o sin parámetros.

# Author: Luis Fernando Cruz Carrillo
# Email: quattrococodrilo@gmail.com

echo "Options program"
echo "Option 1 sended $1"
echo "Option 2 sended $2"
echo "Option 3 sended $3"
echo "Option 4 sended $4"
echo -e "\n"
echo "Get values"

while [ -n "$1" ]
do
case "$1" in
-a) echo "-a option used";;
-b) echo "-b option used";;
-c) echo "-c option used";;
*) echo "Is not an option";;
esac
shift
done
