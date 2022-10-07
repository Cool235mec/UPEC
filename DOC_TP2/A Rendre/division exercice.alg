<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER &quot;\n\n\nAppuyer sur une touche pour fermer la console... &quot;"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2lignes="" F2etat="inactif" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param arrondiAuto="vrai" nbDecimales="8" totalBoucles="5000000" totalAffichages="1000" epaisseurLigne="2" epaisseurPoint="2" maxBoucle="500000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions">
        <item algoitem="// ZB" code="19# ZB"/>
        <item algoitem="//09/09/2022" code="19#09/09/2022"/>
        <item algoitem="// Division a et b" code="19# Division a et b"/>
        <item algoitem="//..........................." code="19#..........................."/>
        <item algoitem="//..........................." code="19#..........................."/>
    </item>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="a EST_DU_TYPE NOMBRE" code="1#NOMBRE#a"/>
        <item algoitem="b EST_DU_TYPE NOMBRE" code="1#NOMBRE#b"/>
        <item algoitem="resu EST_DU_TYPE NOMBRE" code="1#NOMBRE#resu"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="// saisie des réels" code="19# saisie des réels"/>
        <item algoitem="AFFICHER &quot; Donner le réel a : &quot;" code="4# Donner le réel a : #0"/>
        <item algoitem="LIRE a" code="2#a#pasliste"/>
        <item algoitem="AFFICHER &quot;\n\n\n donner le réel b : &quot;" code="4#\n\n\n donner le réel b : #0"/>
        <item algoitem="LIRE b" code="2#b#pasliste"/>
        <item algoitem="// protection division par 0" code="19# protection division par 0"/>
        <item algoitem="SI (b!=0) ALORS" code="6#b!=0">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="resu PREND_LA_VALEUR a/b" code="5#resu#a/b#pasliste"/>
            <item algoitem="AFFICHER &quot; division : &quot;" code="4# division : #0"/>
            <item algoitem="AFFICHER resu" code="3#resu#0#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="// saisie des réels" code="19# saisie des réels"/>
                <item algoitem="AFFICHER &quot; ERREUR ! b ne peut pas être égal à 0 ! &quot;" code="4# ERREUR ! b ne peut pas être égal à 0 ! #0"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
        <item algoitem="AFFICHER &quot;\n\n\nAppuyer sur une touche pour fermer la console... &quot;" code="4#\n\n\nAppuyer sur une touche pour fermer la console... #0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
