#!/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar 
# Author: Fernando Cruz - quattrococodrilo

echo "---------------------------------"
echo "Empaquetar todos los scripts gzip"
echo "---------------------------------"

tar -cvf shellCOurse.tar *.sh

# Cuando se empaqueta con gzip el empaquetamiento anterior se elimina.
gzip shellCOurse.tar

echo "Empaquetar un sólo archivo, con un ratio de 9"
gzip -9 reto5.sh
