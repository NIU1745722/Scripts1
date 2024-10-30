#!/bin/bash

maxLine=$(wc -l < esportistes)
> esportistes-AM
> esportistes-NZ
for ((i=1; i<=$maxLine; i++))
do
	cognom=$(head -"$i" esportistes | tail -1 | cut -d: -f2)
	if [[ "$cognom" > "A" && "$cognom" < "N" ]]; then
		head -"$i" esportistes | tail -1 >> esportistes-AM
	else
		head -"$i" esportistes | tail -1 >> esportistes-NZ
	fi
done
