/*---------------------------------------------------------------------------------------------------------------------------------------
 *	PREVOT Samuel
 *	22/09/2022
 *	Calcul de la vitesse d'un marathonien (TP3)
---------------------------------------------------------------------------------------------------------------------------------------*/

#include <stdio.h>
#include <stdlib.h>

int	check_err(float km, int h, int m, int s)
{
	int	err;
	
	if (km > 300 || km <= 0)
		err = 1;
	else if (h > 30 || h <= 0)
		err = 1;
	else if (m > 59 || m < 0)
		err = 1;
	else if (s > 59 || s < 0)
		err = 1;
	else
		err = 0;
	return (err);
}

float	calc_speed(float km, int h, int m, int s)
{
	float	speed;
	
	speed = ((km*1000)/(h*3600+m*60+s));
	return (speed);
}

int	main()
{
	float	km, spd;
	int	h, m, s;

	system("clear");
	printf("Saisir la distance parcourue en km : ");
	scanf("%f", &km);

	printf("\nSaisir le temps de parcours en heures, puis minutes, puis secondes : ");
	scanf("%d%d%d", &h, &m, &s);
	
	if (check_err(km, h, m, s) != 0)
		printf("\n\nERREUR ! Une ou plusieurs des valeurs saisies sont incorrectes !");
	else
	{
		spd = calc_speed(km, h, m, s);
		printf("\nLa vitesse du marathonien est de : %.2f m/s\n\n", spd);
	}
	getchar();
	return (0);
}
