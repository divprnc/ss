%{
	#include<stdio.h>
	int yyerror();
	int yylex();
%}
%token A B
%%

str:recA recB '\n' {printf("Valid String");return 0;}
   ;

recA:A recA
    |
    ;
recB:B recB
    |
    ;
%%

int main()
{
	printf("Enter the string:");
	yyparse();return 0;
}

yyerror()
{
	printf("Invalid Identifier");
	return 0;
}
