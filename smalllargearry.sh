declare -a a;
for((i=0; i<10; i++))
do
   a[$i]=$((RANDOM%999+100))
done
echo ${a[@]}
echo
for((i=0; i<10; i++))
do
for((k=0; k<10-i-1; k++))
do
 if [ ${a[k]} -gt ${a[$((k+1))]} ]
then
temp=${a[k]}
a[$k]=${a[$((k+1))]}
a[$((k+1))]=$temp
fi
done
done
echo "second smallest element"
echo ${a[1]}
echo
echo "second largest element"
echo ${a[8]}
