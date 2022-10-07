<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="FIN_SINON"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode="floor(x)"/>
    <F2 F2etat="inactif" F2lignes="" F2defaut="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" epaisseurLigne="2" epaisseurPoint="2" totalAffichages="1000" nbDecimales="8" totalBoucles="5000000" arrondiAuto="vrai"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions">
        <item algoitem="//-----------------------------------------------------------------------" code="19#-----------------------------------------------------------------------"/>
        <item algoitem="// PREVOT Samuel" code="19# PREVOT Samuel"/>
        <item algoitem="// 15/09/22" code="19# 15/09/22"/>
        <item algoitem="// Vitesse d'un marathonien" code="19# Vitesse d'un marathonien"/>
        <item algoitem="//-----------------------------------------------------------------------" code="19#-----------------------------------------------------------------------"/>
        <item algoitem="// Fonction de vérification d'entiers" code="19# Fonction de vérification d'entiers"/>
        <item algoitem="FONCTION is_int (nb)" code="201#is_int #nb">
            <item algoitem="DEBUT_FONCTION" code="203#debutfonction"/>
        </item>
        <item algoitem="FONCTION calc_speed(h_f, m_f, s_f, km_f)" code="201#calc_speed#h_f, m_f, s_f, km_f">
            <item algoitem="VARIABLES_FONCTION" code="202#declarationsvariablesfonction">
                <item algoitem="speed EST_DU_TYPE NOMBRE" code="1#NOMBRE#speed"/>
            </item>
            <item algoitem="DEBUT_FONCTION" code="203#debutfonction"/>
            <item algoitem="speed PREND_LA_VALEUR (km_f*1000)/((h_f*3600)+(m_f*60)+s_f)" code="5#speed#(km_f*1000)/((h_f*3600)+(m_f*60)+s_f)#pasliste"/>
            <item algoitem="RENVOYER speed" code="205#speed"/>
            <item algoitem="FIN_FONCTION" code="204#finfonction"/>
        </item>
        <item algoitem="// Fonction de vérification d'erreurs" code="19# Fonction de vérification d'erreurs"/>
        <item algoitem="FONCTION verif_err (h, m, s, km)" code="201#verif_err #h, m, s, km">
            <item algoitem="VARIABLES_FONCTION" code="202#declarationsvariablesfonction">
                <item algoitem="err EST_DU_TYPE NOMBRE" code="1#NOMBRE#err"/>
            </item>
            <item algoitem="DEBUT_FONCTION" code="203#debutfonction"/>
            <item algoitem="err PREND_LA_VALEUR 0" code="5#err#0#pasliste"/>
            <item algoitem="SI (km &lt;= 0 OU km > 500) ALORS" code="6#km &lt;= 0 OU km > 500">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="err PREND_LA_VALEUR -1" code="5#err#-1#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="SI (h &lt;= 0 OU h > 30) ALORS" code="6#h &lt;= 0 OU h > 30">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="err PREND_LA_VALEUR -1" code="5#err#-1#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="SI (m &lt; 0 OU m > 59) ALORS" code="6#m &lt; 0 OU m > 59">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="err PREND_LA_VALEUR -1" code="5#err#-1#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="SI (s &lt; 0 OU s > 59) ALORS" code="6#s &lt; 0 OU s > 59">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="err PREND_LA_VALEUR -1" code="5#err#-1#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="SI (h == 0 ET m == 0 ET s == 0) ALORS" code="6#h == 0 ET m == 0 ET s == 0">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="err PREND_LA_VALEUR -1" code="5#err#-1#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="SI (is_int(km) == -1) ALORS" code="6#is_int(km) == -1">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="err PREND_LA_VALEUR -1" code="5#err#-1#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="SI (is_int(h) == -1) ALORS" code="6#is_int(h) == -1">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="err PREND_LA_VALEUR -1" code="5#err#-1#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="SI (is_int(m) == -1) ALORS" code="6#is_int(m) == -1">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="err PREND_LA_VALEUR -1" code="5#err#-1#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="SI (is_int(s) == -1) ALORS" code="6#is_int(s) == -1">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="err PREND_LA_VALEUR -1" code="5#err#-1#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="RENVOYER err" code="205#err"/>
            <item algoitem="FIN_FONCTION" code="204#finfonction"/>
        </item>
    </item>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="h EST_DU_TYPE NOMBRE" code="1#NOMBRE#h"/>
        <item algoitem="m EST_DU_TYPE NOMBRE" code="1#NOMBRE#m"/>
        <item algoitem="s EST_DU_TYPE NOMBRE" code="1#NOMBRE#s"/>
        <item algoitem="km EST_DU_TYPE NOMBRE" code="1#NOMBRE#km"/>
        <item algoitem="speed_final EST_DU_TYPE NOMBRE" code="1#NOMBRE#speed_final"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="// Saisie des variables" code="19# Saisie des variables"/>
        <item algoitem="AFFICHER &quot;Saisir la distance parcourue (en Km): \n&quot;" code="4#Saisir la distance parcourue (en Km): \n#0"/>
        <item algoitem="LIRE km" code="2#km#pasliste"/>
        <item algoitem="AFFICHER &quot;Saisir le temps de course au format suivant heure/minutes/secondes : \n&quot;" code="4#Saisir le temps de course au format suivant heure/minutes/secondes : \n#0"/>
        <item algoitem="LIRE h" code="2#h#pasliste"/>
        <item algoitem="LIRE m" code="2#m#pasliste"/>
        <item algoitem="LIRE s" code="2#s#pasliste"/>
        <item algoitem="//Calcul de la vitesse et vérification des erreurs potentielles" code="19#Calcul de la vitesse et vérification des erreurs potentielles"/>
        <item algoitem="SI (verif_err(h, m, s, km) != -1) ALORS" code="6#verif_err(h, m, s, km) != -1">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="speed_final PREND_LA_VALEUR calc_speed(h, m, s, km)" code="5#speed_final#calc_speed(h, m, s, km)#pasliste"/>
            <item algoitem="AFFICHER &quot;\nLa vitesse moyenne du marathonien (en m/s) est de : &quot;" code="4#\nLa vitesse moyenne du marathonien (en m/s) est de : #0"/>
            <item algoitem="AFFICHER speed_final" code="3#speed_final#0#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="AFFICHER &quot;Erreur, une ou plusieurs des valeurs saisies sont incorrectes !&quot;" code="4#Erreur, une ou plusieurs des valeurs saisies sont incorrectes !#0"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
