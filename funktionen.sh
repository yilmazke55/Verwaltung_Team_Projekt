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


