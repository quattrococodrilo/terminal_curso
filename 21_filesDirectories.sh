#!/bin/bash
# Programa para ejemplificar la creación de archivos y directorios.
# Author: Fernando Cruz - quattrococodrilo

echo "---------------------"
echo "Files and directories"
echo "---------------------"

if [[ $1 ]] && [[ $2 ]]
then

    if [ $1 = "d" ]
    then
        mkdir -m 755 $2
        echo "Directory created successfully"
    elif [ $1 = "f" ]
    then
        touch $2
        echo "File created successfully"
    else
        echo "Option not exists: $1"
    fi
    
    ls -la $2

else
    echo -e "\n Invalid options"
fi
