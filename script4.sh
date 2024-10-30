#!/bin/bash
open=1
while [ $open -eq 1 ]
do
	echo "Dame una palabra: "
	read word
	if [ "$word" != "q" ]
	then
		echo $word >> fichero4
	else
		open=0
	fi
done
