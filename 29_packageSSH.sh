#!/bin/bash
# Programa para ejemplificar la forma de cómo transferir por la red, utilizando las opciones de empaquetamiento para optimizar la velocidad de transferencia. 
# Author: Fernando Cruz - quattrococodrilo

echo "Empaquetar todos los scripts de la carpeta shellcourse y transferirlos por la red a otro equipo utilizando el comando rsync."

host=""
user=""

read -p "Host: " host
read -p "User: " user
echo -e "\nEn este momento se procederá a empaquetar la carpeta y transferirla según los datos ingresados."

rsync -avz $(pwd) $user@$host:/home/quattroc/Descargas/transf
