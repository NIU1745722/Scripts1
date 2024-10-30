#!/bin/bash

echo -e "Dame un numero de tres cifras: \c"
read num

num1=$(echo "$num" | head -c1)
num3=$(echo "$num" | tail -c2)

if [ "$num1" -eq "$num3" ]; then
	echo -e "\nEs capicua"
else
	echo -e "\nNo es capicua"
fi
