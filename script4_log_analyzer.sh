#!/bin/bash
# Author: Ishan Singh | Course: Open Source Software
# Script 4: Log File Analyzer
# Usage: ./script4_log_analyzer.sh <logfile> [keyword]

# --- Initialize Variables ---
LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

# --- File Presence and Size Check ---
# Using a while loop to prompt for a file if it doesn't exist or is empty
while [ ! -f "$LOGFILE" ] || [ ! -s "$LOGFILE" ]; do
    echo "Error: Log file '$LOGFILE' not found or is empty."
    read -p "Please enter a valid, non-empty log file path (or 'exit' to quit): " LOGFILE
    if [ "$LOGFILE" == "exit" ]; then exit 0; fi
done

# --- Reading the File Line by Line ---
# Standard while-read loop to scan for the keyword
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        # Incrementing the counter variable
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- Output Summary ---
echo "===================================================="
echo "Log Analysis for '$LOGFILE'"
echo "Keyword '$KEYWORD' found $COUNT times."
echo "----------------------------------------------------"

# --- Display Last 5 Matching Lines ---
# Using tail and grep for quick context
if [ $COUNT -gt 0 ]; then
    echo "Last 5 matches found:"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
else
    echo "No matching lines found to display."
fi
echo "===================================================="
