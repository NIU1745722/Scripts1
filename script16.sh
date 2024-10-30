#!/bin/bash

select opc in "Acudit" "Refrany" "Poema" "Sortir"; do
	case $opc in
	"Acudit")
		echo "Sabem aquel que dice"
		;;
	"Refrany")
		echo "Com més serem més riurem"
		;;
	"Poema")
		echo "Si parlo dels teus ull"
		;;
	"Sortir")
		echo "Saliendo..."
		break
		;;
	*)
		echo "Opcion Invalida"
		;;
	esac
done
