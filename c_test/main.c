#include <stdio.h>

#define USD 1
#define RUB 91.82
#define KZT 439.9
#define EUR .92
#define BYN 3.27
#define UAH 39.59
#define BRL 5.14
#define CAD 1.37

float toRub(float usd)
{
    return usd * RUB;
}

float toKzt(float usd)
{
    return usd * KZT;
}

float toEur(float usd)
{
    return usd * EUR;
}

float toByn(float usd)
{
    return usd * BYN;
}

float toUah(float usd)
{
    return usd * UAH;
}

float toBrl(float usd)
{
    return usd * BRL;
}

float toCad(float usd)
{
    return usd * CAD;
}

int main()
{
    float ca = 123;                // currency amount
    float usds = (USD / RUB) * ca; // from smth to usd ( (1 / 1 currency to usd) * currency amount )

    float res = toByn(usds);
    printf("rub to byn: %.2f", res);

    return 0;
}