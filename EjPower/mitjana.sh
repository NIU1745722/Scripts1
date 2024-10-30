#!/bin/bash
i=1
lin=`wc -l < esportistes`
suma=0
while  [ $i -le $lin ]
do
	edat=`head -$i esportistes | tail -1 | cut -d: -f4 `
	let suma=$suma+$edat
	let i=i+1
done
let mitjana=$suma/$lin
echo "La mitjana d'edat es: $mitjana"
m=`bc<<<"scale=2;$suma/$lin"`
echo "La mitjana amb decimals es: $m"
