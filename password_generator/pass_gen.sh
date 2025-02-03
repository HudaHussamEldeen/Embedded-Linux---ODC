#!/bin/bash

# Output file
OUTPUT_FILE="passwords.txt"

# Number of passwords to generate
read -p "Enter the number of passwords: " NUM_PASSWORDS

# Character sets
LOWER="abcdefghijklmnopqrstuvwxyz"
UPPER="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
DIGITS="0123456789"
SPECIAL="!@#$%^&*()-_=+<>?"

# Full character set
ALL="$LOWER$UPPER$DIGITS$SPECIAL"

# Function to generate a password
generate_password() {
    local length=$(( RANDOM % 9 + 8 ))  # Random length between 8 and 16
    local password=""

    # Ensure at least one of each type
    password+=${LOWER:RANDOM%${#LOWER}:1}
    password+=${UPPER:RANDOM%${#UPPER}:1}
    password+=${DIGITS:RANDOM%${#DIGITS}:1}
    password+=${SPECIAL:RANDOM%${#SPECIAL}:1}

    # Fill the remaining characters randomly
    for ((i=${#password}; i<length; i++)); do
        password+=${ALL:RANDOM%${#ALL}:1}
    done

    # Shuffle the password to mix characters (using /dev/urandom for better randomness)
    echo "$password" | fold -w1 | shuf | tr -d '\n'
}

# Generate passwords and save to file
echo "Generating $NUM_PASSWORDS passwords..."
> "$OUTPUT_FILE"  # Clear the file
for ((j=1; j <= NUM_PASSWORDS; j++)); do
    generate_password >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"  # Add a newline between passwords in the output file
done

echo "Passwords saved to $OUTPUT_FILE"
