#!/bin/bash
# Author: Ishan Singh | Course: Open Source Software
# Script 2: FOSS Package Inspector
# This script checks for installed packages and provides philosophical notes.

# Define the package to inspect
PACKAGE="git"

# Check if the package is installed using common package managers
echo "--- Checking $PACKAGE Status ---"
if command -v dpkg &> /dev/null && dpkg -s "$PACKAGE" &> /dev/null; then
    # Debian/Ubuntu systems
    echo "$PACKAGE is installed."
    dpkg -s "$PACKAGE" | grep -E 'Version|License|Description' | head -n 3
elif command -v rpm &> /dev/null && rpm -q "$PACKAGE" &> /dev/null; then
    # RedHat/Fedora systems
    echo "$PACKAGE is installed."
    rpm -qi "$PACKAGE" | grep -E 'Version|License|Summary'
elif command -v pacman &> /dev/null && pacman -Qs "$PACKAGE" &> /dev/null; then
    # Arch Linux systems
    echo "$PACKAGE is installed."
    pacman -Qi "$PACKAGE" | grep -E 'Version|Licenses|Description'
else
    echo "$PACKAGE is NOT installed."
fi

# --- Philosophy Case Statement ---
# Using case statement to match package names to descriptions
echo -e "\n--- FOSS Philosophy Note ---"
case $PACKAGE in
    httpd|apache2) 
        echo "Apache: The web server that built the open internet." ;;
    mysql|mariadb) 
        echo "MySQL/MariaDB: Open source at the heart of millions of apps." ;;
    git) 
        echo "Git: Distributed version control empowering global collaboration." ;;
    vlc) 
        echo "VLC: The versatile player that champions open media formats." ;;
    firefox)
        echo "Firefox: Putting people before profits in the open web." ;;
    *) 
        echo "Unknown Package: An open source mystery waiting to be explored." ;;
esac
