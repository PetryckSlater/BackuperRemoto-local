#!/bin/bash
#Uso do time e usr
function testertime {
	for i in  {1..50}; do
		timesgosto=$(time ./index.sh | grep time)
		echo "$timesgosto" >> infos.txt	
done
}

function testememoria {
	for i in {1..50}; do
		usr  ./index.sh | grep usr
	done
}
echo "Digite 1 para testar o timer ou 2 para o de memoria"
read inf
case $inf in
	"1")
		testertime
		;;
	"2")
		testememoria
		;;
esac

