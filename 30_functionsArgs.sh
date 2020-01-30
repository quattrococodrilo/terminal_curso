#!/bin/bash
# Programa que permite manejar las utilidades de Postgres
# Author: Luis Fernando Cruz Carrillo
# Email: quattrococodrilo@gmail.com

option=0

# Function for install postgres
install_postgres() {
    echo -e "\nInstalling Postgres..."
}

# Function for unistall postgres
unistall_postgres() {
    echo -e "\nUnistalling Postgres..."
}

# Function for backup
backup() {
    echo -e "\nMaking backup..."
    echo -e "\nBackup directory: $1" 
}

# Function for restore baskup
restore() {
    echo -e "\nRestoring  backup..."
    echo -e "\nBackup directory: $1"
}

while :
do
    if [ ! -f "log" ]
    then
        touch log
    fi
    
    # Clear screen
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
            install_postgres
            sleep 3
            ;;
        2)
            unistall_postgres
            sleep 3
            ;;
        3) 
            echo -e "\n"
            read -p "Backup directory: " backupDir
            backup $backupDir
            sleep 3
            ;;
        4)
            echo -e "\n"
            read -p "Backup directory: " backupDir
            restore $backupDir
            sleep 3
            ;;
        5)
            echo -e "\nExit"
            exit 0
            ;;
    esac

done

