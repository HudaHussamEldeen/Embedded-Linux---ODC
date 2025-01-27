#!/bin/bash

# Prompt the user to enter a word
echo "Enter the word you want to search for:"
read search_word

# Prompt the user to enter the file name
echo "Enter the file name:"
read file_name

# Check if the file exists
if [ ! -f "$file_name" ]; then
    echo "The file does not exist."
    exit 1
fi

# Use grep to search for the word and wc to count the occurrences
count=$(grep -owi "$search_word" "$file_name" | wc -l)

# Output the result
echo "The word '$search_word' appears $count times in the file '$file_name'."
