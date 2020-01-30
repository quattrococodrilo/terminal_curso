#!/bin/bash
# Programa que permite manejar las utilidades de Postgres
# Author: Luis Fernando Cruz Carrillo
# Email: quattrococodrilo@gmail.com

option=0

# Function for install postgres
install_postgres() {
    echo -e "\nVerifying postgres installation..."
    verifyInstall = $(which psql)
    if [ $? -eq 0 ]
    then
        echo -e "\n Postgres is allready installed."
    else
        read -s -p "Current host password: " password
        read -s -p "New password postgres: " passwordPostgres
        # echo "$password" | sudo -S apt-get update
        # echo "$password" | sudo -S apt-get update
        # sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{$PASSWORDpOSTGRES}'"
        # echo "$password" | sudo -S systemctl enable postgresql.service
        # echo "$password" | sudo -S systemctl start postgres.service
        echo "$password" | apt apt-get update
        echo "$password" | apt apt-get -y install postgresql postgresql-contrib
        # sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{$PASSWORDpOSTGRES}'"
        echo "$password" | systemctl enable postgresql.service
        echo "$password" | systemctl start postgres.service
    fi
    read -n 1 -s -r -p "Press enter to continue..."
    
}

# Function for unistall postgres
unistall_postgres() {
    read -s -p "Current host password: " password
    echo -e "\n"
    echo "$password" | systemctl stop postgres.service
    echo "$password" | apt apt-get remove -y --purge postgresql\*
    echo "$password" | rm -rf /etc/postgresql
    echo "$password" | rm -rf /etc/postgresql-common
    echo "$password" | rm -rf /var/lib/postgresql
    # echo "$password" | sudo -S userdel -r postgres 
    # echo "$password" | sudo -S groupdel postgres 
    echo "$password" | userdel -r postgres 
    echo "$password" | groupdel postgres 
    read -n 1 -s -r -p "Press enter to continue..."
    read -n 1 -s -r -p "Press enter to continue..."
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

