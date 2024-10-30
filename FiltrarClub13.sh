#!/bin/bash
echo -e "\nDame el nombre del club para filtrar: \c"
read club
> Club

numLine=$(wc -l < esportistes)

for ((i=1; i<=numLine; i++))
do
	nameClub=$(head -"$i" esportistes | tail -1 | cut -d: -f6)
	if [ "$nameClub" == "$club" ]; then
		head -"$i" esportistes | tail -1 >> Club
	fi
done
