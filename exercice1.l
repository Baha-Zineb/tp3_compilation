%{
	#include<stdio.h>
	#include "exercice1.tab.h"

%}

%option noyywrap

entier ("+"|"-")?[0-9]+
reel ("+"|"-")?[0-9]+"."[0-9]+
id [a-zA-Z][a-zA-Z0-9]*


%%

"debut" return DEBUT;
"fin" return FIN;
";" return PV;
":=" return AF;
{entier} return ENTIER;
{reel} return REEL;
{id} return ID;
"/*"(.|"\n")+"*/" ;
[ \t] ;


.   {printf("Erreur lexicale  \n");}

%%

