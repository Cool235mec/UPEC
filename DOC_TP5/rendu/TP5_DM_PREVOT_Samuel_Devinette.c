#include <stdio.h>
#include <stdlib.h>
#include <time.h>


// Permet de calculer le score d'une partie en fonction du nombre d'essais du joueur
// Renvoie le score de la partie
int	CalculerScore(int i)
{
	int	score;

	if (i == 1)
		score = 100;

	else if (i <= 5)
		score = 50;

	else if (i <= 10)
		score = 10;

	else if (i <= 15)
		score = 5;

	else
		score = 0;

	printf("Vous avez obtenu un score de %d points à cette partie !\n", score);
	return (score);
}


// Compare le nombre saisi par le joueur et le nombre à trouver, indique si le nombre à trouver est plus grand, plus petit ou si le joueur a gagné.
int	Jouer(int nb_player, int nb_game)
{
	if (nb_player > nb_game)
	{
		printf("Trop grand !\n");
		return (0);
	}

	else if (nb_player < nb_game)
	{
		printf("Trop petit !\n");
		return (0);
	}

	else
	{
		printf("\nFélicitations ! Vous avez trouvé le bon nombre !\n");
		return (1);
	}
}


// Saisie des essais du joueur
int	SaisirEntier()
{
	int	a;

	a = 501;

	while (a < 0 || a > 500)
	{
		printf("\n\nSaisir un nombre entier entre 0 et 500 : ");
		scanf("%d", &a);
		
		if (a < 0 || a > 500)		// Vérifie que le nombre saisi par le joueur est dans les limites du jeu
			printf("\n\nErreur ! Le nombre saisi n'est pas compris entre 0 et 500 !\n\n");
	}
	return (a);
}

int	main()
{
	int	a, b, i, score;
	char	exit;

	score = 0;		// Score cumulé de chaque partie
	exit = 'y';
	while (exit != 'n')	// Boucle permettant de relancer une partie si le caractère saisi en fin de partie est différent de y
	{
		if (exit == 'y')
		{
			system("clear");
			i = 1;	// Compteur d'essais

			// Randomise un nombre à trouver
			srand(time(NULL));
			a = rand() % 501;

			b = SaisirEntier();	// Premier essai du joueur

			while (Jouer(b, a) != 1)
			{
				i++;
				b = SaisirEntier();
			}

			// Calcul du score cumulé et détermine si nouvelle partie
			score = score + CalculerScore(i);
			printf("\n\nVoulez vous rejouer ? [y/n] : ");
			scanf(" %c", &exit);
			printf("\n");
		}

		// Vérifie que le code pour rejouer n'est pas différent de y ou de n, autrement il redemande à l'utilisateur de faire un choix correct
		while (exit != 'y' && exit != 'n')
		{
			if (exit != 'y' && exit != 'n')
			{
				printf("Veuillez saisir une option valide (y pour yes/n pour no), rejouer ? : ");
				scanf(" %c", &exit);
				printf("\n");
			}
		}
	}
	printf("\nVotre score final est de %d points !\n\n", score);
	return (0);
}
