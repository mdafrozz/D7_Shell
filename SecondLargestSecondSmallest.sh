echo "program to : Generate 10 Random 3 Digit Numbers
	     Store these numbers into array
	     find second largest and second smallest without sorting"

second_max(){
first_max=0
second_max=0
 for x in "${array[@]}"
 do
   if ((x>first_max))
   then
    second_max=$first_max
    first_max=$x
   elif ((x>second_max && x!=first_max))
   then
    second_max=$x
   fi
 done
 echo "Second largest element is: $second_max"
}

second_min(){
first_min=1000
second_min=1000
 for x in "${array[@]}"
 do
  if ((x<first_min))
  then
   second_min=$first_min
   first_min=$x
  elif ((x<second_min && x!=first_min))
  then
   second_min=$x
  fi
 done
echo "Second smallest number is: $second_min"

}


size=10
for((i=1;i<=10;i++))
do
array[i]=$((RANDOM%900+100))
done

echo "10 random 3 digit numbers are: "
echo "${array[@]}"
second_max "${array[@]}"
second_min "${array[@]}"
