#!/bin/bash
# Programa para ejemplificar el empaquetamiento con con clave con zip 
# Author: Fernando Cruz - quattrococodrilo

echo "Empaquetar todos los scripts de la carpeta shellcourse con zip y asignaele una clave de seguridad"

zip -e shellCourse.zip *.sh
