#!/bin/bash
# Author: Ishan Singh | Course: Open Source Software
# Script 3: Disk and Permission Auditor
# This script loops through directories and reports size, owner, and permissions.

# --- Directory List ---
# Defining directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "================================"
echo "    Directory Audit Report"
echo "================================"

# --- Loop Through Directories ---
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Capture permissions, owner, and group using ls and awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        
        # Capture size using du (human readable) and cut
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        echo "$DIR => Perms/Owner: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

# --- Software Config Check ---
echo -e "\n--- Software Config Check ---"
CONFIG_DIR="/etc/gitconfig" # Checking git config

if [ -f "$CONFIG_DIR" ] || [ -d "$CONFIG_DIR" ]; then
    echo "Config for Git found at: $CONFIG_DIR"
    ls -ld "$CONFIG_DIR" | awk '{print "Permissions: " $1, "| Owner: " $3}'
else
    echo "Configuration directory $CONFIG_DIR was not found."
fi
