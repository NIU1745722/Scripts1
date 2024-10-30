#!/bin/bash

word=$(cut -d' ' -f1 palabras)
cont=0

for i in {1..3}
do
	wordComp=$(cut -d' ' -f"$i" palabras)
	if [ "$word" == "$wordComp" ]; then
		let cont=cont+1
	fi
done

if [ "$cont" -eq 3 ]; then
	echo "IGUALS"
else
	echo "DIFERENTS"
fi
