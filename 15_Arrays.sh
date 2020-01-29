#!/bin/bash
# Programa para ejemplificar el uso de los arreglos.
# Author: Luis Fernando Cruz Carrillo - quattrococodrilo@gmail.com

array_number=(1 2 3 4 5 6)
array_string=(Emi, Fer, Lu, Stival)
array_range=({A..Z} {1..20})

# Print values >>>
echo "Number array: ${array_number[*]}"
echo "String array: ${array_string[*]}"
echo "Range array: ${array_range[*]}"
# Print values <<<

# Print length >>>
echo "Number array length: ${#array_number[*]}"
echo "String array length: ${#array_string[*]}"
echo "Range array length:  ${#array_range[*]}"
# Print length <<< 

# Print a item in specific position >>>
echo "Number array position 3: ${array_number[3]}"
echo "String array position 3: ${array_string[3]}"
echo "Range array position 3: ${array_range[3]}"
# Print a item in specific position <<<

# Add and delete value >>>
array_number[7]=20
unset array_number[0]
echo "Number array: ${array_number[*]}"
echo "Number array length: ${#array_number[*]}"
# Add and delete value <<<
