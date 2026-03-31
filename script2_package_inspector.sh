#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Kartik Maheshwari

# Array of packages to check
PACKAGES=("linux-image-generic" "apache2" "mysql-server" "firefox")

echo "FOSS Package Inspection Report"
echo "=========================================="

for PACKAGE in "${PACKAGES[@]}"; do
    # Check if package is installed using Ubuntu's dpkg command
    if dpkg -l | grep -q "^ii  $PACKAGE "; then
        echo "[$PACKAGE] is installed."
        # Extract the version number
        VERSION=$(dpkg -l | grep "^ii  $PACKAGE " | awk '{print $3}')
        echo "  Version: $VERSION"
    else
        echo "[$PACKAGE] is NOT installed."
    fi

    # Case statement printing a philosophy note based on package name
    case $PACKAGE in
        linux-image-generic) 
            echo "  Philosophy: The Linux Kernel - the free foundation everything else runs on." ;;
        apache2) 
            echo "  Philosophy: Apache - the web server that built the open internet." ;;
        mysql-server) 
            echo "  Philosophy: MySQL - open source at the heart of millions of apps." ;;
        firefox) 
            echo "  Philosophy: Firefox - a nonprofit fighting for an open web." ;;
        *) 
            echo "  Philosophy: An essential open-source building block." ;;
    esac
    echo "------------------------------------------"
done
