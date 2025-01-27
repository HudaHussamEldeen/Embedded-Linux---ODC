#!/bin/bash

# Prompt the user to enter a file path
echo "Enter the file path you want to search on:"
read file_path

# Check if the file exists
if [ ! -f "$file_path" ]; then
    echo "File does not exist!"
    exit 1
fi

# Sort the contents of the file and remove duplicates
sort -u "$file_path" -o out_t7