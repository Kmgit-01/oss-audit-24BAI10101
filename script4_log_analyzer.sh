#!/bin/bash
# Script 4: Log File Analyzer
# Author: Kartik Maheshwari
# Usage: ./script4_log_analyzer.sh /var/log/syslog [keyword]

LOGFILE=$1
KEYWORD=${2:-"error"} # Default keyword is 'error' if one isn't provided
COUNT=0

# Do-while style retry if the file doesn't exist or is empty
while [ ! -f "$LOGFILE" ] || [ ! -s "$LOGFILE" ]; do
    echo "Error: File '$LOGFILE' not found or is empty."
    read -p "Please enter a valid log file path (e.g., /var/log/syslog): " LOGFILE
done

echo "Analyzing $LOGFILE for keyword: '$KEYWORD'..."

# Read file line by line
while IFS= read -r LINE; do
    # -i makes it case insensitive, -q suppresses output
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "================================================="
echo "Summary: Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "================================================="

# Print the last 5 matching lines using tail + grep
if [ $COUNT -gt 0 ]; then
    echo "Last 5 matching lines:"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi
