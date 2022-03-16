echo "Enter first number (a) : "
read a
echo "Enter Second number (b) : "
read b
echo "Enter Third number (c) : "
read c

c1=$(($a+$b*$c))
c2=$(($a*$b+$c))
c3=$(($c+$a/$b))
c4=$(($a%$b+$c))

echo "$a+$b*$c = $c1"
echo "$a*$b+$c = $c2"
echo "$c+$a/$b = $c3"
echo "$a%$b+$c = $c4"

declare -A Computation

Computation["1"]=$c1
Computation["2"]=$c2
Computation["3"]=$c3
Computation["4"]=$c4

echo "Computation result are stored in Dictionary"
echo "Dictionary Values are :"
array=()
for index in ${!Computation[*]}
do
	echo "Computation $index result - > ${Computation[$index]} "
	array+=(${Computation[$index]})
done
echo "Dictionary Values are stored in array"
echo ${array[*]}

for((i=0;i<${#array[*]};i++))
do
	for((j=$i+1;j<${#array[*]};j++))
	do
		if((${array[$i]}<${array[$j]}))
		then
			temp=${array[$i]}
			array[$i]=${array[$j]}
			array[$j]=$temp
		fi
	done
done
echo "Array after sorting in descending order : "
echo ${array[*]}

for((i=0;i<${#array[*]};i++))
do
        for((j=$i+1;j<${#array[*]};j++))
        do
                if((${array[$i]}>${array[$j]}))
                then
                        temp=${array[$i]}
                        array[$i]=${array[$j]}
                        array[$j]=$temp
                fi
        done
done
echo "Array after sorting in ascending order : "
echo ${array[*]}

