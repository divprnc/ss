%{
	#include<stdio.h>
	#include<stdlib.h>
	int yylex();
	int yyerror();
%}

%token Num Alpha
%left '+' '-'
%left '*' '/'
%%

gmr: expr '\n' {printf("Airthemetic Expression is valid");exit(0);}
   ;
expr:expr'+'expr
    |expr'-'expr
    |expr'*'expr
    |expr'/'expr
    |'('expr')'
    |Num
    |Alpha
    ;
%%

int main()
{
	printf("\nEnter the airthemetic expression:");
	yyparse();
	return 0;
	
}

yyerror()
{
	printf("Invalid Expression");
	exit(0);
}
