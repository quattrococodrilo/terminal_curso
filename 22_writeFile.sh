#!/bin/bash
# Programa para ejemplificar cómo se escribe en un archivo.
# Author: Fernando Cruz - quattrococodrilo

echo "----------------------"
echo "Escribir en un archivo"
echo "----------------------"

echo $2 >> $1

# Multiline append
cat <<EOM >>$1
$2
EOM


