#!/bin/bash

#Nome do ficheiro passado como parâmetro de entrada
file="$1"

#Valor do tempo do caminho crítico
CAM_CRIT=26

#Redução em cada execução
REDUCAO=0
for i in $(seq $CAM_CRIT -1 0)
do
	#Formata string com última restrição com valor da redução
	var='Tfim ='$i';'
	#Elimina a última string do ficheiro
	sed -i '$ d' $file
	#Acrescenta string formatada ao final do ficheiro
	echo $var >> $file
	#Guarda 1ª linha do output de cada execução
	out=$(lp_solve $file | head -n 2) 
	#Apresenta resultado no stdin
	echo Redução de $REDUCAO : $out
	REDUCAO=$((REDUCAO + 1))
done

