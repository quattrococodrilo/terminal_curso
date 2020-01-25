#!/bin/bash
# Programa para ejemplificar cómo capturar la información del usuario 
# utilizando el comando echo, read y $REPLY. 

# Author: Luis Fernando Cruz Carrillo
# Email: quattrococodrilo@gmail.com

option=0
backupName=""

echo "Postgres Utilities program"

echo -n "Enter an option: "
read
option=$REPLY

echo -n "Enter a backup name:"
read
backupName=$REPLY

echo "Option: $option"
echo "Backup Name: $backupName"

