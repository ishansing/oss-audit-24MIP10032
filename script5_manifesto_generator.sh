#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Ishan Singh | Course: Open Source Software
# This script interactively generates an Open Source Manifesto.

# --- User Input Section ---
echo "--- Open Source Manifesto Builder ---"
echo "Answer these three questions to create your philosophy."
echo ""

# read command to get user input for variables
read -p "1. Name one open-source tool you use every day (e.g., Git, VLC, Firefox): " TOOL
read -p "2. In one word, what does 'freedom' mean to you in software? " FREEDOM
read -p "3. Name one thing you would build and share with the world: " BUILD

# --- Date and Output Filename ---
# Using command substitution to capture the current date
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# --- Composing the Manifesto Paragraph ---
# String concatenation and redirection to a file
echo "========================================" > "$OUTPUT"
echo "  The Open Source Manifesto of $(whoami) " >> "$OUTPUT"
echo "========================================" >> "$OUTPUT"
echo "Generated on: $DATE" >> "$OUTPUT"
echo "" >> "$OUTPUT"

echo "As an advocate for open technology, I rely on $TOOL every single day." >> "$OUTPUT"
echo "To me, the essence of software 'freedom' can be captured in one word: $FREEDOM." >> "$OUTPUT"
echo "Inspired by the community, I pledge that if I were to create $BUILD, I would share it freely for everyone to use and improve." >> "$OUTPUT"

echo "" >> "$OUTPUT"
echo "End of Statement." >> "$OUTPUT"

# --- Display Final Output ---
# Using concatenation of echo and cat
echo -e "\nManifesto saved to: $OUTPUT"
echo "----------------------------------------"
cat "$OUTPUT"
echo "----------------------------------------"

