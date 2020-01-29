#!/bin/bash
# Reto 4
# Fernando Cruz - quattrococodrilo

option=0

while :
do
    clear
    # Menu >>>
    echo "-------------------------"
    echo "          RETO 4         "
    echo "-------------------------"
    echo "    Select an option     "
    echo "-------------------------"
    echo "1. Current process"
    echo "2. Available memory"
    echo "3. Disk space"
    echo "4. Network info"
    echo "5. Environment variables"
    echo "6. Program info"
    echo "7. Backup"
    echo "8. Exit"
    # Menu <<<
    
    read -n1 -p "Enter option: " option

    case $option in
        1)
            echo -e "\n"
            top
            ;;
        2)
            echo -e "\n"
            free;;
        3)
            echo -e "\n"
            du -d1 -h /
            ;;
        4)
            echo -e "\n"
            ip a
            ;;
        5)
            echo -e "\n"
            printenv
            ;;
        6)
            echo -e "\nVersion 0.0.1"
            ;;
        7)
            echo -e "\nMaking backup..."
            sleep 3
            ;;
        8)
            echo -e "\nExiting..."
            exit 0 
            ;;

    esac

    
    suboption=""

    while :
    do
        read -n1 -p "Press m to return menu: " suboption 
        if [ "$suboption" = "m" ]
        then
            echo -e "\n Returning menu..."
            break
        fi
    done
    
done

    
