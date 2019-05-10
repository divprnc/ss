%{
	/*prince kumar*/
	#include<stdio.h>
	int cc=0;
	/*sadkjfaskjdfkasjfd*/
%}

%x C
%% 
"/*" {BEGIN C;cc++;}
<C>;
<C>\n;
<C>"*/" {BEGIN 0;}
%%

int main(int argc,char **argv)
{

	yyin = fopen(argv[1],"r");
	yyout = fopen(argv[2],"w");
	yylex();
	printf("\nNumber of comments line are: %d\n",cc-1);
	return 0;
}

