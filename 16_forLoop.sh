#!/bin/bash
# Programa para ejemplificar el uso de FOR.
# Author: Luis Fernando Cruz Carrillo - quattrococodrilo@gmail.com

array_number=(1 2 3 4 5 6)
array_string=("Emi" "Lu" "Fer")

# Numbers >>>
echo "For through number list"
for num in ${array_number[*]}
do
    echo "Number: $num"
done
# Numbers <<<

# Stringz >>>
echo "For through string list"
for name in ${array_string[*]}
do
    echo "Name: $name"
done
# Stringz <<< 

# Files >>>
echo "Files iterator"
for file in *
do
    echo "File name: $file"
done
# Files <<< 

# Command >>>
echo "Command iterator"
for result in $(ls)
do
    echo "File name: $result"
done
# Command <<<

# For like C >>>
# for (initializationStatement; testExpression; updateStatement)
echo "For loop like C"
for (( i=1; i<10; i++ ))
do
    echo "Loop: $i"
done
# For like C <<<
