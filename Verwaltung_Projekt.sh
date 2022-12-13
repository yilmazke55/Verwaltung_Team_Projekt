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
        for I in $(find ${WHERE2FIND} -maxdepth 1 \( -name delgroup$WHAT2DEL \) )
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



# Hauptereignisschleife
while :
do
        menu
        case $EINGABE in
                c|C)
                        useradd
                        ;;
                e|D)
                        userdel
                        ;;
                e|E)
                        groupadd
                        ;;
                l|L)
                        groupdel
                        ;;
                *)
                        echo "Und Tschüss"
                        exit 1
        esac
        sleep 2
done

exit 0

