#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Kartik Maheshwari

echo "Answer three questions to generate your manifesto."
echo "--------------------------------------------------"

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date +'%d %B %Y')
OUTPUT="manifesto_Kartik.txt"

echo "--------------------------------------------------"
echo "Generating manifesto..."

# Compose the paragraph and write it to the output file using >>
echo "My Open Source Manifesto" > "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I believe that technology should be accessible to everyone. Every day, I rely on open-source tools like $TOOL to learn, create, and grow." >> "$OUTPUT"
echo "To me, the core of the open-source movement is $FREEDOM. It is about the power to inspect, learn from, and modify the tools we use." >> "$OUTPUT"
echo "If I could contribute something back to this amazing community, I would build $BUILD and share it freely with the world, so others can stand on my shoulders just as I have stood on the shoulders of giants." >> "$OUTPUT"

echo "Manifesto saved to $OUTPUT"
echo "=================================================="

# Display the generated file
cat "$OUTPUT"
