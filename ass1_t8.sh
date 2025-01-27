#!/bin/bash

# Prompt the user to enter a directory path
echo "Enter the directory path you want to search in:"
read directory_path

# Check if the directory exists
if [ ! -d "$directory_path" ]; then
    echo "Directory does not exist!"
    exit 1
fi

# Find and list all empty files in the directory (and subdirectories)
find "$directory_path" -type f -empty
