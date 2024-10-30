#!/bin/bash

read num

for i in {1..10}
do
	let res=$i*$num
	echo -e "$num x $i = $res\n" >> taula_del_$num
done
