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
for index in ${!Computation[*]}
do
	echo "Computation $index result - > ${Computation[$index]} "
done
