#!/bin/bash
# Programa para ejemplificar el uso de WHILE.
# Author: Luis Fernando Cruz Carrillo - quattrococodrilo@gmail.com

number=1

while [ $number -ne 10 ]
do
    echo "Number: $number"
    number=$((number + 1))
done

