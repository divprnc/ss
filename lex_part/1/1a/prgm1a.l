%{
	#include<stdio.h>
	int charc=0,wordc=0,blnkc=0,linec=0;
%}

word [^ \n\t]+
eol [\n]
%%

{word} {wordc++;charc = charc +yyleng;}
{eol} {linec++;}
[ ] {blnkc++;charc++;}
[\t] {blnkc+=6;charc+=6;}
%%

int main(int argc, char **argv)
{
	FILE *fp;
	fp = fopen(argv[1], "r");
	yyin = fp;
	yylex();
	printf("\nWord:%d\nCharacter:%d\nBlank Spaces:%d\nLines:%d\n",wordc,charc,blnkc,linec);
	return 0;
}	
