

#the most common ways to perform arithmetic operations within a bash script:
#(( )): Best for integer arithmetic (simplest).
#let: Also used for integer arithmetic, similar to (( )).
#expr: Older method, works but requires escaping some symbols (like *).
#bc or awk: Required for floating-point arithmetic.

#!/bin/bash

# Declare variables
a=5
b=3

# Perform arithmetic using expr
sum=$((a + b))
let difference=a-b
product=$((a * b))
quotient=$(expr $a / $b)
remainder=$(expr $a % $b)

# Perform floating-point division using bc
result=$(echo "scale=2; $a / $b" | bc)
echo "floating-point division Result: $result"
# Print the results
echo "Sum: $sum"
echo "Difference: $difference"
echo "Product: $product"
echo "Quotient: $quotient"
echo "Remainder: $remainder"
