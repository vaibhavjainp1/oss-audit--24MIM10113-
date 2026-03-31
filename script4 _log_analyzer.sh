#!/bin/bash
# Script 4: Log File Analyzer
# Author: Vaibhav Jain | Course: Open Source Software

# Usage: ./script4.sh /var/log/syslog error

LOGFILE=$1
KEYWORD=${2:-error}   # default = error
COUNT=0

# --- Check file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

echo "Analyzing file: $LOGFILE"
echo "Searching for keyword: $KEYWORD"
echo "--------------------------------------"

# --- Read file line by line ---
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- Output result ---
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# --- Show last 5 matching lines ---
echo "--------------------------------------"
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5