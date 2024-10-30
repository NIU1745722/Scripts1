#!/bin/bash

read nom
numLine=$(wc -l < esportistes)

for ((i=1;i<="$numLine";i++))
do
	nomLine=$(head -"$i" esportistes | tail -1 | cut -d: -f1)
	#echo "$nomLine"
	if [ "$nom" == "$nomLine" ]; then
		echo $(head -"$i" esportistes | tail -1)
	fi
done
