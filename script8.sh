#!/bin/bash

lintotal =  `wc -l < esportistes`
echo "El nombre de linies del fitxer es: " $lintotal

i=1
let lin = $lintotal + 1

until [ $i -eq $lin ]
do
	camp = `head -$i esportistes | tail -1 | cut -d: -f1`
	echo "El camp 1 de la linea $i és $camp"
	let i = i + 1
done
