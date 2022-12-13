#!/bin/bash
#Gruppen verwalltung
#Gruppenarbeit von Kerem, Kevin, Denys, Arnold
#email vom admin chisar@elektronikschule.de


source "funktionen.sh"



function deletegroup(){
	yesno-dialog where2Find 
	for I in $(find ${WHERE2FIND} -maxdepth 1 \( -name "*tgz" -o -name "*xz" -o -name "*bzip2" \) )
	do 
		echo "|> "$I
	done
   	yesno-dialog what2Del 
	rm ${WHAT2DEL}
	if [ $? = 0 ]
	then
		echo "| ${WHAT2DEL} wurde gelöscht!"
	fi
	sleep 2
}
