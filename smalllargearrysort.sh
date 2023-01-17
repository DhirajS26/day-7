declare -a a;
for((i=0; i<10; i++))
do
a[$i]=$((100+RANDOM%999))
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
echo "sorted array"
echo ${a[*]}
echo
echo "second smallest element"
echo ${a[1]}
echo "second largest element"
echo ${a[8]}
