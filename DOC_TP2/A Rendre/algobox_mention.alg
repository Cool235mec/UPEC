<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="FIN_SI" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2defaut="" F2lignes="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalBoucles="5000000" epaisseurPoint="2" nbDecimales="8" epaisseurLigne="2" arrondiAuto="vrai" maxBoucle="500000" totalAffichages="1000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions">
        <item algoitem="//-----------------------------------------------------------------------" code="19#-----------------------------------------------------------------------"/>
        <item algoitem="// PREVOT Samuel" code="19# PREVOT Samuel"/>
        <item algoitem="// 15/09/22" code="19# 15/09/22"/>
        <item algoitem="// Mention du BAC" code="19# Mention du BAC"/>
        <item algoitem="//-----------------------------------------------------------------------" code="19#-----------------------------------------------------------------------"/>
    </item>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="n_exam EST_DU_TYPE NOMBRE" code="1#NOMBRE#n_exam"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="// Saisie de la valeur de n_exam" code="19# Saisie de la valeur de n_exam"/>
        <item algoitem="n_exam PREND_LA_VALEUR -1" code="5#n_exam#-1#pasliste"/>
        <item algoitem="TANT_QUE (n_exam &lt; 0 OU n_exam > 20) FAIRE" code="15#n_exam &lt; 0 OU n_exam > 20">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;Rentrez la note reçue à l'examen : &quot;" code="4#Rentrez la note reçue à l'examen : #0"/>
            <item algoitem="LIRE n_exam" code="2#n_exam#pasliste"/>
            <item algoitem="SI (n_exam &lt; 0 OU n_exam > 20) ALORS" code="6#n_exam &lt; 0 OU n_exam > 20">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;\nMerci de rentrer une valeur comprise entre 0 et 20\n&quot;" code="4#\nMerci de rentrer une valeur comprise entre 0 et 20\n#0"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="//Vérification de la mention obtenue" code="19#Vérification de la mention obtenue"/>
        <item algoitem="SI (n_exam &lt; 10) ALORS" code="6#n_exam &lt; 10">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;\n\nEchec à l'examen\n&quot;" code="4#\n\nEchec à l'examen\n#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="SI (n_exam >= 10 ET n_exam &lt; 12) ALORS" code="6#n_exam >= 10 ET n_exam &lt; 12">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;\n\nReçu mention PASSABLE&quot;" code="4#\n\nReçu mention PASSABLE#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="SI (n_exam >= 12 ET n_exam &lt; 14) ALORS" code="6#n_exam >= 12 ET n_exam &lt; 14">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;\n\nReçu mention AB&quot;" code="4#\n\nReçu mention AB#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="SI (n_exam >= 14 ET n_exam &lt; 16) ALORS" code="6#n_exam >= 14 ET n_exam &lt; 16">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;\n\nReçu mention B&quot;" code="4#\n\nReçu mention B#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="SI (n_exam >= 16) ALORS" code="6#n_exam >= 16">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;\n\nReçu mention TB&quot;" code="4#\n\nReçu mention TB#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
