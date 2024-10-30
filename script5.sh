#!/bin/bash
echo "Dame una ruta absoluta de un fichero:"
read ruta
#-e comprueba si existe el fichero o el directorio
if [ -e "$ruta" ]; then
	nombre=$(basename "$ruta")
	if [ -d "$ruta" ]; then
		echo "$nombre es un directorio"
	elif [ -f "$ruta" ]; then
		echo "$nombre es un fichero ordinario"
	else
		echo "No es un fichero ordinario ni un directorio"
	fi
else
	echo "La ruta es incorrecta"
fi
