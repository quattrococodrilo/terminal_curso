#!/bin/bash

# Programa para capturar información y mostrarla

# GET DATA >>>
read -p "Firstname: " firstname
read -p "Lastname: " lastname
read -p "Age: " age
read -p "Adress: " adress
read -p "Telephone: " phone
read -p "Cellphone number: " phone2
# GET DATA <<<

# SHOW DATA >>>
echo -e "\n"

title="Personal information"
title_length=`echo $title | wc -c`
separator=''

for (( i=1; i<=$title_length; i++ ))  
do 
   separator+='_'
done

echo -e $separator"\n"
echo $title 
echo -e $separator"\n"
echo "Firstname: $firstname" 
echo "Lastname: $lastname" 
echo "Age: $age" 
echo "Adress: $adress" 
echo "Telephone: $phone" 
echo "Cellphone number: $phone2" 
# SHOW DATA <<<
