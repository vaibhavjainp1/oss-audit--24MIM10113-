#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Vaibhav Jain | Course: Open Source Software

echo "======================================"
echo " Open Source Manifesto Generator"
echo "======================================"

# --- Take user input ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Get date ---
DATE=$(date "+%d %B %Y")

# --- Output file ---
OUTPUT="manifesto_$(whoami).txt"

# --- Create manifesto ---
echo "--------------------------------------" > $OUTPUT
echo "Open Source Manifesto" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "--------------------------------------" >> $OUTPUT
echo "I believe in the power of open-source." >> $OUTPUT
echo "Using tools like $TOOL, I embrace $FREEDOM as a core value." >> $OUTPUT
echo "I aspire to build $BUILD and share it freely with the world." >> $OUTPUT
echo "Together, we create a transparent and collaborative future." >> $OUTPUT

# --- Display result ---
echo "Manifesto saved to $OUTPUT"
echo "--------------------------------------"
cat $OUTPUT