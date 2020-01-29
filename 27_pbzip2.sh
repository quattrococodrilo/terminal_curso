#!/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando pbzip 
# Author: Fernando Cruz - quattrococodrilo

echo "---------------------------------"
echo "Empaquetar todos los scripts gzip"
echo "---------------------------------"

tar -cvf shellCOurse.tar *.sh
pbzip2 -f shellCOurse.tar 

echo "Empaquetar un directorio con tar y pbzip2"
tar -cf *.sh -c > shellCOurse2.tar.bz2 
