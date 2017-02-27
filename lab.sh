#!/bin/bash

LABNAME=$1

## Making folder and subsections for the
mkdir sections
SECTIONS=("Abstract.tex" "Theory.tex" "Method.tex" "Results.tex" "Discussion.tex" "Summery.tex")
for i in ${SECTIONS[@]}
do
	touch sections/$i
	echo "\section{"${i%.*}"}" > sections/$i
done


mkdir data



cp ~/scripts/labreport/LU.png .
cp ~/scripts/labreport/LabRapport.cls .
if [ -z $1 ]
then
	cp ~/scripts/labreport/Main.tex NoName.tex
	
else
	cp ~/scripts/labreport/Main.tex ${1}.tex
fi



