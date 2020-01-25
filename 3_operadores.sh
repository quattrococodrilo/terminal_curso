#!/bin/bash
# Programa para revisar los tipos de operadores

# Author: Luis Fernando Cruz Carrillo
# Email: quattrococodrilo@gmail.com

numA=10
numB=4

echo "Operadores aritméticos"
echo "Número A=$numA | Número B=$numB"
echo "Sumar A + B = $((numA + numB))"
echo "Restar A - B = $((numA - numB))"
echo "Multiplicar A *  B = $((numA * numB))"
echo "Dividir A /  B = $((numA / numB))"
echo "Residuo A %  B = $((numA % numB))"


echo -e "\nOperadores relacionales"
echo "Número A=$numA | Número B=$numB"
echo "A > B = $((numA > numB))"
echo "A < B = $((numA < numB))"
echo "A >= B = $((numA >= numB))"
echo "A <= B = $((numA <= numB))"
echo "A == B = $((numA == numB))"
echo "A != B = $((numA != numB))"

echo -e "\nOperadores de asignación"
echo "Sumar A += B $((numA += numB))"
echo "Restar A -= B $((numA -= numB))"
echo "Multiplicar A *= B $((numA *= numB))"
echo "Dividir A /= B $((numA /= numB))"
echo "Residuo A %=  B $((numA %= numB))"
