#stdout: Regular output (e.g., echo) redirected with >.

echo "Hello" > output.txt

#stderr: Error output redirected with 2>.
# By default, echo writes to stdout, but >&2 ensures the output goes to stderr instead.
echo "Error" >&2 > error.txt
#echo "Error" 2>  error.txt

ls 1> out 2> err

