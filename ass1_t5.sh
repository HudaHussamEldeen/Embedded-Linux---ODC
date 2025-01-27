read -p "Enter Number " N

factorial(){ 
num=1
for (( i=1; i<=N ;++i ))
do 
num=$((i * num))
done
}

factorial "N"
echo " Factorial of number $N is : $num"