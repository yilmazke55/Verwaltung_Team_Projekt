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
function Useradd
kdialog --inputbox username=echo$(" Wer wird Hinzugefügt")
kdialog --inputbox -d=echo$("Wo soll der User Gespeichert werden")
    echo "Sind sie Sicher das sie den User hinzufügen wollen"
until [ $yesno == 0 ]
	do
              yesno=$(kdialog --yesno "Sind sie sich sicher, dass Sie den Benutzer $username in $speicherort speichernwollen?")
        done
        su -c whoami $username
        if [ $? -eq 0 ]; then
                echo "Ein User namens $username exisitiert bereits auf diesem System."
        else
                cd $speicherort
                useradd $username
        fi
}


