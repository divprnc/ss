%{
	#include<stdio.h>
	#include<stdlib.h>
	int yyerror();
	int yylex();
%}

%token Letter Digit
%%

stmt: Letter var '\n' {printf("Valid Identifier");return 0;}
    ;

var:var Letter
   |var Digit
   |
;
%%
int main()
{
	printf("Enter the identifier:");
	yyparse();
	return 0;
}

yyerror()
{
	printf("Invalid Identifier");
	return 0;
}
