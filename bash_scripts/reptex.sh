#!/bin/bash
echo "Hello, please fill out all the necessary information below"
echo "How many replacements would you like to make?"
read -p 'Enter # of replacements you would like to make: ' numrep
for ((i = 0; i < $numrep; i++)){
	echo "Word Number: (i + 1)"
	read -p 'What word would you like to replace ?' warr[i]
	read -p 'replace with: ' rarr[i]
    }

    
echo "Thank you for inputting data your document will be edited shortly"


#read -p 'File Name: ' fname
#read -p 'Com Name: ' cname
#read -p 'Pos Name: ' posname
#read -p 'Loc: ' loc
#echo "Thank you for inputting data your document will be edited shortly"
#
#sed   "s/<++>/$cname/g; s/<-->/$posname/g; s/<+->/$loc/g" $fname > $cname.tex 
#
#pdflatex $cname.tex
