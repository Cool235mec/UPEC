/********************************************************************************************************
 * PREVOT Samuel
 * 22/09/2022
 * TP noté : Poids idéal selon Creff
********************************************************************************************************/

#include <stdio.h>
#include <stdlib.h>


// Permet de vérifier les variables incorrectes, si err = 1 il y a un problème, si err = 0 il n'y en a pas
int	check_error(unsigned short type, float age, float height)
{
	int	err = 0;
	
	// Les limites pour l'âge et la taille sont arbitraires 
	if (type != 1 && type != 2 && type != 3)
		err = 1;
	if (age > 140 || age <= 0)
		err = 1;
	if (height <= 30 || height >= 260)
		err = 1;

	// Renvoie la valeur de err, si err = 0 pas de problème, si err = 1 problème
	return (err);
}

// Fonction de calcul du poids idéal selon la formule de Creff

float	calc_creff(unsigned short type, float age, float height)
{
	float	p_ideal;

	// Calcul selon le type
	if (type == 1)
		p_ideal = (height - 100 + (age/10))*(0.9*0.9);
	else if (type == 2)
		p_ideal = (height - 100 + (age/10))*0.9;
	else
		p_ideal = (height - 100 + (age/10))*(0.9*1.1);

	return (p_ideal);
}

int	main(void)
{
	unsigned short	type;			// Type de morphologie, 1 pour mince, 2 pour normale, 3 pour large
	float		age, height;		// age et taille (height en anglais)

	// Efface le terminal à l'execution du programme
	system("clear");

	//Saisie des variables
	printf("Donnez votre taille en cm : ");
	scanf("%f", &height);			// Saisie de la taille
	printf("\nDonnez votre âge : ");
	scanf("%f", &age);			// Saisie de l'âge
	printf("\nÊtes vous de morphologie mince (1), normale (2) ou large (3) : ");
	scanf("%hu", &type);			// Saisie du type (1, 2 ou 3)
	
	// Calcul du poids idéal, si il y a une erreur, affiche un message d'erreur
	if (check_error(type, age, height) == 1)
		printf("\n\nERREUR ! Une ou plusieurs des valeurs saisies sont incorrectes !\n\n");
	else
		printf("\n\n\tPoids idéal (selon Creff) : %.2f kg\n\n", calc_creff(type, age, height));
	getchar();
	return (0);
}
