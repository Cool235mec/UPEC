#include <stdio.h>
#include <stdlib.h>
//fonction//

int val1,val2,val3;
float calcul;

int main()
{
    printf("saisir la valeur 1,la valeur 2 et la valeur 3\n");
    scanf("%d",&val1);
    scanf("%d",&val2);
    scanf("%d",&val3);

    calcul = val1 + val2 + val3;
    printf ("%f",&calcul);




    return 0;
}
