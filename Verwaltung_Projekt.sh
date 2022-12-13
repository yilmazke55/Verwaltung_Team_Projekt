#!/bin/bash
#Gruppen verwalltung
#Gruppenarbeit von Kerem, Kevin, Denys, Arnold
#email vom admin chisar@elektronikschule.de


source "funktionen.sh"







function useradd(){
kdialog --inputbox username=echo$(" Wer wird Hinzugefügt")

    echo "Wohin soll der User gespeichert werden"
    read -p "Eingabe : WHERE2ADD
    echo "Sind sie Sicher das sie den User hinzufügen wollen"
yesno-dialog who2del
        YESNO=0
        until [ $YESNO = 1 ]
        do
		$1
		read -p "| (0: nein | 1: ja) " YESNO
        done
}




function deletegroup(){
        yesno-dialog where2Find 
        for I in $(find ${WHERE2DELGROUP} -maxdepth 1 \( -name delgroup$WHERE2DELGROUP \) )
        do 
                echo "|> "$I
        done
        yesno-dialog where2delgroup
        rm ${WHERETODELGROUP}
        if [ $? = 0 ]
        then
                echo "| ${WHERE2DELGROUP} wurde gelöscht!"
        fi
        sleep 2
}





exit 0

