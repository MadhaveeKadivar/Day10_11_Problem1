echo "Enter first number (a) : "
read a
echo "Enter Second number (b) : "
read b
echo "Enter Third number (c) : "
read c

c1=$(($a+$b*$c))
c2=$(($a*$b+$c))
c3=$(($c+$a/$b))

echo "$a+$b*$c = $c1"
echo "$a*$b+$c = $c2"
echo "$c+$a/$b = $c2"

