#!/bin/bash
# Programa para ejemplificar el uso de de BEAK y CONTINUE.
# Author: Luis Fernando Cruz Carrillo - quattrococodrilo@gmail.com

echo "BREAK and CONTINUE"

for file in $(ls)
do
    for name in {1..4}
    do
        if [ $file = "10_download.sh" ]
        then
            break
        elif [[ $file == 4* ]]
        then
            continue
        else
            echo "File name $file""_""$name" 
        fi
    done
done
