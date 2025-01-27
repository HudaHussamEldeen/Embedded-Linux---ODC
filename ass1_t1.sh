read -p "Enter Number of Intgers " N


for (( i=1; i<=N ;++i ))
do 

#echo $i
num=$((i + num))
done

echo "Sum of Intgers from 1 to $N is : $num"