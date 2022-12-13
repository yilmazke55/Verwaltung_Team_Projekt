# Backupscript: Erstellen und Löschen von Gruppen/Usern 


# Author : Arnold, Kerem, Kevin, Denys          
# E-Mail : chisar@elektronikschule.de 
 
# Variablen init
COMPRESS="z"
WHERE2ADDUSER="/tmp"
WHERE2DELUSER="/home"
WHERE2FADDGROUP="/tmp"
WHERE2DELGROUP="/tmp"

 
# Hauptmenu ausgeben
function menu(){
        clear
        echo "|----------------------------------------------|"
        echo "| Haupmenu:                                    |"
        echo "|                                              |"
        echo "|      User erstellen:        C                |"
        echo "|      User Löschen:          D                |"
        echo "|      Gruppe erstellen:      E                |"
        echo "|      Gruppe Löschen:        L                |"
        echo "|      Programm beenden:      X                |"
        echo "|                                              |"
        read -p "| Eingabe: " EINGABE 
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


