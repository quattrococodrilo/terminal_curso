#!/bin/bash
# Uso de if, else
# Author: Fernando Cruz - Quattrococodrilo
# Email: quattrococodrilo@gmail.com

echo "Example if -else:"

read -n1 -p "Select score (1-9): " score
echo -e "\n"

if (( $score >= 7 ))
then
    echo "*** O K ***"
else
    echo "*** N O K ***"
fi

echo -e "\n"

read -p "Age: " age
if [ $age -ge 18 ]
then
echo ">>> ADULT <<<"
else
    echo ">>> CHILD <<<"
fi
