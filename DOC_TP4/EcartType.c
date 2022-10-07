/*
 * PREVOT Samuel
 * 30/09/2022
 * Calcul d'une V max, d'une V moy et des écarts types
*/

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

// Permet de trouver le max parmi les 3 valeurs m_a, m_b et m_c
// m_a, m_b et m_c sont les trois réels saisis dans le main
// la fonction renvoie la valeur maximum

double	TrouverMax(double m_a, double m_b, double m_c)
{
	double	max;

	if (m_a >= m_b && m_b >= m_c)		// Vérifie si a est le max
		max = m_a;

	else if (m_b >= m_a && m_b >= m_c)	// Vérifie si b est le max
		max = m_b;

	else					// Si ni a, ni b n'est le maximum, alors c'est c
		max = m_c;

	return (max);
}

// Permet de calculer l'écart type d'une valeur donnée
// val est la valeur dont on veut calculer l'écart type et moy est la moyenne des trois valeurs saisies dans le main
// La fonction renvoie l'écart type

double	CalculerEcartType(double val, double moy)
{
	double	ec_type;

	ec_type = sqrt(pow((val-moy), 2));

	return (ec_type);
}


int	main()
{
	double a, b, c, moy;


	// On saisit 3 variables a, b et c
	system("clear");
	printf("Veuillez saisir a, b et c : ");
	scanf("%lf%lf%lf", &a, &b, &c);
	
	moy = (a+b+c)/3;	// calcul de la moyenne


	printf("\n\nLa valeur max est : %.2lf\n", TrouverMax(a, b, c));		// Calcule et affiche le max parmi a, b et c

	// Calcule et affiche l'écart type pour chaque variable (a, b et c)

	printf("L'écart type de a est : %.2lf\n", CalculerEcartType(a, moy));
	printf("L'écart type de b est : %.2lf\n", CalculerEcartType(b, moy));
	printf("L'écart type de c est : %.2lf\n", CalculerEcartType(c, moy));

	return (0);
}
