%{
	#include<stdio.h>
	#include<stdlib.h>	
	int yyerror();
	int yylex();
%}

%token num
%left '+' '-'
%left '*' '/'
%%

expr:e '\n' {printf("Valid Expression");
    printf("\nREsult : %d",$$);exit(0);}

e:e'+'e {$$=$1+$3;}
 |e'-'e {$$=$1-$3;}
 |e'*'e {$$=$1*$3;}
 |e'/'e {if($3==0)yyerror("Divide by zero");
	else
		$$=$1/$3;}
 |'('e')' {$$=$2;}
 |num {$$=$1;}
;
%%

yyerror()
{
	printf("Invalid Expression");
	exit(0);
}

int main()
{
	printf("Enter expression:");
	yyparse();
}
