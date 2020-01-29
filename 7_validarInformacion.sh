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
read -p "Enter date of birth [yyyyMMdd]: " birthday

# Validate ID.
if [[ $id =~ $regex_id ]]; then
    echo "ID $id is valid."
else
    echo "ID $id is invalid."
fi

# Validate country.
if [[ $country =~ $regex_country ]]; then
    echo "Country $country is valid."
else
    echo "Country $country is invalid."
fi

# Validate birthday.
if [[ $birthday =~ $regex_birthday ]]; then
    echo "Date of birth $birthday is valid"
else
    echo "Date of birth $birthday is invalid"
fi
