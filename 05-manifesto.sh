#!/bin/bash

# Author: Aditya Tomar (24BCY10153)

# Open Source Manifesto Generator

# Interactive Questions
read -p "What is your name? " NAME
read -p "What is your favorite open-source software? " FOSS
read -p "Why do you support open-source software? " REASON

# Construct Paragraph
PARAGRAPH="Hello, my name is $NAME. My favorite open-source software is $FOSS. I support open-source software because $REASON."

# Append to .txt File
FILE_NAME="$NAME-manifesto.txt"
echo "$PARAGRAPH" > $FILE_NAME
echo "Manifesto saved to $FILE_NAME"

