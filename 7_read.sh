#!/bin/bash
# Programa para ejemplificar cómo capturar la información del usuario 
# utilizando el comando read. 

# Author: Luis Fernando Cruz Carrillo
# Email: quattrococodrilo@gmail.com

option=0
backupName=""

echo "Postgres Utilities program"

read -p "Enter an option: " option

read -p "Enter a backup name: " backupName

echo "Option: $option"
echo "Backup Name: $backupName"

