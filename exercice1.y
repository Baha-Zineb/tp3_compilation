%{
	#include<stdio.h>
	int flag=0;
	void yyerror(char *s);
	int yylex();
%}

%token ID
%token REEL
%token ENTIER
%token AF
%token DEBUT
%token FIN
%token PV


%% 


E:DEBUT L FIN  {printf(" valid\n");};
L:O L | O
O:ID AF nb
nb:ENTIER PV|REEL PV 

%%

void main()
{
printf("\n Enter Any Expression which\n");

yyparse();
if(flag==0)
{
	printf("\n exp valid  ");

}
}


void yyerror(char *s){
flag=1;
printf("error : %s",s);

}

