#!/bin/bash

# rodar o AutoDock Vina de 1(um) receptor contra vários ligantes.

for rec in $(ls ./receptores/*.pdbqt)
do
	prot=$(basename $rec .pdbqt)
	for lig in $(ls ./ligantes/*.pdbqt)
	do
		mol=$(basename $lig .pdbqt)
		out="./out/${prot}-${mol}.pdbqt"
		log="./log/${prot}-${mol}.log"
		echo "Realizando o docking de $prot com $mol"
		vina --receptor $rec --ligand $lig --config ./grid/${prot}.txt --out $out --seed -1212157529

	done
done

exit
