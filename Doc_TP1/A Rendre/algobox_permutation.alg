<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;)\n&quot;" texte="il est bien et il marche !"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2defaut="" F2etat="inactif" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalAffichages="1000" nbDecimales="8" maxBoucle="500000" totalBoucles="5000000" epaisseurPoint="2" arrondiAuto="vrai" epaisseurLigne="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES">
        <item code="19#-------------------------------------------------------------------------------------------------------" algoitem="//-------------------------------------------------------------------------------------------------------"/>
        <item code="19#PREVOT Samuel" algoitem="//PREVOT Samuel"/>
        <item code="19# 08/09/2022" algoitem="// 08/09/2022"/>
        <item code="19#Permutation de deux nombres" algoitem="//Permutation de deux nombres"/>
        <item code="19#-------------------------------------------------------------------------------------------------------" algoitem="//-------------------------------------------------------------------------------------------------------"/>
    </item>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#a" algoitem="a EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#b" algoitem="b EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#tmp" algoitem="tmp EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="19#intialisation variables" algoitem="//intialisation variables"/>
        <item code="5#a#5#pasliste" algoitem="a PREND_LA_VALEUR 5"/>
        <item code="5#b#8#pasliste" algoitem="b PREND_LA_VALEUR 8"/>
        <item code="4#Les deux entiers qu'il faut permuter sont : a (#0" algoitem="AFFICHER &quot;Les deux entiers qu'il faut permuter sont : a (&quot;"/>
        <item code="3#a#0#pasliste" algoitem="AFFICHER a"/>
        <item code="4#) et b (#0" algoitem="AFFICHER &quot;) et b (&quot;"/>
        <item code="3#b#0#pasliste" algoitem="AFFICHER b"/>
        <item code="4#) \n#0" algoitem="AFFICHER &quot;) \n&quot;"/>
        <item code="19#Permutation" algoitem="//Permutation"/>
        <item code="5#tmp#a#pasliste" algoitem="tmp PREND_LA_VALEUR a"/>
        <item code="5#a#b#pasliste" algoitem="a PREND_LA_VALEUR b"/>
        <item code="5#b#tmp#pasliste" algoitem="b PREND_LA_VALEUR tmp"/>
        <item code="4#Valeur des variables après inversion : a (#0" algoitem="AFFICHER &quot;Valeur des variables après inversion : a (&quot;"/>
        <item code="3#a#0#pasliste" algoitem="AFFICHER a"/>
        <item code="4#) et b (#0" algoitem="AFFICHER &quot;) et b (&quot;"/>
        <item code="3#b#0#pasliste" algoitem="AFFICHER b"/>
        <item code="4#)\n#0" algoitem="AFFICHER &quot;)\n&quot;"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
