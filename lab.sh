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
mkdir images


cp ~/scripts/LabReport/LU.png images/
cp ~/scripts/LabReport/LabReport.cls .
if [ -z $1 ]
then
	cp ~/scripts/LabReport/Main.tex NoName.tex
	
else
	cp ~/scripts/LabReport/Main.tex ${1}.tex
fi



