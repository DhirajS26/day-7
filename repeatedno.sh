for((i=1; i<=9; i++))
do
num=$(($i * 11))
for ((counter=1; counter<=100; counter++))
do
if [ $num -eq $counter ]
then
array[$i]="$num"
fi
done
done
arr=${array[@]}
echo $arr
