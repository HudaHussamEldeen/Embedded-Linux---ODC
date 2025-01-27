#Script to Calculate Sum of Array Elements:

#!/bin/bash

# Initialize the array with some values
array=(10 20 30 40 50)

# Initialize the sum variable
sum=0

# Loop through the array and add each element to the sum
for num in "${array[@]}"; do
    sum=$((sum + num))
done

# Output the sum
echo "The sum of the array elements is: $sum"
