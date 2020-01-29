#!/bin/bash
# Programa para ejemplificar cómo capturar la información del usuario 
# y validarla.

# Author: Luis Fernando Cruz Carrillo
# Email: quattrococodrilo@gmail.com

option=0
backupName=""
clave=""

echo "Postgres Utilities program"

# Acepta el ingreso de información de solo un caracter
read -n1 -p "Enter an option: " option
echo -e "\n"
read -n10 -p "Enter a backup name: " backupName
echo -e "\n"

echo "Option: $option"
echo "Backup Name: $backupName"
# Se agregan los datos pero no se ve la clave -s (silent)
read -s -p "Clave: " clave
echo "Clave: $clave"
