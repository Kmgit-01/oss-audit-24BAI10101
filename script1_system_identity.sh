#!/bin/bash
# Script 1: System Identity Report
# Author: Kartik Maheshwari
# Course: Open Source Software

# --- Variables
STUDENT_NAME="Kartik Maheshwari"
SOFTWARE_CHOICE="Linux Kernel"

# --- System info
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
# Extracts the friendly OS name from the release file
DISTRO=$(cat /etc/os-release | grep -w "PRETTY_NAME" | cut -d= -f2 | tr -d '"')
CURRENT_DATE=$(date)

# --- Display
echo "=========================================="
echo "        The Open Source Audit"
echo "=========================================="
echo "Student : $STUDENT_NAME"
echo "Software: $SOFTWARE_CHOICE"
echo "------------------------------------------"
echo "OS      : $DISTRO"
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAME"
echo "Home Dir: $HOME_DIR"
echo "Uptime  : $UPTIME"
echo "Date    : $CURRENT_DATE"
echo "------------------------------------------"
echo "License : The Linux operating system kernel is licensed under the GPL v2."
echo "=========================================="
