/*
 * PREVOT Samuel
 * 30/09/2022
 * TP4 Antivirus
*/

#include <stdio.h>
#include <stdlib.h>
#define TVA 19.6


// Permet de choisir la version ver de l'antivirus souhaitée. 1 pour la version famille (20 euros) et 2 pour la version IS (50 euros)
// Renvoie la version

int	ChoixVersion(void)
{
	int	ver;

	printf("Choisir la version du logiciel (1 : Famille, 2 : Internet Security) : ");
	scanf("%d", &ver);
	return (ver);
}

// Permet de choisir le nombre nb de licenses à acheter. Ne peut pas être négatif ou nul
// Renvoie le nombre de licenses à acheter

int	ChoixnbLicense(void)
{
	int	nb;

	printf("\nNombre de logiciels achetés : ");
	scanf("%d", &nb);
	return (nb);
}

// Calcul le prix final en fonction de la version choisie et du nombre de licenses à acheter
// Renvoie le prix final avec application d'une réduction si besoin et de la TVA

float	CalculPrix(int version, int nbLic)
{
	float	prix_fin;	// Prix final (TVA et réduction comprises)
	int	prix_lic;	// Prix unitaire de la license


	// Définition du prix unitaire d'une license en fonction de la version choisie
	if (version == 1)	
		prix_lic = 20;
	else
		prix_lic = 50;
	
	// Calcul du prix avec la TVA mais sans les réductions
	prix_fin = (float)prix_lic * (float)nbLic;
	prix_fin = prix_fin + prix_fin*(TVA/100);


	// Application d'une réduction si nécéssaire
	if (nbLic > 99)
		prix_fin = prix_fin * 0.70;
	else if (nbLic > 49)
		prix_fin = prix_fin * 0.80;
	else if (nbLic > 4)
		prix_fin = prix_fin * 0.90;

	return (prix_fin);
}

int	main()
{
	int ver, nb;	// Définition des variables ver (la version) et nb (nombre de licenses)

	system("clear");

	// Saisie de la version de l'antivirus et vérification des erreurs
	ver = ChoixVersion();
	if (ver != 1 && ver != 2)
	{
		printf("\n\nERREUR ! Version du logiciel incorrecte !\n");
		return (0);
	}
	
	// Saisie du nombre de licenses à acheter et vérification des erreurs
	nb = ChoixnbLicense();
	if (nb <= 0)
	{
		printf("\n\nERREUR ! Impossible d'acheter un nombre négatif ou nul de licences !\n");
		return (0);
	}

	// Calcul du prix final et affichage de la facture complète
	printf("\n\nFACTURE :\n");
	printf("Produit : Logiciel Antivirus version %d\n", ver);
	printf("Nombre de licenses : %d\n", nb);
	printf("Prix du panier : %.2f euros\n", CalculPrix(ver, nb));

	return (0);
}
