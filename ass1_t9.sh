#!/bin/bash

# Prompt the user for the directory path
echo "Enter the directory path to rename files to lowercase:"
read directory_path

# Check if the directory exists
if [ ! -d "$directory_path" ]; then
    echo "Directory does not exist!"
    exit 1
fi

# Loop through all files in the directory
for file in "$directory_path"/*; do
    # Check if it's a file (not a directory)
    if [ -f "$file" ]; then
        # Get the lowercase version of the file name
        lowercased=$(echo "$file" | tr '[:upper:]' '[:lower:]')

        # Rename the file if its name is not already in lowercase
        if [ "$file" != "$lowercased" ]; then
            mv "$file" "$lowercased"
            echo "Renamed '$file' to '$lowercased'"
        fi
    fi
done
