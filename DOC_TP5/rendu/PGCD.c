/*
 * PREVOT Samuel
 * PGCD
 * 7/10/2022
*/

#include <stdio.h>
#include <stdlib.h>

int	calc_pgcd(int a, int b)
{
	int	c;

	printf("PGCD(%d,%d) = ", a, b);
	if (a != b)
	{
		if (a > b)
			c = a - b;
		if (b > a)
			c = b - a;
		return (calc_pgcd(b, c));
	}

	else
		return (a);
}

int	main()
{
	int	a, b, c;

	system("clear");

	printf("\n\tEntrez la valeur de a (entier positif) : ");
	scanf("%d", &a);	
	printf("\n\tEntrez la valeur de b (entier positif) : ");
	scanf("%d", &b);
	printf("\n\n");

	c = calc_pgcd(a, b);
	printf("%d \n\n", c);

	return (0);
}

