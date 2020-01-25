#!/bin/bash

#Programa para revisar la declaración de varables

option=0
name=Marco

echo "Opción: $option | Nombre: $name"

# Exportar la variable nombre para hacerla disponible a los demás procesos

export name

# LLamar al siguiente script para recuperar la variable
./2_varables_2.sh
