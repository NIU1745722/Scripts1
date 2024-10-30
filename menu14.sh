#!/bin/bash

opc=0

while [ $opc -ne 4 ]
do
	echo -e "\nMENU\n1- Calcular l'edat mitjana dels esportistes\n2- Llistat de tots els esportistes d'un Club"
	echo -e "3- Llistat de tots els esportistes amb el mateix cognom\n4- Sortir\nOpcio: \c"
	read opc
	case $opc in
	1)
		echo -e "\nMEDIA HECHA\n"
		bash EjPower/mitjana.sh
		;;
	2)
		bash FiltrarClub13.sh
		;;
	3)
		bash FiltrarCognom12.sh
		;;
	4)
		echo -e "\nHASTA LUEGO!!"
		;;
	*)
		echo -e "\nERROR: OPCION INVALIDA"
		;;
	esac
done
