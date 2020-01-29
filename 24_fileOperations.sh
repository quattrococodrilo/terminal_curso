#!/bin/bash
# Programa para ejemplificar las operaciones de un archivo.
# Author: Fernando Cruz - quattrococodrilo

echo "-------------------------"
echo "Operaciones de un archivo"
echo "-------------------------"

echo "Create directory"
mkdir -m 755 backupScripts

echo -e "\nCopy scripts from current directory to new directory"
cp *.* backupScripts
ls -la backupScripts

echo -e "\nMove directory backupScripts to another place: $HOME"
mv backupScripts $HOME

echo -e "\nDelete all .txt files"
rm *.txt
