#!/bin/bash
# Script 1: System Identity Report
# Author: Ishan Singh | Course: Open Source Software
# This script displays key system information and a welcome message.

# --- Variables ---
# Fill in your name and chosen software
STUDENT_NAME="Ishan Singh" 
SOFTWARE_CHOICE="Git"

# --- System info gathering ---
# Using command substitution to capture system details
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
# Extracting distro name from /etc/os-release
DISTRO=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d'=' -f2 | tr -d '"')
CURRENT_DATE=$(date '+%A, %d %B %Y, %T')

# --- Display ---
# formatting output with echo and variables
echo "===================================================="
echo " Open Source Audit — $STUDENT_NAME"
echo "===================================================="
echo "Distribution : $DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Home Directory: $HOME_DIR"
echo "Uptime       : $UPTIME"
echo "Date/Time    : $CURRENT_DATE"
echo "----------------------------------------------------"
echo "OS License   : This system is typically covered by the GNU General Public License (GPL)."
echo "===================================================="
