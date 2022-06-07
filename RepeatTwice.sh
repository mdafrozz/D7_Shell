echo "Take a range from 0-100, find digits that are repeated twice like 33, 77, etc., and store them in array"

read -p "enter the lower range :" lower
read -p "enter the upper range :" upper

index=0
for((i=lower;i<=upper;))
do
if((i%11==0))
then
array[index++]=$i
((i+=11))
else
((i++))
fi
done
echo "The digits that are repeated twice are:"
echo "${array[@]}"
