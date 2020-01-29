#!/bin/bash
# Uso de if, else
# Author: Fernando Cruz - Quattrococodrilo
# Email: quattrococodrilo@gmail.com

echo "Example if -else:"

read -n1 -p "Select score (1-9): " score
echo -e "\n"

if  [ $score -ge 7 ]
then
    echo "*** O K ***"
    read -p "Next level: (y/n)" level
    if [ $score = 'y' ]
    then
        echo "New level!"
    else
        echo "Bye!"
    fi
else
    echo "*** N O K ***"
fi

