#!/bin/bash
cor=1
echo -e "CALCULADORA\nDame el numero 1: \c"
read num1
echo -e "Dame el numero 2: \c"
read num2
echo -e "DIME LA OPERACION A REALIZAR '+' '-' 'x' '/': \c"
read ope

if [ "$ope" == "+" ]; then
	let res=num1+num2
elif [ "$ope" == "-" ]; then
	let res=num1-num2
elif [ "$ope" == "x" ]; then
	let res=num1*num2
elif [ "$ope" == "/" ]; then
	if [ "$num2" -eq 0 ]; then
		echo "El divisor no puede ser 0"
		cor=0
	else
		let res=num1/num2
	fi
else
	echo "ERROR: TIENE QUE SER '+', '-', 'x', '/'"
	cor=0
fi

if [ "$cor" -eq 1 ]; then
	echo "La solicion es: $res"
fi
