#!/bin/bash

# Function to display the menu
display_menu() {
    echo "--------------------------"
    echo "       MAIN MENU        "
    echo "--------------------------"
    echo "1. Start"
    echo "2. Stop"
    echo "3. Down"
    echo "4. install amps and jars and restart content and share"
    echo "5. restart"
    echo "6. Exit"
    echo "--------------------------"
}

#get to the main tools directory
cd ./tools

# Main loop for the menu
while true; do
    display_menu
    read -p "Enter your choice (1-6): " choice

    case $choice in
        1)
            echo "Starting up...."
            # Add commands for Option One here
            ./start.sh
            ;;
        2)  echo "stopping containers"
            ./stop.sh
            ;;
        3)
            echo "Downing all containers"
            ./down.sh
            ;;
        4)
            echo "Installing amps and jars..."
            ./install_amps_and_jars.sh
            ;;

        5)
            echo "restarting containers..."
            ./restart.sh
            ;;
        6)
            echo "Exiting the script. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 8."
            ;;
    esac
    echo # Add a blank line for readability
done
