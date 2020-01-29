#!/bin/bash
# Expresiones condicionales.
# Author: Fernando Cruz - Quattrococodrilo
# Email: quattrococodrilo@gmail.com

age=0
country=""
path_file=""

read -p "Enter age: " age
read -p "Enter country: " country
read -p "Enter file path: " path_file

# Numbers >>>
echo -e "\nConditional Expressions with numbers"

if [ "$age" -lt 10 ]
then
    echo "Is a child"
elif [ "$age" -ge 10 ] && [ "$age" -le 17 ]
then
    echo "Is a teen"
else
    echo "Is adult"
fi
# Numbers <<< 

# Strings >>>
echo -e "\nConditional Expressions with strings"

if [ $country = "EU" ]
then
    echo "American"
elif [ $country = "Ecuador" ] && [ $country = "Colombia" ]
then
    echo "South american"
else
    echo "Unknow"
fi
# Strings <<<

# Directories >>>
echo -e "\nConditional Expressions with files or directories"

if [ -d $path_file ]
then
    echo "Exists!"
else
    echo "No exists!"
fi
# Directories <<<

