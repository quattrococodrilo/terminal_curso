#!/bin/bash
# Uso de if, else, else if
# Author: Fernando Cruz - Quattrococodrilo
# Email: quattrococodrilo@gmail.com

echo -e "Example if -else:\n"

read -p "Age: " age
if [ $age -ge 18 ]
then
echo ">>> Young ADULT <<<"
elif [ $age -ge 19 ] && [$age -le 64 ]
then
    echo ">>> ADULT <<<"
else
    echo ">>> CHILD <<<"
fi
