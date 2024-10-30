#!/bin/bash
echo -e "Dime el fichero: \c"
read fichero

if [ -f "$fichero" ]; then
	lineFichero=`wc -l < $fichero`
	echo -e "Dame la linea: \c"
	read linea
	if [ $linea -ge 1 ] && [ $linea -le $lineFichero ]; then
		let headLine=$linea-1
		cut -d: -f1 $fichero > aux1
		cut -d: -f2- $fichero > aux2a
		partSup=`head -$headLine aux1`
		let tailLine=$linea+1
		partInf=`tail +$tailLine aux1`
		echo -e "Dame los caracteres: \c"
		read word
		if [ $linea -ne 1 ]; then
			echo "$partSup" >> ficheroV2
			#echo "$partInf" >> ficheroV2
		fi

		echo "$word" >> ficheroV2

		if [ $linea -ne $lineFichero ]; then
			echo "$partInf" >> ficheroV2
		fi
		paste -d: ficheroV2 aux2a > ficheroV6
		rm aux1 aux2a ficheroV2
	else
		echo "La linea esta fuera del rango"
	fi

else
	echo "El fichero no existe"
fi
