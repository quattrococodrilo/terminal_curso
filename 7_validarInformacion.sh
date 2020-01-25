#!/bin/bash
# Programa para ejemplificar como capturar la información del usuario
# y validarla utilizando expresiones relugares.

# Author: Luis Fernando Cruz Carrillo
# Email: quattrococodrilo@gmail.com

regex_id='^[0-9]{10}$'
regex_country='^MX|EC|COL|US$'
regex_birthday='^19|20[0-9]{2}[1-12][1-31]$'

echo "Regular expressions"
read -p "Enter ID: " id
read -p "Enter country: " country
read -p "Enter date of birth [yyyMMdd]: " birthday

# ID validate
if [[ $id =~ $regex_id ]]; then
    echo "ID $id valid."
else
    echo "ID invalid."
fi



