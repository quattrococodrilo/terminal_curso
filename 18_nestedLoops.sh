#!/bin/bash
# Programa para ejemplificar el uso de les NESTED LOOPS.
# Author: Luis Fernando Cruz Carrillo - quattrococodrilo@gmail.com

echo "Nested Loops"

for file in $(ls)
do
    for name in {1..4}
    do
        echo "File name $file""_""$name" 
    done
done
