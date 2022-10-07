<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot; Euros\n&quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2lignes="" F2etat="inactif" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalBoucles="5000000" epaisseurLigne="2" maxBoucle="500000" nbDecimales="8" arrondiAuto="vrai" epaisseurPoint="2" totalAffichages="1000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions">
        <item algoitem="//-----------------------------------------------------------------------------------" code="19#-----------------------------------------------------------------------------------"/>
        <item algoitem="// PREVOT Samuel" code="19# PREVOT Samuel"/>
        <item algoitem="// 08/09/2022" code="19# 08/09/2022"/>
        <item algoitem="// Facture de matériel informatique" code="19# Facture de matériel informatique"/>
        <item algoitem="//-----------------------------------------------------------------------------------" code="19#-----------------------------------------------------------------------------------"/>
    </item>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="prix_cpu EST_DU_TYPE NOMBRE" code="1#NOMBRE#prix_cpu"/>
        <item algoitem="cpu_speed EST_DU_TYPE NOMBRE" code="1#NOMBRE#cpu_speed"/>
        <item algoitem="nb_cpu EST_DU_TYPE NOMBRE" code="1#NOMBRE#nb_cpu"/>
        <item algoitem="ref_cpu EST_DU_TYPE NOMBRE" code="1#NOMBRE#ref_cpu"/>
        <item algoitem="ref_fourni EST_DU_TYPE NOMBRE" code="1#NOMBRE#ref_fourni"/>
        <item algoitem="TVA EST_DU_TYPE NOMBRE" code="1#NOMBRE#TVA"/>
        <item algoitem="prix_ht EST_DU_TYPE NOMBRE" code="1#NOMBRE#prix_ht"/>
        <item algoitem="prix_ttc EST_DU_TYPE NOMBRE" code="1#NOMBRE#prix_ttc"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="//Initialisation variables" code="19#Initialisation variables"/>
        <item algoitem="TVA PREND_LA_VALEUR 19.6" code="5#TVA#19.6#pasliste"/>
        <item algoitem="prix_cpu PREND_LA_VALEUR -1" code="5#prix_cpu#-1#pasliste"/>
        <item algoitem="cpu_speed PREND_LA_VALEUR -1" code="5#cpu_speed#-1#pasliste"/>
        <item algoitem="ref_cpu PREND_LA_VALEUR -1" code="5#ref_cpu#-1#pasliste"/>
        <item algoitem="ref_fourni PREND_LA_VALEUR -1" code="5#ref_fourni#-1#pasliste"/>
        <item algoitem="//Saisie des premières variables" code="19#Saisie des premières variables"/>
        <item algoitem="TANT_QUE (prix_cpu&lt;0) FAIRE" code="15#prix_cpu&lt;0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;Prix HT du CPU choisi (Euros) : &quot;" code="4#Prix HT du CPU choisi (Euros) : #0"/>
            <item algoitem="LIRE prix_cpu" code="2#prix_cpu#pasliste"/>
            <item algoitem="SI (prix_cpu&lt;0) ALORS" code="6#prix_cpu&lt;0">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;Merci de rentrer un prix valide\n&quot;" code="4#Merci de rentrer un prix valide\n#0"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="TANT_QUE (nb_cpu&lt;1) FAIRE" code="15#nb_cpu&lt;1">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;\nNombre de CPU achetés : &quot;" code="4#\nNombre de CPU achetés : #0"/>
            <item algoitem="LIRE nb_cpu" code="2#nb_cpu#pasliste"/>
            <item algoitem="SI (nb_cpu&lt;1) ALORS" code="6#nb_cpu&lt;1">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;Merci de rentrer un nombre de CPU valide\n&quot;" code="4#Merci de rentrer un nombre de CPU valide\n#0"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="TANT_QUE (cpu_speed&lt;0) FAIRE" code="15#cpu_speed&lt;0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;\nVitesse du CPU (GHz) : &quot;" code="4#\nVitesse du CPU (GHz) : #0"/>
            <item algoitem="LIRE cpu_speed" code="2#cpu_speed#pasliste"/>
            <item algoitem="SI (cpu_speed&lt;0) ALORS" code="6#cpu_speed&lt;0">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;Merci de rentrer une vitesse positive&quot;" code="4#Merci de rentrer une vitesse positive#0"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="TANT_QUE (ref_cpu &lt; 0 OU ref_fourni &lt; 0) FAIRE" code="15#ref_cpu &lt; 0 OU ref_fourni &lt; 0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;\nRéférence du CPU, puis référence fournisseur : &quot;" code="4#\nRéférence du CPU, puis référence fournisseur : #0"/>
            <item algoitem="LIRE ref_cpu" code="2#ref_cpu#pasliste"/>
            <item algoitem="LIRE ref_fourni" code="2#ref_fourni#pasliste"/>
            <item algoitem="SI (ref_cpu &lt; 0 OU ref_fourni &lt; 0) ALORS" code="6#ref_cpu &lt; 0 OU ref_fourni &lt; 0">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;Une des références entrée n'est pas valide, merci de rentrer des références valides&quot;" code="4#Une des références entrée n'est pas valide, merci de rentrer des références valides#0"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="//Récap de la facture" code="19#Récap de la facture"/>
        <item algoitem="AFFICHER &quot;\n\nETAT DE FACTURATION\n--------------------------\n\n&quot;" code="4#\n\nETAT DE FACTURATION\n--------------------------\n\n#0"/>
        <item algoitem="AFFICHER &quot;\tCaractéristiques du CPU :\n\tVitesse : &quot;" code="4#\tCaractéristiques du CPU :\n\tVitesse : #0"/>
        <item algoitem="AFFICHER cpu_speed" code="3#cpu_speed#0#pasliste"/>
        <item algoitem="AFFICHER &quot; GHz\n\tRéférence produit : &quot;" code="4# GHz\n\tRéférence produit : #0"/>
        <item algoitem="AFFICHER ref_cpu" code="3#ref_cpu#0#pasliste"/>
        <item algoitem="AFFICHER &quot; - Référence fournisseur : &quot;" code="4# - Référence fournisseur : #0"/>
        <item algoitem="AFFICHER ref_fourni" code="3#ref_fourni#0#pasliste"/>
        <item algoitem="AFFICHER &quot;\n\nFACTURE\n\tPrix unitaire HT : &quot;" code="4#\n\nFACTURE\n\tPrix unitaire HT : #0"/>
        <item algoitem="AFFICHER prix_cpu" code="3#prix_cpu#0#pasliste"/>
        <item algoitem="AFFICHER &quot; Euros\n\tNombre de CPU achetés : &quot;" code="4# Euros\n\tNombre de CPU achetés : #0"/>
        <item algoitem="AFFICHER nb_cpu" code="3#nb_cpu#0#pasliste"/>
        <item algoitem="AFFICHER &quot;\n\t\t\t------------------------\n\tPrix total HT : &quot;" code="4#\n\t\t\t------------------------\n\tPrix total HT : #0"/>
        <item algoitem="//Calcul du prix final TTC et HT" code="19#Calcul du prix final TTC et HT"/>
        <item algoitem="prix_ht PREND_LA_VALEUR prix_cpu*nb_cpu" code="5#prix_ht#prix_cpu*nb_cpu#pasliste"/>
        <item algoitem="prix_ttc PREND_LA_VALEUR prix_ht+prix_ht*(TVA/100)" code="5#prix_ttc#prix_ht+prix_ht*(TVA/100)#pasliste"/>
        <item algoitem="//Affichage final des prix" code="19#Affichage final des prix"/>
        <item algoitem="AFFICHER prix_ht" code="3#prix_ht#0#pasliste"/>
        <item algoitem="AFFICHER &quot; Euros\n\n\tTVA : &quot;" code="4# Euros\n\n\tTVA : #0"/>
        <item algoitem="AFFICHER TVA" code="3#TVA#0#pasliste"/>
        <item algoitem="AFFICHER &quot; %\n\t\t\t------------------------\n\tPrix total TTC : &quot;" code="4# %\n\t\t\t------------------------\n\tPrix total TTC : #0"/>
        <item algoitem="AFFICHER prix_ttc" code="3#prix_ttc#0#pasliste"/>
        <item algoitem="AFFICHER &quot; Euros\n&quot;" code="4# Euros\n#0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
