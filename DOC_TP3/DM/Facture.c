/*
 * PREVOT Samuel
 * 22/09/2022
 * Facture
*/

#include <stdio.h>
#include <stdlib.h>

#define TVA 19.6

void	AfficherFacture(double p_ht)
{
	double	p_ttc;

	p_ttc = p_ht * TVA;
	printf("\n\nLe prix toutes taxes comprises ")
}

int	main()
{
	double	prix_ht;	// Prix hors-taxes

	printf("Saisir le prix hors-taxes : ");
	scanf("%lf", &prix_ht);


}
