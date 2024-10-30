#!/bin/bash

read -p "Dame un numero del 1 al 3: " num

if [ $num -eq 1 ]; then
	echo "Ets el primer en arribar"
elif [ $num -eq 2 ]; then
	echo "Subcampio de la temporada"
elif [ $num -eq 3 ]; then
	echo "A la tercera va la vençuda"
else
	echo "Error: esta fuera del rango!"
fi
