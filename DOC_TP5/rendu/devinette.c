#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int	SaisirEntier()
{
	int	a;
	a = 501;

	while (a < 0 || a > 500)
	{
		if (a < 0 || a > 500)
		{
			printf("Saisir un nombre entier entre 0 et 500 : ");
			scanf("%d", &a);

		}
	}
	return (a);
}

int	main()
{
	int	a;

	srand(time(NULL));
	a = rand() % 501;
	printf("%d\n", a);
	
	return (0);
	
}
