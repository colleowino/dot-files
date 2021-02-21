#!/bin/bash
#for i in $(ls *.zip)
#do
	#myvar=$(zipinfo $i | grep -Eo '[0-9] file' | grep -Eo '[0-9]')
	#if [ $myvar -gt 1 ]
	#then
		#unzip $i -d out "*.pdf"
	#else
		#unzip $i -d out
	#fi
#done

for i in $(ls *.zip)
do
	haspdf=$(unzip -l $i | grep -o .pdf)
	hasepub=$(unzip -l $i | grep -o .epub)
	if [ $haspdf ]; then
		echo "pdf: "
		unzip $i -d out "*.pdf"
	elif [[ $hasepub ]]; then
		echo "epub:" 
		unzip $i -d out "*.epub"
	else
		echo "somme: "$i
		unzip $i -d out
	fi
done

# each zip take the name 
# search in the out folder if its not there yell

#for i in $(ls *.zip)
#do
	#str=$(echo $i | cut -c1-33 )
	#found=$(find out -iname "$str*")

	#if ! [[ $found ]]
	#then
		#echo $i
	#fi

#done

#string='internet-marketing';
#found=$(find -iname "internet-m*")

#if [[ $found =~ "$string" ]]
#then
 #echo "it's there!";
#fi

#if ! [[ $found =~ "$string" ]] #regex
