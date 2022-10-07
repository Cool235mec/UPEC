<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER ct"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2lignes="" F2etat="inactif" F2defaut="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" totalAffichages="1000" epaisseurPoint="2" nbDecimales="8" totalBoucles="5000000" arrondiAuto="vrai" maxBoucle="500000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions">
        <item algoitem="//------------------------------------------------------------------------" code="19#------------------------------------------------------------------------"/>
        <item algoitem="//PREVOT Samuel" code="19#PREVOT Samuel"/>
        <item algoitem="// 08/09/2022" code="19# 08/09/2022"/>
        <item algoitem="// Ré-affichage du score de la finale France-Croatie au Mondial 2018" code="19# Ré-affichage du score de la finale France-Croatie au Mondial 2018"/>
        <item algoitem="//------------------------------------------------------------------------" code="19#------------------------------------------------------------------------"/>
    </item>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="fr EST_DU_TYPE NOMBRE" code="1#NOMBRE#fr"/>
        <item algoitem="ct EST_DU_TYPE NOMBRE" code="1#NOMBRE#ct"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="//pré-initialisation pour pouvoir rentrer dans les boucles" code="19#pré-initialisation pour pouvoir rentrer dans les boucles"/>
        <item algoitem="fr PREND_LA_VALEUR -1" code="5#fr#-1#pasliste"/>
        <item algoitem="ct PREND_LA_VALEUR -1" code="5#ct#-1#pasliste"/>
        <item algoitem="//entrée au clavier des variables" code="19#entrée au clavier des variables"/>
        <item algoitem="TANT_QUE (fr &lt; 0) FAIRE" code="15#fr &lt; 0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;Donnez buts de la France : &quot;" code="4#Donnez buts de la France : #0"/>
            <item algoitem="LIRE fr" code="2#fr#pasliste"/>
            <item algoitem="SI (fr&lt;0) ALORS" code="6#fr&lt;0">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;Score non-valide, merci de rentrer un score positif ou nul entier&quot;" code="4#Score non-valide, merci de rentrer un score positif ou nul entier#0"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="TANT_QUE (ct&lt;0) FAIRE" code="15#ct&lt;0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;\nDonnez buts de la Croatie : &quot;" code="4#\nDonnez buts de la Croatie : #0"/>
            <item algoitem="LIRE ct" code="2#ct#pasliste"/>
            <item algoitem="SI (ct&lt;0) ALORS" code="6#ct&lt;0">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;Score non-valide, merci de rentrer un score positif ou nul&quot;" code="4#Score non-valide, merci de rentrer un score positif ou nul#0"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="//affichage du score" code="19#affichage du score"/>
        <item algoitem="AFFICHER &quot;Score France-Croatie au Mondial 2018 : &quot;" code="4#Score France-Croatie au Mondial 2018 : #0"/>
        <item algoitem="AFFICHER fr" code="3#fr#0#pasliste"/>
        <item algoitem="AFFICHER &quot;-&quot;" code="4#-#0"/>
        <item algoitem="AFFICHER ct" code="3#ct#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
