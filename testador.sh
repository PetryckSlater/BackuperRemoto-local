#!/bin/bash
#Uso do time e usr
function testertime {
	for i in  {1..50}; do
		timesgosto=$(time ./index.sh | grep time)
		echo "$timesgosto" >> infos.txt	
done
}

function mostrarCPU {
	lscpu
}
echo "------------------------------------------------------------------"
echo "Digite 1 para testar o timer ou 2 para mostrar informações da CPU."
echo "------------------------------------------------------------------"
read inf
case $inf in
	"1")
		testertime
		;;
	"2")
		mostrarCPU
		;;
esac

