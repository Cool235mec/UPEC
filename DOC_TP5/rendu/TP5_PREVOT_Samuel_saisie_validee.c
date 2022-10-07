
/*
 * PREVOT Samuel
 * Saisie validée
 * 7/10/2022
*/

#include <stdio.h>
#include <stdlib.h>

int	main()
{
	float	nb;

	nb = -100;

	system("clear");
	printf("\tSAISIE VALIDEE\n\t--------------\n\n\n");
	while (nb <= -21.5 || nb >= 150.5)
	{
		printf("\nDonner un réel compris dans [-21.5, 150.5] : ");
		scanf("%f", &nb);
		if (nb <= -21.5 || nb >= 150.5)
			printf("\n\nErreur de saisie, veuillez recommencer\n");
	}
	printf("\nVous avez tapé : %.2f\n\n");
	return (0);
}
