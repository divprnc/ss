%{
	#include<stdio.h>
	int wordc=0,charc=0,blankc=0,linec=0;
%}

eol [\n]
word [^ \n\t]+
%%

{word} {wordc++; charc=charc+yyleng;}
[ ] {blankc++;charc++;}
[\t] {blankc=blankc+6;charc=charc+6;}
{eol} {linec++;}
%%

int main(int argc, char **argv)
{
	FILE *fp;
	fp = fopen(argv[1], "r");
	yyin = fp;
	yylex();
	printf("\nWords:%d\nLines:%d\nCharachter:%d\nBlank lines:%d\n\n",wordc,linec,charc,blankc);
	fclose(fp);
	return 0;
}
