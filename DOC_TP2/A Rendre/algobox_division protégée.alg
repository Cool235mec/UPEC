<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER res" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2defaut="" F2lignes="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalBoucles="5000000" epaisseurPoint="2" nbDecimales="8" epaisseurLigne="2" arrondiAuto="vrai" maxBoucle="500000" totalAffichages="1000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions">
        <item algoitem="//-----------------------------------------------------------------------" code="19#-----------------------------------------------------------------------"/>
        <item algoitem="// PREVOT Samuel" code="19# PREVOT Samuel"/>
        <item algoitem="// 15/09/22" code="19# 15/09/22"/>
        <item algoitem="// Division protégée" code="19# Division protégée"/>
        <item algoitem="//-----------------------------------------------------------------------" code="19#-----------------------------------------------------------------------"/>
    </item>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="a EST_DU_TYPE NOMBRE" code="1#NOMBRE#a"/>
        <item algoitem="b EST_DU_TYPE NOMBRE" code="1#NOMBRE#b"/>
        <item algoitem="res EST_DU_TYPE NOMBRE" code="1#NOMBRE#res"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="b PREND_LA_VALEUR 0" code="5#b#0#pasliste"/>
        <item algoitem="// Saisie de a" code="19# Saisie de a"/>
        <item algoitem="AFFICHER &quot;Rentrer la valeur de a : \n&quot;" code="4#Rentrer la valeur de a : \n#0"/>
        <item algoitem="LIRE a" code="2#a#pasliste"/>
        <item algoitem="TANT_QUE (b == 0) FAIRE" code="15#b == 0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;\nRentrer la valeur de b : \n&quot;" code="4#\nRentrer la valeur de b : \n#0"/>
            <item algoitem="LIRE b" code="2#b#pasliste"/>
            <item algoitem="SI (b == 0) ALORS" code="6#b == 0">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;\nERREUR ! b ne peux pas être égal à 0 !\n&quot;" code="4#\nERREUR ! b ne peux pas être égal à 0 !\n#0"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="res PREND_LA_VALEUR a/b" code="5#res#a/b#pasliste"/>
        <item algoitem="AFFICHER &quot;Résultat : &quot;" code="4#Résultat : #0"/>
        <item algoitem="AFFICHER res" code="3#res#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
