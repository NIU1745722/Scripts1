#!bin/bash
i=1
lin=`wc -l < esportistes`
while [ $i -le $lin ]
do
	nom=`head -$i esportistes | tail -1 | cut -d: -f1`
	cognom=`head -$i esportistes | tail -1 | cut -d: -f2`
	edat=`head -$i esportistes | tail -1 | cut -d: -f4`
	if [ $edat -ge 18 ];
	then
		echo "$nom $cognom té $edat anys i, per tant, és major d'edat"
	else
		echo "$nom $cognom té $edat anys i, per tant, és menor d'edat"
	fi
	let i=i+1
done
