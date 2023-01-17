sum=o
for((i=0; i<=3; i++))
do
read -p "enter number to calculate sum: " n
array[$i]="$n"
sum=$(($sum+$n))
done
echo ${array[@]}
