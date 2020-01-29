#!/bin/bash
# Programa que permite manejar las utilidades de Postgres
# Author: Luis Fernando Cruz Carrillo
# Email: quattrococodrilo@gmail.com

option=0

while :
do
    if [ ! -f "log" ]
    then
        touch log
    fi
    
    # Clean screen
    clear
    # Menu
    echo "-----------------------------------"
    echo "PGUTIL - Postgres utilities program"
    echo "-----------------------------------"
    echo "               MENU                "
    echo "-----------------------------------"
    echo "1. Install"
    echo "2. Unistall"
    echo "3. Backup"
    echo "4. Restore"
    echo "5. Exit"
    
    # User data
    read -n1 -p "Option [1-5]: " option
    
    now=$(date +"%Y%m%d%H%M%S")
    # Validate data user
    case $option in
        1)
            txt="Installing Postgres..."
            echo -e "\n$txt"
            echo "$now::$txt" >> log
            sleep 3
            ;;
        2)
            txt="Unistall Postgres..."
            echo -e "\n$txt"
            echo "$now::$txt" >> log
            sleep 3
            ;;
        3) 
            echo -e "\nMaking backup..."
            sleep 3
            ;;
        4)
            echo -e "\nRestoring data..."
            sleep 3
            ;;
        5)
            echo -e "\nExit"
            exit 0
            ;;
    esac

done

